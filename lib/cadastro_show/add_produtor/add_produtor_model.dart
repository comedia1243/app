import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_produtor_widget.dart' show AddProdutorWidget;
import 'package:flutter/material.dart';

class AddProdutorModel extends FlutterFlowModel<AddProdutorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
