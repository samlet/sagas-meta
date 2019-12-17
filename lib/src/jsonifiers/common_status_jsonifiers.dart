import 'package:sagas_meta/src/models/common_status.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonStatusJsonifier{
  static StatusItem extractStatusItem(dynamic json) {
    return StatusItem(
        entityId: create_id_from('StatusItem', ['statusId'], json),
        statusId: json['statusId'] as String,
        statusTypeId: json['statusTypeId'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        statusCode: json['statusCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static StatusItem overridesStatusItem(Map<String, dynamic> map) {
    return StatusItem(
        entityId: create_id_from('StatusItem', ['statusId'], map),
        statusId: map['statusId'],
        statusTypeId: map['statusTypeId'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        statusCode: map['statusCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static StatusType extractStatusType(dynamic json) {
    return StatusType(
        entityId: create_id_from('StatusType', ['statusTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        statusTypeId: json['statusTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static StatusType overridesStatusType(Map<String, dynamic> map) {
    return StatusType(
        entityId: create_id_from('StatusType', ['statusTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        statusTypeId: map['statusTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static StatusValidChange extractStatusValidChange(dynamic json) {
    return StatusValidChange(
        entityId: create_id_from('StatusValidChange', ['statusId', 'statusIdTo'], json),
        conditionExpression: json['conditionExpression'] as String,
        statusId: json['statusId'] as String,
        statusIdTo: json['statusIdTo'] as String,
        transitionName: json['transitionName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static StatusValidChange overridesStatusValidChange(Map<String, dynamic> map) {
    return StatusValidChange(
        entityId: create_id_from('StatusValidChange', ['statusId', 'statusIdTo'], map),
        conditionExpression: map['conditionExpression'],
        statusId: map['statusId'],
        statusIdTo: map['statusIdTo'],
        transitionName: map['transitionName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static StatusValidChangeToDetail extractStatusValidChangeToDetail(dynamic json) {
    return StatusValidChangeToDetail(
        entityId: create_id_from('StatusValidChangeToDetail', ['statusId', 'statusIdTo'], json),
        conditionExpression: json['conditionExpression'] as String,
        statusId: json['statusId'] as String,
        statusTypeId: json['statusTypeId'] as String,
        description: json['description'] as String,
        statusIdTo: json['statusIdTo'] as String,
        sequenceId: json['sequenceId'] as String,
        transitionName: json['transitionName'] as String,
        statusCode: json['statusCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static StatusValidChangeToDetail overridesStatusValidChangeToDetail(Map<String, dynamic> map) {
    return StatusValidChangeToDetail(
        entityId: create_id_from('StatusValidChangeToDetail', ['statusId', 'statusIdTo'], map),
        conditionExpression: map['conditionExpression'],
        statusId: map['statusId'],
        statusTypeId: map['statusTypeId'],
        description: map['description'],
        statusIdTo: map['statusIdTo'],
        sequenceId: map['sequenceId'],
        transitionName: map['transitionName'],
        statusCode: map['statusCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}