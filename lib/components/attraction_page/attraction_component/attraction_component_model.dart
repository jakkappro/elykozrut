import '/backend/schema/structs/index.dart';
import '/components/shared/icon_text/icon_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AttractionComponentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  AttractionStruct? attraction;
  void updateAttractionStruct(Function(AttractionStruct) updateFn) =>
      updateFn(attraction ??= AttractionStruct());

  ///  State fields for stateful widgets in this component.

  // Model for IconText component.
  late IconTextModel iconTextModel1;
  // Model for IconText component.
  late IconTextModel iconTextModel2;
  var barCode = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    iconTextModel1 = createModel(context, () => IconTextModel());
    iconTextModel2 = createModel(context, () => IconTextModel());
  }

  void dispose() {
    iconTextModel1.dispose();
    iconTextModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
