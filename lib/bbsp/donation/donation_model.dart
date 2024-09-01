import '/flutter_flow/flutter_flow_util.dart';
import 'donation_widget.dart' show DonationWidget;
import 'package:flutter/material.dart';

class DonationModel extends FlutterFlowModel<DonationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PAN widget.
  FocusNode? panFocusNode;
  TextEditingController? panTextController;
  String? Function(BuildContext, String?)? panTextControllerValidator;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5xcolcib' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for addd widget.
  FocusNode? adddFocusNode;
  TextEditingController? adddTextController;
  String? Function(BuildContext, String?)? adddTextControllerValidator;
  String? _adddTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c6c16ihs' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for phno widget.
  FocusNode? phnoFocusNode;
  TextEditingController? phnoTextController;
  String? Function(BuildContext, String?)? phnoTextControllerValidator;
  String? _phnoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5xcolcib' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b9am410g' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for amt widget.
  FocusNode? amtFocusNode;
  TextEditingController? amtTextController;
  String? Function(BuildContext, String?)? amtTextControllerValidator;
  String? _amtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6fwpp9ag' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for mode widget.
  FocusNode? modeFocusNode;
  TextEditingController? modeTextController;
  String? Function(BuildContext, String?)? modeTextControllerValidator;
  String? _modeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pd95p9ee' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for trxnid widget.
  FocusNode? trxnidFocusNode;
  TextEditingController? trxnidTextController;
  String? Function(BuildContext, String?)? trxnidTextControllerValidator;
  String? _trxnidTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rbqa12on' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    adddTextControllerValidator = _adddTextControllerValidator;
    phnoTextControllerValidator = _phnoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    amtTextControllerValidator = _amtTextControllerValidator;
    modeTextControllerValidator = _modeTextControllerValidator;
    trxnidTextControllerValidator = _trxnidTextControllerValidator;
  }

  @override
  void dispose() {
    panFocusNode?.dispose();
    panTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    adddFocusNode?.dispose();
    adddTextController?.dispose();

    phnoFocusNode?.dispose();
    phnoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    amtFocusNode?.dispose();
    amtTextController?.dispose();

    modeFocusNode?.dispose();
    modeTextController?.dispose();

    trxnidFocusNode?.dispose();
    trxnidTextController?.dispose();
  }
}
