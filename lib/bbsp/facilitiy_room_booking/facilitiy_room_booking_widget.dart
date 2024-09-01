import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/bbsp/empty_rooms/empty_rooms_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'facilitiy_room_booking_model.dart';
export 'facilitiy_room_booking_model.dart';

class FacilitiyRoomBookingWidget extends StatefulWidget {
  const FacilitiyRoomBookingWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    String? facilityselected,
    this.city,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white,
        facilityselected = facilityselected ?? 'Facility';

  final Color colorbtn;
  final Color colortxt;
  final String facilityselected;
  final String? city;

  @override
  State<FacilitiyRoomBookingWidget> createState() =>
      _FacilitiyRoomBookingWidgetState();
}

class _FacilitiyRoomBookingWidgetState
    extends State<FacilitiyRoomBookingWidget> {
  late FacilitiyRoomBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FacilitiyRoomBookingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'facilitiy_room_booking'});
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
                                    'FACILITIY_ROOM_BOOKING_arrow_back_ios_sh');
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
                                  '1uioowvp' /* Facilities */,
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
                                  widget.facilityselected,
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
                  content: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<RoomsRecord>>(
                        stream: queryRoomsRecord(
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
                          List<RoomsRecord> rowRoomsRecordList = snapshot.data!;
                          final rowRoomsRecord = rowRoomsRecordList.isNotEmpty
                              ? rowRoomsRecordList.first
                              : null;

                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (rowRoomsRecord != null)
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        7.0, 10.0, 0.0, 15.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '8fbykhgm' /* Available Rooms */,
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
                      Container(
                        decoration: const BoxDecoration(),
                        child: Visibility(
                          visible:
                              widget.facilityselected == 'Guest Room Booking',
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 7.0, 10.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<List<RoomsRecord>>(
                                stream: queryRoomsRecord(
                                  queryBuilder: (roomsRecord) =>
                                      roomsRecord.where(
                                    'city',
                                    isEqualTo: valueOrDefault(
                                        currentUserDocument?.city, ''),
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
                                  List<RoomsRecord> listViewRoomsRecordList =
                                      snapshot.data!;
                                  if (listViewRoomsRecordList.isEmpty) {
                                    return const EmptyRoomsWidget();
                                  }

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewRoomsRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewRoomsRecord =
                                          listViewRoomsRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            border: Border.all(
                                              color: const Color(0xFF322E5C),
                                              width: 1.0,
                                            ),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 150.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF322E5C),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFF322E5C),
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            listViewRoomsRecord
                                                                .no
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'r6ttdafs' /* Available */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      listViewRoomsRecord
                                                          .roomType,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      'Rs.${listViewRoomsRecord.price.toString()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF322E5C),
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                        child: StreamBuilder<List<RoomsRecord>>(
                          stream: queryRoomsRecord(
                            queryBuilder: (roomsRecord) => roomsRecord.where(
                              'city',
                              isEqualTo: widget.city,
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
                            List<RoomsRecord> columnRoomsRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final columnRoomsRecord =
                                columnRoomsRecordList.isNotEmpty
                                    ? columnRoomsRecordList.first
                                    : null;

                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if ((widget.facilityselected ==
                                          'Guest Room Booking') &&
                                      (columnRoomsRecord != null))
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 14.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2n359a9a' /* Booking  */,
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
                                        FlutterFlowRadioButton(
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              '8jw8ju0o' /* For Me */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'hom3mpcp' /* For Others */,
                                            )
                                          ].toList(),
                                          onChanged: (val) => setState(() {}),
                                          controller: _model
                                                  .radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          selectedTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Raleway',
                                                    color: Colors.black,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor: const Color(0xFF4A456B),
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ],
                                    ),
                                  if (_model.radioButtonValue == 'For Me')
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
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
                                    key: _model.formKey2,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.radioButtonValue == 'For Me')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 8.0, 10.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  TextFormField(
                                                controller:
                                                    _model.textController1,
                                                focusNode:
                                                    _model.textFieldFocusNode1,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '9e8int0z' /* Phone Number */,
                                                  ),
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0xFFD5DAE0),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.black,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                keyboardType:
                                                    const TextInputType
                                                        .numberWithOptions(
                                                        decimal: true),
                                                validator: _model
                                                    .textController1Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        if (_model.radioButtonValue == 'For Me')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 10.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FACILITIY_ROOM_BOOKING_date_forme_ON_TAP');
                                                logFirebaseEvent(
                                                    'date_forme_date_time_picker');
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
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'nwekb0p6' /* Set Date */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.white,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color:
                                                              const Color(0xFF2F2F2F),
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
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
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
                                        if (_model.radioButtonValue == 'For Me')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FACILITIY_ROOM_BOOKING_CONFIRM_BOOKING_B');
                                                logFirebaseEvent(
                                                    'Button_validate_form');
                                                if (_model.formKey2
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey2.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.datePicked1 ==
                                                    null) {
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
                                                                  fontSize:
                                                                      32.0,
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

                                                  if (datePicked1Date !=
                                                      null) {
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

                                                await FacilitiesRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createFacilitiesRecordData(
                                                      guestName:
                                                          currentUserDisplayName,
                                                      guestNumber:
                                                          valueOrDefault<
                                                              String>(
                                                        _model.textController1
                                                            .text,
                                                        'No Number',
                                                      ),
                                                      guestFacility: widget
                                                          .facilityselected,
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
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await NotificationsRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createNotificationsRecordData(
                                                      facilityName: widget
                                                          .facilityselected,
                                                      timeAdded:
                                                          getCurrentTimestamp,
                                                      guestName: valueOrDefault<
                                                          String>(
                                                        currentUserDisplayName,
                                                        'No Name',
                                                      ),
                                                      guestEmail:
                                                          valueOrDefault<
                                                              String>(
                                                        currentUserEmail,
                                                        'No Email',
                                                      ),
                                                      city: valueOrDefault(
                                                          currentUserDocument
                                                              ?.city,
                                                          ''),
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await columnRoomsRecord!
                                                    .reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'no':
                                                          FieldValue.increment(
                                                              -(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.goNamed(
                                                  'booking_confirm',
                                                  queryParameters: {
                                                    'city': serializeParam(
                                                      widget.city,
                                                      ParamType.String,
                                                    ),
                                                    'facility': serializeParam(
                                                      '',
                                                      ParamType.String,
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
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '4i5nggx4' /* Confirm Booking */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Form(
                                    key: _model.formKey1,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.radioButtonValue ==
                                            'For Others')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 10.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController2,
                                              focusNode:
                                                  _model.textFieldFocusNode2,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '62hiqhpc' /* Guest Name */,
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
                                                          fontFamily: 'Raleway',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFD5DAE0),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              validator: _model
                                                  .textController2Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        if (_model.radioButtonValue ==
                                            'For Others')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 10.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController3,
                                              focusNode:
                                                  _model.textFieldFocusNode3,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'qoh4ksop' /* Guest Phone Number */,
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
                                                          fontFamily: 'Raleway',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFD5DAE0),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              keyboardType: const TextInputType
                                                  .numberWithOptions(
                                                  decimal: true),
                                              validator: _model
                                                  .textController3Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        if (_model.radioButtonValue ==
                                            'For Others')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 10.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FACILITIY_ROOM_BOOKING_date_forothers_ON');
                                                logFirebaseEvent(
                                                    'date_forothers_date_time_picker');
                                                final datePicked2Date =
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

                                                if (datePicked2Date != null) {
                                                  safeSetState(() {
                                                    _model.datePicked2 =
                                                        DateTime(
                                                      datePicked2Date.year,
                                                      datePicked2Date.month,
                                                      datePicked2Date.day,
                                                    );
                                                  });
                                                }
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '6m0mw91z' /* Set Date */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Colors.white,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color:
                                                              const Color(0xFF2F2F2F),
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
                                          ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            dateTimeFormat(
                                              "MMMMEEEEd",
                                              _model.datePicked2,
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
                                        if (_model.radioButtonValue ==
                                            'For Others')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 20.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FACILITIY_ROOM_BOOKING_CONFIRM_BOOKING_B');
                                                logFirebaseEvent(
                                                    'Button_validate_form');
                                                if (_model.formKey1
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey1.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.datePicked2 ==
                                                    null) {
                                                  final datePicked2Date =
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
                                                                  fontSize:
                                                                      32.0,
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

                                                  if (datePicked2Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked2 =
                                                          DateTime(
                                                        datePicked2Date.year,
                                                        datePicked2Date.month,
                                                        datePicked2Date.day,
                                                      );
                                                    });
                                                  }
                                                  return;
                                                }
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await FacilitiesRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createFacilitiesRecordData(
                                                      guestName: _model
                                                          .textController2.text,
                                                      guestNumber:
                                                          valueOrDefault<
                                                              String>(
                                                        _model.textController3
                                                            .text,
                                                        'No Number',
                                                      ),
                                                      guestFacility: widget
                                                          .facilityselected,
                                                      facilityDate:
                                                          dateTimeFormat(
                                                        "MMMMEEEEd",
                                                        _model.datePicked2,
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
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await NotificationsRecord
                                                    .collection
                                                    .doc()
                                                    .set(
                                                        createNotificationsRecordData(
                                                      facilityName: widget
                                                          .facilityselected,
                                                      timeAdded:
                                                          getCurrentTimestamp,
                                                      guestName: valueOrDefault<
                                                          String>(
                                                        _model.textController2
                                                            .text,
                                                        'No Name',
                                                      ),
                                                      city: valueOrDefault(
                                                          currentUserDocument
                                                              ?.city,
                                                          ''),
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await columnRoomsRecord!
                                                    .reference
                                                    .update({
                                                  ...mapToFirestore(
                                                    {
                                                      'no':
                                                          FieldValue.increment(
                                                              -(1)),
                                                    },
                                                  ),
                                                });
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.goNamed(
                                                  'booking_confirm',
                                                  queryParameters: {
                                                    'city': serializeParam(
                                                      widget.city,
                                                      ParamType.String,
                                                    ),
                                                    'facility': serializeParam(
                                                      '',
                                                      ParamType.String,
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
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '1q9nwop4' /* Confirm Booking */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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
    );
  }
}
