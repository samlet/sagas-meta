import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EntitySync, Entity Synchronization
class EntitySync extends EntityBase {

  /// this entity has only one pk
  final String targetDelegatorName;
  final int maxRunningNoUpdateMillis;
  final DateTime lastHistoryStartDate;
  final DateTime preOfflineSynchTime;
  final String forPushOnly;
  final String forPullOnly;
  final DateTime lastSuccessfulSynchTime;
  final String entitySyncId; // pk
  final double keepRemoveInfoHours;
  final int offlineSyncSplitMillis;
  final String targetServiceName;
  final String runStatusId;
  final int syncSplitMillis;
  final int syncEndBufferMillis;
  EntitySync({entityId,
    this.targetDelegatorName, this.maxRunningNoUpdateMillis, this.lastHistoryStartDate, this.preOfflineSynchTime, this.forPushOnly, this.forPullOnly, this.lastSuccessfulSynchTime, @required this.entitySyncId, this.keepRemoveInfoHours, this.offlineSyncSplitMillis, this.targetServiceName, this.runStatusId, this.syncSplitMillis, this.syncEndBufferMillis,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySync { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'targetDelegatorName':targetDelegatorName, 'maxRunningNoUpdateMillis':maxRunningNoUpdateMillis, 'lastHistoryStartDate':lastHistoryStartDate, 'preOfflineSynchTime':preOfflineSynchTime, 'forPushOnly':forPushOnly, 'forPullOnly':forPullOnly, 'lastSuccessfulSynchTime':lastSuccessfulSynchTime, 'entitySyncId':entitySyncId, 'keepRemoveInfoHours':keepRemoveInfoHours, 'offlineSyncSplitMillis':offlineSyncSplitMillis, 'targetServiceName':targetServiceName, 'runStatusId':runStatusId, 'syncSplitMillis':syncSplitMillis, 'syncEndBufferMillis':syncEndBufferMillis};
  }

}

/// Entity EntitySyncHistory, Entity Synchronization History
class EntitySyncHistory extends EntityBase {

  final int totalRowsExported;
  final int toCreateInserted;
  final int toStoreUpdated;
  final int toCreateUpdated;
  final int toCreateNotUpdated;
  final int perSplitMaxMillis;
  final DateTime beginningSynchTime;
  final int toStoreInserted;
  final int totalSplits;
  final int totalRowsToCreate;
  final String entitySyncId; // pk
  final DateTime lastCandidateEndTime;
  final int toRemoveDeleted;
  final String runStatusId;
  final int perSplitMinItems;
  final int perSplitMinMillis;
  final int totalStoreCalls;
  final int runningTimeMillis;
  final int lastSplitStartTime;
  final int totalRowsToRemove;
  final DateTime lastSuccessfulSynchTime;
  final int perSplitMaxItems;
  final int totalRowsToStore;
  final int toRemoveAlreadyDeleted;
  final int toStoreNotUpdated;
  final DateTime startDate; // pk
  EntitySyncHistory({entityId,
    this.totalRowsExported, this.toCreateInserted, this.toStoreUpdated, this.toCreateUpdated, this.toCreateNotUpdated, this.perSplitMaxMillis, this.beginningSynchTime, this.toStoreInserted, this.totalSplits, this.totalRowsToCreate, @required this.entitySyncId, this.lastCandidateEndTime, this.toRemoveDeleted, this.runStatusId, this.perSplitMinItems, this.perSplitMinMillis, this.totalStoreCalls, this.runningTimeMillis, this.lastSplitStartTime, this.totalRowsToRemove, this.lastSuccessfulSynchTime, this.perSplitMaxItems, this.totalRowsToStore, this.toRemoveAlreadyDeleted, this.toStoreNotUpdated, @required this.startDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySyncHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'totalRowsExported':totalRowsExported, 'toCreateInserted':toCreateInserted, 'toStoreUpdated':toStoreUpdated, 'toCreateUpdated':toCreateUpdated, 'toCreateNotUpdated':toCreateNotUpdated, 'perSplitMaxMillis':perSplitMaxMillis, 'beginningSynchTime':beginningSynchTime, 'toStoreInserted':toStoreInserted, 'totalSplits':totalSplits, 'totalRowsToCreate':totalRowsToCreate, 'entitySyncId':entitySyncId, 'lastCandidateEndTime':lastCandidateEndTime, 'toRemoveDeleted':toRemoveDeleted, 'runStatusId':runStatusId, 'perSplitMinItems':perSplitMinItems, 'perSplitMinMillis':perSplitMinMillis, 'totalStoreCalls':totalStoreCalls, 'runningTimeMillis':runningTimeMillis, 'lastSplitStartTime':lastSplitStartTime, 'totalRowsToRemove':totalRowsToRemove, 'lastSuccessfulSynchTime':lastSuccessfulSynchTime, 'perSplitMaxItems':perSplitMaxItems, 'totalRowsToStore':totalRowsToStore, 'toRemoveAlreadyDeleted':toRemoveAlreadyDeleted, 'toStoreNotUpdated':toStoreNotUpdated, 'startDate':startDate};
  }

}

/// Entity EntitySyncInclGrpDetailView, Entity Synchronization Include Entity Group Detail View
class EntitySyncInclGrpDetailView extends EntityBase {

  final String entityOrPackage; // pk
  final String entitySyncId; // pk
  final String entityGroupId; // pk
  final String applEnumId;
  EntitySyncInclGrpDetailView({entityId,
    @required this.entityOrPackage, @required this.entitySyncId, @required this.entityGroupId, this.applEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySyncInclGrpDetailView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'entityOrPackage':entityOrPackage, 'entitySyncId':entitySyncId, 'entityGroupId':entityGroupId, 'applEnumId':applEnumId};
  }

}

/// Entity EntitySyncInclude, Entity Synchronization Include
class EntitySyncInclude extends EntityBase {

  final String entityOrPackage; // pk
  final String entitySyncId; // pk
  final String applEnumId;
  EntitySyncInclude({entityId,
    @required this.entityOrPackage, @required this.entitySyncId, this.applEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySyncInclude { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'entityOrPackage':entityOrPackage, 'entitySyncId':entitySyncId, 'applEnumId':applEnumId};
  }

}

/// Entity EntitySyncIncludeGroup, Entity Synchronization Include Entity Group
class EntitySyncIncludeGroup extends EntityBase {

  final String entitySyncId; // pk
  final String entityGroupId; // pk
  EntitySyncIncludeGroup({entityId,
    @required this.entitySyncId, @required this.entityGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySyncIncludeGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'entitySyncId':entitySyncId, 'entityGroupId':entityGroupId};
  }

}

/// Entity EntitySyncRemove, Entity Synchronization Remove
class EntitySyncRemove extends EntityBase {

  /// this entity has only one pk
  final String primaryKeyRemoved;
  final String entitySyncRemoveId; // pk
  EntitySyncRemove({entityId,
    this.primaryKeyRemoved, @required this.entitySyncRemoveId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntitySyncRemove { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'primaryKeyRemoved':primaryKeyRemoved, 'entitySyncRemoveId':entitySyncRemoveId};
  }

}