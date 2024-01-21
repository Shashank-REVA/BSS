import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'booking_confirm_model.dart';
export 'booking_confirm_model.dart';

class BookingConfirmWidget extends StatefulWidget {
  const BookingConfirmWidget({
    super.key,
    required this.city,
    required this.facility,
  });

  final String? city;
  final String? facility;

  @override
  _BookingConfirmWidgetState createState() => _BookingConfirmWidgetState();
}

class _BookingConfirmWidgetState extends State<BookingConfirmWidget> {
  late BookingConfirmModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingConfirmModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'booking_confirm'});
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

    return StreamBuilder<List<CitiesRecord>>(
      stream: queryCitiesRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitThreeBounce(
                  color: Color(0xFFEC7834),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<CitiesRecord> bookingConfirmCitiesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final bookingConfirmCitiesRecord =
            bookingConfirmCitiesRecordList.isNotEmpty
                ? bookingConfirmCitiesRecordList.first
                : null;
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'Booking Confirmed for ${widget.facility} in ${widget.city}!',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Raleway',
                            color: const Color(0xFF322E5C),
                            fontSize: 36.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'nx0e2vo3' /* Your booking has been confirme... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Raleway',
                              color: const Color(0xFF2F2F2F),
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'BOOKING_CONFIRM_PAGE_OKAY_BTN_ON_TAP');
                        logFirebaseEvent('Button_navigate_to');

                        context.goNamed(
                          'bookings',
                          queryParameters: {
                            'facility': serializeParam(
                              widget.facility,
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
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 900),
                            ),
                          },
                        );
                      },
                      text: FFLocalizations.of(context).getText(
                        'ca3kuf2v' /* Okay */,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF322E5C),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 20.0,
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
      },
    );
  }
}
