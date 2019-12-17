import 'package:sagas_meta/src/models/shipment_issuance.dart';
import 'package:sagas_meta/src/models/order_requirement.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesRequirement{
  final SrvClient client;
  OrderServicesRequirement(this.client);

  /**
   * Associate an existing task w/ a requirement - 
   *
   * Requires requirementId, workEffortId
   * Returns 
   */
  Future<OfResult> addRequirementTask({@required String requirementId, @required String workEffortId, String workReqFulfTypeId}) =>
      client.invoke('addRequirementTask', null, { 'requirementId': requirementId, 'workEffortId': workEffortId, 'workReqFulfTypeId': workReqFulfTypeId });

  /**
   * Approves a requirement. - 
   *
   * Requires requirementId
   * Returns 
   */
  Future<OfResult> approveRequirement({@required String requirementId, Decimal quantity}) =>
      client.invoke('approveRequirement', null, { 'requirementId': requirementId, 'quantity': quantity });

  /**
   * Creates a CustRequestItem/Requirement association - 
   *
   * Requires requirementId, custRequestId, custRequestItemSeqId
   * Returns 
   */
  Future<OfResult> associatedRequirementWithRequestItem({@required String requirementId, @required String custRequestId, @required String custRequestItemSeqId}) =>
      client.invoke('associatedRequirementWithRequestItem', null, { 'requirementId': requirementId, 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId });

  /**
   * If the requirement is a product requirement (purchasing) try to assign it to the primary supplier - 
   *
   * Requires requirementId
   * Returns 
   */
  Future<OfResult> autoAssignRequirementToSupplier({@required String requirementId}) =>
      client.invoke('autoAssignRequirementToSupplier', null, { 'requirementId': requirementId });

  /**
   * Create OrderRequirementCommitment and Requirement for items with automatic requirement upon ordering - 
   *
   * Requires orderId, orderItemSeqId
   * Returns requirementId[String]
   */
  Future<OfResult> checkCreateOrderRequirement({@required String orderId, @required String orderItemSeqId, String productId, Decimal quantity}) =>
      client.invoke('checkCreateOrderRequirement', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'productId': productId, 'quantity': quantity });

  /**
   * Create Requirements for all the products in a facility with QOH under the minimum stock level - 
   *
   * Requires facilityId
   * Returns 
   */
  Future<OfResult> checkCreateProductRequirementForFacility({@required String facilityId, String defaultRequirementMethodId}) =>
      client.invoke('checkCreateProductRequirementForFacility', null, { 'facilityId': facilityId, 'defaultRequirementMethodId': defaultRequirementMethodId });

  /**
   * Create a Product Requirement based on ATP inventory - 
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId
   * Returns requirementId[String]
   */
  Future<OfResult> checkCreateStockRequirementAtp({@required String orderId, @required String shipGroupSeqId, @required String orderItemSeqId, String inventoryItemId, String productId, Decimal quantity}) =>
      client.invoke('checkCreateStockRequirementAtp', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'productId': productId, 'quantity': quantity });

  /**
   * Create a Product Requirement based on QOH inventory - ItemIssuance
   *
   * Requires 
   * Returns requirementId[String]
   */
  Future<OfResult> checkCreateStockRequirementQoh(ItemIssuance ent, ) =>
      client.invoke('checkCreateStockRequirementQoh', ent, {  });

  /**
   * 
            Creates requirements for any products with requirementMethodEnumId PRODRQM_ATP in the given sales order when
            the ATP falls below or is below the minimum stock for the order facility.  ProductFacility.minimumStock must
            be configured for requirements to be generated.  ProductFacility.reorderQuantity is not currently supported.
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> createATPRequirementsForOrder({@required String orderId}) =>
      client.invoke('createATPRequirementsForOrder', null, { 'orderId': orderId });

  /**
   * 
            Creates requirements for any products with requirementMethodEnumId PRODRQM_AUTO in the given sales order.
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> createAutoRequirementsForOrder({@required String orderId}) =>
      client.invoke('createAutoRequirementsForOrder', null, { 'orderId': orderId });

  /**
   * Create a DesiredFeature record - DesiredFeature
   *
   * Requires desiredFeatureId, requirementId
   * Returns 
   */
  Future<OfResult> createDesiredFeature(DesiredFeature ent, ) =>
      client.invoke('createDesiredFeature', ent, {  });

  /**
   *  - OrderRequirementCommitment
   *
   * Requires orderId, orderItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> createOrderRequirementCommitment(OrderRequirementCommitment ent, ) =>
      client.invoke('createOrderRequirementCommitment', ent, {  });

  /**
   * Create a new requirement - Requirement
   *
   * Requires 
   * Returns requirementId[String]
   */
  Future<OfResult> createRequirement(Requirement ent, {String custRequestId, String custRequestItemSeqId}) =>
      client.invoke('createRequirement', ent, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId });

  /**
   * Create a RequirementAttribute record - RequirementAttribute
   *
   * Requires requirementId, attrName
   * Returns 
   */
  Future<OfResult> createRequirementAttribute(RequirementAttribute ent, ) =>
      client.invoke('createRequirementAttribute', ent, {  });

  /**
   * Create a RequirementBudgetAllocation record - RequirementBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> createRequirementBudgetAllocation(RequirementBudgetAllocation ent, ) =>
      client.invoke('createRequirementBudgetAllocation', ent, {  });

  /**
   * Create OrderRequirementCommitment and Requirement for items with requirement based on ATP stock levels - 
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId
   * Returns requirementId[String]
   */
  Future<OfResult> createRequirementFromItemATP({@required String orderId, @required String shipGroupSeqId, @required String orderItemSeqId, String inventoryItemId, String productId, Decimal quantity}) =>
      client.invoke('createRequirementFromItemATP', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'productId': productId, 'quantity': quantity });

  /**
   * Creates a new party role for the requirement - RequirementRole
   *
   * Requires requirementId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createRequirementRole(RequirementRole ent, ) =>
      client.invoke('createRequirementRole', ent, {  });

  /**
   * Create Requirement Status  - RequirementStatus
   *
   * Requires requirementId, statusId
   * Returns 
   */
  Future<OfResult> createRequirementStatus(RequirementStatus ent, ) =>
      client.invoke('createRequirementStatus', ent, {  });

  /**
   * Create a RequirementType record - RequirementType
   *
   * Requires 
   * Returns requirementTypeId[String]
   */
  Future<OfResult> createRequirementType(RequirementType ent, ) =>
      client.invoke('createRequirementType', ent, {  });

  /**
   * Create a RequirementTypeAttr record - RequirementTypeAttr
   *
   * Requires requirementTypeId, attrName
   * Returns 
   */
  Future<OfResult> createRequirementTypeAttr(RequirementTypeAttr ent, ) =>
      client.invoke('createRequirementTypeAttr', ent, {  });

  /**
   * Create the inventory transfers required to fulfill the requirement. - 
   *
   * Requires requirementId, fromFacilityId
   * Returns 
   */
  Future<OfResult> createTransferFromRequirement({@required String requirementId, @required String fromFacilityId, Decimal quantity}) =>
      client.invoke('createTransferFromRequirement', null, { 'requirementId': requirementId, 'fromFacilityId': fromFacilityId, 'quantity': quantity });

  /**
   * Create a WorkReqFulfType record - WorkReqFulfType
   *
   * Requires 
   * Returns workReqFulfTypeId[String]
   */
  Future<OfResult> createWorkReqFulfType(WorkReqFulfType ent, ) =>
      client.invoke('createWorkReqFulfType', ent, {  });

  /**
   * Delete a DesiredFeature record - DesiredFeature
   *
   * Requires desiredFeatureId, requirementId
   * Returns 
   */
  Future<OfResult> deleteDesiredFeature(DesiredFeature ent, ) =>
      client.invoke('deleteDesiredFeature', ent, {  });

  /**
   * Delete a requirement - Requirement
   *
   * Requires requirementId
   * Returns 
   */
  Future<OfResult> deleteRequirement(Requirement ent, ) =>
      client.invoke('deleteRequirement', ent, {  });

  /**
   * Delete a requirement after deleting related entity records. - 
   *
   * Requires requirementId
   * Returns 
   */
  Future<OfResult> deleteRequirementAndRelated({@required String requirementId}) =>
      client.invoke('deleteRequirementAndRelated', null, { 'requirementId': requirementId });

  /**
   * Delete a RequirementAttribute record - RequirementAttribute
   *
   * Requires requirementId, attrName
   * Returns 
   */
  Future<OfResult> deleteRequirementAttribute(RequirementAttribute ent, ) =>
      client.invoke('deleteRequirementAttribute', ent, {  });

  /**
   * Delete a RequirementBudgetAllocation record - RequirementBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> deleteRequirementBudgetAllocation(RequirementBudgetAllocation ent, ) =>
      client.invoke('deleteRequirementBudgetAllocation', ent, {  });

  /**
   * Delete a RequirementCustRequest record - RequirementCustRequest
   *
   * Requires custRequestId, custRequestItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> deleteRequirementCustRequest(RequirementCustRequest ent, ) =>
      client.invoke('deleteRequirementCustRequest', ent, {  });

  /**
   * Delete a RequirementType record - RequirementType
   *
   * Requires requirementTypeId
   * Returns 
   */
  Future<OfResult> deleteRequirementType(RequirementType ent, ) =>
      client.invoke('deleteRequirementType', ent, {  });

  /**
   * Delete a RequirementTypeAttr record - RequirementTypeAttr
   *
   * Requires requirementTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteRequirementTypeAttr(RequirementTypeAttr ent, ) =>
      client.invoke('deleteRequirementTypeAttr', ent, {  });

  /**
   * Delete a WorkReqFulfType record - WorkReqFulfType
   *
   * Requires workReqFulfTypeId
   * Returns 
   */
  Future<OfResult> deleteWorkReqFulfType(WorkReqFulfType ent, ) =>
      client.invoke('deleteWorkReqFulfType', ent, {  });

  /**
   * Remove a RequirementRole - RequirementRole
   *
   * Requires requirementId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeRequirementRole(RequirementRole ent, ) =>
      client.invoke('removeRequirementRole', ent, {  });

  /**
   * Update a DesiredFeature record - DesiredFeature
   *
   * Requires desiredFeatureId, requirementId
   * Returns 
   */
  Future<OfResult> updateDesiredFeature(DesiredFeature ent, ) =>
      client.invoke('updateDesiredFeature', ent, {  });

  /**
   * Update an existing requirement - Requirement
   *
   * Requires requirementId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateRequirement(Requirement ent, ) =>
      client.invoke('updateRequirement', ent, {  });

  /**
   * Update a RequirementAttribute record - RequirementAttribute
   *
   * Requires requirementId, attrName
   * Returns 
   */
  Future<OfResult> updateRequirementAttribute(RequirementAttribute ent, ) =>
      client.invoke('updateRequirementAttribute', ent, {  });

  /**
   * Update a RequirementBudgetAllocation record - RequirementBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> updateRequirementBudgetAllocation(RequirementBudgetAllocation ent, ) =>
      client.invoke('updateRequirementBudgetAllocation', ent, {  });

  /**
   * Update a RequirementRole - RequirementRole
   *
   * Requires requirementId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateRequirementRole(RequirementRole ent, ) =>
      client.invoke('updateRequirementRole', ent, {  });

  /**
   * Update a RequirementType record - RequirementType
   *
   * Requires requirementTypeId
   * Returns 
   */
  Future<OfResult> updateRequirementType(RequirementType ent, ) =>
      client.invoke('updateRequirementType', ent, {  });

  /**
   * Update a RequirementTypeAttr record - RequirementTypeAttr
   *
   * Requires requirementTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateRequirementTypeAttr(RequirementTypeAttr ent, ) =>
      client.invoke('updateRequirementTypeAttr', ent, {  });

  /**
   * 
            Update requirement's status to Ordered after PO is approved.
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> updateRequirementsToOrdered({@required String orderId}) =>
      client.invoke('updateRequirementsToOrdered', null, { 'orderId': orderId });

  /**
   * Update a WorkReqFulfType record - WorkReqFulfType
   *
   * Requires workReqFulfTypeId
   * Returns 
   */
  Future<OfResult> updateWorkReqFulfType(WorkReqFulfType ent, ) =>
      client.invoke('updateWorkReqFulfType', ent, {  });

}