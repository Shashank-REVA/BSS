import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'phone_auth_copy_copy_widget.dart' show PhoneAuthCopyCopyWidget;
import 'package:flutter/material.dart';

class PhoneAuthCopyCopyModel extends FlutterFlowModel<PhoneAuthCopyCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for countryname widget.
  final countrynameKey = GlobalKey();
  FocusNode? countrynameFocusNode;
  TextEditingController? countrynameController;
  String? countrynameSelectedOption;
  String? Function(BuildContext, String?)? countrynameControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    countrynameFocusNode?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
