import '/flutter_flow/flutter_flow_util.dart';
import 'edit_photo_widget.dart' show EditPhotoWidget;
import 'package:flutter/material.dart';

class EditPhotoModel extends FlutterFlowModel<EditPhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
