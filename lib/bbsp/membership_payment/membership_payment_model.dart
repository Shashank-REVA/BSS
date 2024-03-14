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
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nxg1h94b' /* Address is required */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? phonenumberController1;
  String? Function(BuildContext, String?)? phonenumberController1Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode2;
  TextEditingController? phonenumberController2;
  String? Function(BuildContext, String?)? phonenumberController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    addressControllerValidator = _addressControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addressFocusNode?.dispose();
    addressController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    phonenumberFocusNode1?.dispose();
    phonenumberController1?.dispose();

    phonenumberFocusNode2?.dispose();
    phonenumberController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get mainValue => mainValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
