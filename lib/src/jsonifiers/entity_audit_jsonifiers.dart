import 'package:sagas_meta/src/models/entity_audit.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityAuditJsonifier{
  static EntityAuditLog extractEntityAuditLog(dynamic json) {
    return EntityAuditLog(
        entityId: create_id_from('EntityAuditLog', ['auditHistorySeqId'], json),
        pkCombinedValueText: json['pkCombinedValueText'] as String,
        changedSessionInfo: json['changedSessionInfo'] as String,
        changedFieldName: json['changedFieldName'] as String,
        changedDate: check_dt(json['changedDate']),
        changedEntityName: json['changedEntityName'] as String,
        oldValueText: json['oldValueText'] as String,
        auditHistorySeqId: json['auditHistorySeqId'] as String,
        changedByInfo: json['changedByInfo'] as String,
        newValueText: json['newValueText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntityAuditLog overridesEntityAuditLog(Map<String, dynamic> map) {
    return EntityAuditLog(
        entityId: create_id_from('EntityAuditLog', ['auditHistorySeqId'], map),
        pkCombinedValueText: map['pkCombinedValueText'],
        changedSessionInfo: map['changedSessionInfo'],
        changedFieldName: map['changedFieldName'],
        changedDate: map['changedDate'],
        changedEntityName: map['changedEntityName'],
        oldValueText: map['oldValueText'],
        auditHistorySeqId: map['auditHistorySeqId'],
        changedByInfo: map['changedByInfo'],
        newValueText: map['newValueText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}