import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_edit_copy_model.dart';
export 'profile_edit_copy_model.dart';

class ProfileEditCopyWidget extends StatefulWidget {
  const ProfileEditCopyWidget({super.key});

  @override
  State<ProfileEditCopyWidget> createState() => _ProfileEditCopyWidgetState();
}

class _ProfileEditCopyWidgetState extends State<ProfileEditCopyWidget> {
  late ProfileEditCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileEditCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'profile_editCopy'});
    _model.yourNameTextController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.yourNameFocusNode ??= FocusNode();

    _model.phoneTextController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.phoneFocusNode ??= FocusNode();

    _model.emailTextController ??=
        TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).info,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
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
                        'PROFILE_EDIT_COPY_arrow_back_ios_sharp_I');
                    logFirebaseEvent('IconButton_navigate_back');
                    context.safePop();
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'beys83ub' /* Complete your Profile */,
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'SuperTall',
                        color: const Color(0xFF14181B),
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: AuthUserStreamWidget(
                builder: (context) => TextFormField(
                  controller: _model.yourNameTextController,
                  focusNode: _model.yourNameFocusNode,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      '4igrdvt9' /* Your Name */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE0E3E7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF4B39EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Ubuntu',
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  validator: _model.yourNameTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: AuthUserStreamWidget(
                builder: (context) => TextFormField(
                  controller: _model.phoneTextController,
                  focusNode: _model.phoneFocusNode,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'w05j8dbm' /* Your Phone Number */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFE0E3E7),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF4B39EF),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFFF5963),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Ubuntu',
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  validator:
                      _model.phoneTextControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: TextFormField(
                controller: _model.emailTextController,
                focusNode: _model.emailFocusNode,
                textCapitalization: TextCapitalization.words,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    't1qavwrb' /* Your Email */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFE0E3E7),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF4B39EF),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFFF5963),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFFF5963),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Ubuntu',
                      color: Colors.black,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
                validator:
                    _model.emailTextControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('PROFILE_EDIT_COPY_Text_8m56025v_ON_TAP');
                  logFirebaseEvent('Text_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    email: _model.emailTextController.text,
                    displayName: _model.yourNameTextController.text,
                    phoneNumber: _model.phoneTextController.text,
                  ));
                  logFirebaseEvent('Text_reset_form_fields');
                  setState(() {
                    _model.yourNameTextController?.text =
                        currentUserDisplayName;
                    _model.phoneTextController?.text = currentPhoneNumber;
                    _model.emailTextController?.text = currentUserEmail;
                  });
                  logFirebaseEvent('Text_navigate_to');

                  context.goNamed(
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
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ybp7xawv' /* Save */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SuperTall',
                        color: const Color(0xFF4A456B),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
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
