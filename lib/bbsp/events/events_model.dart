import '/flutter_flow/flutter_flow_util.dart';
import 'events_widget.dart' show EventsWidget;
import 'package:flutter/material.dart';

class EventsModel extends FlutterFlowModel<EventsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Columnnn widget.
  ScrollController? columnnn;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for main widget.
  ScrollController? main;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnnn = ScrollController();
    columnController1 = ScrollController();
    rowController = ScrollController();
    columnController2 = ScrollController();
    main = ScrollController();
    columnController3 = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnnn?.dispose();
    columnController1?.dispose();
    rowController?.dispose();
    columnController2?.dispose();
    main?.dispose();
    columnController3?.dispose();
    listViewController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
