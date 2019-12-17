import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EntityAuditLog, Entity Audit Log
class EntityAuditLog extends EntityBase {

  /// this entity has only one pk
  final String pkCombinedValueText;
  final String changedSessionInfo;
  final String changedFieldName;
  final DateTime changedDate;
  final String changedEntityName;
  final String oldValueText;
  final String auditHistorySeqId; // pk
  final String changedByInfo;
  final String newValueText;
  EntityAuditLog({entityId,
    this.pkCombinedValueText, this.changedSessionInfo, this.changedFieldName, this.changedDate, this.changedEntityName, this.oldValueText, @required this.auditHistorySeqId, this.changedByInfo, this.newValueText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntityAuditLog { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'pkCombinedValueText':pkCombinedValueText, 'changedSessionInfo':changedSessionInfo, 'changedFieldName':changedFieldName, 'changedDate':changedDate, 'changedEntityName':changedEntityName, 'oldValueText':oldValueText, 'auditHistorySeqId':auditHistorySeqId, 'changedByInfo':changedByInfo, 'newValueText':newValueText};
  }

}