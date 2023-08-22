import '/backend/schema/structs/index.dart';
import '/components/shared/icon_text/icon_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attraction_component_model.dart';
export 'attraction_component_model.dart';

class AttractionComponentWidget extends StatefulWidget {
  const AttractionComponentWidget({
    Key? key,
    required this.attraction,
  }) : super(key: key);

  final AttractionStruct? attraction;

  @override
  _AttractionComponentWidgetState createState() =>
      _AttractionComponentWidgetState();
}

class _AttractionComponentWidgetState extends State<AttractionComponentWidget> {
  late AttractionComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttractionComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 150.0,
                child: custom_widgets.InterregImage(
                  width: double.infinity,
                  height: 150.0,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.attraction?.name,
                  'Missing name',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: wrapWithModel(
                  model: _model.iconTextModel1,
                  updateCallback: () => setState(() {}),
                  child: IconTextWidget(
                    text: widget.attraction!.address,
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: wrapWithModel(
                  model: _model.iconTextModel2,
                  updateCallback: () => setState(() {}),
                  child: IconTextWidget(
                    text: widget.attraction!.phoneNumber,
                    icon: Icon(
                      Icons.phone_enabled,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/895/600',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchMap(
                        location: widget.attraction?.addressLocation,
                        title: widget.attraction!.name,
                      );
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.mapMarkedAlt,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchMap(
                        location: widget.attraction?.addressLocation,
                        title: '',
                      );
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Icon(
                          Icons.directions,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.barCode = await FlutterBarcodeScanner.scanBarcode(
                        '#C62828', // scanning line color
                        FFLocalizations.of(context).getText(
                          'ghddol8f' /* Cancel */,
                        ), // cancel button text
                        true, // whether to show the flash icon
                        ScanMode.QR,
                      );

                      setState(() {});
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.qrcode,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(widget.attraction!.url);
                    },
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.firefoxBrowser,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.attraction?.description,
                  'No description',
                ),
                textAlign: TextAlign.justify,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://picsum.photos/seed/144/600',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ]
                .divide(SizedBox(height: 20.0))
                .addToStart(SizedBox(height: 60.0))
                .addToEnd(SizedBox(height: 20.0)),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
