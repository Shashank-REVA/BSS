import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'set_city_model.dart';
export 'set_city_model.dart';

class SetCityWidget extends StatefulWidget {
  const SetCityWidget({super.key});

  @override
  State<SetCityWidget> createState() => _SetCityWidgetState();
}

class _SetCityWidgetState extends State<SetCityWidget> {
  late SetCityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetCityModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).info,
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'd8tuytyz' /* Set your city. You cannot chan... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Raleway',
                        color: const Color(0xFF2F2F2F),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
              child: StreamBuilder<List<CitiesRecord>>(
                stream: queryCitiesRecord(),
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
                  List<CitiesRecord> containerCitiesRecordList = snapshot.data!;
                  return Container(
                    width: 320.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0xFF322E5C),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: containerCitiesRecordList
                          .map((e) => e.name)
                          .toList()
                          .sortedList((e) => e),
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue = val),
                      width: 300.0,
                      height: 50.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                              ),
                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Raleway',
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                      hintText: FFLocalizations.of(context).getText(
                        'uro4dz7g' /* Set your city */,
                      ),
                      searchHintText: FFLocalizations.of(context).getText(
                        'hiebfn91' /* Search for an city... */,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).primaryText,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 2.0,
                      borderRadius: 25.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: true,
                      isMultiSelect: false,
                    ),
                  );
                },
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('SET_CITY_COMP_SET_CITY_BTN_ON_TAP');
                logFirebaseEvent('Button_backend_call');

                await currentUserReference!.update(createUsersRecordData(
                  city: _model.dropDownValue,
                ));
                logFirebaseEvent('Button_navigate_to');

                context.goNamed(
                  'Profile',
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
                'snl2y9ic' /* Set City */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF322E5C),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Raleway',
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
