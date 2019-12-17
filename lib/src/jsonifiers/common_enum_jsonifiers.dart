import 'package:sagas_meta/src/models/common_enum.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonEnumJsonifier{
  static EnumTypeChildAndEnum extractEnumTypeChildAndEnum(dynamic json) {
    return EnumTypeChildAndEnum(
        entityId: create_id_from('EnumTypeChildAndEnum', ['parentEnumTypeId', 'childEnumTypeId', 'enumId'], json),
        parentParentTypeId: json['parentParentTypeId'] as String,
        enumTypeId: json['enumTypeId'] as String,
        enumId: json['enumId'] as String,
        childEnumTypeId: json['childEnumTypeId'] as String,
        parentDescription: json['parentDescription'] as String,
        enumCode: json['enumCode'] as String,
        childHasTable: json['childHasTable'] as String,
        parentEnumTypeId: json['parentEnumTypeId'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        parentHasTable: json['parentHasTable'] as String,
        childDescription: json['childDescription'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EnumTypeChildAndEnum overridesEnumTypeChildAndEnum(Map<String, dynamic> map) {
    return EnumTypeChildAndEnum(
        entityId: create_id_from('EnumTypeChildAndEnum', ['parentEnumTypeId', 'childEnumTypeId', 'enumId'], map),
        parentParentTypeId: map['parentParentTypeId'],
        enumTypeId: map['enumTypeId'],
        enumId: map['enumId'],
        childEnumTypeId: map['childEnumTypeId'],
        parentDescription: map['parentDescription'],
        enumCode: map['enumCode'],
        childHasTable: map['childHasTable'],
        parentEnumTypeId: map['parentEnumTypeId'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        parentHasTable: map['parentHasTable'],
        childDescription: map['childDescription'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Enumeration extractEnumeration(dynamic json) {
    return Enumeration(
        entityId: create_id_from('Enumeration', ['enumId'], json),
        enumTypeId: json['enumTypeId'] as String,
        enumId: json['enumId'] as String,
        enumCode: json['enumCode'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Enumeration overridesEnumeration(Map<String, dynamic> map) {
    return Enumeration(
        entityId: create_id_from('Enumeration', ['enumId'], map),
        enumTypeId: map['enumTypeId'],
        enumId: map['enumId'],
        enumCode: map['enumCode'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EnumerationType extractEnumerationType(dynamic json) {
    return EnumerationType(
        entityId: create_id_from('EnumerationType', ['enumTypeId'], json),
        enumTypeId: json['enumTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EnumerationType overridesEnumerationType(Map<String, dynamic> map) {
    return EnumerationType(
        entityId: create_id_from('EnumerationType', ['enumTypeId'], map),
        enumTypeId: map['enumTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}