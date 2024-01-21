import '/flutter_flow/flutter_flow_util.dart';
import 'donation_widget.dart' show DonationWidget;
import 'package:flutter/material.dart';

class DonationModel extends FlutterFlowModel<DonationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Columnnn widget.
  ScrollController? columnnn;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Row widget.
  ScrollController? rowController1;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Row widget.
  ScrollController? rowController2;
  // State field(s) for Row widget.
  ScrollController? rowController3;
  // State field(s) for Row widget.
  ScrollController? rowController4;
  // State field(s) for Row widget.
  ScrollController? rowController5;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnnn = ScrollController();
    columnController1 = ScrollController();
    rowController1 = ScrollController();
    columnController2 = ScrollController();
    rowController2 = ScrollController();
    rowController3 = ScrollController();
    rowController4 = ScrollController();
    rowController5 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnnn?.dispose();
    columnController1?.dispose();
    rowController1?.dispose();
    columnController2?.dispose();
    rowController2?.dispose();
    rowController3?.dispose();
    rowController4?.dispose();
    rowController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
