import '/flutter_flow/flutter_flow_util.dart';
import 'bookings_widget.dart' show BookingsWidget;
import 'package:flutter/material.dart';

class BookingsModel extends FlutterFlowModel<BookingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
