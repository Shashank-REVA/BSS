import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'beti_bachao_beti_padhao_no_donation_model.dart';
export 'beti_bachao_beti_padhao_no_donation_model.dart';

class BetiBachaoBetiPadhaoNoDonationWidget extends StatefulWidget {
  const BetiBachaoBetiPadhaoNoDonationWidget({super.key});

  @override
  State<BetiBachaoBetiPadhaoNoDonationWidget> createState() =>
      _BetiBachaoBetiPadhaoNoDonationWidgetState();
}

class _BetiBachaoBetiPadhaoNoDonationWidgetState
    extends State<BetiBachaoBetiPadhaoNoDonationWidget>
    with TickerProviderStateMixin {
  late BetiBachaoBetiPadhaoNoDonationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BetiBachaoBetiPadhaoNoDonationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'beti-bachao-beti-padhao-no_donation'});
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-10.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 50.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 50.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 101.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: Colors.white,
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Color(0xFF101213),
                            size: 20.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'BETI_BACHAO_BETI_PADHAO_NO_DONATION_arro');
                            logFirebaseEvent('IconButton_navigate_to');

                            context.pushNamed(
                              'allpages',
                              queryParameters: {
                                'tabpageindex': serializeParam(
                                  5,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'c8zycijf' /* Donation */,
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'SuperTall',
                      color: const Color(0xFFEC7834),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: false,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '8lkn6ed3' /* Beti Bachao-Beti Padhao */,
                ),
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'SuperTall',
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'jyqgkb7q' /* We will make this page filled ... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Raleway',
                        color: const Color(0xFF2F2F2F),
                        fontSize: 25.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
