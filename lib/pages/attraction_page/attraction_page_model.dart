import '/components/attraction_page/attraction_component/attraction_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AttractionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AttractionComponent component.
  late AttractionComponentModel attractionComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    attractionComponentModel =
        createModel(context, () => AttractionComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    attractionComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
