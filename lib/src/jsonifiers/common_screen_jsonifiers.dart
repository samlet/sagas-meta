import 'package:sagas_meta/src/models/common_screen.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonScreenJsonifier{
  static CustomScreen extractCustomScreen(dynamic json) {
    return CustomScreen(
        entityId: create_id_from('CustomScreen', ['customScreenId'], json),
        customScreenLocation: json['customScreenLocation'] as String,
        customScreenTypeId: json['customScreenTypeId'] as String,
        description: json['description'] as String,
        customScreenId: json['customScreenId'] as String,
        customScreenName: json['customScreenName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustomScreen overridesCustomScreen(Map<String, dynamic> map) {
    return CustomScreen(
        entityId: create_id_from('CustomScreen', ['customScreenId'], map),
        customScreenLocation: map['customScreenLocation'],
        customScreenTypeId: map['customScreenTypeId'],
        description: map['description'],
        customScreenId: map['customScreenId'],
        customScreenName: map['customScreenName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustomScreenType extractCustomScreenType(dynamic json) {
    return CustomScreenType(
        entityId: create_id_from('CustomScreenType', ['customScreenTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        customScreenTypeId: json['customScreenTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustomScreenType overridesCustomScreenType(Map<String, dynamic> map) {
    return CustomScreenType(
        entityId: create_id_from('CustomScreenType', ['customScreenTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        customScreenTypeId: map['customScreenTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}