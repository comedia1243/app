import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? DashboardShowsWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? DashboardShowsWidget()
              : LoginWidget(),
          routes: [
            FFRoute(
              name: HomePageWidget.routeName,
              path: HomePageWidget.routePath,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: LoginWidget.routeName,
              path: LoginWidget.routePath,
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: NewUsuarioWidget.routeName,
              path: NewUsuarioWidget.routePath,
              builder: (context, params) => NewUsuarioWidget(),
            ),
            FFRoute(
              name: CadastroLocalWidget.routeName,
              path: CadastroLocalWidget.routePath,
              builder: (context, params) => CadastroLocalWidget(),
            ),
            FFRoute(
              name: DetalhesWidget.routeName,
              path: DetalhesWidget.routePath,
              builder: (context, params) => DetalhesWidget(
                show: params.getParam(
                  'show',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: CadastroShowWidget.routeName,
              path: CadastroShowWidget.routePath,
              builder: (context, params) => CadastroShowWidget(),
            ),
            FFRoute(
              name: AreaclienteWidget.routeName,
              path: AreaclienteWidget.routePath,
              builder: (context, params) => AreaclienteWidget(),
            ),
            FFRoute(
              name: CompraWidget.routeName,
              path: CompraWidget.routePath,
              builder: (context, params) => CompraWidget(
                show: params.getParam(
                  'show',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: LocaisWidget.routeName,
              path: LocaisWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LocaisWidget(),
            ),
            FFRoute(
              name: HomePageLoginWidget.routeName,
              path: HomePageLoginWidget.routePath,
              builder: (context, params) => HomePageLoginWidget(),
            ),
            FFRoute(
              name: DashboardShowsWidget.routeName,
              path: DashboardShowsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DashboardShowsWidget(),
            ),
            FFRoute(
              name: DetalhesShowWidget.routeName,
              path: DetalhesShowWidget.routePath,
              requireAuth: true,
              asyncParams: {
                'show': getDoc(['shows'], ShowsRecord.fromSnapshot),
              },
              builder: (context, params) => DetalhesShowWidget(
                show: params.getParam(
                  'show',
                  ParamType.Document,
                ),
                ref: params.getParam(
                  'ref',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['shows'],
                ),
              ),
            ),
            FFRoute(
              name: RetornoWidget.routeName,
              path: RetornoWidget.routePath,
              builder: (context, params) => RetornoWidget(
                show: params.getParam(
                  'show',
                  ParamType.String,
                ),
                venda: params.getParam(
                  'venda',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['venda'],
                ),
                pagamento: params.getParam(
                  'pagamento',
                  ParamType.String,
                ),
                idpay: params.getParam(
                  'idpay',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PainelFinanceiroADMWidget.routeName,
              path: PainelFinanceiroADMWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PainelFinanceiroADMWidget(),
            ),
            FFRoute(
              name: BannerWidget.routeName,
              path: BannerWidget.routePath,
              builder: (context, params) => BannerWidget(),
            ),
            FFRoute(
              name: FaixaetariaWidget.routeName,
              path: FaixaetariaWidget.routePath,
              requireAuth: true,
              builder: (context, params) => FaixaetariaWidget(),
            ),
            FFRoute(
              name: WhatsappWidget.routeName,
              path: WhatsappWidget.routePath,
              requireAuth: true,
              builder: (context, params) => WhatsappWidget(),
            ),
            FFRoute(
              name: PreviewWidget.routeName,
              path: PreviewWidget.routePath,
              builder: (context, params) => PreviewWidget(
                foto: params.getParam(
                  'foto',
                  ParamType.String,
                ),
                nome: params.getParam(
                  'nome',
                  ParamType.String,
                ),
                sinopse: params.getParam(
                  'sinopse',
                  ParamType.String,
                ),
                local: params.getParam(
                  'local',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['local'],
                ),
              ),
            ),
            FFRoute(
              name: EditarShowWidget.routeName,
              path: EditarShowWidget.routePath,
              builder: (context, params) => EditarShowWidget(
                show: params.getParam(
                  'show',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['shows'],
                ),
              ),
            ),
            FFRoute(
              name: BuscasWidget.routeName,
              path: BuscasWidget.routePath,
              builder: (context, params) => BuscasWidget(),
            ),
            FFRoute(
              name: DetalhesCompraWidget.routeName,
              path: DetalhesCompraWidget.routePath,
              builder: (context, params) => DetalhesCompraWidget(
                venda: params.getParam(
                  'venda',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['venda'],
                ),
                pagamento: params.getParam(
                  'pagamento',
                  ParamType.String,
                ),
                idpay: params.getParam(
                  'idpay',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: UsuariosWidget.routeName,
              path: UsuariosWidget.routePath,
              requireAuth: true,
              builder: (context, params) => UsuariosWidget(),
            ),
            FFRoute(
              name: EditarUsuarioWidget.routeName,
              path: EditarUsuarioWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditarUsuarioWidget(
                user: params.getParam(
                  'user',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
              ),
            ),
            FFRoute(
              name: LocalWidget.routeName,
              path: LocalWidget.routePath,
              builder: (context, params) => LocalWidget(
                local: params.getParam(
                  'local',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: EditarLocalWidget.routeName,
              path: EditarLocalWidget.routePath,
              builder: (context, params) => EditarLocalWidget(
                local: params.getParam(
                  'local',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['local'],
                ),
              ),
            ),
            FFRoute(
              name: ListaShowsWidget.routeName,
              path: ListaShowsWidget.routePath,
              builder: (context, params) => ListaShowsWidget(),
            ),
            FFRoute(
              name: DetalhesingressWidget.routeName,
              path: DetalhesingressWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DetalhesingressWidget(
                ingresso: params.getParam(
                  'ingresso',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['ingresso'],
                ),
              ),
            ),
            FFRoute(
              name: PesquisaWidget.routeName,
              path: PesquisaWidget.routePath,
              builder: (context, params) => PesquisaWidget(
                show: params.getParam(
                  'show',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: DetalhesCopyWidget.routeName,
              path: DetalhesCopyWidget.routePath,
              asyncParams: {
                'showzin': getDoc(['shows'], ShowsRecord.fromSnapshot),
              },
              builder: (context, params) => DetalhesCopyWidget(
                show: params.getParam(
                  'show',
                  ParamType.String,
                ),
                showzin: params.getParam(
                  'showzin',
                  ParamType.Document,
                ),
              ),
            ),
            FFRoute(
              name: UltimosVendidosWidget.routeName,
              path: UltimosVendidosWidget.routePath,
              requireAuth: true,
              builder: (context, params) => UltimosVendidosWidget(),
            ),
            FFRoute(
              name: DestaqueShowsWidget.routeName,
              path: DestaqueShowsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DestaqueShowsWidget(),
            ),
            FFRoute(
              name: UltimosVendidosCopyWidget.routeName,
              path: UltimosVendidosCopyWidget.routePath,
              requireAuth: true,
              builder: (context, params) => UltimosVendidosCopyWidget(),
            ),
            FFRoute(
              name: PageMesWidget.routeName,
              path: PageMesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => PageMesWidget(
                mes: params.getParam(
                  'mes',
                  ParamType.DataStruct,
                  isList: false,
                  structBuilder: MesesStruct.fromSerializableMap,
                ),
                state: params.getParam(
                  'state',
                  ParamType.int,
                ),
                dia: params.getParam(
                  'dia',
                  ParamType.DateTime,
                ),
              ),
            ),
            FFRoute(
              name: FinalizarCompraWidget.routeName,
              path: FinalizarCompraWidget.routePath,
              builder: (context, params) => FinalizarCompraWidget(),
            ),
            FFRoute(
              name: SuporteWidget.routeName,
              path: SuporteWidget.routePath,
              builder: (context, params) => SuporteWidget(),
            ),
            FFRoute(
              name: PoliticasWidget.routeName,
              path: PoliticasWidget.routePath,
              builder: (context, params) => PoliticasWidget(),
            ),
            FFRoute(
              name: TesteWidget.routeName,
              path: TesteWidget.routePath,
              builder: (context, params) => TesteWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/comedia8png.png',
                        fit: BoxFit.contain,
                      ),
                    )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
