import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'membership_payment_widget.dart' show MembershipPaymentWidget;
import 'package:flutter/material.dart';

class MembershipPaymentModel extends FlutterFlowModel<MembershipPaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for main widget.
  FormFieldController<String>? mainValueController;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  String? _addressTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nxg1h94b' /* Address is required */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6367ksdz' /* Email is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode1;
  TextEditingController? phonenumberTextController1;
  String? Function(BuildContext, String?)? phonenumberTextController1Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode2;
  TextEditingController? phonenumberTextController2;
  String? Function(BuildContext, String?)? phonenumberTextController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    addressTextControllerValidator = _addressTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
  }

  @override
  void dispose() {
    addressFocusNode?.dispose();
    addressTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    phonenumberFocusNode1?.dispose();
    phonenumberTextController1?.dispose();

    phonenumberFocusNode2?.dispose();
    phonenumberTextController2?.dispose();
  }

  /// Additional helper methods.
  String? get mainValue => mainValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
