import '/flutter_flow/flutter_flow_util.dart';
import 'signup_copy_widget.dart' show SignupCopyWidget;
import 'package:flutter/material.dart';

class SignupCopyModel extends FlutterFlowModel<SignupCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for name1 widget.
  FocusNode? name1FocusNode;
  TextEditingController? name1TextController;
  String? Function(BuildContext, String?)? name1TextControllerValidator;
  String? _name1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ghjx2kb6' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress1 widget.
  FocusNode? emailAddress1FocusNode;
  TextEditingController? emailAddress1TextController;
  String? Function(BuildContext, String?)? emailAddress1TextControllerValidator;
  String? _emailAddress1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e42bmoqn' /* Email is required */,
      );
    }

    return null;
  }

  // State field(s) for phone_num1 widget.
  FocusNode? phoneNum1FocusNode;
  TextEditingController? phoneNum1TextController;
  String? Function(BuildContext, String?)? phoneNum1TextControllerValidator;
  String? _phoneNum1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'eewxeu2i' /* Phone number  is required */,
      );
    }

    return null;
  }

  // State field(s) for password1 widget.
  FocusNode? password1FocusNode;
  TextEditingController? password1TextController;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1TextControllerValidator;
  String? _password1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ot0k48c5' /* Password is required */,
      );
    }

    return null;
  }

  // State field(s) for con_password1 widget.
  FocusNode? conPassword1FocusNode;
  TextEditingController? conPassword1TextController;
  late bool conPassword1Visibility;
  String? Function(BuildContext, String?)? conPassword1TextControllerValidator;
  String? _conPassword1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6v7jsc6c' /* Confirm Password is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    name1TextControllerValidator = _name1TextControllerValidator;
    emailAddress1TextControllerValidator =
        _emailAddress1TextControllerValidator;
    phoneNum1TextControllerValidator = _phoneNum1TextControllerValidator;
    password1Visibility = false;
    password1TextControllerValidator = _password1TextControllerValidator;
    conPassword1Visibility = false;
    conPassword1TextControllerValidator = _conPassword1TextControllerValidator;
  }

  @override
  void dispose() {
    name1FocusNode?.dispose();
    name1TextController?.dispose();

    emailAddress1FocusNode?.dispose();
    emailAddress1TextController?.dispose();

    phoneNum1FocusNode?.dispose();
    phoneNum1TextController?.dispose();

    password1FocusNode?.dispose();
    password1TextController?.dispose();

    conPassword1FocusNode?.dispose();
    conPassword1TextController?.dispose();
  }
}
