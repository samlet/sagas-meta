import 'package:sagas_meta/src/models/entity_group.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityGroupJsonifier{
  static EntityGroup extractEntityGroup(dynamic json) {
    return EntityGroup(
        entityId: create_id_from('EntityGroup', ['entityGroupId'], json),
        entityGroupId: json['entityGroupId'] as String,
        entityGroupName: json['entityGroupName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntityGroup overridesEntityGroup(Map<String, dynamic> map) {
    return EntityGroup(
        entityId: create_id_from('EntityGroup', ['entityGroupId'], map),
        entityGroupId: map['entityGroupId'],
        entityGroupName: map['entityGroupName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntityGroupEntry extractEntityGroupEntry(dynamic json) {
    return EntityGroupEntry(
        entityId: create_id_from('EntityGroupEntry', ['entityGroupId', 'entityOrPackage'], json),
        entityOrPackage: json['entityOrPackage'] as String,
        entityGroupId: json['entityGroupId'] as String,
        applEnumId: json['applEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntityGroupEntry overridesEntityGroupEntry(Map<String, dynamic> map) {
    return EntityGroupEntry(
        entityId: create_id_from('EntityGroupEntry', ['entityGroupId', 'entityOrPackage'], map),
        entityOrPackage: map['entityOrPackage'],
        entityGroupId: map['entityGroupId'],
        applEnumId: map['applEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}