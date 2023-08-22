import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _scannedCodes = prefs
              .getStringList('ff_scannedCodes')
              ?.map((x) {
                try {
                  return QRCodeScannedStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _scannedCodes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AttractionStruct> _Attractions = [
    AttractionStruct.fromSerializableMap(jsonDecode(
        '{\"Name\":\"Goat Pen\",\"Address\":\"Sportowa 3, 43-438 Brenna, Polland\",\"PhoneNumber\":\"+48513422143\",\"Image\":\"aohj\",\"Description\":\"Testicek\",\"AddressLocation\":\"49.7198655,18.9219194\",\"AttractionIds\":\"[\\\"0\\\"]\"}'))
  ];
  List<AttractionStruct> get Attractions => _Attractions;
  set Attractions(List<AttractionStruct> _value) {
    _Attractions = _value;
  }

  void addToAttractions(AttractionStruct _value) {
    _Attractions.add(_value);
  }

  void removeFromAttractions(AttractionStruct _value) {
    _Attractions.remove(_value);
  }

  void removeAtIndexFromAttractions(int _index) {
    _Attractions.removeAt(_index);
  }

  void updateAttractionsAtIndex(
    int _index,
    AttractionStruct Function(AttractionStruct) updateFn,
  ) {
    _Attractions[_index] = updateFn(_Attractions[_index]);
  }

  int _CurrentFilter = 0;
  int get CurrentFilter => _CurrentFilter;
  set CurrentFilter(int _value) {
    _CurrentFilter = _value;
  }

  List<QRCodeScannedStruct> _scannedCodes = [];
  List<QRCodeScannedStruct> get scannedCodes => _scannedCodes;
  set scannedCodes(List<QRCodeScannedStruct> _value) {
    _scannedCodes = _value;
    prefs.setStringList(
        'ff_scannedCodes', _value.map((x) => x.serialize()).toList());
  }

  void addToScannedCodes(QRCodeScannedStruct _value) {
    _scannedCodes.add(_value);
    prefs.setStringList(
        'ff_scannedCodes', _scannedCodes.map((x) => x.serialize()).toList());
  }

  void removeFromScannedCodes(QRCodeScannedStruct _value) {
    _scannedCodes.remove(_value);
    prefs.setStringList(
        'ff_scannedCodes', _scannedCodes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromScannedCodes(int _index) {
    _scannedCodes.removeAt(_index);
    prefs.setStringList(
        'ff_scannedCodes', _scannedCodes.map((x) => x.serialize()).toList());
  }

  void updateScannedCodesAtIndex(
    int _index,
    QRCodeScannedStruct Function(QRCodeScannedStruct) updateFn,
  ) {
    _scannedCodes[_index] = updateFn(_scannedCodes[_index]);
    prefs.setStringList(
        'ff_scannedCodes', _scannedCodes.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
