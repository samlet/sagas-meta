import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesProductionRun{
  final SrvClient client;
  ManufacturingServicesProductionRun(this.client);

  /**
   * add a Product Component to an existing ProductionRun - 
   *
   * Requires productionRunId, productId, estimatedQuantity
   * Returns 
   */
  Future<OfResult> addProductionRunComponent({@required String productionRunId, @required String productId, @required Decimal estimatedQuantity, String workEffortId}) =>
      client.invoke('addProductionRunComponent', null, { 'productionRunId': productionRunId, 'productId': productId, 'estimatedQuantity': estimatedQuantity, 'workEffortId': workEffortId });

  /**
   * add a RoutingTask to an existing ProductionRun - 
   *
   * Requires productionRunId, routingTaskId, priority
   * Returns routingTaskId[String], estimatedStartDate[Timestamp], estimatedCompletionDate[Timestamp]
   */
  Future<OfResult> addProductionRunRoutingTask({@required String productionRunId, @required String routingTaskId, @required int priority, Decimal estimatedSetupMillis, Decimal estimatedMilliSeconds, String workEffortName, String description, DateTime estimatedStartDate, DateTime estimatedCompletionDate}) =>
      client.invoke('addProductionRunRoutingTask', null, { 'productionRunId': productionRunId, 'routingTaskId': routingTaskId, 'priority': priority, 'estimatedSetupMillis': estimatedSetupMillis, 'estimatedMilliSeconds': estimatedMilliSeconds, 'workEffortName': workEffortName, 'description': description, 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate });

  /**
   * Cancels a ProductionRun. - 
   *
   * Requires productionRunId
   * Returns 
   */
  Future<OfResult> cancelProductionRun({@required String productionRunId}) =>
      client.invoke('cancelProductionRun', null, { 'productionRunId': productionRunId });

  /**
   * Change the Production Run status - 
   *
   * Requires productionRunId
   * Returns newStatusId[String]
   */
  Future<OfResult> changeProductionRunStatus({@required String productionRunId, String statusId}) =>
      client.invoke('changeProductionRunStatus', null, { 'productionRunId': productionRunId, 'statusId': statusId });

  /**
   * Change the Production Run Task status - 
   *
   * Requires productionRunId, workEffortId
   * Returns oldStatusId[String], newStatusId[String]
   */
  Future<OfResult> changeProductionRunTaskStatus({@required String productionRunId, @required String workEffortId, String statusId, bool issueAllComponents}) =>
      client.invoke('changeProductionRunTaskStatus', null, { 'productionRunId': productionRunId, 'workEffortId': workEffortId, 'statusId': statusId, 'issueAllComponents': issueAllComponents });

  /**
   * 
            If the inventory item is for a 'marketing package' run the decomposeInventoryItem service.
            It is intended to be called as seca when a marketing package is received into warehouse (e.g. from a return).
         - 
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> checkDecomposeInventoryItem({@required String inventoryItemId}) =>
      client.invoke('checkDecomposeInventoryItem', null, { 'inventoryItemId': inventoryItemId });

  /**
   * check if field for routingTask update are correct and if needed  recalculated data and update Production Run - 
   *
   * Requires productionRunId, routingTaskId, priority, estimatedStartDate, estimatedSetupMillis, estimatedMilliSeconds
   * Returns 
   */
  Future<OfResult> checkUpdatePrunRoutingTask({@required String productionRunId, @required String routingTaskId, @required int priority, @required DateTime estimatedStartDate, @required Decimal estimatedSetupMillis, @required Decimal estimatedMilliSeconds}) =>
      client.invoke('checkUpdatePrunRoutingTask', null, { 'productionRunId': productionRunId, 'routingTaskId': routingTaskId, 'priority': priority, 'estimatedStartDate': estimatedStartDate, 'estimatedSetupMillis': estimatedSetupMillis, 'estimatedMilliSeconds': estimatedMilliSeconds });

  /**
   * Create a Production Run - 
   *
   * Requires productId, pRQuantity, startDate, facilityId
   * Returns productionRunId[String], estimatedCompletionDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductionRun({@required String productId, @required Decimal pRQuantity, @required DateTime startDate, @required String facilityId, String routingId, String workEffortName, String description}) =>
      client.invoke('createProductionRun', null, { 'productId': productId, 'pRQuantity': pRQuantity, 'startDate': startDate, 'facilityId': facilityId, 'routingId': routingId, 'workEffortName': workEffortName, 'description': description });

  /**
   * 
            Associate the production run to another production run
         - 
   *
   * Requires productionRunId, productionRunIdTo, workFlowSequenceTypeId
   * Returns 
   */
  Future<OfResult> createProductionRunAssoc({@required String productionRunId, @required String productionRunIdTo, @required String workFlowSequenceTypeId}) =>
      client.invoke('createProductionRunAssoc', null, { 'productionRunId': productionRunId, 'productionRunIdTo': productionRunIdTo, 'workFlowSequenceTypeId': workFlowSequenceTypeId });

  /**
   * Creates a production run for a marketing package when the product is out of stock (ATP quantity less than zero.)
                Attempts to produce enough to bring total ATP quantity of the product back up to zero, but will only produce what is
                available based on the components required. - 
   *
   * Requires orderId, orderItemSeqId, facilityId
   * Returns productionRunId[String]
   */
  Future<OfResult> createProductionRunForMktgPkg({@required String orderId, @required String orderItemSeqId, @required String facilityId}) =>
      client.invoke('createProductionRunForMktgPkg', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'facilityId': facilityId });

  /**
   * Creates a production run from a requirement. - 
   *
   * Requires requirementId
   * Returns productionRunId[String]
   */
  Future<OfResult> createProductionRunFromRequirement({@required String requirementId, Decimal quantity}) =>
      client.invoke('createProductionRunFromRequirement', null, { 'requirementId': requirementId, 'quantity': quantity });

  /**
   * 
            Associate a party to the production run
         - 
   *
   * Requires productionRunId, partyId, roleTypeId
   * Returns productionRunId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createProductionRunPartyAssign({@required String productionRunId, @required String partyId, @required String roleTypeId, String workEffortId, DateTime fromDate, DateTime thruDate}) =>
      client.invoke('createProductionRunPartyAssign', null, { 'productionRunId': productionRunId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'workEffortId': workEffortId, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Compute the actual costs for the production run task. - 
   *
   * Requires productionRunTaskId
   * Returns 
   */
  Future<OfResult> createProductionRunTaskCosts({@required String productionRunTaskId}) =>
      client.invoke('createProductionRunTaskCosts', null, { 'productionRunTaskId': productionRunTaskId });

  /**
   * Explodes a product id and creates all the needed production runs; if an order id is also provided, it links the production runs to the sales order. - 
   *
   * Requires orderId
   * Returns productionRuns[java.util.List]
   */
  Future<OfResult> createProductionRunsForOrder({@required String orderId, String orderItemSeqId, String shipGroupSeqId, Decimal quantity, String fromDate, String shipmentId}) =>
      client.invoke('createProductionRunsForOrder', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'fromDate': fromDate, 'shipmentId': shipmentId });

  /**
   * Explodes a product id and creates all the needed production runs. - 
   *
   * Requires productId, startDate, facilityId
   * Returns productionRuns[java.util.List], productionRunId[String]
   */
  Future<OfResult> createProductionRunsForProductBom({@required String productId, Decimal quantity, @required DateTime startDate, @required String facilityId, String routingId, String workEffortName, String description}) =>
      client.invoke('createProductionRunsForProductBom', null, { 'productId': productId, 'quantity': quantity, 'startDate': startDate, 'facilityId': facilityId, 'routingId': routingId, 'workEffortName': workEffortName, 'description': description });

  /**
   * 
            Create a decompose work effort, issue the inventory item (or part of it), and put in warehouse its components.
            It is intended to be called when a marketing package is received into warehouse (e.g. from a return).
            The components will be returned to inventory at ((Marketing Package Actual Inventory Unit Cost) / (Marketing Package Standard Cost)) * (Component Standard Cost)
         - 
   *
   * Requires inventoryItemId
   * Returns inventoryItemIds[List]
   */
  Future<OfResult> decomposeInventoryItem({@required String inventoryItemId, Decimal quantity}) =>
      client.invoke('decomposeInventoryItem', null, { 'inventoryItemId': inventoryItemId, 'quantity': quantity });

  /**
   * delete a Product Component to an existing ProductionRun - 
   *
   * Requires productionRunId, productId
   * Returns 
   */
  Future<OfResult> deleteProductionRunComponent({@required String productionRunId, @required String productId}) =>
      client.invoke('deleteProductionRunComponent', null, { 'productionRunId': productionRunId, 'productId': productId });

  /**
   * delete a RoutingTask to an existing ProductionRun - 
   *
   * Requires productionRunId, routingTaskId
   * Returns 
   */
  Future<OfResult> deleteProductionRunRoutingTask({@required String productionRunId, @required String routingTaskId}) =>
      client.invoke('deleteProductionRunRoutingTask', null, { 'productionRunId': productionRunId, 'routingTaskId': routingTaskId });

  /**
   * Retrieve the total cost of a production run. - 
   *
   * Requires workEffortId
   * Returns totalCost[BigDecimal]
   */
  Future<OfResult> getProductionRunCost({@required String workEffortId}) =>
      client.invoke('getProductionRunCost', null, { 'workEffortId': workEffortId });

  /**
   * Given a productId and an optional date, returns the total qty of productId reserved by production runs - 
   *
   * Requires productId
   * Returns reservedQuantity[BigDecimal]
   */
  Future<OfResult> getProductionRunTotResQty({@required String productId, DateTime startDate}) =>
      client.invoke('getProductionRunTotResQty', null, { 'productId': productId, 'startDate': startDate });

  /**
   * Retrieve the costs of a work effort (production run task). - 
   *
   * Requires workEffortId
   * Returns costComponents[List], totalCost[BigDecimal], totalCostNoMaterials[BigDecimal]
   */
  Future<OfResult> getWorkEffortCosts({@required String workEffortId}) =>
      client.invoke('getWorkEffortCosts', null, { 'workEffortId': workEffortId });

  /**
   * 
            Issue one InventoryItem (or part of it) to a WorkEffort.
            Note that this skips the normal inventory reservation process.
         - 
   *
   * Requires workEffortId, inventoryItem
   * Returns quantityIssued[BigDecimal], finishedProductId[String]
   */
  Future<OfResult> issueInventoryItemToWorkEffort({@required String workEffortId, @required Map<String,dynamic> inventoryItem, Decimal quantity}) =>
      client.invoke('issueInventoryItemToWorkEffort', null, { 'workEffortId': workEffortId, 'inventoryItem': inventoryItem, 'quantity': quantity });

  /**
   * 
            Issues the Inventory for a Production Run Task.
            Note that this skips the normal inventory reservation process.
         - 
   *
   * Requires workEffortId
   * Returns 
   */
  Future<OfResult> issueProductionRunTask({@required String workEffortId, String reserveOrderEnumId, String failIfItemsAreNotAvailable, String failIfItemsAreNotOnHand}) =>
      client.invoke('issueProductionRunTask', null, { 'workEffortId': workEffortId, 'reserveOrderEnumId': reserveOrderEnumId, 'failIfItemsAreNotAvailable': failIfItemsAreNotAvailable, 'failIfItemsAreNotOnHand': failIfItemsAreNotOnHand });

  /**
   * 
            Issues the Inventory for a Production Run Task Component. For more info see the issueProductionRunTask service.
            If fromDate is passed, then the WorkEffortGoodStandard record with pk composed of (workEffortId|productId|fromDate)
            with type PRUNT_PROD_NEEDED is retrieved and used to get the quantity; its status is also updated to COMPLETED after
            the issuance is done.
            If locationSeqIds are provided, then the items are only issued from the inventory items associated to the locations.
            If failIfItemsAreNotAvailable is set to "Y" (the default is "Y") then the service fails if there is not enough inventory available:
            no reservation will be stolen.
            If failIfItemsAreNotOnHand is set to "Y" (the default is "Y") then the service fails if there is not enough inventory:
            no items with negative qoh will be created.
            If lotId is filled, failIfItemsAreNotAvailable is set to automatically set to "Y".
         - 
   *
   * Requires workEffortId, productId
   * Returns 
   */
  Future<OfResult> issueProductionRunTaskComponent({@required String workEffortId, @required String productId, DateTime fromDate, Decimal quantity, String failIfItemsAreNotAvailable, String failIfItemsAreNotOnHand, String reserveOrderEnumId, String lotId, String locationSeqId, String secondaryLocationSeqId, String reasonEnumId, String description}) =>
      client.invoke('issueProductionRunTaskComponent', null, { 'workEffortId': workEffortId, 'productId': productId, 'fromDate': fromDate, 'quantity': quantity, 'failIfItemsAreNotAvailable': failIfItemsAreNotAvailable, 'failIfItemsAreNotOnHand': failIfItemsAreNotOnHand, 'reserveOrderEnumId': reserveOrderEnumId, 'lotId': lotId, 'locationSeqId': locationSeqId, 'secondaryLocationSeqId': secondaryLocationSeqId, 'reasonEnumId': reasonEnumId, 'description': description });

  /**
   * 
            Create Inventory for product produced by a Production Run.
         - 
   *
   * Requires workEffortId
   * Returns inventoryItemIds[List], quantity[BigDecimal]
   */
  Future<OfResult> productionRunProduce({@required String workEffortId, Decimal quantity, String quantityUomId, String inventoryItemTypeId, String lotId, String locationSeqId, bool createLotIfNeeded, bool autoCreateLot}) =>
      client.invoke('productionRunProduce', null, { 'workEffortId': workEffortId, 'quantity': quantity, 'quantityUomId': quantityUomId, 'inventoryItemTypeId': inventoryItemTypeId, 'lotId': lotId, 'locationSeqId': locationSeqId, 'createLotIfNeeded': createLotIfNeeded, 'autoCreateLot': autoCreateLot });

  /**
   * 
            Create Inventory from a Production Run Task.
         - 
   *
   * Requires workEffortId, productId, quantity
   * Returns inventoryItemIds[List]
   */
  Future<OfResult> productionRunTaskProduce({@required String workEffortId, @required String productId, @required Decimal quantity, String facilityId, String locationSeqId, Decimal unitCost, String currencyUomId, String inventoryItemTypeId, String lotId, String isReturned}) =>
      client.invoke('productionRunTaskProduce', null, { 'workEffortId': workEffortId, 'productId': productId, 'quantity': quantity, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'unitCost': unitCost, 'currencyUomId': currencyUomId, 'inventoryItemTypeId': inventoryItemTypeId, 'lotId': lotId, 'isReturned': isReturned });

  /**
   * 
            Create Inventory from a Production Run Task, by returning to warehouse part of the materials allocated.
         - 
   *
   * Requires workEffortId, productId
   * Returns 
   */
  Future<OfResult> productionRunTaskReturnMaterial({@required String workEffortId, @required String productId, Decimal quantity, String inventoryItemTypeId, String lotId}) =>
      client.invoke('productionRunTaskReturnMaterial', null, { 'workEffortId': workEffortId, 'productId': productId, 'quantity': quantity, 'inventoryItemTypeId': inventoryItemTypeId, 'lotId': lotId });

  /**
   * Quick moves a ProductionRun to the passed in status, performing all the needed tasks in the way - 
   *
   * Requires productionRunId, statusId
   * Returns 
   */
  Future<OfResult> quickChangeProductionRunStatus({@required String productionRunId, @required String statusId}) =>
      client.invoke('quickChangeProductionRunStatus', null, { 'productionRunId': productionRunId, 'statusId': statusId });

  /**
   * Quick runs all the tasks of a ProductionRun to the completed status, also issuing components if necessary. - 
   *
   * Requires productionRunId
   * Returns 
   */
  Future<OfResult> quickRunAllProductionRunTasks({@required String productionRunId}) =>
      client.invoke('quickRunAllProductionRunTasks', null, { 'productionRunId': productionRunId });

  /**
   * Quick runs a ProductionRun task to the completed status, also issuing components if necessary. - 
   *
   * Requires productionRunId, taskId
   * Returns 
   */
  Future<OfResult> quickRunProductionRunTask({@required String productionRunId, @required String taskId}) =>
      client.invoke('quickRunProductionRunTask', null, { 'productionRunId': productionRunId, 'taskId': taskId });

  /**
   * Quick starts all the tasks of a ProductionRun. - 
   *
   * Requires productionRunId
   * Returns 
   */
  Future<OfResult> quickStartAllProductionRunTasks({@required String productionRunId}) =>
      client.invoke('quickStartAllProductionRunTasks', null, { 'productionRunId': productionRunId });

  /**
   * Update a Production Run - 
   *
   * Requires productionRunId
   * Returns 
   */
  Future<OfResult> updateProductionRun({@required String productionRunId, Decimal quantity, DateTime estimatedStartDate, String workEffortName, String description, String facilityId}) =>
      client.invoke('updateProductionRun', null, { 'productionRunId': productionRunId, 'quantity': quantity, 'estimatedStartDate': estimatedStartDate, 'workEffortName': workEffortName, 'description': description, 'facilityId': facilityId });

  /**
   * update a Product Component to an existing ProductionRun - 
   *
   * Requires productionRunId, productId
   * Returns 
   */
  Future<OfResult> updateProductionRunComponent({@required String productionRunId, @required String productId, String workEffortId, Decimal estimatedQuantity}) =>
      client.invoke('updateProductionRunComponent', null, { 'productionRunId': productionRunId, 'productId': productId, 'workEffortId': workEffortId, 'estimatedQuantity': estimatedQuantity });

}