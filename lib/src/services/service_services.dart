import 'package:sagas_meta/src/models/common_language.dart';
import 'package:sagas_meta/src/models/service_schedule.dart';
import 'package:sagas_meta/src/models/common_status.dart';
import 'package:sagas_meta/src/models/entity_sequence.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ServiceServices{
  final SrvClient client;
  ServiceServices(this.client);

  /**
   * Interface to describe authentication services - 
   *
   * Requires loginUserName, loginPassword
   * Returns userLogin[org.apache.ofbiz.entity.GenericValue], userLoginSession[java.util.Map]
   */
  Future<OfResult> authenticationInterface({@required String loginUserName, @required String loginPassword, String visitId, bool isServiceAuth}) =>
      client.invoke('authenticationInterface', null, { 'loginUserName': loginUserName, 'loginPassword': loginPassword, 'visitId': visitId, 'isServiceAuth': isServiceAuth });

  /**
   * Cancels a job retry flag - 
   *
   * Requires jobId
   * Returns 
   */
  Future<OfResult> cancelJobRetries({@required String jobId}) =>
      client.invoke('cancelJobRetries', null, { 'jobId': jobId });

  /**
   * Cancels a schedule job - 
   *
   * Requires jobId
   * Returns cancelDateTime[Timestamp], statusId[String]
   */
  Future<OfResult> cancelScheduledJob({@required String jobId}) =>
      client.invoke('cancelScheduledJob', null, { 'jobId': jobId });

  /**
   * Create a Job Manager Lock - JobManagerLock
   *
   * Requires instanceId, fromDate
   * Returns 
   */
  Future<OfResult> createJobManagerLock(JobManagerLock ent, ) =>
      client.invoke('createJobManagerLock', ent, {  });

  /**
   * Create JobSandbox record - JobSandbox
   *
   * Requires 
   * Returns jobId[String]
   */
  Future<OfResult> createJobSandbox(JobSandbox ent, ) =>
      client.invoke('createJobSandbox', ent, {  });

  /**
   * Create RuntimeData record - RuntimeData
   *
   * Requires 
   * Returns runtimeDataId[String]
   */
  Future<OfResult> createRuntimeData(RuntimeData ent, ) =>
      client.invoke('createRuntimeData', ent, {  });

  /**
   * Create a SequenceValueItem - SequenceValueItem
   *
   * Requires 
   * Returns seqName[String]
   */
  Future<OfResult> createSequenceValueItem(SequenceValueItem ent, ) =>
      client.invoke('createSequenceValueItem', ent, {  });

  /**
   * Create a StandardLanguage Record - StandardLanguage
   *
   * Requires 
   * Returns standardLanguageId[String]
   */
  Future<OfResult> createStandardLanguage(StandardLanguage ent, ) =>
      client.invoke('createStandardLanguage', ent, {  });

  /**
   * Create a StatusItem Record - StatusItem
   *
   * Requires 
   * Returns statusId[String]
   */
  Future<OfResult> createStatusItem(StatusItem ent, ) =>
      client.invoke('createStatusItem', ent, {  });

  /**
   * Create a StatusType - StatusType
   *
   * Requires 
   * Returns statusTypeId[String]
   */
  Future<OfResult> createStatusType(StatusType ent, ) =>
      client.invoke('createStatusType', ent, {  });

  /**
   * Delete JobSandbox record - JobSandbox
   *
   * Requires jobId
   * Returns 
   */
  Future<OfResult> deleteJobSandbox(JobSandbox ent, ) =>
      client.invoke('deleteJobSandbox', ent, {  });

  /**
   * Delete RuntimeData record - RuntimeData
   *
   * Requires runtimeDataId
   * Returns 
   */
  Future<OfResult> deleteRuntimeData(RuntimeData ent, ) =>
      client.invoke('deleteRuntimeData', ent, {  });

  /**
   * Delete a SequenceValueItem - SequenceValueItem
   *
   * Requires seqName
   * Returns 
   */
  Future<OfResult> deleteSequenceValueItem(SequenceValueItem ent, ) =>
      client.invoke('deleteSequenceValueItem', ent, {  });

  /**
   * Delete a StandardLanguage Record - StandardLanguage
   *
   * Requires standardLanguageId
   * Returns 
   */
  Future<OfResult> deleteStandardLanguage(StandardLanguage ent, ) =>
      client.invoke('deleteStandardLanguage', ent, {  });

  /**
   * Delete a StatusItem Record - StatusItem
   *
   * Requires statusId
   * Returns 
   */
  Future<OfResult> deleteStatusItem(StatusItem ent, ) =>
      client.invoke('deleteStatusItem', ent, {  });

  /**
   * Delete a StatusType - StatusType
   *
   * Requires statusTypeId
   * Returns 
   */
  Future<OfResult> deleteStatusType(StatusType ent, ) =>
      client.invoke('deleteStatusType', ent, {  });

  /**
   * Interface to describe base parameters for Permission Services - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> permissionInterface({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('permissionInterface', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Cleans out old jobs which have been around longer then what is defined in serviceengine.xml - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> purgeOldJobs() =>
      client.invoke('purgeOldJobs', null, {  });

  /**
   * Resets a stale job so it can be re-run - 
   *
   * Requires jobId
   * Returns 
   */
  Future<OfResult> resetScheduledJob({@required String jobId}) =>
      client.invoke('resetScheduledJob', null, { 'jobId': jobId });

  /**
   * Cancel a Job Sandbox Lock - JobManagerLock
   *
   * Requires instanceId, fromDate
   * Returns 
   */
  Future<OfResult> updateJobManagerLock(JobManagerLock ent, ) =>
      client.invoke('updateJobManagerLock', ent, {  });

  /**
   * Update JobSandbox record - JobSandbox
   *
   * Requires jobId
   * Returns 
   */
  Future<OfResult> updateJobSandbox(JobSandbox ent, ) =>
      client.invoke('updateJobSandbox', ent, {  });

  /**
   * Update RuntimeData record - RuntimeData
   *
   * Requires runtimeDataId
   * Returns 
   */
  Future<OfResult> updateRuntimeData(RuntimeData ent, ) =>
      client.invoke('updateRuntimeData', ent, {  });

  /**
   * Update a SequenceValueItem - SequenceValueItem
   *
   * Requires seqName
   * Returns 
   */
  Future<OfResult> updateSequenceValueItem(SequenceValueItem ent, ) =>
      client.invoke('updateSequenceValueItem', ent, {  });

  /**
   * Update a StandardLanguage Record - StandardLanguage
   *
   * Requires standardLanguageId
   * Returns 
   */
  Future<OfResult> updateStandardLanguage(StandardLanguage ent, ) =>
      client.invoke('updateStandardLanguage', ent, {  });

  /**
   * Update a StatusItem Record - StatusItem
   *
   * Requires statusId
   * Returns 
   */
  Future<OfResult> updateStatusItem(StatusItem ent, ) =>
      client.invoke('updateStatusItem', ent, {  });

  /**
   * Update a StatusType - StatusType
   *
   * Requires statusTypeId
   * Returns 
   */
  Future<OfResult> updateStatusType(StatusType ent, ) =>
      client.invoke('updateStatusType', ent, {  });

}