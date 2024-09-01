import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'updatepic_copy_model.dart';
export 'updatepic_copy_model.dart';

class UpdatepicCopyWidget extends StatefulWidget {
  const UpdatepicCopyWidget({super.key});

  @override
  State<UpdatepicCopyWidget> createState() => _UpdatepicCopyWidgetState();
}

class _UpdatepicCopyWidgetState extends State<UpdatepicCopyWidget> {
  late UpdatepicCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatepicCopyModel());
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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 350.0,
          height: 450.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).info,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 10.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'j1ggl6w9' /* Click on the photo to change t... */,
                    ),
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          color: const Color(0xFF2F2F2F),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Colors.black,
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'UPDATEPIC_COPY_CircleImage_eg5onpyy_ON_T');
                        logFirebaseEvent(
                            'CircleImage_upload_media_to_firebase');
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                          pickerFontFamily: 'Nunito',
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl = downloadUrls.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }

                        logFirebaseEvent('CircleImage_backend_call');

                        await currentUserReference!
                            .update(createUsersRecordData(
                          photoUrl: _model.uploadedFileUrl,
                        ));
                      },
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            currentUserPhoto,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bharath-sevaashram-sangha-qr4n0v/assets/dnzdzlheoc9q/Windows_10_Default_Profile_Picture.svg.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'UPDATEPIC_COPY_SAVE_CHANGES_BTN_ON_TAP');
                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    photoUrl: _model.uploadedFileUrl,
                                  ));
                                  logFirebaseEvent('Button_bottom_sheet');
                                  Navigator.pop(
                                      context, currentUserReference?.id);
                                },
                                text: FFLocalizations.of(context).getText(
                                  'ijgkfkdg' /* Save Changes */,
                                ),
                                options: FFButtonOptions(
                                  width: 300.0,
                                  height: 60.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFF04A24C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.black,
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
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'UPDATEPIC_COPY_COMP_REMOVE_BTN_ON_TAP');
                                    logFirebaseEvent('Button_delete_data');
                                    await FirebaseStorage.instance
                                        .refFromURL(valueOrDefault<String>(
                                          currentUserPhoto,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/bharath-sevaashram-sangha-qr4n0v/assets/dnzdzlheoc9q/Windows_10_Default_Profile_Picture.svg.png',
                                        ))
                                        .delete();
                                    logFirebaseEvent('Button_backend_call');

                                    await currentUserReference!.update({
                                      ...mapToFirestore(
                                        {
                                          'photo_url': FieldValue.delete(),
                                        },
                                      ),
                                    });
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'j9p6suh6' /* Remove  */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 300.0,
                                    height: 60.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Colors.transparent,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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