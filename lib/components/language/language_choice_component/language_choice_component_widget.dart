import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'language_choice_component_model.dart';
export 'language_choice_component_model.dart';

class LanguageChoiceComponentWidget extends StatefulWidget {
  const LanguageChoiceComponentWidget({Key? key}) : super(key: key);

  @override
  _LanguageChoiceComponentWidgetState createState() =>
      _LanguageChoiceComponentWidgetState();
}

class _LanguageChoiceComponentWidgetState
    extends State<LanguageChoiceComponentWidget> {
  late LanguageChoiceComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageChoiceComponentModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '4vqiv5kl' /* Select language */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setAppLanguage(context, 'en');
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/738/600',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'o0xuq2iy' /* English */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setAppLanguage(context, 'sk');
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/738/600',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            '8g2xydjt' /* Slovak */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setAppLanguage(context, 'pl');
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://picsum.photos/seed/738/600',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'lrzb17i6' /* Wrong */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ].divide(SizedBox(width: 15.0)),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Text(
                  FFLocalizations.of(context).getText(
                    'y0s39oku' /* Close */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
