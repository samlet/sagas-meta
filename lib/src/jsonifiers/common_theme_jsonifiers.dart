import 'package:sagas_meta/src/models/common_theme.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonThemeJsonifier{
  static VisualTheme extractVisualTheme(dynamic json) {
    return VisualTheme(
        entityId: create_id_from('VisualTheme', ['visualThemeId'], json),
        visualThemeId: json['visualThemeId'] as String,
        description: json['description'] as String,
        visualThemeSetId: json['visualThemeSetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VisualTheme overridesVisualTheme(Map<String, dynamic> map) {
    return VisualTheme(
        entityId: create_id_from('VisualTheme', ['visualThemeId'], map),
        visualThemeId: map['visualThemeId'],
        description: map['description'],
        visualThemeSetId: map['visualThemeSetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VisualThemeResource extractVisualThemeResource(dynamic json) {
    return VisualThemeResource(
        entityId: create_id_from('VisualThemeResource', ['visualThemeId', 'resourceTypeEnumId', 'sequenceId'], json),
        resourceTypeEnumId: json['resourceTypeEnumId'] as String,
        visualThemeId: json['visualThemeId'] as String,
        sequenceId: json['sequenceId'] as String,
        resourceValue: json['resourceValue'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VisualThemeResource overridesVisualThemeResource(Map<String, dynamic> map) {
    return VisualThemeResource(
        entityId: create_id_from('VisualThemeResource', ['visualThemeId', 'resourceTypeEnumId', 'sequenceId'], map),
        resourceTypeEnumId: map['resourceTypeEnumId'],
        visualThemeId: map['visualThemeId'],
        sequenceId: map['sequenceId'],
        resourceValue: map['resourceValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VisualThemeSet extractVisualThemeSet(dynamic json) {
    return VisualThemeSet(
        entityId: create_id_from('VisualThemeSet', ['visualThemeSetId'], json),
        description: json['description'] as String,
        visualThemeSetId: json['visualThemeSetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VisualThemeSet overridesVisualThemeSet(Map<String, dynamic> map) {
    return VisualThemeSet(
        entityId: create_id_from('VisualThemeSet', ['visualThemeSetId'], map),
        description: map['description'],
        visualThemeSetId: map['visualThemeSetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}