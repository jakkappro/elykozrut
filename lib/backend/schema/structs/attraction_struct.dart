// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttractionStruct extends BaseStruct {
  AttractionStruct({
    String? name,
    String? address,
    String? phoneNumber,
    String? image,
    String? description,
    LatLng? addressLocation,
    List<int>? attractionIds,
    String? url,
  })  : _name = name,
        _address = address,
        _phoneNumber = phoneNumber,
        _image = image,
        _description = description,
        _addressLocation = addressLocation,
        _attractionIds = attractionIds,
        _url = url;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "AddressLocation" field.
  LatLng? _addressLocation;
  LatLng? get addressLocation => _addressLocation;
  set addressLocation(LatLng? val) => _addressLocation = val;
  bool hasAddressLocation() => _addressLocation != null;

  // "AttractionIds" field.
  List<int>? _attractionIds;
  List<int> get attractionIds => _attractionIds ?? const [];
  set attractionIds(List<int>? val) => _attractionIds = val;
  void updateAttractionIds(Function(List<int>) updateFn) =>
      updateFn(_attractionIds ??= []);
  bool hasAttractionIds() => _attractionIds != null;

  // "Url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static AttractionStruct fromMap(Map<String, dynamic> data) =>
      AttractionStruct(
        name: data['Name'] as String?,
        address: data['Address'] as String?,
        phoneNumber: data['PhoneNumber'] as String?,
        image: data['Image'] as String?,
        description: data['Description'] as String?,
        addressLocation: data['AddressLocation'] as LatLng?,
        attractionIds: getDataList(data['AttractionIds']),
        url: data['Url'] as String?,
      );

  static AttractionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AttractionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Address': _address,
        'PhoneNumber': _phoneNumber,
        'Image': _image,
        'Description': _description,
        'AddressLocation': _addressLocation,
        'AttractionIds': _attractionIds,
        'Url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Address': serializeParam(
          _address,
          ParamType.String,
        ),
        'PhoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'AddressLocation': serializeParam(
          _addressLocation,
          ParamType.LatLng,
        ),
        'AttractionIds': serializeParam(
          _attractionIds,
          ParamType.int,
          true,
        ),
        'Url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static AttractionStruct fromSerializableMap(Map<String, dynamic> data) =>
      AttractionStruct(
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['Address'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['PhoneNumber'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        addressLocation: deserializeParam(
          data['AddressLocation'],
          ParamType.LatLng,
          false,
        ),
        attractionIds: deserializeParam<int>(
          data['AttractionIds'],
          ParamType.int,
          true,
        ),
        url: deserializeParam(
          data['Url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AttractionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AttractionStruct &&
        name == other.name &&
        address == other.address &&
        phoneNumber == other.phoneNumber &&
        image == other.image &&
        description == other.description &&
        addressLocation == other.addressLocation &&
        listEquality.equals(attractionIds, other.attractionIds) &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        address,
        phoneNumber,
        image,
        description,
        addressLocation,
        attractionIds,
        url
      ]);
}

AttractionStruct createAttractionStruct({
  String? name,
  String? address,
  String? phoneNumber,
  String? image,
  String? description,
  LatLng? addressLocation,
  String? url,
}) =>
    AttractionStruct(
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      image: image,
      description: description,
      addressLocation: addressLocation,
      url: url,
    );
