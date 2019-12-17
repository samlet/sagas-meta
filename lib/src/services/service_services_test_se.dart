import 'package:sagas_meta/src/models/entity_test.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ServiceServicesTestSe{
  final SrvClient client;
  ServiceServicesTestSe(this.client);

  /**
   *  - TestingItem
   *
   * Requires testingId
   * Returns testingSeqId[String]
   */
  Future<OfResult> testEntityAutoCreateTestingItemPkMissing(TestingItem ent, ) =>
      client.invoke('testEntityAutoCreateTestingItemPkMissing', ent, {  });

  /**
   *  - TestingItem
   *
   * Requires testingId, testingSeqId
   * Returns 
   */
  Future<OfResult> testEntityAutoCreateTestingItemPkPresent(TestingItem ent, ) =>
      client.invoke('testEntityAutoCreateTestingItemPkPresent', ent, {  });

  /**
   *  - TestingNodeMember
   *
   * Requires testingId, testingNodeId
   * Returns fromDate[Timestamp]
   */
  Future<OfResult> testEntityAutoCreateTestingNodeMemberPkMissing(TestingNodeMember ent, ) =>
      client.invoke('testEntityAutoCreateTestingNodeMemberPkMissing', ent, {  });

  /**
   *  - TestingNodeMember
   *
   * Requires testingNodeId, testingId, fromDate
   * Returns 
   */
  Future<OfResult> testEntityAutoCreateTestingNodeMemberPkPresent(TestingNodeMember ent, ) =>
      client.invoke('testEntityAutoCreateTestingNodeMemberPkPresent', ent, {  });

  /**
   *  - Testing
   *
   * Requires 
   * Returns testingId[String]
   */
  Future<OfResult> testEntityAutoCreateTestingPkMissing(Testing ent, ) =>
      client.invoke('testEntityAutoCreateTestingPkMissing', ent, {  });

  /**
   *  - Testing
   *
   * Requires testingId
   * Returns 
   */
  Future<OfResult> testEntityAutoCreateTestingPkPresent(Testing ent, ) =>
      client.invoke('testEntityAutoCreateTestingPkPresent', ent, {  });

  /**
   *  - TestingStatus
   *
   * Requires testingId, statusId
   * Returns testingStatusId[String]
   */
  Future<OfResult> testEntityAutoCreateTestingStatus(TestingStatus ent, ) =>
      client.invoke('testEntityAutoCreateTestingStatus', ent, {  });

  /**
   *  - TestingStatus
   *
   * Requires testingStatusId
   * Returns 
   */
  Future<OfResult> testEntityAutoDeleteTestingStatus(TestingStatus ent, ) =>
      client.invoke('testEntityAutoDeleteTestingStatus', ent, {  });

  /**
   *  - TestFieldType
   *
   * Requires testFieldTypeId
   * Returns 
   */
  Future<OfResult> testEntityAutoExpireTestFieldType(TestFieldType ent, ) =>
      client.invoke('testEntityAutoExpireTestFieldType', ent, {  });

  /**
   *  - TestingNodeMember
   *
   * Requires testingNodeId, testingId, fromDate
   * Returns 
   */
  Future<OfResult> testEntityAutoExpireTestingNodeMember(TestingNodeMember ent, ) =>
      client.invoke('testEntityAutoExpireTestingNodeMember', ent, {  });

  /**
   *  - Testing
   *
   * Requires testingId
   * Returns 
   */
  Future<OfResult> testEntityAutoRemoveTesting(Testing ent, ) =>
      client.invoke('testEntityAutoRemoveTesting', ent, {  });

  /**
   *  - Testing
   *
   * Requires testingId
   * Returns 
   */
  Future<OfResult> testEntityAutoUpdateTesting(Testing ent, ) =>
      client.invoke('testEntityAutoUpdateTesting', ent, {  });

  /**
   *  - TestingStatus
   *
   * Requires testingStatusId, statusId
   * Returns 
   */
  Future<OfResult> testEntityAutoUpdateTestingStatus(TestingStatus ent, ) =>
      client.invoke('testEntityAutoUpdateTestingStatus', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceDeadLockRetryThreadA() =>
      client.invoke('testServiceDeadLockRetryThreadA', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceDeadLockRetryThreadB() =>
      client.invoke('testServiceDeadLockRetryThreadB', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceEcaGlobalEventExecOnCommit() =>
      client.invoke('testServiceEcaGlobalEventExecOnCommit', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceEcaGlobalEventExecOnRollback() =>
      client.invoke('testServiceEcaGlobalEventExecOnRollback', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceEcaGlobalEventExecToRollback() =>
      client.invoke('testServiceEcaGlobalEventExecToRollback', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceLockWaitTimeoutRetryCantRecoverWaiter() =>
      client.invoke('testServiceLockWaitTimeoutRetryCantRecoverWaiter', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceLockWaitTimeoutRetryGrabber() =>
      client.invoke('testServiceLockWaitTimeoutRetryGrabber', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceLockWaitTimeoutRetryWaiter() =>
      client.invoke('testServiceLockWaitTimeoutRetryWaiter', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceOwnTxSubServiceAfterSetRollbackOnlyInParent() =>
      client.invoke('testServiceOwnTxSubServiceAfterSetRollbackOnlyInParent', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testServiceOwnTxSubServiceAfterSetRollbackOnlyInParentSubService() =>
      client.invoke('testServiceOwnTxSubServiceAfterSetRollbackOnlyInParentSubService', null, {  });

  /**
   *  - 
   *
   * Requires num1, num2
   * Returns resulting[Integer]
   */
  Future<OfResult> testXmlRpcAdd({@required int num1, @required int num2}) =>
      client.invoke('testXmlRpcAdd', null, { 'num1': num1, 'num2': num2 });

  /**
   *  - 
   *
   * Requires num1, num2
   * Returns resulting[Integer]
   */
  Future<OfResult> testXmlRpcLocalEngine({@required int num1, @required int num2}) =>
      client.invoke('testXmlRpcLocalEngine', null, { 'num1': num1, 'num2': num2 });

}