import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'membership_payment_model.dart';
export 'membership_payment_model.dart';

class MembershipPaymentWidget extends StatefulWidget {
  const MembershipPaymentWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white;

  final Color colorbtn;
  final Color colortxt;

  @override
  State<MembershipPaymentWidget> createState() =>
      _MembershipPaymentWidgetState();
}

class _MembershipPaymentWidgetState extends State<MembershipPaymentWidget> {
  late MembershipPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MembershipPaymentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'membership_payment'});
    _model.addressController ??= TextEditingController();
    _model.addressFocusNode ??= FocusNode();

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.phonenumberController1 ??= TextEditingController();
    _model.phonenumberFocusNode1 ??= FocusNode();

    _model.phonenumberController2 ??= TextEditingController();
    _model.phonenumberFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFEC7834),
                      FlutterFlowTheme.of(context).info
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(0.87, -1.0),
                    end: const AlignmentDirectional(-0.87, 1.0),
                  ),
                ),
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 15.0),
                              child: Hero(
                                tag: 'bss',
                                transitionOnUserGestures: true,
                                child: Container(
                                  width: 120.0,
                                  height: 120.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/BSS_logo.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 50.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderColor: const Color(0x00FFFFFF),
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).info,
                                icon: const Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'MEMBERSHIP_PAYMENT_arrow_back_ios_sharp_');
                                  logFirebaseEvent('IconButton_navigate_to');

                                  context.pushNamed(
                                    'Profile',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 600),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              't2umratw' /* Memberships */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'SuperTall',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowRadioButton(
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'i3zn3da4' /* Gold */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'elrz58f3' /* Silver */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'bo3wmjzi' /* General */,
                                      )
                                    ].toList(),
                                    onChanged: (val) => setState(() {}),
                                    controller: _model.mainValueController ??=
                                        FormFieldController<String>(null),
                                    optionHeight: 32.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: const Color(0xFF322E5C),
                                          fontSize: 16.0,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor: Colors.white,
                                    inactiveRadioButtonColor: const Color(0xFF322E5C),
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ],
                              ),
                            ),
                            if ((_model.mainValue == 'Gold') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 15.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/vnimc_1.png',
                                    width: 360.0,
                                    height: 212.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            if ((_model.mainValue == 'Silver') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 15.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/49svh_2.png',
                                    width: 360.0,
                                    height: 212.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            if ((_model.mainValue == 'General') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 15.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/3a9k2_3.png',
                                    width: 360.0,
                                    height: 212.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    18.0, 0.0, 18.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.addressController,
                                    focusNode: _model.addressFocusNode,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '4dcvfsdo' /* Permanent Address */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.black,
                                        ),
                                    keyboardType: TextInputType.streetAddress,
                                    validator: _model.addressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    18.0, 16.0, 18.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.emailAddressController,
                                    focusNode: _model.emailAddressFocusNode,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '969evcvc' /* Email */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.black,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .emailAddressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    18.0, 16.0, 18.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.phonenumberController1,
                                    focusNode: _model.phonenumberFocusNode1,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '8zi1x23t' /* Phone Number */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.black,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .phonenumberController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    18.0, 16.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'z3gojcme' /* Is your Whatsapp number 
same ... */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF322E5C),
                                            fontSize: 18.0,
                                          ),
                                    ),
                                    FlutterFlowRadioButton(
                                      options: [
                                        FFLocalizations.of(context).getText(
                                          'ruligflb' /* Yes */,
                                        ),
                                        FFLocalizations.of(context).getText(
                                          'dm3niybf' /* No */,
                                        )
                                      ].toList(),
                                      onChanged: (val) => setState(() {}),
                                      controller:
                                          _model.radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                      optionHeight: 32.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: const Color(0xFF322E5C),
                                            fontSize: 16.0,
                                          ),
                                      selectedTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Raleway',
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      buttonPosition: RadioButtonPosition.left,
                                      direction: Axis.vertical,
                                      radioButtonColor: Colors.black,
                                      inactiveRadioButtonColor:
                                          const Color(0xFF322E5C),
                                      toggleable: false,
                                      horizontalAlignment: WrapAlignment.start,
                                      verticalAlignment:
                                          WrapCrossAlignment.start,
                                    ),
                                  ],
                                ),
                              ),
                            if ((_model.radioButtonValue == 'No') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    18.0, 0.0, 18.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.phonenumberController2,
                                    focusNode: _model.phonenumberFocusNode2,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'ba1pz9st' /* Whatsapp Number */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.black,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .phonenumberController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      18.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'uxeln26d' /* Click the below button for the... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF322E5C),
                                          fontSize: 18.0,
                                        ),
                                  ),
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MEMBERSHIP_PAYMENT_SHOW_Q_R_CODE_BTN_ON_');
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed(
                                        'payment',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ncugyc1q' /* Show QR Code */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF322E5C),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                            if ((_model.uploadedFileUrl == '') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'MEMBERSHIP_PAYMENT_Container_hj3b8m62_ON');
                                    logFirebaseEvent(
                                        'Container_upload_media_to_firebase');
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                      backgroundColor: Colors.white,
                                      textColor: const Color(0xFF2F2F2F),
                                      pickerFontFamily: 'Raleway',
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      var downloadUrls = <String>[];
                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();

                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                              selectedMedia.length &&
                                          downloadUrls.length ==
                                              selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                          _model.uploadedFileUrl =
                                              downloadUrls.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 384.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'zj3imbm5' /* Payment Screenshot */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Raleway',
                                                color: Colors.black,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if ((_model.uploadedFileUrl != '') &&
                                (_model.mainValue != null &&
                                    _model.mainValue != ''))
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MEMBERSHIP_PAYMENT_Text_e6wxr0ro_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_launch_u_r_l');
                                            await launchURL(
                                                _model.uploadedFileUrl);
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'czaeg4se' /* Check the image */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: const Color(0xFF322E5C),
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 18.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'MEMBERSHIP_PAYMENT_Text_39fnkc7b_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_clear_uploaded_data');
                                            setState(() {
                                              _model.isDataUploading = false;
                                              _model.uploadedLocalFile =
                                                  FFUploadedFile(
                                                      bytes: Uint8List.fromList(
                                                          []));
                                              _model.uploadedFileUrl = '';
                                            });
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'o8pqpo3t' /* Change image */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (_model.mainValue != null &&
                                _model.mainValue != '')
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'MEMBERSHIP_PAYMENT_GET_MEMBERSHIP_BTN_ON');
                                      logFirebaseEvent('Button_validate_form');
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      if (_model.mainValue == null) {
                                        return;
                                      }
                                      if (_model.radioButtonValue == null) {
                                        return;
                                      }
                                      if (_model.uploadedFileUrl.isEmpty) {
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          maxWidth: 3840.00,
                                          maxHeight: 2160.00,
                                          allowPhoto: true,
                                          backgroundColor: Colors.white,
                                          textColor: const Color(0xFF2F2F2F),
                                          pickerFontFamily: 'Raleway',
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          setState(() =>
                                              _model.isDataUploading = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            _model.isDataUploading = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            setState(() {
                                              _model.uploadedLocalFile =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl =
                                                  downloadUrls.first;
                                            });
                                            showUploadMessage(
                                                context, 'Success!');
                                          } else {
                                            setState(() {});
                                            showUploadMessage(context,
                                                'Failed to upload data');
                                            return;
                                          }
                                        }

                                        return;
                                      }
                                      logFirebaseEvent('Button_backend_call');

                                      await MembershipRecord.collection
                                          .doc()
                                          .set(createMembershipRecordData(
                                            name: currentUserDisplayName,
                                            type: _model.mainValue,
                                            permanentAddress:
                                                _model.addressController.text,
                                            mobileNo: int.tryParse(_model
                                                .phonenumberController1.text),
                                            whatsappNo:
                                                _model.radioButtonValue == 'Yes'
                                                    ? int.tryParse(_model
                                                        .phonenumberController1
                                                        .text)
                                                    : int.tryParse(_model
                                                        .phonenumberController2
                                                        .text),
                                            emailId: _model
                                                .emailAddressController.text,
                                            date: getCurrentTimestamp,
                                            paymentScreenshot:
                                                _model.uploadedFileUrl,
                                          ));
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamed(
                                        'Profile',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 600),
                                          ),
                                        },
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '61c4xd6j' /* Get Membership */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF322E5C),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
