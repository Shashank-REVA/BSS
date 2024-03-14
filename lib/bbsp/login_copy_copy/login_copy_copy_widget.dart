import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_copy_copy_model.dart';
export 'login_copy_copy_model.dart';

class LoginCopyCopyWidget extends StatefulWidget {
  const LoginCopyCopyWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    this.facility,
    this.city,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white;

  final Color colorbtn;
  final Color colortxt;
  final String? facility;
  final String? city;

  @override
  State<LoginCopyCopyWidget> createState() => _LoginCopyCopyWidgetState();
}

class _LoginCopyCopyWidgetState extends State<LoginCopyCopyWidget>
    with TickerProviderStateMixin {
  late LoginCopyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.0, 140.0),
          end: const Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(0.9, 0.9),
          end: const Offset(1.0, 1.0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: const Offset(-0.349, 0),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginCopyCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'loginCopyCopy'});
    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
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
                width: 100.0,
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 30.0, 16.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: 570.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '3iq5i4gv' /* Login */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'SuperTall',
                                                color: Colors.black,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0xFF322E5C),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.emailAddressController,
                                              focusNode:
                                                  _model.emailAddressFocusNode,
                                              autofillHints: const [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'gof9mnyb' /* Email */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                filled: true,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color: Colors.black,
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _model
                                                  .emailAddressControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0xFF322E5C),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.passwordController,
                                              focusNode:
                                                  _model.passwordFocusNode,
                                              autofillHints: const [
                                                AutofillHints.password
                                              ],
                                              obscureText:
                                                  !_model.passwordVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '6b5fxc5g' /* Password */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                        ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                                filled: true,
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => _model
                                                            .passwordVisibility =
                                                        !_model
                                                            .passwordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.passwordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color: Colors.black,
                                                      ),
                                              validator: _model
                                                  .passwordControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'LOGIN_COPY_COPY_PAGE_LOG_IN_BTN_ON_TAP');
                                            logFirebaseEvent('Button_auth');
                                            GoRouter.of(context)
                                                .prepareAuthEvent();

                                            final user = await authManager
                                                .signInWithEmail(
                                              context,
                                              _model
                                                  .emailAddressController.text,
                                              _model.passwordController.text,
                                            );
                                            if (user == null) {
                                              return;
                                            }

                                            if (valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        '') !=
                                                    '') {
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamedAuth(
                                                'allpages',
                                                context.mounted,
                                                queryParameters: {
                                                  'tabpageindex':
                                                      serializeParam(
                                                    4,
                                                    ParamType.int,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 600),
                                                  ),
                                                },
                                              );
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.pushNamedAuth(
                                                  'goggle_loginCopyCopy',
                                                  context.mounted);
                                            }
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'dad5n4q1' /* Log In */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 44.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF322E5C),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'SuperTall',
                                                      color: Colors.white,
                                                      useGoogleFonts: false,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'LOGIN_COPY_COPY_PAGE_SIGN_UP_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.pushNamed(
                                              'signup',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'vf9yroc2' /* Sign Up */,
                                          ),
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 44.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'SuperTall',
                                                      color: Colors.black,
                                                      useGoogleFonts: false,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'quqgenfv' /* or Sign In with */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'SuperTall',
                                                color: Colors.black,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: const Color(0x00FFFFFF),
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor: const Color(0x00FFFFFF),
                                              icon: const FaIcon(
                                                FontAwesomeIcons.google,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'LOGIN_COPY_COPY_PAGE_google_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_auth');
                                                GoRouter.of(context)
                                                    .prepareAuthEvent();
                                                final user = await authManager
                                                    .signInWithGoogle(context);
                                                if (user == null) {
                                                  return;
                                                }
                                                if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.city,
                                                            '') !=
                                                        '') {
                                                  logFirebaseEvent(
                                                      'IconButton_navigate_to');

                                                  context.goNamedAuth(
                                                    'allpages',
                                                    context.mounted,
                                                    queryParameters: {
                                                      'tabpageindex':
                                                          serializeParam(
                                                        4,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                } else {
                                                  logFirebaseEvent(
                                                      'IconButton_navigate_to');

                                                  context.goNamedAuth(
                                                    'goggle_loginCopyCopy',
                                                    context.mounted,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 600),
                                                      ),
                                                    },
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: const Color(0x00FFFFFF),
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor: const Color(0x00FFFFFF),
                                              icon: const FaIcon(
                                                FontAwesomeIcons.phone,
                                                color: Colors.black,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'LOGIN_COPY_COPY_PAGE_phone_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_navigate_to');
                                                if (Navigator.of(context)
                                                    .canPop()) {
                                                  context.pop();
                                                }
                                                context.pushNamed(
                                                  'phone_authCopyCopy',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 600),
                                                    ),
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 10.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'LOGIN_COPY_COPY_Text_uo9u4mkp_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_navigate_to');

                                            context.pushNamed(
                                              'forgotpassword',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'hy1dm1kn' /* Forgot password? */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'SuperTall',
                                                  color: Colors.black,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
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
