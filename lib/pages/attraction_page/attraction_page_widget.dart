import '/components/attraction_page/attraction_component/attraction_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attraction_page_model.dart';
export 'attraction_page_model.dart';

class AttractionPageWidget extends StatefulWidget {
  const AttractionPageWidget({
    Key? key,
    required this.indexOfItem,
  }) : super(key: key);

  final int? indexOfItem;

  @override
  _AttractionPageWidgetState createState() => _AttractionPageWidgetState();
}

class _AttractionPageWidgetState extends State<AttractionPageWidget> {
  late AttractionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttractionPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.attractionComponentModel,
            updateCallback: () => setState(() {}),
            child: AttractionComponentWidget(
              attraction: FFAppState().Attractions[widget.indexOfItem!],
            ),
          ),
        ),
      ),
    );
  }
}
