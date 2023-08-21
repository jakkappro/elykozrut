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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
