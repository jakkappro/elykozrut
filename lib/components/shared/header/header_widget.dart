import '/components/language/language_choice_component/language_choice_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());
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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.scaleDown,
          ),
          Text(
            FFLocalizations.of(context).getText(
              '65nk4071' /* For the smell of wood */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  fontSize: 20.0,
                ),
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
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: LanguageChoiceComponentWidget(),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));

                setState(() {});
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/eu_flag.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
