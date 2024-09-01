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
  TextEditingController? countrynameTextController;
  String? countrynameSelectedOption;
  String? Function(BuildContext, String?)? countrynameTextControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2315f1he' /* Phone number is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
  }

  @override
  void dispose() {
    countrynameFocusNode?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
