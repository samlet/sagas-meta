import 'package:sagas_meta/src/models/common_uom.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonUomJsonifier{
  static Uom extractUom(dynamic json) {
    return Uom(
        entityId: create_id_from('Uom', ['uomId'], json),
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        abbreviation: json['abbreviation'] as String,
        uomTypeId: json['uomTypeId'] as String,
        numericCode: json['numericCode'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Uom overridesUom(Map<String, dynamic> map) {
    return Uom(
        entityId: create_id_from('Uom', ['uomId'], map),
        description: map['description'],
        uomId: map['uomId'],
        abbreviation: map['abbreviation'],
        uomTypeId: map['uomTypeId'],
        numericCode: map['numericCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomAndGroup extractUomAndGroup(dynamic json) {
    return UomAndGroup(
        entityId: create_id_from('UomAndGroup', ['uomGroupId', 'uomId', 'typeUomTypeId'], json),
        uomGroupId: json['uomGroupId'] as String,
        typeParentTypeId: json['typeParentTypeId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        typeHasTable: json['typeHasTable'] as String,
        typeDescription: json['typeDescription'] as String,
        typeUomTypeId: json['typeUomTypeId'] as String,
        abbreviation: json['abbreviation'] as String,
        uomTypeId: json['uomTypeId'] as String,
        numericCode: json['numericCode'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomAndGroup overridesUomAndGroup(Map<String, dynamic> map) {
    return UomAndGroup(
        entityId: create_id_from('UomAndGroup', ['uomGroupId', 'uomId', 'typeUomTypeId'], map),
        uomGroupId: map['uomGroupId'],
        typeParentTypeId: map['typeParentTypeId'],
        description: map['description'],
        uomId: map['uomId'],
        typeHasTable: map['typeHasTable'],
        typeDescription: map['typeDescription'],
        typeUomTypeId: map['typeUomTypeId'],
        abbreviation: map['abbreviation'],
        uomTypeId: map['uomTypeId'],
        numericCode: map['numericCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomAndType extractUomAndType(dynamic json) {
    return UomAndType(
        entityId: create_id_from('UomAndType', ['uomId', 'typeUomTypeId'], json),
        typeParentTypeId: json['typeParentTypeId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        typeHasTable: json['typeHasTable'] as String,
        typeDescription: json['typeDescription'] as String,
        typeUomTypeId: json['typeUomTypeId'] as String,
        abbreviation: json['abbreviation'] as String,
        uomTypeId: json['uomTypeId'] as String,
        numericCode: json['numericCode'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomAndType overridesUomAndType(Map<String, dynamic> map) {
    return UomAndType(
        entityId: create_id_from('UomAndType', ['uomId', 'typeUomTypeId'], map),
        typeParentTypeId: map['typeParentTypeId'],
        description: map['description'],
        uomId: map['uomId'],
        typeHasTable: map['typeHasTable'],
        typeDescription: map['typeDescription'],
        typeUomTypeId: map['typeUomTypeId'],
        abbreviation: map['abbreviation'],
        uomTypeId: map['uomTypeId'],
        numericCode: map['numericCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomConversion extractUomConversion(dynamic json) {
    return UomConversion(
        entityId: create_id_from('UomConversion', ['uomId', 'uomIdTo'], json),
        roundingMode: json['roundingMode'] as String,
        conversionFactor: json['conversionFactor'] as double,
        decimalScale: json['decimalScale'] as int,
        uomId: json['uomId'] as String,
        uomIdTo: json['uomIdTo'] as String,
        customMethodId: json['customMethodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomConversion overridesUomConversion(Map<String, dynamic> map) {
    return UomConversion(
        entityId: create_id_from('UomConversion', ['uomId', 'uomIdTo'], map),
        roundingMode: map['roundingMode'],
        conversionFactor: map['conversionFactor'],
        decimalScale: map['decimalScale'],
        uomId: map['uomId'],
        uomIdTo: map['uomIdTo'],
        customMethodId: map['customMethodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomConversionDated extractUomConversionDated(dynamic json) {
    return UomConversionDated(
        entityId: create_id_from('UomConversionDated', ['uomId', 'uomIdTo', 'fromDate'], json),
        conversionFactor: json['conversionFactor'] as double,
        decimalScale: json['decimalScale'] as int,
        uomId: json['uomId'] as String,
        uomIdTo: json['uomIdTo'] as String,
        customMethodId: json['customMethodId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        roundingMode: json['roundingMode'] as String,
        purposeEnumId: json['purposeEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomConversionDated overridesUomConversionDated(Map<String, dynamic> map) {
    return UomConversionDated(
        entityId: create_id_from('UomConversionDated', ['uomId', 'uomIdTo', 'fromDate'], map),
        conversionFactor: map['conversionFactor'],
        decimalScale: map['decimalScale'],
        uomId: map['uomId'],
        uomIdTo: map['uomIdTo'],
        customMethodId: map['customMethodId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        roundingMode: map['roundingMode'],
        purposeEnumId: map['purposeEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomGroup extractUomGroup(dynamic json) {
    return UomGroup(
        entityId: create_id_from('UomGroup', ['uomGroupId', 'uomId'], json),
        uomGroupId: json['uomGroupId'] as String,
        uomId: json['uomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomGroup overridesUomGroup(Map<String, dynamic> map) {
    return UomGroup(
        entityId: create_id_from('UomGroup', ['uomGroupId', 'uomId'], map),
        uomGroupId: map['uomGroupId'],
        uomId: map['uomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UomType extractUomType(dynamic json) {
    return UomType(
        entityId: create_id_from('UomType', ['uomTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        uomTypeId: json['uomTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UomType overridesUomType(Map<String, dynamic> map) {
    return UomType(
        entityId: create_id_from('UomType', ['uomTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        uomTypeId: map['uomTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}