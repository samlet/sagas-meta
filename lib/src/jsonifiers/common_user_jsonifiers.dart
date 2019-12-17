import 'package:sagas_meta/src/models/common_user.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonUserJsonifier{
  static UserPrefGroupType extractUserPrefGroupType(dynamic json) {
    return UserPrefGroupType(
        entityId: create_id_from('UserPrefGroupType', ['userPrefGroupTypeId'], json),
        userPrefGroupTypeId: json['userPrefGroupTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserPrefGroupType overridesUserPrefGroupType(Map<String, dynamic> map) {
    return UserPrefGroupType(
        entityId: create_id_from('UserPrefGroupType', ['userPrefGroupTypeId'], map),
        userPrefGroupTypeId: map['userPrefGroupTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UserPreference extractUserPreference(dynamic json) {
    return UserPreference(
        entityId: create_id_from('UserPreference', ['userLoginId', 'userPrefTypeId'], json),
        userLoginId: json['userLoginId'] as String,
        userPrefGroupTypeId: json['userPrefGroupTypeId'] as String,
        userPrefValue: json['userPrefValue'] as String,
        userPrefTypeId: json['userPrefTypeId'] as String,
        userPrefDataType: json['userPrefDataType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UserPreference overridesUserPreference(Map<String, dynamic> map) {
    return UserPreference(
        entityId: create_id_from('UserPreference', ['userLoginId', 'userPrefTypeId'], map),
        userLoginId: map['userLoginId'],
        userPrefGroupTypeId: map['userPrefGroupTypeId'],
        userPrefValue: map['userPrefValue'],
        userPrefTypeId: map['userPrefTypeId'],
        userPrefDataType: map['userPrefDataType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}