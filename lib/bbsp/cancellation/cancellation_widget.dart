import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'cancellation_model.dart';
export 'cancellation_model.dart';

class CancellationWidget extends StatefulWidget {
  const CancellationWidget({
    super.key,
    required this.facility,
    required this.city,
  });

  final String? facility;
  final String? city;

  @override
  State<CancellationWidget> createState() => _CancellationWidgetState();
}

class _CancellationWidgetState extends State<CancellationWidget> {
  late CancellationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancellationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'cancellation'});
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
                      color: const Color(0xFFFF0005),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFFF0005),
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 60.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                child: Text(
                  'Cancellation Confirmed!',
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'cnf18qxj' /* Your booking has been cancelle... */,
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
                    logFirebaseEvent('CANCELLATION_PAGE_OKAY_BTN_ON_TAP');
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
                          duration: Duration(milliseconds: 600),
                        ),
                      },
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'g1xes6gd' /* Okay */,
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
