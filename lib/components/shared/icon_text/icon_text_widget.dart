import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_text_model.dart';
export 'icon_text_model.dart';

class IconTextWidget extends StatefulWidget {
  const IconTextWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String? text;
  final Widget? icon;

  @override
  _IconTextWidgetState createState() => _IconTextWidgetState();
}

class _IconTextWidgetState extends State<IconTextWidget> {
  late IconTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.icon!,
            Text(
              widget.text!,
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ].divide(SizedBox(width: 15.0)),
        ),
      ),
    );
  }
}
