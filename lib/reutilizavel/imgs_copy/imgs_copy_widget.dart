import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'imgs_copy_model.dart';
export 'imgs_copy_model.dart';

class ImgsCopyWidget extends StatefulWidget {
  const ImgsCopyWidget({
    super.key,
    required this.show,
  });

  final ShowsRecord? show;

  @override
  State<ImgsCopyWidget> createState() => _ImgsCopyWidgetState();
}

class _ImgsCopyWidgetState extends State<ImgsCopyWidget> {
  late ImgsCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImgsCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (MediaQuery.sizeOf(context).width >= 420.0)
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.network(
              widget.show!.foto,
              fit: BoxFit.cover,
            ),
          ),
      ],
    );
  }
}
