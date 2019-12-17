import 'package:sagas_meta/src/models/entity_synchronization.dart';
import 'package:sagas_meta/src/models/webapp_visit.dart';
import 'package:sagas_meta/src/models/entity_test.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class EntityextServices{
  final SrvClient client;
  EntityextServices(this.client);

  /**
   * Clean EntitySyncRemove Info - Generally should be run asynchronously after each sync run, or periodically run on a schedule - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> cleanSyncRemoveInfo() =>
      client.invoke('cleanSyncRemoveInfo', null, {  });

  /**
   * Clears all values from all Entity Engine caches. By default does not distribute. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> clearAllEntityCaches({bool distribute}) =>
      client.invoke('clearAllEntityCaches', null, { 'distribute': distribute });

  /**
   * Clear Cache Line with a dummyPK (GenericEntity); clears that all cache entry and depending on whether the dummyPK is a primaryKey or not this clears the by primary key cache or the specified entry in the by and cache. By default does not distribute. - 
   *
   * Requires dummyPK
   * Returns 
   */
  Future<OfResult> clearCacheLineByDummyPK({@required Map<String,dynamic> dummyPK, bool distribute}) =>
      client.invoke('clearCacheLineByDummyPK', null, { 'dummyPK': dummyPK, 'distribute': distribute });

  /**
   * Clear Cache Line with a primaryKey (GenericPK); clears the all and by primary key caches. By default does not distribute. - 
   *
   * Requires primaryKey
   * Returns 
   */
  Future<OfResult> clearCacheLineByPrimaryKey({@required Map<String,dynamic> primaryKey, bool distribute}) =>
      client.invoke('clearCacheLineByPrimaryKey', null, { 'primaryKey': primaryKey, 'distribute': distribute });

  /**
   * Clear Cache Line with a value (GenericValue); this is the preferred method since the all, by primary key and by and caches will be cleared. By default does not distribute. - 
   *
   * Requires value
   * Returns 
   */
  Future<OfResult> clearCacheLineByValue({@required Map<String,dynamic> value, bool distribute}) =>
      client.invoke('clearCacheLineByValue', null, { 'value': value, 'distribute': distribute });

  /**
   * Create a BrowserType - BrowserType
   *
   * Requires 
   * Returns browserTypeId[String]
   */
  Future<OfResult> createBrowserType(BrowserType ent, ) =>
      client.invoke('createBrowserType', ent, {  });

  /**
   * Create EntitySync - EntitySync
   *
   * Requires 
   * Returns entitySyncId[String]
   */
  Future<OfResult> createEntitySync(EntitySync ent, ) =>
      client.invoke('createEntitySync', ent, {  });

  /**
   * Create EntitySyncHistory - EntitySyncHistory
   *
   * Requires entitySyncId
   * Returns startDate[java.sql.Timestamp], startDate[java.sql.Timestamp]
   */
  Future<OfResult> createEntitySyncHistory(EntitySyncHistory ent, ) =>
      client.invoke('createEntitySyncHistory', ent, {  });

  /**
   * Create EntitySyncInclude - EntitySyncInclude
   *
   * Requires entitySyncId, entityOrPackage, applEnumId, applEnumId
   * Returns 
   */
  Future<OfResult> createEntitySyncInclude(EntitySyncInclude ent, ) =>
      client.invoke('createEntitySyncInclude', ent, {  });

  /**
   * Create a PlatformType - PlatformType
   *
   * Requires 
   * Returns platformTypeId[String]
   */
  Future<OfResult> createPlatformType(PlatformType ent, ) =>
      client.invoke('createPlatformType', ent, {  });

  /**
   * Create a ProtocolType - ProtocolType
   *
   * Requires 
   * Returns protocolTypeId[String]
   */
  Future<OfResult> createProtocolType(ProtocolType ent, ) =>
      client.invoke('createProtocolType', ent, {  });

  /**
   * Create a ServerHitType - ServerHitType
   *
   * Requires 
   * Returns hitTypeId[String]
   */
  Future<OfResult> createServerHitType(ServerHitType ent, ) =>
      client.invoke('createServerHitType', ent, {  });

  /**
   * Create a TestingSubtype record - TestingSubtype
   *
   * Requires 
   * Returns testingTypeId[String]
   */
  Future<OfResult> createTestingSubtype(TestingSubtype ent, ) =>
      client.invoke('createTestingSubtype', ent, {  });

  /**
   * Create a TestingType record - TestingType
   *
   * Requires 
   * Returns testingTypeId[String]
   */
  Future<OfResult> createTestingType(TestingType ent, ) =>
      client.invoke('createTestingType', ent, {  });

  /**
   * Create a UserAgentMethodType record - UserAgentMethodType
   *
   * Requires 
   * Returns userAgentMethodTypeId[String]
   */
  Future<OfResult> createUserAgentMethodType(UserAgentMethodType ent, ) =>
      client.invoke('createUserAgentMethodType', ent, {  });

  /**
   * Create a UserAgentType record - UserAgentType
   *
   * Requires 
   * Returns userAgentTypeId[String]
   */
  Future<OfResult> createUserAgentType(UserAgentType ent, ) =>
      client.invoke('createUserAgentType', ent, {  });

  /**
   * Delete a BrowserType - BrowserType
   *
   * Requires browserTypeId
   * Returns 
   */
  Future<OfResult> deleteBrowserType(BrowserType ent, ) =>
      client.invoke('deleteBrowserType', ent, {  });

  /**
   * Delete EntitySyncHistory - EntitySyncHistory
   *
   * Requires entitySyncId, startDate
   * Returns 
   */
  Future<OfResult> deleteEntitySyncHistory(EntitySyncHistory ent, ) =>
      client.invoke('deleteEntitySyncHistory', ent, {  });

  /**
   * Delete EntitySyncInclude - EntitySyncInclude
   *
   * Requires entitySyncId, entityOrPackage
   * Returns 
   */
  Future<OfResult> deleteEntitySyncInclude(EntitySyncInclude ent, ) =>
      client.invoke('deleteEntitySyncInclude', ent, {  });

  /**
   * Delete a PlatformType - PlatformType
   *
   * Requires platformTypeId
   * Returns 
   */
  Future<OfResult> deletePlatformType(PlatformType ent, ) =>
      client.invoke('deletePlatformType', ent, {  });

  /**
   * Delete a ProtocolType - ProtocolType
   *
   * Requires protocolTypeId
   * Returns 
   */
  Future<OfResult> deleteProtocolType(ProtocolType ent, ) =>
      client.invoke('deleteProtocolType', ent, {  });

  /**
   * Delete a ServerHitType - ServerHitType
   *
   * Requires hitTypeId
   * Returns 
   */
  Future<OfResult> deleteServerHitType(ServerHitType ent, ) =>
      client.invoke('deleteServerHitType', ent, {  });

  /**
   * Delete a TestingSubtype record - TestingSubtype
   *
   * Requires testingTypeId
   * Returns 
   */
  Future<OfResult> deleteTestingSubtype(TestingSubtype ent, ) =>
      client.invoke('deleteTestingSubtype', ent, {  });

  /**
   * Delete a TestingType record - TestingType
   *
   * Requires testingTypeId
   * Returns 
   */
  Future<OfResult> deleteTestingType(TestingType ent, ) =>
      client.invoke('deleteTestingType', ent, {  });

  /**
   * Delete a UserAgentMethodType record - UserAgentMethodType
   *
   * Requires userAgentMethodTypeId
   * Returns 
   */
  Future<OfResult> deleteUserAgentMethodType(UserAgentMethodType ent, ) =>
      client.invoke('deleteUserAgentMethodType', ent, {  });

  /**
   * Delete a UserAgentType record - UserAgentType
   *
   * Requires userAgentTypeId
   * Returns 
   */
  Future<OfResult> deleteUserAgentType(UserAgentType ent, ) =>
      client.invoke('deleteUserAgentType', ent, {  });

  /**
   * Clear All Entity Engine Caches for all Servers listening to the topic - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> distributedClearAllEntityCaches() =>
      client.invoke('distributedClearAllEntityCaches', null, {  });

  /**
   * Clear Cache Line by dummyPK for all Servers listening to the topic - 
   *
   * Requires dummyPK
   * Returns 
   */
  Future<OfResult> distributedClearCacheLineByDummyPK({@required Map<String,dynamic> dummyPK}) =>
      client.invoke('distributedClearCacheLineByDummyPK', null, { 'dummyPK': dummyPK });

  /**
   * Clear Cache Line by primaryKey for all Servers listening to the topic - 
   *
   * Requires primaryKey
   * Returns 
   */
  Future<OfResult> distributedClearCacheLineByPrimaryKey({@required Map<String,dynamic> primaryKey, bool distribute}) =>
      client.invoke('distributedClearCacheLineByPrimaryKey', null, { 'primaryKey': primaryKey, 'distribute': distribute });

  /**
   * Clear Cache Line by value for all Servers listening to the topic - 
   *
   * Requires value
   * Returns 
   */
  Future<OfResult> distributedClearCacheLineByValue({@required Map<String,dynamic> value}) =>
      client.invoke('distributedClearCacheLineByValue', null, { 'value': value });

  /**
   * Entity sync permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> entitySyncPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('entitySyncPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * mysql timestamp Field migration service,
            it will generate sql file with alter query statement to update the datatype of timestamp field to support Fractional Seconds in Time Values
            mySql 5.6.4 added support for Fractional Seconds in Time Values.  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> generateMySqlFileWithAlterTableForTimestamps({String groupName}) =>
      client.invoke('generateMySqlFileWithAlterTableForTimestamps', null, { 'groupName': groupName });

  /**
   * Import delimited file - 
   *
   * Requires file
   * Returns records[Integer]
   */
  Future<OfResult> importDelimitedEntityFile({@required String file, String delimiter}) =>
      client.invoke('importDelimitedEntityFile', null, { 'file': file, 'delimiter': delimiter });

  /**
   * Read a directory for .txt files with entity names; read each line as a record - 
   *
   * Requires rootDirectory
   * Returns 
   */
  Future<OfResult> importEntityFileDirectory({@required String rootDirectory, String delimiter}) =>
      client.invoke('importEntityFileDirectory', null, { 'rootDirectory': rootDirectory, 'delimiter': delimiter });

  /**
   *  - 
   *
   * Requires xmlFileName
   * Returns 
   */
  Future<OfResult> loadOfflineEntitySyncData({@required String xmlFileName}) =>
      client.invoke('loadOfflineEntitySyncData', null, { 'xmlFileName': xmlFileName });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> localhostClearAllEntityCaches({bool distribute}) =>
      client.invoke('localhostClearAllEntityCaches', null, { 'distribute': distribute });

  /**
   *  - 
   *
   * Requires dummyPK
   * Returns 
   */
  Future<OfResult> localhostClearCacheLineByDummyPK({@required Map<String,dynamic> dummyPK, bool distribute}) =>
      client.invoke('localhostClearCacheLineByDummyPK', null, { 'dummyPK': dummyPK, 'distribute': distribute });

  /**
   *  - 
   *
   * Requires primaryKey
   * Returns 
   */
  Future<OfResult> localhostClearCacheLineByPrimaryKey({@required Map<String,dynamic> primaryKey, bool distribute}) =>
      client.invoke('localhostClearCacheLineByPrimaryKey', null, { 'primaryKey': primaryKey, 'distribute': distribute });

  /**
   *  - 
   *
   * Requires value
   * Returns 
   */
  Future<OfResult> localhostClearCacheLineByValue({@required Map<String,dynamic> value, bool distribute}) =>
      client.invoke('localhostClearCacheLineByValue', null, { 'value': value, 'distribute': distribute });

  /**
   * Pull And Report Entity Sync Data - 
   *
   * Requires entitySyncId
   * Returns valuesToCreate[List], valuesToStore[List], keysToRemove[List], startDate[Timestamp]
   */
  Future<OfResult> pullAndReportEntitySyncData({@required String entitySyncId, String delegatorName, DateTime startDate, int toCreateInserted, int toCreateUpdated, int toCreateNotUpdated, int toStoreInserted, int toStoreUpdated, int toStoreNotUpdated, int toRemoveDeleted, int toRemoveAlreadyDeleted}) =>
      client.invoke('pullAndReportEntitySyncData', null, { 'entitySyncId': entitySyncId, 'delegatorName': delegatorName, 'startDate': startDate, 'toCreateInserted': toCreateInserted, 'toCreateUpdated': toCreateUpdated, 'toCreateNotUpdated': toCreateNotUpdated, 'toStoreInserted': toStoreInserted, 'toStoreUpdated': toStoreUpdated, 'toStoreNotUpdated': toStoreNotUpdated, 'toRemoveDeleted': toRemoveDeleted, 'toRemoveAlreadyDeleted': toRemoveAlreadyDeleted });

  /**
   * Rebuilds all indexes/keys - 
   *
   * Requires groupName
   * Returns messages[List]
   */
  Future<OfResult> rebuildEntityIndexesAndKeys({@required String groupName, bool fixColSizes}) =>
      client.invoke('rebuildEntityIndexesAndKeys', null, { 'groupName': groupName, 'fixColSizes': fixColSizes });

  /**
   * Re-encrypt all the encrypted fields in the data model. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> reencryptFields({String groupName}) =>
      client.invoke('reencryptFields', null, { 'groupName': groupName });

  /**
   * Re-encrypt the private keys, encrypted in EntityKeyStore with oldKey, using the newKey. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> reencryptPrivateKeys({String oldKey, String newKey}) =>
      client.invoke('reencryptPrivateKeys', null, { 'oldKey': oldKey, 'newKey': newKey });

  /**
   * Remotely Pull And Report Entity Sync Data - 
   *
   * Requires entitySyncId
   * Returns valuesToCreate[List], valuesToStore[List], keysToRemove[List], startDate[Timestamp]
   */
  Future<OfResult> remotePullAndReportEntitySyncDataHttp({@required String entitySyncId, String delegatorName, DateTime startDate, int toCreateInserted, int toCreateUpdated, int toCreateNotUpdated, int toStoreInserted, int toStoreUpdated, int toStoreNotUpdated, int toRemoveDeleted, int toRemoveAlreadyDeleted}) =>
      client.invoke('remotePullAndReportEntitySyncDataHttp', null, { 'entitySyncId': entitySyncId, 'delegatorName': delegatorName, 'startDate': startDate, 'toCreateInserted': toCreateInserted, 'toCreateUpdated': toCreateUpdated, 'toCreateNotUpdated': toCreateNotUpdated, 'toStoreInserted': toStoreInserted, 'toStoreUpdated': toStoreUpdated, 'toStoreNotUpdated': toStoreNotUpdated, 'toRemoveDeleted': toRemoveDeleted, 'toRemoveAlreadyDeleted': toRemoveAlreadyDeleted });

  /**
   * Remotely Pull And Report Entity Sync Data - 
   *
   * Requires entitySyncId
   * Returns valuesToCreate[List], valuesToStore[List], keysToRemove[List], startDate[Timestamp]
   */
  Future<OfResult> remotePullAndReportEntitySyncDataRmi({@required String entitySyncId, String delegatorName, DateTime startDate, int toCreateInserted, int toCreateUpdated, int toCreateNotUpdated, int toStoreInserted, int toStoreUpdated, int toStoreNotUpdated, int toRemoveDeleted, int toRemoveAlreadyDeleted}) =>
      client.invoke('remotePullAndReportEntitySyncDataRmi', null, { 'entitySyncId': entitySyncId, 'delegatorName': delegatorName, 'startDate': startDate, 'toCreateInserted': toCreateInserted, 'toCreateUpdated': toCreateUpdated, 'toCreateNotUpdated': toCreateNotUpdated, 'toStoreInserted': toStoreInserted, 'toStoreUpdated': toStoreUpdated, 'toStoreNotUpdated': toStoreNotUpdated, 'toRemoveDeleted': toRemoveDeleted, 'toRemoveAlreadyDeleted': toRemoveAlreadyDeleted });

  /**
   * Remotely Store Entity Sync Date - 
   *
   * Requires entitySyncId, valuesToCreate, valuesToStore, keysToRemove
   * Returns toCreateInserted[Long], toCreateUpdated[Long], toCreateNotUpdated[Long], toStoreInserted[Long], toStoreUpdated[Long], toStoreNotUpdated[Long], toRemoveDeleted[Long], toRemoveAlreadyDeleted[Long]
   */
  Future<OfResult> remoteStoreEntitySyncDataHttp({@required String entitySyncId, @required List<dynamic> valuesToCreate, @required List<dynamic> valuesToStore, @required List<dynamic> keysToRemove, String delegatorName}) =>
      client.invoke('remoteStoreEntitySyncDataHttp', null, { 'entitySyncId': entitySyncId, 'valuesToCreate': valuesToCreate, 'valuesToStore': valuesToStore, 'keysToRemove': keysToRemove, 'delegatorName': delegatorName });

  /**
   * Remotely Store Entity Sync Data - 
   *
   * Requires entitySyncId, valuesToCreate, valuesToStore, keysToRemove
   * Returns toCreateInserted[Long], toCreateUpdated[Long], toCreateNotUpdated[Long], toStoreInserted[Long], toStoreUpdated[Long], toStoreNotUpdated[Long], toRemoveDeleted[Long], toRemoveAlreadyDeleted[Long]
   */
  Future<OfResult> remoteStoreEntitySyncDataRmi({@required String entitySyncId, @required List<dynamic> valuesToCreate, @required List<dynamic> valuesToStore, @required List<dynamic> keysToRemove, String delegatorName}) =>
      client.invoke('remoteStoreEntitySyncDataRmi', null, { 'entitySyncId': entitySyncId, 'valuesToCreate': valuesToCreate, 'valuesToStore': valuesToStore, 'keysToRemove': keysToRemove, 'delegatorName': delegatorName });

  /**
   * Generally run manually to reset the status of an EntitySync when it has "crashed". Update a EntitySync, set the Status to ESR_NOT_STARTED, but ONLY if running (ie in ESR_RUNNING) - 
   *
   * Requires entitySyncId
   * Returns 
   */
  Future<OfResult> resetEntitySyncStatusToNotStarted({@required String entitySyncId}) =>
      client.invoke('resetEntitySyncStatusToNotStarted', null, { 'entitySyncId': entitySyncId });

  /**
   * Run Entity Sync - 
   *
   * Requires entitySyncId
   * Returns 
   */
  Future<OfResult> runEntitySync({@required String entitySyncId}) =>
      client.invoke('runEntitySync', null, { 'entitySyncId': entitySyncId });

  /**
   *  - 
   *
   * Requires entitySyncId
   * Returns 
   */
  Future<OfResult> runOfflineEntitySync({@required String entitySyncId, String fileName}) =>
      client.invoke('runOfflineEntitySync', null, { 'entitySyncId': entitySyncId, 'fileName': fileName });

  /**
   * Run Entity Sync Pulling Data From a Remote Server - 
   *
   * Requires entitySyncId, remotePullAndReportEntitySyncDataName
   * Returns 
   */
  Future<OfResult> runPullEntitySync({@required String entitySyncId, @required String remotePullAndReportEntitySyncDataName, String localDelegatorName, String remoteDelegatorName}) =>
      client.invoke('runPullEntitySync', null, { 'entitySyncId': entitySyncId, 'remotePullAndReportEntitySyncDataName': remotePullAndReportEntitySyncDataName, 'localDelegatorName': localDelegatorName, 'remoteDelegatorName': remoteDelegatorName });

  /**
   * Run Entity Sync - 
   *
   * Requires entitySyncId, valuesToCreate, valuesToStore, keysToRemove
   * Returns toCreateInserted[Long], toCreateUpdated[Long], toCreateNotUpdated[Long], toStoreInserted[Long], toStoreUpdated[Long], toStoreNotUpdated[Long], toRemoveDeleted[Long], toRemoveAlreadyDeleted[Long]
   */
  Future<OfResult> storeEntitySyncData({@required String entitySyncId, @required List<dynamic> valuesToCreate, @required List<dynamic> valuesToStore, @required List<dynamic> keysToRemove, String delegatorName}) =>
      client.invoke('storeEntitySyncData', null, { 'entitySyncId': entitySyncId, 'valuesToCreate': valuesToCreate, 'valuesToStore': valuesToStore, 'keysToRemove': keysToRemove, 'delegatorName': delegatorName });

  /**
   * Unwrap ByteWrapper Fields for the given entity and field - 
   *
   * Requires entityName, fieldName
   * Returns 
   */
  Future<OfResult> unwrapByteWrappers({@required String entityName, @required String fieldName}) =>
      client.invoke('unwrapByteWrappers', null, { 'entityName': entityName, 'fieldName': fieldName });

  /**
   * Update a BrowserType - BrowserType
   *
   * Requires browserTypeId
   * Returns 
   */
  Future<OfResult> updateBrowserType(BrowserType ent, ) =>
      client.invoke('updateBrowserType', ent, {  });

  /**
   * Update EntitySync - EntitySync
   *
   * Requires entitySyncId
   * Returns 
   */
  Future<OfResult> updateEntitySync(EntitySync ent, ) =>
      client.invoke('updateEntitySync', ent, {  });

  /**
   * Update EntitySyncHistory - EntitySyncHistory
   *
   * Requires entitySyncId, startDate
   * Returns 
   */
  Future<OfResult> updateEntitySyncHistory(EntitySyncHistory ent, ) =>
      client.invoke('updateEntitySyncHistory', ent, {  });

  /**
   * Update EntitySyncInclude - EntitySyncInclude
   *
   * Requires entitySyncId, entityOrPackage
   * Returns 
   */
  Future<OfResult> updateEntitySyncInclude(EntitySyncInclude ent, ) =>
      client.invoke('updateEntitySyncInclude', ent, {  });

  /**
   * Update EntitySync while Running - 
   *
   * Requires entitySyncId
   * Returns 
   */
  Future<OfResult> updateEntitySyncRunning({@required String entitySyncId, String runStatusId, DateTime lastSuccessfulSynchTime, DateTime lastHistoryStartDate, DateTime preOfflineSynchTime, int offlineSyncSplitMillis, int syncSplitMillis, int syncEndBufferMillis, int maxRunningNoUpdateMillis, String targetServiceName, String targetDelegatorName, double keepRemoveInfoHours, String forPullOnly, String forPushOnly}) =>
      client.invoke('updateEntitySyncRunning', null, { 'entitySyncId': entitySyncId, 'runStatusId': runStatusId, 'lastSuccessfulSynchTime': lastSuccessfulSynchTime, 'lastHistoryStartDate': lastHistoryStartDate, 'preOfflineSynchTime': preOfflineSynchTime, 'offlineSyncSplitMillis': offlineSyncSplitMillis, 'syncSplitMillis': syncSplitMillis, 'syncEndBufferMillis': syncEndBufferMillis, 'maxRunningNoUpdateMillis': maxRunningNoUpdateMillis, 'targetServiceName': targetServiceName, 'targetDelegatorName': targetDelegatorName, 'keepRemoveInfoHours': keepRemoveInfoHours, 'forPullOnly': forPullOnly, 'forPushOnly': forPushOnly });

  /**
   * Not implemented. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateOfflineEntitySync() =>
      client.invoke('updateOfflineEntitySync', null, {  });

  /**
   * Update a PlatformType - PlatformType
   *
   * Requires platformTypeId
   * Returns 
   */
  Future<OfResult> updatePlatformType(PlatformType ent, ) =>
      client.invoke('updatePlatformType', ent, {  });

  /**
   * Update a ProtocolType - ProtocolType
   *
   * Requires protocolTypeId
   * Returns 
   */
  Future<OfResult> updateProtocolType(ProtocolType ent, ) =>
      client.invoke('updateProtocolType', ent, {  });

  /**
   * Update a ServerHitType - ServerHitType
   *
   * Requires hitTypeId
   * Returns 
   */
  Future<OfResult> updateServerHitType(ServerHitType ent, ) =>
      client.invoke('updateServerHitType', ent, {  });

  /**
   * Update a TestingSubtype record - TestingSubtype
   *
   * Requires testingTypeId
   * Returns 
   */
  Future<OfResult> updateTestingSubtype(TestingSubtype ent, ) =>
      client.invoke('updateTestingSubtype', ent, {  });

  /**
   * Update a TestingType record - TestingType
   *
   * Requires testingTypeId
   * Returns 
   */
  Future<OfResult> updateTestingType(TestingType ent, ) =>
      client.invoke('updateTestingType', ent, {  });

  /**
   * Update a UserAgentMethodType record - UserAgentMethodType
   *
   * Requires userAgentMethodTypeId
   * Returns 
   */
  Future<OfResult> updateUserAgentMethodType(UserAgentMethodType ent, ) =>
      client.invoke('updateUserAgentMethodType', ent, {  });

  /**
   * Update a UserAgentType record - UserAgentType
   *
   * Requires userAgentTypeId
   * Returns 
   */
  Future<OfResult> updateUserAgentType(UserAgentType ent, ) =>
      client.invoke('updateUserAgentType', ent, {  });

  /**
   *  - 
   *
   * Requires newValue
   * Returns 
   */
  Future<OfResult> watchEntity({@required Map<String,dynamic> newValue, String fieldName}) =>
      client.invoke('watchEntity', null, { 'newValue': newValue, 'fieldName': fieldName });

}