import 'package:sagas_meta/src/models/content_preference.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentPreferenceJsonifier{
  static WebPreferenceType extractWebPreferenceType(dynamic json) {
    return WebPreferenceType(
        entityId: create_id_from('WebPreferenceType', ['webPreferenceTypeId'], json),
        webPreferenceTypeId: json['webPreferenceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebPreferenceType overridesWebPreferenceType(Map<String, dynamic> map) {
    return WebPreferenceType(
        entityId: create_id_from('WebPreferenceType', ['webPreferenceTypeId'], map),
        webPreferenceTypeId: map['webPreferenceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebUserPreference extractWebUserPreference(dynamic json) {
    return WebUserPreference(
        entityId: create_id_from('WebUserPreference', ['userLoginId', 'partyId', 'visitId', 'webPreferenceTypeId'], json),
        userLoginId: json['userLoginId'] as String,
        webPreferenceTypeId: json['webPreferenceTypeId'] as String,
        visitId: json['visitId'] as String,
        webPreferenceValue: json['webPreferenceValue'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebUserPreference overridesWebUserPreference(Map<String, dynamic> map) {
    return WebUserPreference(
        entityId: create_id_from('WebUserPreference', ['userLoginId', 'partyId', 'visitId', 'webPreferenceTypeId'], map),
        userLoginId: map['userLoginId'],
        webPreferenceTypeId: map['webPreferenceTypeId'],
        visitId: map['visitId'],
        webPreferenceValue: map['webPreferenceValue'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}