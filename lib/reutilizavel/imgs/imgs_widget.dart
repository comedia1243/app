import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'imgs_model.dart';
export 'imgs_model.dart';

class ImgsWidget extends StatefulWidget {
  const ImgsWidget({
    super.key,
    required this.dd,
  });

  final int? dd;

  @override
  State<ImgsWidget> createState() => _ImgsWidgetState();
}

class _ImgsWidgetState extends State<ImgsWidget> {
  late ImgsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImgsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
    );
  }
}
