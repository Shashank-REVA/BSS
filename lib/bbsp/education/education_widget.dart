import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'education_model.dart';
export 'education_model.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white;

  final Color colorbtn;
  final Color colortxt;

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  late EducationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EducationModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'education'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                StickyHeader(
                  overlapHeaders: false,
                  header: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).info,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
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
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_HOME_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.goNamed(
                                            'history',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          's9yxqguc' /* Home */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: widget.colorbtn,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: widget.colortxt,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_CITIES_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.goNamed(
                                            'search',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '8q3fcudr' /* Cities */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_ACCOUNT_BTN_ON_TAP');
                                          if (loggedIn) {
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.goNamed(
                                              'Profile',
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

                                            context.goNamed(
                                              'login',
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
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'uh0pb7v1' /* Account */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_EVENTS_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.pushNamed(
                                            'events',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '8dydlf2f' /* Events */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_facilities_ON_TAP');
                                          logFirebaseEvent(
                                              'facilities_navigate_to');

                                          context.pushNamed(
                                            'facilities',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'v1wvkghn' /* Facilities */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'EDUCATION_PAGE_DONATION_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_navigate_to');

                                          context.goNamed(
                                            'donation',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'er4p6u0r' /* Donation */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 24.0, 10.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 5.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 0.0, 5.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'usvx3kaf' /* Education Program */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFFEC7834),
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  content: Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'ujc9inpo' /* A large majority of India’s po... */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'o62sxynv' /* Pranavananda Computer Institut... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SuperTall',
                                      color: const Color(0xFF322E5C),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'r3h35ck4' /* The Sangha has setup a compute... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'oq30npla' /* Scripture Studies */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SuperTall',
                                      color: const Color(0xFF322E5C),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'ow9lwb3e' /* The Sangha, since 1949, has se... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 5.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1nv3n90y' /* Physical Education */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SuperTall',
                                      color: const Color(0xFF322E5C),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '9bte7t1w' /* The Sangha believes in proper ... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 10.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '7uutk702' /* 2017-2018 Education Program by... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'SuperTall',
                                      color: const Color(0xFFEC7834),
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '45wosvia' /* i) Lot No. 8, Kakdwip */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFF322E5C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '16o6d98z' /* ii) Manmathapur Pranav Mandir,... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFF322E5C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'uh10h1hh' /* iii) Pranavananda Vidyamandirs... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFF322E5C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'oxxvf4ww' /* iv) Kanmari (Sunderban), North... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFF322E5C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'mi6rfm8p' /* v) Khatra */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SuperTall',
                                    color: const Color(0xFF322E5C),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
