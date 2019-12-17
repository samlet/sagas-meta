import 'package:sagas_meta/src/models/entity.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityJsonifier{
  static JavaResource extractJavaResource(dynamic json) {
    return JavaResource(
        entityId: create_id_from('JavaResource', ['resourceName'], json),
        resourceName: json['resourceName'] as String,
        resourceValue: check_b64(json['resourceValue']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JavaResource overridesJavaResource(Map<String, dynamic> map) {
    return JavaResource(
        entityId: create_id_from('JavaResource', ['resourceName'], map),
        resourceName: map['resourceName'],
        resourceValue: map['resourceValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}