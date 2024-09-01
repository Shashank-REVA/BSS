import '/flutter_flow/flutter_flow_util.dart';
import 'updatepic_copy_widget.dart' show UpdatepicCopyWidget;
import 'package:flutter/material.dart';

class UpdatepicCopyModel extends FlutterFlowModel<UpdatepicCopyWidget> {
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
