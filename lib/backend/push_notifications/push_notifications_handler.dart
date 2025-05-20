import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? isWeb
          ? Container()
          : Container(
              color: Colors.transparent,
              child: Image.asset(
                'assets/images/comedia8png.png',
                fit: BoxFit.contain,
              ),
            )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'login': ParameterData.none(),
  'new-usuario': ParameterData.none(),
  'cadastro_Local': ParameterData.none(),
  'detalhes': (data) async => ParameterData(
        allParams: {
          'show': getParameter<String>(data, 'show'),
        },
      ),
  'cadastroShow': ParameterData.none(),
  'areacliente': ParameterData.none(),
  'compra': (data) async => ParameterData(
        allParams: {
          'show': getParameter<String>(data, 'show'),
        },
      ),
  'locais': ParameterData.none(),
  'HomePageLogin': ParameterData.none(),
  'dashboardShows': ParameterData.none(),
  'detalhesShow': (data) async => ParameterData(
        allParams: {
          'show': await getDocumentParameter<ShowsRecord>(
              data, 'show', ShowsRecord.fromSnapshot),
          'ref': getParameter<DocumentReference>(data, 'ref'),
        },
      ),
  'retorno': (data) async => ParameterData(
        allParams: {
          'show': getParameter<String>(data, 'show'),
          'venda': getParameter<DocumentReference>(data, 'venda'),
          'pagamento': getParameter<String>(data, 'pagamento'),
          'idpay': getParameter<String>(data, 'idpay'),
        },
      ),
  'PainelFinanceiroADM': ParameterData.none(),
  'Banner': ParameterData.none(),
  'faixaetaria': ParameterData.none(),
  'whatsapp': ParameterData.none(),
  'preview': (data) async => ParameterData(
        allParams: {
          'foto': getParameter<String>(data, 'foto'),
          'nome': getParameter<String>(data, 'nome'),
          'sinopse': getParameter<String>(data, 'sinopse'),
          'local': getParameter<DocumentReference>(data, 'local'),
        },
      ),
  'EditarShow': (data) async => ParameterData(
        allParams: {
          'show': getParameter<DocumentReference>(data, 'show'),
        },
      ),
  'Buscas': ParameterData.none(),
  'detalhesCompra': (data) async => ParameterData(
        allParams: {
          'venda': getParameter<DocumentReference>(data, 'venda'),
          'pagamento': getParameter<String>(data, 'pagamento'),
          'idpay': getParameter<String>(data, 'idpay'),
        },
      ),
  'usuarios': ParameterData.none(),
  'editar-usuario': (data) async => ParameterData(
        allParams: {
          'user': getParameter<DocumentReference>(data, 'user'),
        },
      ),
  'local': (data) async => ParameterData(
        allParams: {
          'local': getParameter<String>(data, 'local'),
        },
      ),
  'editarLocal': (data) async => ParameterData(
        allParams: {
          'local': getParameter<DocumentReference>(data, 'local'),
        },
      ),
  'listaShows': ParameterData.none(),
  'detalhesingress': (data) async => ParameterData(
        allParams: {
          'ingresso': getParameter<DocumentReference>(data, 'ingresso'),
        },
      ),
  'pesquisa': (data) async => ParameterData(
        allParams: {
          'show': getParameter<String>(data, 'show'),
        },
      ),
  'detalhesCopy': (data) async => ParameterData(
        allParams: {
          'show': getParameter<String>(data, 'show'),
          'showzin': await getDocumentParameter<ShowsRecord>(
              data, 'showzin', ShowsRecord.fromSnapshot),
        },
      ),
  'ultimosVendidos': ParameterData.none(),
  'destaqueShows': ParameterData.none(),
  'ultimosVendidosCopy': ParameterData.none(),
  'pageMes': (data) async => ParameterData(
        allParams: {
          'state': getParameter<int>(data, 'state'),
          'dia': getParameter<DateTime>(data, 'dia'),
        },
      ),
  'finalizarCompra': ParameterData.none(),
  'suporte': ParameterData.none(),
  'politicas': ParameterData.none(),
  'teste': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
