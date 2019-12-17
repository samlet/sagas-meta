import 'package:sagas_meta/src/models/common_property.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonPropertyJsonifier{
  static SystemProperty extractSystemProperty(dynamic json) {
    return SystemProperty(
        entityId: create_id_from('SystemProperty', ['systemResourceId', 'systemPropertyId'], json),
        systemResourceId: json['systemResourceId'] as String,
        systemPropertyValue: json['systemPropertyValue'] as String,
        description: json['description'] as String,
        systemPropertyId: json['systemPropertyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SystemProperty overridesSystemProperty(Map<String, dynamic> map) {
    return SystemProperty(
        entityId: create_id_from('SystemProperty', ['systemResourceId', 'systemPropertyId'], map),
        systemResourceId: map['systemResourceId'],
        systemPropertyValue: map['systemPropertyValue'],
        description: map['description'],
        systemPropertyId: map['systemPropertyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}