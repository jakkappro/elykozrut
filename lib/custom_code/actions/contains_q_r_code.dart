// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> containsQRCode(String code) async {
  // Add your function code here!
  var list = FFAppState().scannedCodes;

  if (list == null || list.isEmpty) {
    return false;
  }

  for (var item in list) {
    if (item.link == code) {
      // update scanned to true
      item.scanned = true;
      return true;
    }
  }

  return false;
}
