import 'package:sagas_meta/src/models/catalina_session.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CatalinaSessionJsonifier{
  static CatalinaSession extractCatalinaSession(dynamic json) {
    return CatalinaSession(
        entityId: create_id_from('CatalinaSession', ['sessionId'], json),
        sessionInfo: check_b64(json['sessionInfo']),
        maxIdle: json['maxIdle'] as int,
        isValid: json['isValid'] as String,
        lastAccessed: json['lastAccessed'] as int,
        sessionId: json['sessionId'] as String,
        sessionSize: json['sessionSize'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CatalinaSession overridesCatalinaSession(Map<String, dynamic> map) {
    return CatalinaSession(
        entityId: create_id_from('CatalinaSession', ['sessionId'], map),
        sessionInfo: map['sessionInfo'],
        maxIdle: map['maxIdle'],
        isValid: map['isValid'],
        lastAccessed: map['lastAccessed'],
        sessionId: map['sessionId'],
        sessionSize: map['sessionSize'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}