import '/flutter_flow/flutter_flow_util.dart';
import 'relief_new_widget.dart' show ReliefNewWidget;
import 'package:flutter/material.dart';

class ReliefNewModel extends FlutterFlowModel<ReliefNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for main widget.
  ScrollController? main;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    main = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    main?.dispose();
    listViewController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
