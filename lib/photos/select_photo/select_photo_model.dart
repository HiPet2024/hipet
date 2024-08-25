import '/flutter_flow/flutter_flow_util.dart';
import 'select_photo_widget.dart' show SelectPhotoWidget;
import 'package:flutter/material.dart';

class SelectPhotoModel extends FlutterFlowModel<SelectPhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
