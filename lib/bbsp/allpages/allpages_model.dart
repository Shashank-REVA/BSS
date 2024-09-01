import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'allpages_widget.dart' show AllpagesWidget;
import 'package:flutter/material.dart';

class AllpagesModel extends FlutterFlowModel<AllpagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController1Validator;
  List<CitiesRecord> simpleSearchResults = [];
  // State field(s) for email_address widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for fac widget.
  String? facValue;
  FormFieldController<String>? facValueController;
  // State field(s) for pb122 widget.
  FormFieldController<String>? pb122ValueController;
  // State field(s) for pb12 widget.
  FormFieldController<String>? pb12ValueController;
  // State field(s) for exxx widget.
  FocusNode? exxxFocusNode1;
  TextEditingController? exxxTextController1;
  String? Function(BuildContext, String?)? exxxTextController1Validator;
  // State field(s) for exxx widget.
  FocusNode? exxxFocusNode2;
  TextEditingController? exxxTextController2;
  String? Function(BuildContext, String?)? exxxTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    exxxFocusNode1?.dispose();
    exxxTextController1?.dispose();

    exxxFocusNode2?.dispose();
    exxxTextController2?.dispose();
  }

  /// Additional helper methods.
  String? get pb122Value => pb122ValueController?.value;
  String? get pb12Value => pb12ValueController?.value;
}
