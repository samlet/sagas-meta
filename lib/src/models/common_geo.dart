import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CountryAddressFormat, CountryAddressFormat
class CountryAddressFormat extends EntityBase {

  /// this entity has only one pk
  final String requirePostalCode;
  final String postalCodeRegex;
  final String requireStateProvinceId;
  final String hasPostalCodeExt;
  final String requirePostalCodeExt;
  final String geoId; // pk
  final String addressFormat;
  final String geoAssocTypeId;
  CountryAddressFormat({entityId,
    this.requirePostalCode, this.postalCodeRegex, this.requireStateProvinceId, this.hasPostalCodeExt, this.requirePostalCodeExt, @required this.geoId, this.addressFormat, this.geoAssocTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CountryAddressFormat { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'requirePostalCode':requirePostalCode, 'postalCodeRegex':postalCodeRegex, 'requireStateProvinceId':requireStateProvinceId, 'hasPostalCodeExt':hasPostalCodeExt, 'requirePostalCodeExt':requirePostalCodeExt, 'geoId':geoId, 'addressFormat':addressFormat, 'geoAssocTypeId':geoAssocTypeId};
  }

}

/// Entity CountryCapital, Country Capital
class CountryCapital extends EntityBase {

  /// this entity has only one pk
  final String countryCode; // pk
  final String countryCapital;
  CountryCapital({entityId,
    @required this.countryCode, this.countryCapital,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CountryCapital { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryCode':countryCode, 'countryCapital':countryCapital};
  }

}

/// Entity CountryCode, ISO Country Code
class CountryCode extends EntityBase {

  /// this entity has only one pk
  final String countryNumber;
  final String countryAbbr;
  final String countryCode; // pk
  final String countryName;
  CountryCode({entityId,
    this.countryNumber, this.countryAbbr, @required this.countryCode, this.countryName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CountryCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryNumber':countryNumber, 'countryAbbr':countryAbbr, 'countryCode':countryCode, 'countryName':countryName};
  }

}

/// Entity CountryTeleCode, Telephone Country Code
class CountryTeleCode extends EntityBase {

  /// this entity has only one pk
  final String countryCode; // pk
  final String teleCode;
  CountryTeleCode({entityId,
    @required this.countryCode, this.teleCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CountryTeleCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryCode':countryCode, 'teleCode':teleCode};
  }

}

/// Entity CountryTeleCodeAndName, Telephone country code and country name
class CountryTeleCodeAndName extends EntityBase {

  final String countryCode;
  final String countryName;
  final String teleCode;
  CountryTeleCodeAndName({entityId,
    this.countryCode, this.countryName, this.teleCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CountryTeleCodeAndName { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'countryCode':countryCode, 'countryName':countryName, 'teleCode':teleCode};
  }

}

/// Entity Geo, Geographic Boundary
class Geo extends EntityBase {

  /// this entity has only one pk
  final String geoName;
  final String geoTypeId;
  final String geoId; // pk
  final String geoCode;
  final String abbreviation;
  final String geoSecCode;
  final String wellKnownText;
  Geo({entityId,
    this.geoName, this.geoTypeId, @required this.geoId, this.geoCode, this.abbreviation, this.geoSecCode, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Geo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoTypeId':geoTypeId, 'geoId':geoId, 'geoCode':geoCode, 'abbreviation':abbreviation, 'geoSecCode':geoSecCode, 'wellKnownText':wellKnownText};
  }

}

/// Entity GeoAssoc, Geographic Boundary Association
class GeoAssoc extends EntityBase {

  final String geoId; // pk
  final String geoAssocTypeId;
  final String geoIdTo; // pk
  GeoAssoc({entityId,
    @required this.geoId, this.geoAssocTypeId, @required this.geoIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoId':geoId, 'geoAssocTypeId':geoAssocTypeId, 'geoIdTo':geoIdTo};
  }

}

/// Entity GeoAssocAndGeoFrom, GeoAssocAndGeoFrom
class GeoAssocAndGeoFrom extends EntityBase {

  final String geoName;
  final String geoTypeId;
  final String geoId; // pk
  final String geoAssocTypeId;
  final String geoCode;
  final String abbreviation;
  final String geoIdTo; // pk
  final String geoSecCode;
  final String wellKnownText;
  GeoAssocAndGeoFrom({entityId,
    this.geoName, this.geoTypeId, @required this.geoId, this.geoAssocTypeId, this.geoCode, this.abbreviation, @required this.geoIdTo, this.geoSecCode, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoAssocAndGeoFrom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoTypeId':geoTypeId, 'geoId':geoId, 'geoAssocTypeId':geoAssocTypeId, 'geoCode':geoCode, 'abbreviation':abbreviation, 'geoIdTo':geoIdTo, 'geoSecCode':geoSecCode, 'wellKnownText':wellKnownText};
  }

}

/// Entity GeoAssocAndGeoTo, GeoAssocAndGeoTo
class GeoAssocAndGeoTo extends EntityBase {

  final String geoName;
  final String geoIdFrom; // pk
  final String geoTypeId;
  final String geoId; // pk
  final String geoAssocTypeId;
  final String geoCode;
  final String abbreviation;
  final String geoSecCode;
  final String wellKnownText;
  GeoAssocAndGeoTo({entityId,
    this.geoName, @required this.geoIdFrom, this.geoTypeId, @required this.geoId, this.geoAssocTypeId, this.geoCode, this.abbreviation, this.geoSecCode, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoAssocAndGeoTo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoIdFrom':geoIdFrom, 'geoTypeId':geoTypeId, 'geoId':geoId, 'geoAssocTypeId':geoAssocTypeId, 'geoCode':geoCode, 'abbreviation':abbreviation, 'geoSecCode':geoSecCode, 'wellKnownText':wellKnownText};
  }

}

/// Entity GeoAssocAndGeoToWithState, GeoAssocAndGeoToWithState
class GeoAssocAndGeoToWithState extends EntityBase {

  final String geoName;
  final String geoIdFrom; // pk
  final String geoTypeId;
  final String geoId; // pk
  final String geoAssocTypeId;
  final String geoCode;
  final String abbreviation;
  final String geoSecCode;
  final String wellKnownText;
  GeoAssocAndGeoToWithState({entityId,
    this.geoName, @required this.geoIdFrom, this.geoTypeId, @required this.geoId, this.geoAssocTypeId, this.geoCode, this.abbreviation, this.geoSecCode, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoAssocAndGeoToWithState { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoIdFrom':geoIdFrom, 'geoTypeId':geoTypeId, 'geoId':geoId, 'geoAssocTypeId':geoAssocTypeId, 'geoCode':geoCode, 'abbreviation':abbreviation, 'geoSecCode':geoSecCode, 'wellKnownText':wellKnownText};
  }

}

/// Entity GeoAssocType, Geographic Boundary Association
class GeoAssocType extends EntityBase {

  /// this entity has only one pk
  final String geoAssocTypeId; // pk
  final String description;
  GeoAssocType({entityId,
    @required this.geoAssocTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoAssocTypeId':geoAssocTypeId, 'description':description};
  }

}

/// Entity GeoPoint, Geographic Location
class GeoPoint extends EntityBase {

  /// this entity has only one pk
  final double elevation;
  final String geoPointTypeEnumId;
  final String latitude;
  final String description;
  final String dataSourceId;
  final String elevationUomId;
  final String information;
  final String geoPointId; // pk
  final String longitude;
  GeoPoint({entityId,
    this.elevation, this.geoPointTypeEnumId, this.latitude, this.description, this.dataSourceId, this.elevationUomId, this.information, @required this.geoPointId, this.longitude,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'elevation':elevation, 'geoPointTypeEnumId':geoPointTypeEnumId, 'latitude':latitude, 'description':description, 'dataSourceId':dataSourceId, 'elevationUomId':elevationUomId, 'information':information, 'geoPointId':geoPointId, 'longitude':longitude};
  }

}

/// Entity GeoType, Geographic Boundary Type
class GeoType extends EntityBase {

  /// this entity has only one pk
  final String geoTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  GeoType({entityId,
    @required this.geoTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GeoType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoTypeId':geoTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}