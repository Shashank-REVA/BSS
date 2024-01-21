import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'facilities_outline_widget.dart' show FacilitiesOutlineWidget;
import 'package:flutter/material.dart';

class FacilitiesOutlineModel extends FlutterFlowModel<FacilitiesOutlineWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Columnnn widget.
  ScrollController? columnnn;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for Column widget.
  ScrollController? columnController1;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Column widget.
  ScrollController? columnController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    columnnn = ScrollController();
    rowController = ScrollController();
    columnController1 = ScrollController();
    columnController2 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    columnnn?.dispose();
    rowController?.dispose();
    columnController1?.dispose();
    columnController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
