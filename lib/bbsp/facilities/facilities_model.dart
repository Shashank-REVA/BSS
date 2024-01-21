import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'facilities_widget.dart' show FacilitiesWidget;
import 'package:flutter/material.dart';

class FacilitiesModel extends FlutterFlowModel<FacilitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for Column widget.
  ScrollController? columnController2;
  // State field(s) for Column widget.
  ScrollController? columnController3;
  // State field(s) for searched widget.
  FocusNode? searchedFocusNode;
  TextEditingController? searchedController;
  String? Function(BuildContext, String?)? searchedControllerValidator;
  List<CitiesRecord> simpleSearchResults = [];
  // State field(s) for Column widget.
  ScrollController? columnController4;
  // State field(s) for scrol widget.
  ScrollController? scrol;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for sreachresults widget.
  ScrollController? sreachresults;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnController1 = ScrollController();
    rowController = ScrollController();
    columnController2 = ScrollController();
    columnController3 = ScrollController();
    columnController4 = ScrollController();
    scrol = ScrollController();
    listViewController = ScrollController();
    sreachresults = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnController1?.dispose();
    rowController?.dispose();
    columnController2?.dispose();
    columnController3?.dispose();
    searchedFocusNode?.dispose();
    searchedController?.dispose();

    columnController4?.dispose();
    scrol?.dispose();
    listViewController?.dispose();
    sreachresults?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
