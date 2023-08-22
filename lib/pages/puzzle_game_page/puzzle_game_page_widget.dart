import '/components/shared/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'puzzle_game_page_model.dart';
export 'puzzle_game_page_model.dart';

class PuzzleGamePageWidget extends StatefulWidget {
  const PuzzleGamePageWidget({Key? key}) : super(key: key);

  @override
  _PuzzleGamePageWidgetState createState() => _PuzzleGamePageWidgetState();
}

class _PuzzleGamePageWidgetState extends State<PuzzleGamePageWidget> {
  late PuzzleGamePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PuzzleGamePageModel());
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/625/600',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '${FFAppState().scannedCodes.where((e) => e.scanned).toList().length.toString()} / 20',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              LinearPercentIndicator(
                                percent: 0.2,
                                lineHeight: 10.0,
                                animation: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).primary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent4,
                                barRadius: Radius.circular(10.0),
                                padding: EdgeInsets.zero,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '34oifbjw' /* QR Code Scanner */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.code = await FlutterBarcodeScanner.scanBarcode(
                            '#C62828', // scanning line color
                            FFLocalizations.of(context).getText(
                              '5yvj63qk' /* Cancel */,
                            ), // cancel button text
                            true, // whether to show the flash icon
                            ScanMode.QR,
                          );

                          setState(() {});
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: FaIcon(
                                FontAwesomeIcons.qrcode,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '987tyc3g' /* The task for a participant of ... */,
                        ),
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ]
                        .divide(SizedBox(height: 15.0))
                        .addToStart(SizedBox(height: 70.0))
                        .addToEnd(SizedBox(height: 30.0)),
                  ),
                ),
                wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => setState(() {}),
                  child: HeaderWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
