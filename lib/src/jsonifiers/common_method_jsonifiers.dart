import 'package:sagas_meta/src/models/common_method.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonMethodJsonifier{
  static CustomMethod extractCustomMethod(dynamic json) {
    return CustomMethod(
        entityId: create_id_from('CustomMethod', ['customMethodId'], json),
        customMethodTypeId: json['customMethodTypeId'] as String,
        customMethodName: json['customMethodName'] as String,
        description: json['description'] as String,
        customMethodId: json['customMethodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustomMethod overridesCustomMethod(Map<String, dynamic> map) {
    return CustomMethod(
        entityId: create_id_from('CustomMethod', ['customMethodId'], map),
        customMethodTypeId: map['customMethodTypeId'],
        customMethodName: map['customMethodName'],
        description: map['description'],
        customMethodId: map['customMethodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustomMethodType extractCustomMethodType(dynamic json) {
    return CustomMethodType(
        entityId: create_id_from('CustomMethodType', ['customMethodTypeId'], json),
        customMethodTypeId: json['customMethodTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustomMethodType overridesCustomMethodType(Map<String, dynamic> map) {
    return CustomMethodType(
        entityId: create_id_from('CustomMethodType', ['customMethodTypeId'], map),
        customMethodTypeId: map['customMethodTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}