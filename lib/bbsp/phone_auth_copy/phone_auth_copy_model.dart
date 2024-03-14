import '/flutter_flow/flutter_flow_util.dart';
import 'phone_auth_copy_widget.dart' show PhoneAuthCopyWidget;
import 'package:flutter/material.dart';

class PhoneAuthCopyModel extends FlutterFlowModel<PhoneAuthCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
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
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2315f1he' /* Phone number is required */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
  }

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
