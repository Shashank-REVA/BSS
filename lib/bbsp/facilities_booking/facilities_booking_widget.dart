import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'facilities_booking_model.dart';
export 'facilities_booking_model.dart';

class FacilitiesBookingWidget extends StatefulWidget {
  const FacilitiesBookingWidget({
    super.key,
    Color? colorbtn,
    Color? colortxt,
    String? facilityselected,
    required this.city,
  })  : colorbtn = colorbtn ?? const Color(0xFF322E5C),
        colortxt = colortxt ?? Colors.white,
        facilityselected = facilityselected ?? 'Facility';

  final Color colorbtn;
  final Color colortxt;
  final String facilityselected;
  final String? city;

  @override
  State<FacilitiesBookingWidget> createState() =>
      _FacilitiesBookingWidgetState();
}

class _FacilitiesBookingWidgetState extends State<FacilitiesBookingWidget> {
  late FacilitiesBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FacilitiesBookingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'facilities_booking'});
    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
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
                                16.0, 47.0, 0.0, 0.0),
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
                                    'FACILITIES_BOOKING_arrow_back_ios_sharp_');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.goNamed(
                                  'facilities',
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
                                  'tnq0853o' /* Facilities */,
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
                  content: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                    child: StreamBuilder<List<CitiesRecord>>(
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
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 15.0),
                                  child: Text(
                                    widget.facilityselected,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
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
                                          'q7a93q7l' /* Booking  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Colors.black,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowRadioButton(
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'p2qu4jis' /* For Me */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'sbqqb0u1' /* For Others */,
                                      )
                                    ].toList(),
                                    onChanged: (val) => setState(() {}),
                                    controller:
                                        _model.radioButtonValueController ??=
                                            FormFieldController<String>(null),
                                    optionHeight: 32.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Colors.black,
                                              fontSize: 16.0,
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor: const Color(0xFF4A456B),
                                    inactiveRadioButtonColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
                                ],
                              ),
                              if (_model.radioButtonValue == 'For Me')
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
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Me')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 8.0, 10.0),
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'ztd1sqit' /* Phone Number */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD5DAE0),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                        ),
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Me')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'FACILITIES_BOOKING_date_forme_ON_TAP');
                                      logFirebaseEvent(
                                          'date_forme_date_time_picker');
                                      await showModalBottomSheet<bool>(
                                          context: context,
                                          builder: (context) {
                                            return SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  3,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: CupertinoDatePicker(
                                                mode: CupertinoDatePickerMode
                                                    .date,
                                                minimumDate:
                                                    getCurrentTimestamp,
                                                initialDateTime:
                                                    getCurrentTimestamp,
                                                maximumDate: DateTime(2050),
                                                use24hFormat: false,
                                                onDateTimeChanged:
                                                    (newDateTime) =>
                                                        safeSetState(() {
                                                  _model.datePicked1 =
                                                      newDateTime;
                                                }),
                                              ),
                                            );
                                          });
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'gvxjrcj7' /* Set Date */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: const Color(0xFF2F2F2F),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFBCB7B7),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  dateTimeFormat(
                                    'MMMMEEEEd',
                                    _model.datePicked1,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              if (_model.radioButtonValue == 'For Me')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child:
                                      FutureBuilder<List<NotificationsRecord>>(
                                    future: queryNotificationsRecordOnce(
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
                                      List<NotificationsRecord>
                                          buttonNotificationsRecordList =
                                          snapshot.data!;
                                      final buttonNotificationsRecord =
                                          buttonNotificationsRecordList
                                                  .isNotEmpty
                                              ? buttonNotificationsRecordList
                                                  .first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'FACILITIES_BOOKING_CONFIRM_BOOKING_BTN_O');
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await FacilitiesRecord.collection
                                              .doc()
                                              .set(createFacilitiesRecordData(
                                                guestName:
                                                    currentUserDisplayName,
                                                guestNumber:
                                                    valueOrDefault<String>(
                                                  _model.textController1.text,
                                                  'No Number',
                                                ),
                                                guestFacility:
                                                    widget.facilityselected,
                                                facilityDate: dateTimeFormat(
                                                  'MMMMEEEEd',
                                                  _model.datePicked1,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                facilityCity: widget.city,
                                                guestEmail: currentUserEmail,
                                              ));
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await NotificationsRecord.collection
                                              .doc()
                                              .set(
                                                  createNotificationsRecordData(
                                                facilityName:
                                                    widget.facilityselected,
                                                timeAdded: getCurrentTimestamp,
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
                                                city: widget.city,
                                              ));
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
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'oans1cf7' /* Confirm Booking */,
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
                                                    fontSize: 20.0,
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
                                      );
                                    },
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Others')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 10.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '1alsrf6r' /* Guest Name */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD5DAE0),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                        ),
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Others')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 10.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController3,
                                    focusNode: _model.textFieldFocusNode3,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'qbj1d5it' /* Guest Email */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD5DAE0),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                        ),
                                    validator: _model.textController3Validator
                                        .asValidator(context),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Others')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 10.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController4,
                                    focusNode: _model.textFieldFocusNode4,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        '0jcp3eti' /* Guest Phone Number */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Raleway',
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFD5DAE0),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                        ),
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    validator: _model.textController4Validator
                                        .asValidator(context),
                                  ),
                                ),
                              if (_model.radioButtonValue == 'For Others')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'FACILITIES_BOOKING_date_forothers_ON_TAP');
                                      logFirebaseEvent(
                                          'date_forothers_date_time_picker');
                                      await showModalBottomSheet<bool>(
                                          context: context,
                                          builder: (context) {
                                            final datePicked2CupertinoTheme =
                                                CupertinoTheme.of(context);
                                            return Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  3,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              child: CupertinoTheme(
                                                data: datePicked2CupertinoTheme
                                                    .copyWith(
                                                  textTheme:
                                                      datePicked2CupertinoTheme
                                                          .textTheme
                                                          .copyWith(
                                                    dateTimePickerTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                  ),
                                                ),
                                                child: CupertinoDatePicker(
                                                  mode: CupertinoDatePickerMode
                                                      .date,
                                                  minimumDate:
                                                      getCurrentTimestamp,
                                                  initialDateTime:
                                                      getCurrentTimestamp,
                                                  maximumDate: DateTime(2050),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  use24hFormat: false,
                                                  onDateTimeChanged:
                                                      (newDateTime) =>
                                                          safeSetState(() {
                                                    _model.datePicked2 =
                                                        newDateTime;
                                                  }),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '7cxel3s4' /* Set Date */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Raleway',
                                            color: const Color(0xFF2F2F2F),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Color(0xFFBCB7B7),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  dateTimeFormat(
                                    'MMMMEEEEd',
                                    _model.datePicked2,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              if (_model.radioButtonValue == 'For Others')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  child:
                                      FutureBuilder<List<NotificationsRecord>>(
                                    future: queryNotificationsRecordOnce(
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
                                      List<NotificationsRecord>
                                          buttonNotificationsRecordList =
                                          snapshot.data!;
                                      final buttonNotificationsRecord =
                                          buttonNotificationsRecordList
                                                  .isNotEmpty
                                              ? buttonNotificationsRecordList
                                                  .first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'FACILITIES_BOOKING_CONFIRM_BOOKING_BTN_O');
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await FacilitiesRecord.collection
                                              .doc()
                                              .set(createFacilitiesRecordData(
                                                guestName:
                                                    _model.textController2.text,
                                                guestNumber:
                                                    valueOrDefault<String>(
                                                  _model.textController4.text,
                                                  'No Number',
                                                ),
                                                guestFacility:
                                                    widget.facilityselected,
                                                facilityDate: dateTimeFormat(
                                                  'MMMMEEEEd',
                                                  _model.datePicked2,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                facilityCity: widget.city,
                                                guestEmail:
                                                    valueOrDefault<String>(
                                                  _model.textController3.text,
                                                  'No Email',
                                                ),
                                              ));
                                          logFirebaseEvent(
                                              'Button_backend_call');

                                          await NotificationsRecord.collection
                                              .doc()
                                              .set(
                                                  createNotificationsRecordData(
                                                facilityName:
                                                    widget.facilityselected,
                                                timeAdded: getCurrentTimestamp,
                                                guestName:
                                                    valueOrDefault<String>(
                                                  _model.textController2.text,
                                                  'No Name',
                                                ),
                                                guestEmail:
                                                    valueOrDefault<String>(
                                                  _model.textController3.text,
                                                  'No Email',
                                                ),
                                                city: widget.city,
                                              ));
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
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'mpka1wvc' /* Confirm Booking */,
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
                                                    fontSize: 20.0,
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
                                      );
                                    },
                                  ),
                                ),
                            ],
                          ),
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
    );
  }
}
