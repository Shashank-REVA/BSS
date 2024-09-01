import '/flutter_flow/flutter_flow_util.dart';
import 'updatepic_widget.dart' show UpdatepicWidget;
import 'package:flutter/material.dart';

class UpdatepicModel extends FlutterFlowModel<UpdatepicWidget> {
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
