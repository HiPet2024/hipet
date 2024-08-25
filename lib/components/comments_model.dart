import '/components/comments_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comments_widget.dart' show CommentsWidget;
import 'package:flutter/material.dart';

class CommentsModel extends FlutterFlowModel<CommentsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_Comment widget.
  FocusNode? textFieldCommentFocusNode;
  TextEditingController? textFieldCommentTextController;
  String? Function(BuildContext, String?)?
      textFieldCommentTextControllerValidator;
  // State field(s) for TextField_Answer widget.
  FocusNode? textFieldAnswerFocusNode;
  TextEditingController? textFieldAnswerTextController;
  String? Function(BuildContext, String?)?
      textFieldAnswerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCommentFocusNode?.dispose();
    textFieldCommentTextController?.dispose();

    textFieldAnswerFocusNode?.dispose();
    textFieldAnswerTextController?.dispose();
  }
}
