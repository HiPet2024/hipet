import '/flutter_flow/flutter_flow_util.dart';
import 'registrarse_widget.dart' show RegistrarseWidget;
import 'package:flutter/material.dart';

class RegistrarseModel extends FlutterFlowModel<RegistrarseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField-nome widget.
  FocusNode? textFieldNomeFocusNode;
  TextEditingController? textFieldNomeTextController;
  String? Function(BuildContext, String?)? textFieldNomeTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Criesenha widget.
  FocusNode? criesenhaFocusNode;
  TextEditingController? criesenhaTextController;
  late bool criesenhaVisibility;
  String? Function(BuildContext, String?)? criesenhaTextControllerValidator;
  // State field(s) for Confirm widget.
  FocusNode? confirmFocusNode;
  TextEditingController? confirmTextController;
  late bool confirmVisibility;
  String? Function(BuildContext, String?)? confirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    criesenhaVisibility = false;
    confirmVisibility = false;
  }

  @override
  void dispose() {
    textFieldNomeFocusNode?.dispose();
    textFieldNomeTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    criesenhaFocusNode?.dispose();
    criesenhaTextController?.dispose();

    confirmFocusNode?.dispose();
    confirmTextController?.dispose();
  }
}
