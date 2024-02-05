import '/auth/base_auth_user_provider.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'facilities_outline_model.dart';
export 'facilities_outline_model.dart';

class FacilitiesOutlineWidget extends StatefulWidget {
  const FacilitiesOutlineWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    String? selectedfacility,
    required this.city,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white,
        selectedfacility = selectedfacility ?? 'Facility';

  final Color colorbtn;
  final Color colortxt;
  final String selectedfacility;
  final String? city;

  @override
  State<FacilitiesOutlineWidget> createState() =>
      _FacilitiesOutlineWidgetState();
}

class _FacilitiesOutlineWidgetState extends State<FacilitiesOutlineWidget>
    with TickerProviderStateMixin {
  late FacilitiesOutlineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 700.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 30.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FacilitiesOutlineModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'facilities_outline'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FACILITIES_OUTLINE_facilities_outline_ON');
      logFirebaseEvent('facilities_outline_scroll_to');
      await _model.rowController?.animateTo(
        _model.rowController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
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
          child: Stack(
            children: [
              SingleChildScrollView(
                primary: false,
                controller: _model.columnnn,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StickyHeader(
                      overlapHeaders: false,
                      header: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
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
                                  controller: _model.rowController,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'FACILITIES_OUTLINE_PAGE_HOME_BTN_ON_TAP');
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
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'y4m6sda5' /* Home */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 10.0, 24.0, 10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'FACILITIES_OUTLINE_CITIES_BTN_ON_TAP');
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
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '7lei9vk1' /* Cities */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 10.0, 24.0, 10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'FACILITIES_OUTLINE_ACCOUNT_BTN_ON_TAP');
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
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'ms5qnrdu' /* Account */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 10.0, 24.0, 10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'FACILITIES_OUTLINE_EVENTS_BTN_ON_TAP');
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
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'l0as6vks' /* Events */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 10.0, 24.0, 10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'FACILITIES_OUTLINE_facilities_ON_TAP');
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
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'ncgm0l99' /* Facilities */,
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                'FACILITIES_OUTLINE_DONATION_BTN_ON_TAP');
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
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                ),
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '5ce7chi7' /* Donation */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 10.0, 24.0, 10.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: Colors.black,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      7.0, 0.0, 0.0, 5.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'pbzmvpcs' /* Facilities */,
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      7.0, 0.0, 0.0, 5.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.city,
                                      'City',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'SuperTall',
                                          color: const Color(0xFF2F2F2F),
                                          fontSize: 18.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      content: StreamBuilder<List<CitiesRecord>>(
                        stream: queryCitiesRecord(
                          singleRecord: true,
                        ),
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
                          List<CitiesRecord> columnCitiesRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final columnCitiesRecord =
                              columnCitiesRecordList.isNotEmpty
                                  ? columnCitiesRecordList.first
                                  : null;
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    7.0, 0.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  controller: _model.columnController1,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 20.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zr47t0wk' /* Function Hall Booking */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '08kns03i' /* Puja Booking */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7czn45vf' /* Guest PickUp & Drop */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rgu784cw' /* Guest Room Booking */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fgmzv1m9' /* Annadan Seva */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'keqeusra' /* Yoga */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ocle0vcd' /* Free Distributions of Saress, ... */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2hy34wrk' /* Death Rituals */,
                                              )
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownValue = val),
                                            width: 300.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: const Color(0xFF2F2F2F),
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'gmmo2x91' /* Please select... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            elevation: 3.0,
                                            borderColor: const Color(0x49000000),
                                            borderWidth: 1.0,
                                            borderRadius: 25.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                      ),
                                      if (_model.dropDownValue ==
                                          'Function Hall Booking')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Function Hall Booking')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9ofwuvr0' /* Bharat Sevashram Sangha Branch... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Puja Booking')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Guest PickUp & Drop')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Guest Room Booking')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Guest Room Booking')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x6vmyvto' /* Bharat Sevashram Sangha provid... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Annadan Seva')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Annadan Seva')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kbd14gye' /* Free "ANNADAN SEVA" to feed th... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Annadan Seva')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ppil1ph5' /* Sponsorship: */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Raleway',
                                                            color: const Color(
                                                                0xFF2F2F2F),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 20.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pdcmr36a' /* For 50 Persons Seva: Rs. 1500/... */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's46ymyq1' /* For 100 Persons Seva: Rs. 3000... */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ium1v5u4' /* For 200 Persons Seva: Rs. 5000... */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'auc9l0vg' /* For 300 Persons Seva: Rs. 7000... */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Annadan Seva')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'givamfnh' /* Minimum Donation accepted is R... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue == 'Yoga')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue == 'Yoga')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'riu7zgor' /* Days: Monday to Friday */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue == 'Yoga')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ra21k66z' /* Timings: */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Raleway',
                                                            color: const Color(
                                                                0xFF2F2F2F),
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 160.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tehsxgt6' /* 5:30a.m to 6:30a.m */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0ah1tqz8' /* 8:30a.m to 9:30a.m */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3flvbuwn' /* 5:00p.m to 6:00p.m */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e0jc1iwr' /* 10:00a.m to 11:00a.m */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Raleway',
                                                              color: const Color(
                                                                  0xFF2F2F2F),
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (_model.dropDownValue == 'Yoga')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lq3namf8' /* Age group 6 to 16 years */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue == 'Yoga')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zkbqlu6o' /* Children Yoga Class: 4:45p.m t... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Free Distributions of Saress, Cloths & Blankets to the Needy')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Free Distributions of Saress, Cloths & Blankets to the Needy')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2d8td4pb' /* Bharat Sevashram Sangha has be... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Death Rituals')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              _model.dropDownValue!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 26.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Death Rituals')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ef1s06rj' /* Bharat Sevashram Sangha provid... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      if (_model.dropDownValue ==
                                          'Death Rituals')
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'jbsh5njb' /* Pandit/Pujari Brahmin is Also ... */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  height: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: SingleChildScrollView(
                      controller: _model.columnController2,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (_model.dropDownValue == 'Function Hall Booking')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_FUNCTION_HAL');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'wncsgsnr' /* Book for Function Hall */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation1']!),
                            ),
                          if (_model.dropDownValue == 'Puja Booking')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_PUJA_BTN_ON_');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'mnwtpuqj' /* Book for Puja */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation2']!),
                            ),
                          if (_model.dropDownValue == 'Guest PickUp & Drop')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_GUEST_PICK_U');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'uf8vypk4' /* Book for Guest PickUp & Drop */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation3']!),
                            ),
                          if (_model.dropDownValue == 'Guest Room Booking')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_GUEST_ROOM_B');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'xr7wy05c' /* Book for Guest Room Booking */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation4']!),
                            ),
                          if (_model.dropDownValue == 'Annadan Seva')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_ANNADAN_SEVA');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'imlrua9z' /* Book for Annadan Seva */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation5']!),
                            ),
                          if (_model.dropDownValue == 'Death Rituals')
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FACILITIES_OUTLINE_BOOK_FOR_DEATH_RITUAL');
                                  if (loggedIn) {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'facilities_booking',
                                      queryParameters: {
                                        'facilityselected': serializeParam(
                                          _model.dropDownValue,
                                          ParamType.String,
                                        ),
                                        'city': serializeParam(
                                          widget.city,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  } else {
                                    logFirebaseEvent('Button_navigate_to');

                                    context.pushNamed(
                                      'loginCopy',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 600),
                                        ),
                                      },
                                    );
                                  }
                                },
                                text: FFLocalizations.of(context).getText(
                                  'dn0mvb8b' /* Book for Death Rituals */,
                                ),
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF322E5C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation6']!),
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
    );
  }
}
