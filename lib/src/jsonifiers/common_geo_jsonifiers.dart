import 'package:sagas_meta/src/models/common_geo.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonGeoJsonifier{
  static CountryAddressFormat extractCountryAddressFormat(dynamic json) {
    return CountryAddressFormat(
        entityId: create_id_from('CountryAddressFormat', ['geoId'], json),
        requirePostalCode: json['requirePostalCode'] as String,
        postalCodeRegex: json['postalCodeRegex'] as String,
        requireStateProvinceId: json['requireStateProvinceId'] as String,
        hasPostalCodeExt: json['hasPostalCodeExt'] as String,
        requirePostalCodeExt: json['requirePostalCodeExt'] as String,
        geoId: json['geoId'] as String,
        addressFormat: json['addressFormat'] as String,
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CountryAddressFormat overridesCountryAddressFormat(Map<String, dynamic> map) {
    return CountryAddressFormat(
        entityId: create_id_from('CountryAddressFormat', ['geoId'], map),
        requirePostalCode: map['requirePostalCode'],
        postalCodeRegex: map['postalCodeRegex'],
        requireStateProvinceId: map['requireStateProvinceId'],
        hasPostalCodeExt: map['hasPostalCodeExt'],
        requirePostalCodeExt: map['requirePostalCodeExt'],
        geoId: map['geoId'],
        addressFormat: map['addressFormat'],
        geoAssocTypeId: map['geoAssocTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CountryCapital extractCountryCapital(dynamic json) {
    return CountryCapital(
        entityId: create_id_from('CountryCapital', ['countryCode'], json),
        countryCode: json['countryCode'] as String,
        countryCapital: json['countryCapital'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CountryCapital overridesCountryCapital(Map<String, dynamic> map) {
    return CountryCapital(
        entityId: create_id_from('CountryCapital', ['countryCode'], map),
        countryCode: map['countryCode'],
        countryCapital: map['countryCapital'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CountryCode extractCountryCode(dynamic json) {
    return CountryCode(
        entityId: create_id_from('CountryCode', ['countryCode'], json),
        countryNumber: json['countryNumber'] as String,
        countryAbbr: json['countryAbbr'] as String,
        countryCode: json['countryCode'] as String,
        countryName: json['countryName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CountryCode overridesCountryCode(Map<String, dynamic> map) {
    return CountryCode(
        entityId: create_id_from('CountryCode', ['countryCode'], map),
        countryNumber: map['countryNumber'],
        countryAbbr: map['countryAbbr'],
        countryCode: map['countryCode'],
        countryName: map['countryName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CountryTeleCode extractCountryTeleCode(dynamic json) {
    return CountryTeleCode(
        entityId: create_id_from('CountryTeleCode', ['countryCode'], json),
        countryCode: json['countryCode'] as String,
        teleCode: json['teleCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CountryTeleCode overridesCountryTeleCode(Map<String, dynamic> map) {
    return CountryTeleCode(
        entityId: create_id_from('CountryTeleCode', ['countryCode'], map),
        countryCode: map['countryCode'],
        teleCode: map['teleCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CountryTeleCodeAndName extractCountryTeleCodeAndName(dynamic json) {
    return CountryTeleCodeAndName(
        entityId: create_id_from('CountryTeleCodeAndName', [], json),
        countryCode: json['countryCode'] as String,
        countryName: json['countryName'] as String,
        teleCode: json['teleCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CountryTeleCodeAndName overridesCountryTeleCodeAndName(Map<String, dynamic> map) {
    return CountryTeleCodeAndName(
        entityId: create_id_from('CountryTeleCodeAndName', [], map),
        countryCode: map['countryCode'],
        countryName: map['countryName'],
        teleCode: map['teleCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Geo extractGeo(dynamic json) {
    return Geo(
        entityId: create_id_from('Geo', ['geoId'], json),
        geoName: json['geoName'] as String,
        geoTypeId: json['geoTypeId'] as String,
        geoId: json['geoId'] as String,
        geoCode: json['geoCode'] as String,
        abbreviation: json['abbreviation'] as String,
        geoSecCode: json['geoSecCode'] as String,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Geo overridesGeo(Map<String, dynamic> map) {
    return Geo(
        entityId: create_id_from('Geo', ['geoId'], map),
        geoName: map['geoName'],
        geoTypeId: map['geoTypeId'],
        geoId: map['geoId'],
        geoCode: map['geoCode'],
        abbreviation: map['abbreviation'],
        geoSecCode: map['geoSecCode'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoAssoc extractGeoAssoc(dynamic json) {
    return GeoAssoc(
        entityId: create_id_from('GeoAssoc', ['geoId', 'geoIdTo'], json),
        geoId: json['geoId'] as String,
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        geoIdTo: json['geoIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoAssoc overridesGeoAssoc(Map<String, dynamic> map) {
    return GeoAssoc(
        entityId: create_id_from('GeoAssoc', ['geoId', 'geoIdTo'], map),
        geoId: map['geoId'],
        geoAssocTypeId: map['geoAssocTypeId'],
        geoIdTo: map['geoIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoAssocAndGeoFrom extractGeoAssocAndGeoFrom(dynamic json) {
    return GeoAssocAndGeoFrom(
        entityId: create_id_from('GeoAssocAndGeoFrom', ['geoIdTo', 'geoId'], json),
        geoName: json['geoName'] as String,
        geoTypeId: json['geoTypeId'] as String,
        geoId: json['geoId'] as String,
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        geoCode: json['geoCode'] as String,
        abbreviation: json['abbreviation'] as String,
        geoIdTo: json['geoIdTo'] as String,
        geoSecCode: json['geoSecCode'] as String,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoAssocAndGeoFrom overridesGeoAssocAndGeoFrom(Map<String, dynamic> map) {
    return GeoAssocAndGeoFrom(
        entityId: create_id_from('GeoAssocAndGeoFrom', ['geoIdTo', 'geoId'], map),
        geoName: map['geoName'],
        geoTypeId: map['geoTypeId'],
        geoId: map['geoId'],
        geoAssocTypeId: map['geoAssocTypeId'],
        geoCode: map['geoCode'],
        abbreviation: map['abbreviation'],
        geoIdTo: map['geoIdTo'],
        geoSecCode: map['geoSecCode'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoAssocAndGeoTo extractGeoAssocAndGeoTo(dynamic json) {
    return GeoAssocAndGeoTo(
        entityId: create_id_from('GeoAssocAndGeoTo', ['geoIdFrom', 'geoId'], json),
        geoName: json['geoName'] as String,
        geoIdFrom: json['geoIdFrom'] as String,
        geoTypeId: json['geoTypeId'] as String,
        geoId: json['geoId'] as String,
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        geoCode: json['geoCode'] as String,
        abbreviation: json['abbreviation'] as String,
        geoSecCode: json['geoSecCode'] as String,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoAssocAndGeoTo overridesGeoAssocAndGeoTo(Map<String, dynamic> map) {
    return GeoAssocAndGeoTo(
        entityId: create_id_from('GeoAssocAndGeoTo', ['geoIdFrom', 'geoId'], map),
        geoName: map['geoName'],
        geoIdFrom: map['geoIdFrom'],
        geoTypeId: map['geoTypeId'],
        geoId: map['geoId'],
        geoAssocTypeId: map['geoAssocTypeId'],
        geoCode: map['geoCode'],
        abbreviation: map['abbreviation'],
        geoSecCode: map['geoSecCode'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoAssocAndGeoToWithState extractGeoAssocAndGeoToWithState(dynamic json) {
    return GeoAssocAndGeoToWithState(
        entityId: create_id_from('GeoAssocAndGeoToWithState', ['geoIdFrom', 'geoId'], json),
        geoName: json['geoName'] as String,
        geoIdFrom: json['geoIdFrom'] as String,
        geoTypeId: json['geoTypeId'] as String,
        geoId: json['geoId'] as String,
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        geoCode: json['geoCode'] as String,
        abbreviation: json['abbreviation'] as String,
        geoSecCode: json['geoSecCode'] as String,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoAssocAndGeoToWithState overridesGeoAssocAndGeoToWithState(Map<String, dynamic> map) {
    return GeoAssocAndGeoToWithState(
        entityId: create_id_from('GeoAssocAndGeoToWithState', ['geoIdFrom', 'geoId'], map),
        geoName: map['geoName'],
        geoIdFrom: map['geoIdFrom'],
        geoTypeId: map['geoTypeId'],
        geoId: map['geoId'],
        geoAssocTypeId: map['geoAssocTypeId'],
        geoCode: map['geoCode'],
        abbreviation: map['abbreviation'],
        geoSecCode: map['geoSecCode'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoAssocType extractGeoAssocType(dynamic json) {
    return GeoAssocType(
        entityId: create_id_from('GeoAssocType', ['geoAssocTypeId'], json),
        geoAssocTypeId: json['geoAssocTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoAssocType overridesGeoAssocType(Map<String, dynamic> map) {
    return GeoAssocType(
        entityId: create_id_from('GeoAssocType', ['geoAssocTypeId'], map),
        geoAssocTypeId: map['geoAssocTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoPoint extractGeoPoint(dynamic json) {
    return GeoPoint(
        entityId: create_id_from('GeoPoint', ['geoPointId'], json),
        elevation: json['elevation'] as double,
        geoPointTypeEnumId: json['geoPointTypeEnumId'] as String,
        latitude: json['latitude'] as String,
        description: json['description'] as String,
        dataSourceId: json['dataSourceId'] as String,
        elevationUomId: json['elevationUomId'] as String,
        information: json['information'] as String,
        geoPointId: json['geoPointId'] as String,
        longitude: json['longitude'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoPoint overridesGeoPoint(Map<String, dynamic> map) {
    return GeoPoint(
        entityId: create_id_from('GeoPoint', ['geoPointId'], map),
        elevation: map['elevation'],
        geoPointTypeEnumId: map['geoPointTypeEnumId'],
        latitude: map['latitude'],
        description: map['description'],
        dataSourceId: map['dataSourceId'],
        elevationUomId: map['elevationUomId'],
        information: map['information'],
        geoPointId: map['geoPointId'],
        longitude: map['longitude'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GeoType extractGeoType(dynamic json) {
    return GeoType(
        entityId: create_id_from('GeoType', ['geoTypeId'], json),
        geoTypeId: json['geoTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GeoType overridesGeoType(Map<String, dynamic> map) {
    return GeoType(
        entityId: create_id_from('GeoType', ['geoTypeId'], map),
        geoTypeId: map['geoTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}