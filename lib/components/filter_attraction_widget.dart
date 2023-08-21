import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_attraction_model.dart';
export 'filter_attraction_model.dart';

class FilterAttractionWidget extends StatefulWidget {
  const FilterAttractionWidget({Key? key}) : super(key: key);

  @override
  _FilterAttractionWidgetState createState() => _FilterAttractionWidgetState();
}

class _FilterAttractionWidgetState extends State<FilterAttractionWidget> {
  late FilterAttractionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterAttractionModel());
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
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 0;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'n5utq7g9' /* Any */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 1;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'pw7u908z' /* Family */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 2;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'w3ej8yao' /* Music */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 3;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2v4cg7ad' /* Outdoors */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 4;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'mb60dyki' /* AnyWheather */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 6;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'l6sw16eg' /* Ethno */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 7;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sw6pewb4' /* Livestyle */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().CurrentFilter = 8;
                    });
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'hut6y0io' /* Eco */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.9),
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
                  'nn6pu691' /* Cancel */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
