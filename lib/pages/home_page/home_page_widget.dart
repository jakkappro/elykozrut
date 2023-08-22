import '/components/filter_attraction_widget.dart';
import '/components/shared/header/header_widget.dart';
import '/components/shared/icon_text/icon_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  wrapWithModel(
                    model: _model.headerModel,
                    updateCallback: () => setState(() {}),
                    child: HeaderWidget(),
                  ),
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showAlignedDialog(
                          context: context,
                          isGlobal: true,
                          avoidOverflow: false,
                          targetAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          followerAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          builder: (dialogContext) {
                            return Material(
                              color: Colors.transparent,
                              child: GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  child: FilterAttractionWidget(),
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 12.0, 16.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFAppState().CurrentFilter.toString(),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Icon(
                                Icons.search,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final attraction = FFAppState()
                          .Attractions
                          .where((e) =>
                              e.attractionIds.contains(_model.currentFilter))
                          .toList();
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: attraction.length,
                        separatorBuilder: (_, __) => SizedBox(height: 30.0),
                        itemBuilder: (context, attractionIndex) {
                          final attractionItem = attraction[attractionIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'AttractionPage',
                                queryParameters: {
                                  'indexOfItem': serializeParam(
                                    attractionIndex,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        attractionItem.name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/105/600',
                                        width: double.infinity,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    IconTextWidget(
                                      key: Key(
                                          'Keyisi_${attractionIndex}_of_${attraction.length}'),
                                      text: attractionItem.address,
                                      icon: Icon(
                                        Icons.home,
                                      ),
                                    ),
                                    IconTextWidget(
                                      key: Key(
                                          'Keyusg_${attractionIndex}_of_${attraction.length}'),
                                      text: attractionItem.phoneNumber,
                                      icon: Icon(
                                        Icons.phone_enabled,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 15.0)),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ]
                    .divide(SizedBox(height: 20.0))
                    .addToStart(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
