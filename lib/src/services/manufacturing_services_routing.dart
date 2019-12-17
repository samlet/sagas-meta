import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesRouting{
  final SrvClient client;
  ManufacturingServicesRouting(this.client);

  /**
   * Check if a new routingTaskAssoc is ok or not (same SeqId and Date) - 
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, fromDate
   * Returns sequenceNumNotOk[String]
   */
  Future<OfResult> checkRoutingTaskAssoc({@required String workEffortIdFrom, @required String workEffortIdTo, @required String workEffortAssocTypeId, @required DateTime fromDate, int sequenceNum, DateTime thruDate, String create}) =>
      client.invoke('checkRoutingTaskAssoc', null, { 'workEffortIdFrom': workEffortIdFrom, 'workEffortIdTo': workEffortIdTo, 'workEffortAssocTypeId': workEffortAssocTypeId, 'fromDate': fromDate, 'sequenceNum': sequenceNum, 'thruDate': thruDate, 'create': create });

  /**
   * Computes the estimated time needed to perform the task - 
   *
   * Requires taskId
   * Returns estimatedTaskTime[Long], setupTime[BigDecimal], taskUnitTime[BigDecimal]
   */
  Future<OfResult> getEstimatedTaskTime({@required String taskId, String productId, String routingId, Decimal quantity}) =>
      client.invoke('getEstimatedTaskTime', null, { 'taskId': taskId, 'productId': productId, 'routingId': routingId, 'quantity': quantity });

  /**
   * Get the product's routing and routing tasks - 
   *
   * Requires productId
   * Returns routing[org.apache.ofbiz.entity.GenericValue], tasks[java.util.List]
   */
  Future<OfResult> getProductRouting({@required String productId, String workEffortId, DateTime applicableDate, String ignoreDefaultRouting}) =>
      client.invoke('getProductRouting', null, { 'productId': productId, 'workEffortId': workEffortId, 'applicableDate': applicableDate, 'ignoreDefaultRouting': ignoreDefaultRouting });

  /**
   * Get the routing task assocs of a given routing - 
   *
   * Requires workEffortId
   * Returns routingTaskAssocs[java.util.List]
   */
  Future<OfResult> getRoutingTaskAssocs({@required String workEffortId}) =>
      client.invoke('getRoutingTaskAssocs', null, { 'workEffortId': workEffortId });

  /**
   * Only used to defined the query lookup for Routing Task - 
   *
   * Requires 
   * Returns lookupResult[List]
   */
  Future<OfResult> lookupRoutingTask({String workEffortName, String fixedAssetId}) =>
      client.invoke('lookupRoutingTask', null, { 'workEffortName': workEffortName, 'fixedAssetId': fixedAssetId });

}