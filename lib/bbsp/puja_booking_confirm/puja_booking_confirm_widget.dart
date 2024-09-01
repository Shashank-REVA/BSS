import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'puja_booking_confirm_model.dart';
export 'puja_booking_confirm_model.dart';

class PujaBookingConfirmWidget extends StatefulWidget {
  const PujaBookingConfirmWidget({
    super.key,
    required this.city,
    this.facility,
  });

  final String? city;
  final String? facility;

  @override
  State<PujaBookingConfirmWidget> createState() =>
      _PujaBookingConfirmWidgetState();
}

class _PujaBookingConfirmWidgetState extends State<PujaBookingConfirmWidget> {
  late PujaBookingConfirmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PujaBookingConfirmModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'puja_booking_confirm'});
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
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
                  child: Container(
                    width: 140.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: const Color(0x4C4B39EF),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF322E5C),
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Icon(
                        Icons.check_rounded,
                        color: Color(0xFF322E5C),
                        size: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => Text(
                    'Puja Booking Confirmed in ${valueOrDefault(currentUserDocument?.city, '')}!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Raleway',
                          color: const Color(0xFF322E5C),
                          fontSize: 36.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'vzdlohpi' /* Your booking has been confirme... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Raleway',
                          color: const Color(0xFF2F2F2F),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('PUJA_BOOKING_CONFIRM_OKAY_BTN_ON_TAP');
                    logFirebaseEvent('Button_navigate_to');

                    context.goNamed(
                      'bookings',
                      queryParameters: {
                        'city': serializeParam(
                          valueOrDefault(currentUserDocument?.city, ''),
                          ParamType.String,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'v7rnlhlg' /* Okay */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF322E5C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                    borderRadius: BorderRadius.circular(20.0),
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
