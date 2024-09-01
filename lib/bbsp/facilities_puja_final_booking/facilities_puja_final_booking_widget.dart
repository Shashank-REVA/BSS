import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'facilities_puja_final_booking_model.dart';
export 'facilities_puja_final_booking_model.dart';

class FacilitiesPujaFinalBookingWidget extends StatefulWidget {
  const FacilitiesPujaFinalBookingWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    String? facilityselected,
    this.city,
    required this.img,
    required this.priname,
    required this.spcname,
    required this.number,
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
  final String? img;
  final String? priname;
  final String? spcname;
  final int? number;
  final String? type;
  final String? putype;
  final String? extranote;

  @override
  State<FacilitiesPujaFinalBookingWidget> createState() =>
      _FacilitiesPujaFinalBookingWidgetState();
}

class _FacilitiesPujaFinalBookingWidgetState
    extends State<FacilitiesPujaFinalBookingWidget> {
  late FacilitiesPujaFinalBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FacilitiesPujaFinalBookingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'facilities_puja_final_booking'});
    _model.textController1 ??= TextEditingController(text: currentPhoneNumber);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
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
                                    'FACILITIES_PUJA_FINAL_BOOKING_arrow_back');
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
                                  '28be0u89' /* Facilities */,
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
                                    'p6a3fryg' /* Puja Booking */,
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
                                                  0.0, 0.0, 0.0, 15.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'sv3pcpxc' /* Selected Location :  */,
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 20.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Container(
                                            width: 140.0,
                                            height: 140.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                widget.img,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/admin-for-b-s-s-lqnr1b/assets/v931tgxswrcf/Windows_10_Default_Profile_Picture.svg.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 15.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.priname,
                                                'Priest Name',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      '06z2tzxi' /* Speciality:  */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color:
                                                              const Color(0xFF2F2F2F),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      widget.spcname,
                                                      'Speciallity',
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Raleway',
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.0,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'q2sqpl4w' /* Phone:  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color:
                                                            const Color(0xFF2F2F2F),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget.number?.toString(),
                                                    'Phone Number',
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Raleway',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 14.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '8ueaa788' /* Booking  */,
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
                              FlutterFlowRadioButton(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'urwiw7dz' /* FOR ME */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'wcpg0zhn' /* FOR OTHERS */,
                                  )
                                ].toList(),
                                onChanged: (val) => setState(() {}),
                                controller:
                                    _model.radioButtonValueController ??=
                                        FormFieldController<String>(null),
                                optionHeight: 32.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                selectedTextStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Raleway',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor: const Color(0xFF32235C),
                                inactiveRadioButtonColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.start,
                              ),
                            ],
                          ),
                          if (_model.radioButtonValue == 'FOR ME')
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    currentUserDisplayName,
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
                            ),
                          Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.radioButtonValue == 'FOR ME')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 8.0, 10.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => TextFormField(
                                        controller: _model.textController1,
                                        focusNode: _model.textFieldFocusNode1,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '2pkww2u0' /* Phone Number */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFD5DAE0),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: const TextInputType
                                            .numberWithOptions(decimal: true),
                                        validator: _model
                                            .textController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (_model.radioButtonValue == 'FOR ME')
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'FACILITIES_PUJA_FINAL_BOOKING_date_forme');
                                            logFirebaseEvent(
                                                'date_forme_date_time_picker');
                                            final datePicked1Date =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: getCurrentTimestamp,
                                              lastDate: DateTime(2050),
                                              builder: (context, child) {
                                                return wrapInMaterialDatePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      const Color(0xFF322E5C),
                                                  headerForegroundColor:
                                                      Colors.white,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      Colors.white,
                                                  pickerForegroundColor:
                                                      const Color(0xFF2F2F2F),
                                                  selectedDateTimeBackgroundColor:
                                                      const Color(0xFF322E5C),
                                                  selectedDateTimeForegroundColor:
                                                      Colors.white,
                                                  actionButtonForegroundColor:
                                                      const Color(0xFF2F2F2F),
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );

                                            if (datePicked1Date != null) {
                                              safeSetState(() {
                                                _model.datePicked1 = DateTime(
                                                  datePicked1Date.year,
                                                  datePicked1Date.month,
                                                  datePicked1Date.day,
                                                );
                                              });
                                            }
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '25xcbaii' /* Set Date */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: const Color(0xFF2F2F2F),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Color(0xFFBCB7B7),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            dateTimeFormat(
                                              "MMMMEEEEd",
                                              _model.datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
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
                                ),
                                if (_model.datePicked1 != null)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (_model.radioButtonValue == 'FOR ME')
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FACILITIES_PUJA_FINAL_BOOKING_date_forme');
                                              logFirebaseEvent(
                                                  'date_forme_date_time_picker');

                                              final datePicked2Time =
                                                  await showTimePicker(
                                                context: context,
                                                initialTime:
                                                    TimeOfDay.fromDateTime(
                                                        getCurrentTimestamp),
                                                builder: (context, child) {
                                                  return wrapInMaterialTimePickerTheme(
                                                    context,
                                                    child!,
                                                    headerBackgroundColor:
                                                        const Color(0xFF322E5C),
                                                    headerForegroundColor:
                                                        Colors.white,
                                                    headerTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 32.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                    pickerBackgroundColor:
                                                        Colors.white,
                                                    pickerForegroundColor:
                                                        const Color(0xFF2F2F2F),
                                                    selectedDateTimeBackgroundColor:
                                                        const Color(0xFF322E5C),
                                                    selectedDateTimeForegroundColor:
                                                        Colors.white,
                                                    actionButtonForegroundColor:
                                                        const Color(0xFF2F2F2F),
                                                    iconSize: 24.0,
                                                  );
                                                },
                                              );
                                              if (datePicked2Time != null) {
                                                safeSetState(() {
                                                  _model.datePicked2 = DateTime(
                                                    getCurrentTimestamp.year,
                                                    getCurrentTimestamp.month,
                                                    getCurrentTimestamp.day,
                                                    datePicked2Time.hour,
                                                    datePicked2Time.minute,
                                                  );
                                                });
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '41qtdf4r' /* Set Time */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFFBCB7B7),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                "jm",
                                                _model.datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if ((_model.radioButtonValue == 'FOR ME') &&
                                    (_model.datePicked1 != null) &&
                                    (_model.datePicked2 != null))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
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
                                          List<NewPriestsRecord>
                                              buttonNewPriestsRecordList =
                                              snapshot.data!;
                                          final buttonNewPriestsRecord =
                                              buttonNewPriestsRecordList
                                                      .isNotEmpty
                                                  ? buttonNewPriestsRecordList
                                                      .first
                                                  : null;

                                          return FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FACILITIES_PUJA_FINAL_BOOKING_CONFIRM_BO');
                                              currentUserLocationValue =
                                                  await getCurrentUserLocation(
                                                      defaultLocation:
                                                          const LatLng(0.0, 0.0));
                                              logFirebaseEvent(
                                                  'Button_validate_form');
                                              if (_model.formKey1
                                                          .currentState ==
                                                      null ||
                                                  !_model.formKey1.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.datePicked1 == null) {
                                                final datePicked1Date =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                      getCurrentTimestamp,
                                                  firstDate:
                                                      getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                          const Color(0xFF322E5C),
                                                      headerForegroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      headerTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Raleway',
                                                                fontSize: 32.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                      pickerBackgroundColor:
                                                          Colors.white,
                                                      pickerForegroundColor:
                                                          const Color(0xFF2F2F2F),
                                                      selectedDateTimeBackgroundColor:
                                                          const Color(0xFF322E5C),
                                                      selectedDateTimeForegroundColor:
                                                          Colors.white,
                                                      actionButtonForegroundColor:
                                                          const Color(0xFF2F2F2F),
                                                      iconSize: 24.0,
                                                    );
                                                  },
                                                );

                                                if (datePicked1Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked1 =
                                                        DateTime(
                                                      datePicked1Date.year,
                                                      datePicked1Date.month,
                                                      datePicked1Date.day,
                                                    );
                                                  });
                                                }
                                                return;
                                              }
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await buttonNewPriestsRecord!
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'pri_counter':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  },
                                                ),
                                              });
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await FacilitiesRecord.collection
                                                  .doc()
                                                  .set(
                                                      createFacilitiesRecordData(
                                                    guestName:
                                                        currentUserDisplayName,
                                                    guestNumber: _model
                                                        .textController1.text,
                                                    guestFacility:
                                                        'Puja Booking',
                                                    facilityDate:
                                                        dateTimeFormat(
                                                      "MMMMEEEEd",
                                                      _model.datePicked1,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    facilityCity:
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.city,
                                                            ''),
                                                    guestEmail:
                                                        currentUserEmail,
                                                    guestLocation:
                                                        currentUserLocationValue,
                                                    time: _model.datePicked2,
                                                    pujaLoc: widget.type,
                                                    pujaType: widget.putype,
                                                    extra: widget.extranote,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await BookedPriestsRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createBookedPriestsRecordData(
                                                    guestName:
                                                        currentUserDisplayName,
                                                    guestNumber: int.tryParse(
                                                        _model.textController1
                                                            .text),
                                                    guestEmail:
                                                        currentUserEmail,
                                                    priName: widget.priname,
                                                    priBookedDates:
                                                        _model.datePicked1,
                                                    priCity: valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    priPujaType:
                                                        widget.spcname,
                                                    priPhoto: widget.img,
                                                    priNumber: widget.number,
                                                    priCounter: widget.number,
                                                    guestLocation:
                                                        currentUserLocationValue,
                                                    time: _model.datePicked2,
                                                    pujaLoc: widget.type,
                                                    pujaBookedType:
                                                        widget.putype,
                                                    extra: widget.extranote,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await NotificationsRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createNotificationsRecordData(
                                                    facilityName:
                                                        'Puja Booking',
                                                    timeAdded:
                                                        getCurrentTimestamp,
                                                    guestName:
                                                        valueOrDefault<String>(
                                                      currentUserDisplayName,
                                                      'No Name',
                                                    ),
                                                    guestEmail:
                                                        valueOrDefault<String>(
                                                      currentUserEmail,
                                                      'No Email',
                                                    ),
                                                    city: valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                'puja_booking_confirm',
                                                queryParameters: {
                                                  'city': serializeParam(
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    ParamType.String,
                                                  ),
                                                  'facility': serializeParam(
                                                    widget.facilityselected,
                                                    ParamType.String,
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
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'w7nfqy96' /* Confirm Booking */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF322E5C),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFFBCB7B7),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Form(
                            key: _model.formKey2,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.radioButtonValue == 'FOR OTHERS')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'n0pwyypn' /* Guest Name */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFD5DAE0),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                if (_model.radioButtonValue == 'FOR OTHERS')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 10.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController3,
                                      focusNode: _model.textFieldFocusNode3,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '5ird6iur' /* Guest Phone Number */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xFFD5DAE0),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
                                      validator: _model.textController3Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (_model.radioButtonValue ==
                                          'FOR OTHERS')
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'FACILITIES_PUJA_FINAL_BOOKING_date_forot');
                                            logFirebaseEvent(
                                                'date_forothers_date_time_picker');
                                            final datePicked3Date =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: getCurrentTimestamp,
                                              firstDate: getCurrentTimestamp,
                                              lastDate: DateTime(2050),
                                              builder: (context, child) {
                                                return wrapInMaterialDatePickerTheme(
                                                  context,
                                                  child!,
                                                  headerBackgroundColor:
                                                      const Color(0xFF322E5C),
                                                  headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            fontSize: 32.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                  pickerBackgroundColor:
                                                      Colors.white,
                                                  pickerForegroundColor:
                                                      const Color(0xFF2F2F2F),
                                                  selectedDateTimeBackgroundColor:
                                                      const Color(0xFF322E5C),
                                                  selectedDateTimeForegroundColor:
                                                      Colors.white,
                                                  actionButtonForegroundColor:
                                                      const Color(0xFF2F2F2F),
                                                  iconSize: 24.0,
                                                );
                                              },
                                            );

                                            if (datePicked3Date != null) {
                                              safeSetState(() {
                                                _model.datePicked3 = DateTime(
                                                  datePicked3Date.year,
                                                  datePicked3Date.month,
                                                  datePicked3Date.day,
                                                );
                                              });
                                            }
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'lh5mdn2v' /* Set Date */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Colors.white,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Raleway',
                                                      color: const Color(0xFF2F2F2F),
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Color(0xFFBCB7B7),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            dateTimeFormat(
                                              "MMMMEEEEd",
                                              _model.datePicked3,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
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
                                ),
                                if (_model.datePicked3 != null)
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        if (_model.radioButtonValue ==
                                            'FOR OTHERS')
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FACILITIES_PUJA_FINAL_BOOKING_date_forot');
                                              logFirebaseEvent(
                                                  'date_forothers_date_time_picker');

                                              final datePicked4Time =
                                                  await showTimePicker(
                                                context: context,
                                                initialTime:
                                                    TimeOfDay.fromDateTime(
                                                        getCurrentTimestamp),
                                                builder: (context, child) {
                                                  return wrapInMaterialTimePickerTheme(
                                                    context,
                                                    child!,
                                                    headerBackgroundColor:
                                                        const Color(0xFF322E5C),
                                                    headerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    headerTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 32.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                    pickerBackgroundColor:
                                                        Colors.white,
                                                    pickerForegroundColor:
                                                        const Color(0xFF2F2F2F),
                                                    selectedDateTimeBackgroundColor:
                                                        const Color(0xFF322E5C),
                                                    selectedDateTimeForegroundColor:
                                                        Colors.white,
                                                    actionButtonForegroundColor:
                                                        const Color(0xFF2F2F2F),
                                                    iconSize: 24.0,
                                                  );
                                                },
                                              );
                                              if (datePicked4Time != null) {
                                                safeSetState(() {
                                                  _model.datePicked4 = DateTime(
                                                    getCurrentTimestamp.year,
                                                    getCurrentTimestamp.month,
                                                    getCurrentTimestamp.day,
                                                    datePicked4Time.hour,
                                                    datePicked4Time.minute,
                                                  );
                                                });
                                              }
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '3uft8y8a' /* Set Time */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: const Color(0xFF2F2F2F),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFFBCB7B7),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                "jm",
                                                _model.datePicked4,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.black,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if ((_model.radioButtonValue == 'FOR OTHERS') &&
                                    (_model.datePicked3 != null) &&
                                    (_model.datePicked4 != null))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 20.0),
                                    child: AuthUserStreamWidget(
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
                                          List<NewPriestsRecord>
                                              buttonNewPriestsRecordList =
                                              snapshot.data!;
                                          final buttonNewPriestsRecord =
                                              buttonNewPriestsRecordList
                                                      .isNotEmpty
                                                  ? buttonNewPriestsRecordList
                                                      .first
                                                  : null;

                                          return FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'FACILITIES_PUJA_FINAL_BOOKING_CONFIRM_BO');
                                              currentUserLocationValue =
                                                  await getCurrentUserLocation(
                                                      defaultLocation:
                                                          const LatLng(0.0, 0.0));
                                              logFirebaseEvent(
                                                  'Button_validate_form');
                                              if (_model.formKey2
                                                          .currentState ==
                                                      null ||
                                                  !_model.formKey2.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.datePicked3 == null) {
                                                return;
                                              }
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await buttonNewPriestsRecord!
                                                  .reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'pri_counter':
                                                        FieldValue.increment(
                                                            -(1)),
                                                  },
                                                ),
                                              });
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await BookedPriestsRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createBookedPriestsRecordData(
                                                    guestName: _model
                                                        .textController2.text,
                                                    guestNumber: int.tryParse(
                                                        _model.textController3
                                                            .text),
                                                    priName: widget.priname,
                                                    priBookedDates:
                                                        _model.datePicked3,
                                                    priCity: valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    priPujaType:
                                                        widget.spcname,
                                                    priPhoto: widget.img,
                                                    priNumber: widget.number,
                                                    guestLocation:
                                                        currentUserLocationValue,
                                                    time: _model.datePicked4,
                                                    pujaLoc: widget.type,
                                                    pujaBookedType:
                                                        widget.putype,
                                                    extra: widget.extranote,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await FacilitiesRecord.collection
                                                  .doc()
                                                  .set(
                                                      createFacilitiesRecordData(
                                                    guestName: _model
                                                        .textController2.text,
                                                    guestNumber: _model
                                                        .textController3.text,
                                                    guestFacility:
                                                        'Puja Booking',
                                                    facilityDate:
                                                        dateTimeFormat(
                                                      "MMMMEEEEd",
                                                      _model.datePicked3,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    facilityCity:
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.city,
                                                            ''),
                                                    guestLocation:
                                                        currentUserLocationValue,
                                                    time: _model.datePicked4,
                                                    pujaLoc: widget.type,
                                                    pujaType: widget.putype,
                                                    extra: widget.extranote,
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await NotificationsRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createNotificationsRecordData(
                                                    facilityName:
                                                        'Puja Booking',
                                                    timeAdded:
                                                        getCurrentTimestamp,
                                                    guestName:
                                                        valueOrDefault<String>(
                                                      _model
                                                          .textController2.text,
                                                      'No Name',
                                                    ),
                                                    city: valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                  ));
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                'puja_booking_confirm',
                                                queryParameters: {
                                                  'city': serializeParam(
                                                    valueOrDefault(
                                                        currentUserDocument
                                                            ?.city,
                                                        ''),
                                                    ParamType.String,
                                                  ),
                                                  'facility': serializeParam(
                                                    widget.facilityselected,
                                                    ParamType.String,
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
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'g1tqm60h' /* Confirm Booking */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFF322E5C),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFFBCB7B7),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
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
