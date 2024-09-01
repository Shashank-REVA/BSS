import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/bbsp/empty_priests/empty_priests_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'facilities_puja_booking_model.dart';
export 'facilities_puja_booking_model.dart';

class FacilitiesPujaBookingWidget extends StatefulWidget {
  const FacilitiesPujaBookingWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    String? facilityselected,
    this.city,
    this.type,
    this.putype,
    this.extranote,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white,
        facilityselected = facilityselected ?? 'Facility';

  final Color colorbtn;
  final Color colortxt;
  final String facilityselected;
  final String? city;
  final String? type;
  final String? putype;
  final String? extranote;

  @override
  State<FacilitiesPujaBookingWidget> createState() =>
      _FacilitiesPujaBookingWidgetState();
}

class _FacilitiesPujaBookingWidgetState
    extends State<FacilitiesPujaBookingWidget> {
  late FacilitiesPujaBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FacilitiesPujaBookingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'facilities_puja_booking'});
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
                    ),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
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
                                    'FACILITIES_PUJA_BOOKING_arrow_back_ios_s');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.goNamed(
                                  'allpages',
                                  queryParameters: {
                                    'tabpageindex': serializeParam(
                                      4,
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
                          ),
                        ),
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  7.0, 0.0, 0.0, 5.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '0gbh29b7' /* Facilities */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'SuperTall',
                                      color: const Color(0xFFEC7834),
                                      letterSpacing: 0.0,
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
                              child: AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(currentUserDocument?.city, ''),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'SuperTall',
                                        color: const Color(0xFF2F2F2F),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    7.0, 10.0, 0.0, 15.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '9zln1h9b' /* Puja Booking */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  content: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<NewPriestsRecord>>(
                              stream: queryNewPriestsRecord(
                                queryBuilder: (newPriestsRecord) =>
                                    newPriestsRecord.where(
                                  'new_city',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.city, ''),
                                ),
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
                                List<NewPriestsRecord> rowNewPriestsRecordList =
                                    snapshot.data!;
                                final rowNewPriestsRecord =
                                    rowNewPriestsRecordList.isNotEmpty
                                        ? rowNewPriestsRecordList.first
                                        : null;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if ((rowNewPriestsRecord != null) &&
                                        (rowNewPriestsRecord.priCounter > 0))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'fasegbag' /* Puja Type :  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: const Color(0xFF2F2F2F),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((rowNewPriestsRecord != null) &&
                                        (rowNewPriestsRecord.priCounter > 0))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.putype,
                                              'Puja',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: const Color(0xFF322E5C),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<NewPriestsRecord>>(
                              stream: queryNewPriestsRecord(
                                queryBuilder: (newPriestsRecord) =>
                                    newPriestsRecord.where(
                                  'new_city',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.city, ''),
                                ),
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
                                List<NewPriestsRecord> rowNewPriestsRecordList =
                                    snapshot.data!;
                                final rowNewPriestsRecord =
                                    rowNewPriestsRecordList.isNotEmpty
                                        ? rowNewPriestsRecordList.first
                                        : null;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if ((rowNewPriestsRecord != null) &&
                                        (rowNewPriestsRecord.priCounter > 0))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'c5xylb6s' /* Selected Location :  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: const Color(0xFF2F2F2F),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    if ((rowNewPriestsRecord != null) &&
                                        (rowNewPriestsRecord.priCounter > 0))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.type,
                                              'Type',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: const Color(0xFF322E5C),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<NewPriestsRecord>>(
                              stream: queryNewPriestsRecord(
                                queryBuilder: (newPriestsRecord) =>
                                    newPriestsRecord.where(
                                  'new_city',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.city, ''),
                                ),
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
                                List<NewPriestsRecord> rowNewPriestsRecordList =
                                    snapshot.data!;
                                final rowNewPriestsRecord =
                                    rowNewPriestsRecordList.isNotEmpty
                                        ? rowNewPriestsRecordList.first
                                        : null;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if ((rowNewPriestsRecord != null) &&
                                        (rowNewPriestsRecord.priCounter > 0))
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '8nb91ihl' /* Available Priests */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: const Color(0xFF322E5C),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<List<NewPriestsRecord>>(
                                stream: queryNewPriestsRecord(
                                  queryBuilder: (newPriestsRecord) =>
                                      newPriestsRecord
                                          .where(
                                            'new_city',
                                            isEqualTo: valueOrDefault(
                                                currentUserDocument?.city, ''),
                                          )
                                          .where(
                                            'pri_counter',
                                            isGreaterThan: 0,
                                          ),
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
                                  List<NewPriestsRecord>
                                      listViewNewPriestsRecordList =
                                      snapshot.data!;
                                  if (listViewNewPriestsRecordList.isEmpty) {
                                    return const EmptyPriestsWidget();
                                  }

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewNewPriestsRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewNewPriestsRecord =
                                          listViewNewPriestsRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 20.0, 0.0),
                                                  child: Container(
                                                    width: 140.0,
                                                    height: 140.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        listViewNewPriestsRecord
                                                            .newImage,
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/admin-for-b-s-s-lqnr1b/assets/v931tgxswrcf/Windows_10_Default_Profile_Picture.svg.png',
                                                      ),
                                                      fit: BoxFit.cover,
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
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 15.0),
                                                    child: Text(
                                                      listViewNewPriestsRecord
                                                          .newName,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Raleway',
                                                            color: const Color(
                                                                0xFF322E5C),
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '07cpjfti' /* Speciality:  */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  color: const Color(
                                                                      0xFF2F2F2F),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                listViewNewPriestsRecord
                                                                    .newSpec,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Raleway',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16.0,
                                                            ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'ziuqupjv' /* Phone:  */,
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
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text:
                                                              listViewNewPriestsRecord
                                                                  .newNumber
                                                                  .toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Raleway',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'FACILITIES_PUJA_BOOKING_BOOK_BTN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                          'facilities_puja_final_booking',
                                                          queryParameters: {
                                                            'img':
                                                                serializeParam(
                                                              listViewNewPriestsRecord
                                                                  .newImage,
                                                              ParamType.String,
                                                            ),
                                                            'priname':
                                                                serializeParam(
                                                              listViewNewPriestsRecord
                                                                  .newName,
                                                              ParamType.String,
                                                            ),
                                                            'spcname':
                                                                serializeParam(
                                                              listViewNewPriestsRecord
                                                                  .newSpec,
                                                              ParamType.String,
                                                            ),
                                                            'number':
                                                                serializeParam(
                                                              listViewNewPriestsRecord
                                                                  .newNumber,
                                                              ParamType.int,
                                                            ),
                                                            'type':
                                                                serializeParam(
                                                              widget.type,
                                                              ParamType.String,
                                                            ),
                                                            'putype':
                                                                serializeParam(
                                                              widget.putype,
                                                              ParamType.String,
                                                            ),
                                                            'extranote':
                                                                serializeParam(
                                                              widget.extranote,
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                const TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      600),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ta64mwfd' /* Book */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0xFF322E5C),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
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
        ),
      ),
    );
  }
}
