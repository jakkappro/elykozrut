// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRCodeScannedStruct extends BaseStruct {
  QRCodeScannedStruct({
    String? link,
    bool? scanned,
    String? name,
  })  : _link = link,
        _scanned = scanned,
        _name = name;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;
  bool hasLink() => _link != null;

  // "scanned" field.
  bool? _scanned;
  bool get scanned => _scanned ?? false;
  set scanned(bool? val) => _scanned = val;
  bool hasScanned() => _scanned != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static QRCodeScannedStruct fromMap(Map<String, dynamic> data) =>
      QRCodeScannedStruct(
        link: data['link'] as String?,
        scanned: data['scanned'] as bool?,
        name: data['name'] as String?,
      );

  static QRCodeScannedStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? QRCodeScannedStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'link': _link,
        'scanned': _scanned,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'scanned': serializeParam(
          _scanned,
          ParamType.bool,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static QRCodeScannedStruct fromSerializableMap(Map<String, dynamic> data) =>
      QRCodeScannedStruct(
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        scanned: deserializeParam(
          data['scanned'],
          ParamType.bool,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QRCodeScannedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QRCodeScannedStruct &&
        link == other.link &&
        scanned == other.scanned &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([link, scanned, name]);
}

QRCodeScannedStruct createQRCodeScannedStruct({
  String? link,
  bool? scanned,
  String? name,
}) =>
    QRCodeScannedStruct(
      link: link,
      scanned: scanned,
      name: name,
    );
