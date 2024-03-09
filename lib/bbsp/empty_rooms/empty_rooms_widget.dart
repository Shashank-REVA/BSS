import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_rooms_model.dart';
export 'empty_rooms_model.dart';

class EmptyRoomsWidget extends StatefulWidget {
  const EmptyRoomsWidget({super.key});

  @override
  State<EmptyRoomsWidget> createState() => _EmptyRoomsWidgetState();
}

class _EmptyRoomsWidgetState extends State<EmptyRoomsWidget> {
  late EmptyRoomsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyRoomsModel());
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
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'yu9shyb6' /* Sorry, there no rooms availabl... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Raleway',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                '3r1kct2h' /* Check back again */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Raleway',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
