import 'package:sagas_meta/src/models/entity_synchronization.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntitySynchronizationJsonifier{
  static EntitySync extractEntitySync(dynamic json) {
    return EntitySync(
        entityId: create_id_from('EntitySync', ['entitySyncId'], json),
        targetDelegatorName: json['targetDelegatorName'] as String,
        maxRunningNoUpdateMillis: json['maxRunningNoUpdateMillis'] as int,
        lastHistoryStartDate: check_dt(json['lastHistoryStartDate']),
        preOfflineSynchTime: check_dt(json['preOfflineSynchTime']),
        forPushOnly: json['forPushOnly'] as String,
        forPullOnly: json['forPullOnly'] as String,
        lastSuccessfulSynchTime: check_dt(json['lastSuccessfulSynchTime']),
        entitySyncId: json['entitySyncId'] as String,
        keepRemoveInfoHours: json['keepRemoveInfoHours'] as double,
        offlineSyncSplitMillis: json['offlineSyncSplitMillis'] as int,
        targetServiceName: json['targetServiceName'] as String,
        runStatusId: json['runStatusId'] as String,
        syncSplitMillis: json['syncSplitMillis'] as int,
        syncEndBufferMillis: json['syncEndBufferMillis'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySync overridesEntitySync(Map<String, dynamic> map) {
    return EntitySync(
        entityId: create_id_from('EntitySync', ['entitySyncId'], map),
        targetDelegatorName: map['targetDelegatorName'],
        maxRunningNoUpdateMillis: map['maxRunningNoUpdateMillis'],
        lastHistoryStartDate: map['lastHistoryStartDate'],
        preOfflineSynchTime: map['preOfflineSynchTime'],
        forPushOnly: map['forPushOnly'],
        forPullOnly: map['forPullOnly'],
        lastSuccessfulSynchTime: map['lastSuccessfulSynchTime'],
        entitySyncId: map['entitySyncId'],
        keepRemoveInfoHours: map['keepRemoveInfoHours'],
        offlineSyncSplitMillis: map['offlineSyncSplitMillis'],
        targetServiceName: map['targetServiceName'],
        runStatusId: map['runStatusId'],
        syncSplitMillis: map['syncSplitMillis'],
        syncEndBufferMillis: map['syncEndBufferMillis'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntitySyncHistory extractEntitySyncHistory(dynamic json) {
    return EntitySyncHistory(
        entityId: create_id_from('EntitySyncHistory', ['entitySyncId', 'startDate'], json),
        totalRowsExported: json['totalRowsExported'] as int,
        toCreateInserted: json['toCreateInserted'] as int,
        toStoreUpdated: json['toStoreUpdated'] as int,
        toCreateUpdated: json['toCreateUpdated'] as int,
        toCreateNotUpdated: json['toCreateNotUpdated'] as int,
        perSplitMaxMillis: json['perSplitMaxMillis'] as int,
        beginningSynchTime: check_dt(json['beginningSynchTime']),
        toStoreInserted: json['toStoreInserted'] as int,
        totalSplits: json['totalSplits'] as int,
        totalRowsToCreate: json['totalRowsToCreate'] as int,
        entitySyncId: json['entitySyncId'] as String,
        lastCandidateEndTime: check_dt(json['lastCandidateEndTime']),
        toRemoveDeleted: json['toRemoveDeleted'] as int,
        runStatusId: json['runStatusId'] as String,
        perSplitMinItems: json['perSplitMinItems'] as int,
        perSplitMinMillis: json['perSplitMinMillis'] as int,
        totalStoreCalls: json['totalStoreCalls'] as int,
        runningTimeMillis: json['runningTimeMillis'] as int,
        lastSplitStartTime: json['lastSplitStartTime'] as int,
        totalRowsToRemove: json['totalRowsToRemove'] as int,
        lastSuccessfulSynchTime: check_dt(json['lastSuccessfulSynchTime']),
        perSplitMaxItems: json['perSplitMaxItems'] as int,
        totalRowsToStore: json['totalRowsToStore'] as int,
        toRemoveAlreadyDeleted: json['toRemoveAlreadyDeleted'] as int,
        toStoreNotUpdated: json['toStoreNotUpdated'] as int,
        startDate: check_dt(json['startDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySyncHistory overridesEntitySyncHistory(Map<String, dynamic> map) {
    return EntitySyncHistory(
        entityId: create_id_from('EntitySyncHistory', ['entitySyncId', 'startDate'], map),
        totalRowsExported: map['totalRowsExported'],
        toCreateInserted: map['toCreateInserted'],
        toStoreUpdated: map['toStoreUpdated'],
        toCreateUpdated: map['toCreateUpdated'],
        toCreateNotUpdated: map['toCreateNotUpdated'],
        perSplitMaxMillis: map['perSplitMaxMillis'],
        beginningSynchTime: map['beginningSynchTime'],
        toStoreInserted: map['toStoreInserted'],
        totalSplits: map['totalSplits'],
        totalRowsToCreate: map['totalRowsToCreate'],
        entitySyncId: map['entitySyncId'],
        lastCandidateEndTime: map['lastCandidateEndTime'],
        toRemoveDeleted: map['toRemoveDeleted'],
        runStatusId: map['runStatusId'],
        perSplitMinItems: map['perSplitMinItems'],
        perSplitMinMillis: map['perSplitMinMillis'],
        totalStoreCalls: map['totalStoreCalls'],
        runningTimeMillis: map['runningTimeMillis'],
        lastSplitStartTime: map['lastSplitStartTime'],
        totalRowsToRemove: map['totalRowsToRemove'],
        lastSuccessfulSynchTime: map['lastSuccessfulSynchTime'],
        perSplitMaxItems: map['perSplitMaxItems'],
        totalRowsToStore: map['totalRowsToStore'],
        toRemoveAlreadyDeleted: map['toRemoveAlreadyDeleted'],
        toStoreNotUpdated: map['toStoreNotUpdated'],
        startDate: map['startDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntitySyncInclGrpDetailView extractEntitySyncInclGrpDetailView(dynamic json) {
    return EntitySyncInclGrpDetailView(
        entityId: create_id_from('EntitySyncInclGrpDetailView', ['entitySyncId', 'entityGroupId', 'entityOrPackage'], json),
        entityOrPackage: json['entityOrPackage'] as String,
        entitySyncId: json['entitySyncId'] as String,
        entityGroupId: json['entityGroupId'] as String,
        applEnumId: json['applEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySyncInclGrpDetailView overridesEntitySyncInclGrpDetailView(Map<String, dynamic> map) {
    return EntitySyncInclGrpDetailView(
        entityId: create_id_from('EntitySyncInclGrpDetailView', ['entitySyncId', 'entityGroupId', 'entityOrPackage'], map),
        entityOrPackage: map['entityOrPackage'],
        entitySyncId: map['entitySyncId'],
        entityGroupId: map['entityGroupId'],
        applEnumId: map['applEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntitySyncInclude extractEntitySyncInclude(dynamic json) {
    return EntitySyncInclude(
        entityId: create_id_from('EntitySyncInclude', ['entitySyncId', 'entityOrPackage'], json),
        entityOrPackage: json['entityOrPackage'] as String,
        entitySyncId: json['entitySyncId'] as String,
        applEnumId: json['applEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySyncInclude overridesEntitySyncInclude(Map<String, dynamic> map) {
    return EntitySyncInclude(
        entityId: create_id_from('EntitySyncInclude', ['entitySyncId', 'entityOrPackage'], map),
        entityOrPackage: map['entityOrPackage'],
        entitySyncId: map['entitySyncId'],
        applEnumId: map['applEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntitySyncIncludeGroup extractEntitySyncIncludeGroup(dynamic json) {
    return EntitySyncIncludeGroup(
        entityId: create_id_from('EntitySyncIncludeGroup', ['entitySyncId', 'entityGroupId'], json),
        entitySyncId: json['entitySyncId'] as String,
        entityGroupId: json['entityGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySyncIncludeGroup overridesEntitySyncIncludeGroup(Map<String, dynamic> map) {
    return EntitySyncIncludeGroup(
        entityId: create_id_from('EntitySyncIncludeGroup', ['entitySyncId', 'entityGroupId'], map),
        entitySyncId: map['entitySyncId'],
        entityGroupId: map['entityGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EntitySyncRemove extractEntitySyncRemove(dynamic json) {
    return EntitySyncRemove(
        entityId: create_id_from('EntitySyncRemove', ['entitySyncRemoveId'], json),
        primaryKeyRemoved: json['primaryKeyRemoved'] as String,
        entitySyncRemoveId: json['entitySyncRemoveId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EntitySyncRemove overridesEntitySyncRemove(Map<String, dynamic> map) {
    return EntitySyncRemove(
        entityId: create_id_from('EntitySyncRemove', ['entitySyncRemoveId'], map),
        primaryKeyRemoved: map['primaryKeyRemoved'],
        entitySyncRemoveId: map['entitySyncRemoveId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}