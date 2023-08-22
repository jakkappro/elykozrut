// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class InterregImage extends StatefulWidget {
  const InterregImage({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _InterregState createState() => _InterregState();
}

class _InterregState extends State<InterregImage> {
  @override
  Widget build(BuildContext context) {
    var localization = FFLocalizations.of(context).languageCode.toUpperCase();

    if (localization == "EN") {
      localization = "SK";
    }

    return ImageFromString(
      imageName: "Interreg_" + localization + ".png",
      width: widget.width,
      height: widget.height,
    );
  }
}
