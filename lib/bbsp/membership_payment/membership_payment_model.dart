import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'membership_payment_widget.dart' show MembershipPaymentWidget;
import 'package:flutter/material.dart';

class MembershipPaymentModel extends FlutterFlowModel<MembershipPaymentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode1;
  TextEditingController? phonenumberController1;
  String? Function(BuildContext, String?)? phonenumberController1Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
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
  void initState(BuildContext context) {}

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

  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
