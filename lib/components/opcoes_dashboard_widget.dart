import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reutilizavel/menu_adm/menu_adm_widget.dart';
import 'package:flutter/material.dart';
import 'opcoes_dashboard_model.dart';
export 'opcoes_dashboard_model.dart';

class OpcoesDashboardWidget extends StatefulWidget {
  const OpcoesDashboardWidget({super.key});

  @override
  State<OpcoesDashboardWidget> createState() => _OpcoesDashboardWidgetState();
}

class _OpcoesDashboardWidgetState extends State<OpcoesDashboardWidget> {
  late OpcoesDashboardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpcoesDashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(1.0, -1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).primary,
              icon: Icon(
                Icons.menu_rounded,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ),
        wrapWithModel(
          model: _model.menuAdmModel,
          updateCallback: () => safeSetState(() {}),
          child: MenuAdmWidget(),
        ),
      ],
    );
  }
}
