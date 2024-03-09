import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'profile_edit_model.dart';
export 'profile_edit_model.dart';

class ProfileEditWidget extends StatefulWidget {
  const ProfileEditWidget({super.key});

  @override
  State<ProfileEditWidget> createState() => _ProfileEditWidgetState();
}

class _ProfileEditWidgetState extends State<ProfileEditWidget> {
  late ProfileEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileEditModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'profile_edit'});
    _model.yourNameController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.yourNameFocusNode ??= FocusNode();

    _model.phoneController ??= TextEditingController(text: currentPhoneNumber);
    _model.phoneFocusNode ??= FocusNode();

    _model.emailController1 ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode1 ??= FocusNode();

    _model.emailController2 ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode2 ??= FocusNode();
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
                        'PROFILE_EDIT_arrow_back_ios_sharp_ICN_ON');
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
                    'dc53igt5' /* Update your Profile */,
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'SuperTall',
                        color: const Color(0xFF14181B),
                        fontSize: 22.0,
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
                  controller: _model.yourNameController,
                  focusNode: _model.yourNameFocusNode,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'oual5qf7' /* Your Name */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                              fontSize: 14.0,
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
                        fontWeight: FontWeight.normal,
                      ),
                  validator:
                      _model.yourNameControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: AuthUserStreamWidget(
                builder: (context) => TextFormField(
                  controller: _model.phoneController,
                  focusNode: _model.phoneFocusNode,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'rujgm8in' /* Your Phone Number */,
                    ),
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: Colors.black,
                              fontSize: 14.0,
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
                        fontWeight: FontWeight.normal,
                      ),
                  validator:
                      _model.phoneControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: TextFormField(
                controller: _model.emailController1,
                focusNode: _model.emailFocusNode1,
                textCapitalization: TextCapitalization.words,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '7ttxdo9y' /* Your Email */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 14.0,
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
                      fontWeight: FontWeight.normal,
                    ),
                validator:
                    _model.emailController1Validator.asValidator(context),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 12.0),
              child: TextFormField(
                controller: _model.emailController2,
                focusNode: _model.emailFocusNode2,
                textCapitalization: TextCapitalization.words,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'y9eh1rr0' /* Your City */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 14.0,
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
                      fontWeight: FontWeight.normal,
                    ),
                validator:
                    _model.emailController2Validator.asValidator(context),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 12.0),
              child: StreamBuilder<List<CitiesRecord>>(
                stream: queryCitiesRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitThreeBounce(
                          color: Color(0xFFEC7834),
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<CitiesRecord> dropDownCitiesRecordList = snapshot.data!;
                  return FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(null),
                    options: dropDownCitiesRecordList
                        .map((e) => e.name)
                        .toList()
                        .sortedList((e) => e),
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue = val),
                    width: 353.0,
                    height: 56.0,
                    searchHintTextStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Raleway',
                              color: const Color(0xFF322E5C),
                            ),
                    searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: FFLocalizations.of(context).getText(
                      '1q5mcy7n' /* Change your city */,
                    ),
                    searchHintText: FFLocalizations.of(context).getText(
                      'rejpirq5' /* Search for an item... */,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: Colors.white,
                    elevation: 2.0,
                    borderColor: const Color(0xFFE0E3E7),
                    borderWidth: 2.0,
                    borderRadius: 25.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: true,
                    isMultiSelect: false,
                  );
                },
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
                  logFirebaseEvent('PROFILE_EDIT_PAGE_Text_860iaybo_ON_TAP');
                  logFirebaseEvent('Text_backend_call');

                  await currentUserReference!.update(createUsersRecordData(
                    email: _model.emailController1.text,
                    displayName: _model.yourNameController.text,
                    phoneNumber: _model.phoneController.text,
                    city: _model.dropDownValue,
                  ));
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
                    'as6wb4ha' /* Save Changes */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SuperTall',
                        color: const Color(0xFF4A456B),
                        fontSize: 18.0,
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
