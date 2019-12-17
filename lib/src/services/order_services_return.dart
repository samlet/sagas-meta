import 'package:sagas_meta/src/models/order_return.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesReturn{
  final SrvClient client;
  OrderServicesReturn(this.client);

  /**
   * Add product(s) back to category if it has no active category - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> addProductsBackToCategory({String returnId, String inventoryItemId}) =>
      client.invoke('addProductsBackToCategory', null, { 'returnId': returnId, 'inventoryItemId': inventoryItemId });

  /**
   * Automatic cancellation of replacement order if return is not received within 30 days - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> autoCancelReplacementOrders() =>
      client.invoke('autoCancelReplacementOrders', null, {  });

  /**
   * Cancel the associated OrderItems of the replacement order, if any. - 
   *
   * Requires returnId, returnItemSeqId
   * Returns 
   */
  Future<OfResult> cancelReplacementOrderItems({@required String returnId, @required String returnItemSeqId}) =>
      client.invoke('cancelReplacementOrderItems', null, { 'returnId': returnId, 'returnItemSeqId': returnItemSeqId });

  /**
   * Cancel ReturnItems and set their status to "RETURN_CANCELLED" - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> cancelReturnItems({@required String returnId}) =>
      client.invoke('cancelReturnItems', null, { 'returnId': returnId });

  /**
   * Makes sure the return is not over-refunding/crediting any order, or return an error - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> checkPaymentAmountForRefund({@required String returnId}) =>
      client.invoke('checkPaymentAmountForRefund', null, { 'returnId': returnId });

  /**
   * Checks if all items on a return are complete/cancelled and updates the header status - 
   *
   * Requires returnId
   * Returns statusId[String]
   */
  Future<OfResult> checkReturnComplete({@required String returnId}) =>
      client.invoke('checkReturnComplete', null, { 'returnId': returnId });

  /**
   * Create a Communication Event Return - CommunicationEventReturn
   *
   * Requires returnId, communicationEventId
   * Returns 
   */
  Future<OfResult> createCommunicationEventReturn(CommunicationEventReturn ent, ) =>
      client.invoke('createCommunicationEventReturn', ent, {  });

  /**
   * Associate exchange order with original order in OrderItemAssoc entity - 
   *
   * Requires orderId, originOrderId
   * Returns 
   */
  Future<OfResult> createExchangeOrderAssoc({@required String orderId, @required String originOrderId}) =>
      client.invoke('createExchangeOrderAssoc', null, { 'orderId': orderId, 'originOrderId': originOrderId });

  /**
   * Creates PaymentApplications for each return item billing related to the return response until
                the responseAmount is reached or all items are paid. - 
   *
   * Requires returnItemResponseId
   * Returns 
   */
  Future<OfResult> createPaymentApplicationsFromReturnItemResponse({@required String returnItemResponseId}) =>
      client.invoke('createPaymentApplicationsFromReturnItemResponse', null, { 'returnItemResponseId': returnItemResponseId });

  /**
   * Simple create service - 
   *
   * Requires 
   * Returns returnAdjustmentId[String]
   */
  Future<OfResult> createReturnAdjustment({String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createReturnAdjustment', null, { 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a ReturnAdjustmentType record - ReturnAdjustmentType
   *
   * Requires 
   * Returns returnAdjustmentTypeId[String]
   */
  Future<OfResult> createReturnAdjustmentType(ReturnAdjustmentType ent, ) =>
      client.invoke('createReturnAdjustmentType', ent, {  });

  /**
   * If returnId is null, create a return; then create Return Item or Adjustment based on the parameters passed in - 
   *
   * Requires 
   * Returns returnAdjustmentId[String], returnItemSeqId[String], returnId[String]
   */
  Future<OfResult> createReturnAndItemOrAdjustment({String returnHeaderTypeId, String statusId, String createdBy, String fromPartyId, String toPartyId, String paymentMethodId, String finAccountId, String billingAccountId, DateTime entryDate, String originContactMechId, String destinationFacilityId, String needsInventoryReceive, String currencyUomId, String supplierRmaId, String returnAdjustmentId, String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String returnReasonId, String returnItemTypeId, String productId, String orderId, String orderItemSeqId, String expectedItemStatus, Decimal returnQuantity, Decimal receivedQuantity, Decimal returnPrice, String returnItemResponseId}) =>
      client.invoke('createReturnAndItemOrAdjustment', null, { 'returnHeaderTypeId': returnHeaderTypeId, 'statusId': statusId, 'createdBy': createdBy, 'fromPartyId': fromPartyId, 'toPartyId': toPartyId, 'paymentMethodId': paymentMethodId, 'finAccountId': finAccountId, 'billingAccountId': billingAccountId, 'entryDate': entryDate, 'originContactMechId': originContactMechId, 'destinationFacilityId': destinationFacilityId, 'needsInventoryReceive': needsInventoryReceive, 'currencyUomId': currencyUomId, 'supplierRmaId': supplierRmaId, 'returnAdjustmentId': returnAdjustmentId, 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'returnReasonId': returnReasonId, 'returnItemTypeId': returnItemTypeId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'expectedItemStatus': expectedItemStatus, 'returnQuantity': returnQuantity, 'receivedQuantity': receivedQuantity, 'returnPrice': returnPrice, 'returnItemResponseId': returnItemResponseId });

  /**
   * Create a ReturnContactMech - ReturnContactMech
   *
   * Requires returnId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> createReturnContactMech(ReturnContactMech ent, ) =>
      client.invoke('createReturnContactMech', ent, {  });

  /**
   * Create a new ReturnHeader - ReturnHeader
   *
   * Requires returnHeaderTypeId, returnHeaderTypeId
   * Returns returnId[String]
   */
  Future<OfResult> createReturnHeader(ReturnHeader ent, ) =>
      client.invoke('createReturnHeader', ent, {  });

  /**
   * Create a ReturnHeaderType record - ReturnHeaderType
   *
   * Requires 
   * Returns returnHeaderTypeId[String]
   */
  Future<OfResult> createReturnHeaderType(ReturnHeaderType ent, ) =>
      client.invoke('createReturnHeaderType', ent, {  });

  /**
   * Create a new ReturnItem in the RETURN_REQUESTED status, based on returnableQuantity and returnablePrice from the
                     getReturnableQuantity service.  This can be called by the customer to request a return for himself or by a user with
                     ORDERMGR_CREATE, but, if the former, the returnPrice will be overriden by the returnablePrice from getReturnableQuantity. - 
   *
   * Requires returnId, returnTypeId, returnItemTypeId, orderId, returnQuantity, returnId, returnTypeId, returnItemTypeId, orderId, returnQuantity
   * Returns returnItemSeqId[String]
   */
  Future<OfResult> createReturnItem({@required String returnId, String returnReasonId, @required String returnTypeId, @required String returnItemTypeId, String productId, String description, @required String orderId, String orderItemSeqId, String statusId, String expectedItemStatus, @required Decimal returnQuantity, Decimal receivedQuantity, Decimal returnPrice, String returnItemResponseId, String includeAdjustments}) =>
      client.invoke('createReturnItem', null, { 'returnId': returnId, 'returnReasonId': returnReasonId, 'returnTypeId': returnTypeId, 'returnItemTypeId': returnItemTypeId, 'productId': productId, 'description': description, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'statusId': statusId, 'expectedItemStatus': expectedItemStatus, 'returnQuantity': returnQuantity, 'receivedQuantity': receivedQuantity, 'returnPrice': returnPrice, 'returnItemResponseId': returnItemResponseId, 'includeAdjustments': includeAdjustments });

  /**
   * Create a new return item billing record - ReturnItemBilling
   *
   * Requires returnId, returnItemSeqId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> createReturnItemBilling(ReturnItemBilling ent, ) =>
      client.invoke('createReturnItemBilling', ent, {  });

  /**
   * Create the return item for rental (which items has product type is ASSET_USAGE_OUT_IN) - 
   *
   * Requires orderId
   * Returns returnId[String]
   */
  Future<OfResult> createReturnItemForRental({@required String orderId}) =>
      client.invoke('createReturnItemForRental', null, { 'orderId': orderId });

  /**
   * create Return Item or Adjustment based on the parameters passed in - 
   *
   * Requires 
   * Returns returnAdjustmentId[String], returnItemSeqId[String]
   */
  Future<OfResult> createReturnItemOrAdjustment({String returnAdjustmentId, String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String returnReasonId, String returnItemTypeId, String productId, String orderId, String orderItemSeqId, String statusId, String expectedItemStatus, Decimal returnQuantity, Decimal receivedQuantity, Decimal returnPrice, String returnItemResponseId}) =>
      client.invoke('createReturnItemOrAdjustment', null, { 'returnAdjustmentId': returnAdjustmentId, 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'returnReasonId': returnReasonId, 'returnItemTypeId': returnItemTypeId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'statusId': statusId, 'expectedItemStatus': expectedItemStatus, 'returnQuantity': returnQuantity, 'receivedQuantity': receivedQuantity, 'returnPrice': returnPrice, 'returnItemResponseId': returnItemResponseId });

  /**
   * Creates a ReturnItemResponse record. - ReturnItemResponse
   *
   * Requires 
   * Returns returnItemResponseId[String]
   */
  Future<OfResult> createReturnItemResponse(ReturnItemResponse ent, ) =>
      client.invoke('createReturnItemResponse', ent, {  });

  /**
   * Create a new ReturnItemShipment - 
   *
   * Requires returnId, returnItemSeqId, shipmentId, shipmentItemSeqId, quantity
   * Returns 
   */
  Future<OfResult> createReturnItemShipment({@required String returnId, @required String returnItemSeqId, @required String shipmentId, @required String shipmentItemSeqId, @required Decimal quantity}) =>
      client.invoke('createReturnItemShipment', null, { 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'quantity': quantity });

  /**
   * Create a ReturnItemType record - ReturnItemType
   *
   * Requires 
   * Returns returnItemTypeId[String]
   */
  Future<OfResult> createReturnItemType(ReturnItemType ent, ) =>
      client.invoke('createReturnItemType', ent, {  });

  /**
   * Create a ReturnItemTypeMap record - ReturnItemTypeMap
   *
   * Requires returnItemMapKey, returnHeaderTypeId
   * Returns 
   */
  Future<OfResult> createReturnItemTypeMap(ReturnItemTypeMap ent, ) =>
      client.invoke('createReturnItemTypeMap', ent, {  });

  /**
   * Create a ReturnReason record - ReturnReason
   *
   * Requires 
   * Returns returnReasonId[String]
   */
  Future<OfResult> createReturnReason(ReturnReason ent, ) =>
      client.invoke('createReturnReason', ent, {  });

  /**
   * Create Return Status - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> createReturnStatus({@required String returnId, String returnItemSeqId}) =>
      client.invoke('createReturnStatus', null, { 'returnId': returnId, 'returnItemSeqId': returnItemSeqId });

  /**
   * Create a ReturnType record - ReturnType
   *
   * Requires 
   * Returns returnTypeId[String]
   */
  Future<OfResult> createReturnType(ReturnType ent, ) =>
      client.invoke('createReturnType', ent, {  });

  /**
   * Delete a ReturnAdjustmentType record - ReturnAdjustmentType
   *
   * Requires returnAdjustmentTypeId
   * Returns 
   */
  Future<OfResult> deleteReturnAdjustmentType(ReturnAdjustmentType ent, ) =>
      client.invoke('deleteReturnAdjustmentType', ent, {  });

  /**
   * Delete a ReturnContactMech - ReturnContactMech
   *
   * Requires returnId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> deleteReturnContactMech(ReturnContactMech ent, ) =>
      client.invoke('deleteReturnContactMech', ent, {  });

  /**
   * Delete a ReturnHeaderType record - ReturnHeaderType
   *
   * Requires returnHeaderTypeId
   * Returns 
   */
  Future<OfResult> deleteReturnHeaderType(ReturnHeaderType ent, ) =>
      client.invoke('deleteReturnHeaderType', ent, {  });

  /**
   * Delete a ReturnItemType record - ReturnItemType
   *
   * Requires returnItemTypeId
   * Returns 
   */
  Future<OfResult> deleteReturnItemType(ReturnItemType ent, ) =>
      client.invoke('deleteReturnItemType', ent, {  });

  /**
   * Delete a ReturnItemTypeMap record - ReturnItemTypeMap
   *
   * Requires returnItemMapKey, returnHeaderTypeId
   * Returns 
   */
  Future<OfResult> deleteReturnItemTypeMap(ReturnItemTypeMap ent, ) =>
      client.invoke('deleteReturnItemTypeMap', ent, {  });

  /**
   * Delete a ReturnReason record - ReturnReason
   *
   * Requires returnReasonId
   * Returns 
   */
  Future<OfResult> deleteReturnReason(ReturnReason ent, ) =>
      client.invoke('deleteReturnReason', ent, {  });

  /**
   * Delete a ReturnType record - ReturnType
   *
   * Requires returnTypeId
   * Returns 
   */
  Future<OfResult> deleteReturnType(ReturnType ent, ) =>
      client.invoke('deleteReturnType', ent, {  });

  /**
   * Get the total amount of all returns for an order: orderTotal, returnTotal - totals so far.  availableReturnTotal = orderTotal - returnTotal - adjustment.  Used for checking if the return total has gone over the order total.  If countNewReturnItems is set to Boolean.TRUE then return items in the CREATED state will be counted.  This should only be the case during quickRefundEntireOrder. - 
   *
   * Requires orderId
   * Returns orderTotal[BigDecimal], returnTotal[BigDecimal], availableReturnTotal[BigDecimal]
   */
  Future<OfResult> getOrderAvailableReturnedTotal({@required String orderId, Decimal adjustment, bool countNewReturnItems}) =>
      client.invoke('getOrderAvailableReturnedTotal', null, { 'orderId': orderId, 'adjustment': adjustment, 'countNewReturnItems': countNewReturnItems });

  /**
   * Finds the refunded or credited payment amounts for each order on a return - 
   *
   * Requires returnId
   * Returns orderReturnAmountMap[Map]
   */
  Future<OfResult> getReturnAmountByOrder({@required String returnId}) =>
      client.invoke('getReturnAmountByOrder', null, { 'returnId': returnId });

  /**
   * Gets the item's initial cost based on the inventory item record associated with the order item or 0.00 if none found. - 
   *
   * Requires returnId, returnItemSeqId
   * Returns initialItemCost[BigDecimal]
   */
  Future<OfResult> getReturnItemInitialCost({@required String returnId, @required String returnItemSeqId}) =>
      client.invoke('getReturnItemInitialCost', null, { 'returnId': returnId, 'returnItemSeqId': returnItemSeqId });

  /**
   * Get a map of returnable items orderItem => quantity available to return - 
   *
   * Requires orderId
   * Returns returnableItems[Map]
   */
  Future<OfResult> getReturnableItems({@required String orderId}) =>
      client.invoke('getReturnableItems', null, { 'orderId': orderId });

  /**
   * Get the quantity allowed for an item to be returned - 
   *
   * Requires orderItem
   * Returns returnableQuantity[BigDecimal], returnablePrice[BigDecimal]
   */
  Future<OfResult> getReturnableQuantity({@required Map<String,dynamic> orderItem}) =>
      client.invoke('getReturnableQuantity', null, { 'orderItem': orderItem });

  /**
   * Get the return status associated with customer/vendor return - 
   *
   * Requires returnHeaderTypeId
   * Returns statusItems[List]
   */
  Future<OfResult> getStatusItemsForReturn({@required String returnHeaderTypeId}) =>
      client.invoke('getStatusItemsForReturn', null, { 'returnHeaderTypeId': returnHeaderTypeId });

  /**
   * Process the credits in a return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processCreditReturn({@required String returnId}) =>
      client.invoke('processCreditReturn', null, { 'returnId': returnId });

  /**
   * Process the replacements in a cross-ship return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processCrossShipReplacementReturn({@required String returnId}) =>
      client.invoke('processCrossShipReplacementReturn', null, { 'returnId': returnId });

  /**
   * Process the Immediate Refund in a return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processRefundImmediatelyReturn({@required String returnId}) =>
      client.invoke('processRefundImmediatelyReturn', null, { 'returnId': returnId });

  /**
   * Process the Refund in a return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processRefundOnlyReturn({@required String returnId}) =>
      client.invoke('processRefundOnlyReturn', null, { 'returnId': returnId });

  /**
   * Process the refunds in a return - 
   *
   * Requires returnId, returnTypeId
   * Returns 
   */
  Future<OfResult> processRefundReturn({@required String returnId, @required String returnTypeId}) =>
      client.invoke('processRefundReturn', null, { 'returnId': returnId, 'returnTypeId': returnTypeId });

  /**
   * Process the refund return for replacement order - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> processRefundReturnForReplacement({@required String orderId}) =>
      client.invoke('processRefundReturnForReplacement', null, { 'orderId': orderId });

  /**
   * Process the replacements in a repair return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processRepairReplacementReturn({@required String returnId}) =>
      client.invoke('processRepairReplacementReturn', null, { 'returnId': returnId });

  /**
   * Process the replacements in a Immediate Return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processReplaceImmediatelyReturn({@required String returnId}) =>
      client.invoke('processReplaceImmediatelyReturn', null, { 'returnId': returnId });

  /**
   * Process the replacements in a return - 
   *
   * Requires returnId, returnTypeId
   * Returns 
   */
  Future<OfResult> processReplacementReturn({@required String returnId, @required String returnTypeId}) =>
      client.invoke('processReplacementReturn', null, { 'returnId': returnId, 'returnTypeId': returnTypeId });

  /**
   * Process subscription changes from a return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processSubscriptionReturn({@required String returnId}) =>
      client.invoke('processSubscriptionReturn', null, { 'returnId': returnId });

  /**
   * Process the replacements in a wait reserved return when the return is accepted and then received - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processWaitReplacementReservedReturn({@required String returnId}) =>
      client.invoke('processWaitReplacementReservedReturn', null, { 'returnId': returnId });

  /**
   * Process the replacements in a wait return - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> processWaitReplacementReturn({@required String returnId}) =>
      client.invoke('processWaitReplacementReturn', null, { 'returnId': returnId });

  /**
   * Quick Return Order - 
   *
   * Requires orderId, returnHeaderTypeId
   * Returns returnId[String]
   */
  Future<OfResult> quickReturnOrder({@required String orderId, String returnReasonId, String returnTypeId, @required String returnHeaderTypeId, bool receiveReturn}) =>
      client.invoke('quickReturnOrder', null, { 'orderId': orderId, 'returnReasonId': returnReasonId, 'returnTypeId': returnTypeId, 'returnHeaderTypeId': returnHeaderTypeId, 'receiveReturn': receiveReturn });

  /**
   * Refunds A Billing Account Payment - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns paymentId[String]
   */
  Future<OfResult> refundBillingAccountPayment({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount}) =>
      client.invoke('refundBillingAccountPayment', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount });

  /**
   * Remove a Communication Event Return - CommunicationEventReturn
   *
   * Requires returnId, communicationEventId
   * Returns 
   */
  Future<OfResult> removeCommunicationEventReturn(CommunicationEventReturn ent, ) =>
      client.invoke('removeCommunicationEventReturn', ent, {  });

  /**
   * Simple remove service - 
   *
   * Requires returnAdjustmentId
   * Returns 
   */
  Future<OfResult> removeReturnAdjustment({@required String returnAdjustmentId}) =>
      client.invoke('removeReturnAdjustment', null, { 'returnAdjustmentId': returnAdjustmentId });

  /**
   * Remove a ReturnItem and related adjustments - 
   *
   * Requires returnId, returnItemSeqId
   * Returns 
   */
  Future<OfResult> removeReturnItem({@required String returnId, @required String returnItemSeqId}) =>
      client.invoke('removeReturnItem', null, { 'returnId': returnId, 'returnItemSeqId': returnItemSeqId });

  /**
   * Return Adjustment Interface - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> returnAdjustmentInterface({String returnAdjustmentId, String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('returnAdjustmentInterface', null, { 'returnAdjustmentId': returnAdjustmentId, 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Send a notification that a return has been accepted - 
   *
   * Requires returnId
   * Returns communicationEventId[String]
   */
  Future<OfResult> sendReturnAcceptNotification({@required String returnId}) =>
      client.invoke('sendReturnAcceptNotification', null, { 'returnId': returnId });

  /**
   * Send a notification that a return has been cancelled - 
   *
   * Requires returnId
   * Returns communicationEventId[String]
   */
  Future<OfResult> sendReturnCancelNotification({@required String returnId}) =>
      client.invoke('sendReturnCancelNotification', null, { 'returnId': returnId });

  /**
   * Send a notification that a return has been completed - 
   *
   * Requires returnId
   * Returns communicationEventId[String]
   */
  Future<OfResult> sendReturnCompleteNotification({@required String returnId}) =>
      client.invoke('sendReturnCompleteNotification', null, { 'returnId': returnId });

  /**
   *  - 
   *
   * Requires returnAdjustmentId
   * Returns 
   */
  Future<OfResult> updateReturnAdjustment({Decimal originalReturnPrice, Decimal originalReturnQuantity, String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String returnAdjustmentId}) =>
      client.invoke('updateReturnAdjustment', null, { 'originalReturnPrice': originalReturnPrice, 'originalReturnQuantity': originalReturnQuantity, 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'returnAdjustmentId': returnAdjustmentId });

  /**
   * Update a ReturnAdjustmentType record - ReturnAdjustmentType
   *
   * Requires returnAdjustmentTypeId
   * Returns 
   */
  Future<OfResult> updateReturnAdjustmentType(ReturnAdjustmentType ent, ) =>
      client.invoke('updateReturnAdjustmentType', ent, {  });

  /**
   * Update Return Contact Mech - ReturnContactMech
   *
   * Requires returnId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> updateReturnContactMech(ReturnContactMech ent, {String oldContactMechId}) =>
      client.invoke('updateReturnContactMech', ent, { 'oldContactMechId': oldContactMechId });

  /**
   * Update a ReturnHeader - ReturnHeader
   *
   * Requires returnId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateReturnHeader(ReturnHeader ent, ) =>
      client.invoke('updateReturnHeader', ent, {  });

  /**
   * Update a ReturnHeaderType record - ReturnHeaderType
   *
   * Requires returnHeaderTypeId
   * Returns 
   */
  Future<OfResult> updateReturnHeaderType(ReturnHeaderType ent, ) =>
      client.invoke('updateReturnHeaderType', ent, {  });

  /**
   * Update a ReturnItem and related adjustments - ReturnItem
   *
   * Requires returnId, returnItemSeqId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateReturnItem(ReturnItem ent, ) =>
      client.invoke('updateReturnItem', ent, {  });

  /**
   * update Return Item or Adjustment based on the parameters passed in - 
   *
   * Requires 
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateReturnItemOrAdjustment({String returnAdjustmentId, String returnAdjustmentTypeId, String returnId, String returnItemSeqId, String shipGroupSeqId, String comments, String description, String returnTypeId, String orderAdjustmentId, Decimal amount, String productPromoId, String productPromoRuleId, String productPromoActionSeqId, String productFeatureId, String correspondingProductId, String taxAuthorityRateSeqId, String sourceReferenceId, Decimal sourcePercentage, String customerReferenceId, String primaryGeoId, String secondaryGeoId, Decimal exemptAmount, String taxAuthGeoId, String taxAuthPartyId, String overrideGlAccountId, String includeInTax, String includeInShipping, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String returnReasonId, String returnItemTypeId, String productId, String orderId, String orderItemSeqId, String statusId, String expectedItemStatus, Decimal returnQuantity, Decimal receivedQuantity, Decimal returnPrice, String returnItemResponseId}) =>
      client.invoke('updateReturnItemOrAdjustment', null, { 'returnAdjustmentId': returnAdjustmentId, 'returnAdjustmentTypeId': returnAdjustmentTypeId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'comments': comments, 'description': description, 'returnTypeId': returnTypeId, 'orderAdjustmentId': orderAdjustmentId, 'amount': amount, 'productPromoId': productPromoId, 'productPromoRuleId': productPromoRuleId, 'productPromoActionSeqId': productPromoActionSeqId, 'productFeatureId': productFeatureId, 'correspondingProductId': correspondingProductId, 'taxAuthorityRateSeqId': taxAuthorityRateSeqId, 'sourceReferenceId': sourceReferenceId, 'sourcePercentage': sourcePercentage, 'customerReferenceId': customerReferenceId, 'primaryGeoId': primaryGeoId, 'secondaryGeoId': secondaryGeoId, 'exemptAmount': exemptAmount, 'taxAuthGeoId': taxAuthGeoId, 'taxAuthPartyId': taxAuthPartyId, 'overrideGlAccountId': overrideGlAccountId, 'includeInTax': includeInTax, 'includeInShipping': includeInShipping, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'returnReasonId': returnReasonId, 'returnItemTypeId': returnItemTypeId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'statusId': statusId, 'expectedItemStatus': expectedItemStatus, 'returnQuantity': returnQuantity, 'receivedQuantity': receivedQuantity, 'returnPrice': returnPrice, 'returnItemResponseId': returnItemResponseId });

  /**
   * Update a ReturnItemType record - ReturnItemType
   *
   * Requires returnItemTypeId
   * Returns 
   */
  Future<OfResult> updateReturnItemType(ReturnItemType ent, ) =>
      client.invoke('updateReturnItemType', ent, {  });

  /**
   * Update a ReturnItemTypeMap record - ReturnItemTypeMap
   *
   * Requires returnItemMapKey, returnHeaderTypeId
   * Returns 
   */
  Future<OfResult> updateReturnItemTypeMap(ReturnItemTypeMap ent, ) =>
      client.invoke('updateReturnItemTypeMap', ent, {  });

  /**
   * Update ReturnItem(s) Status - 
   *
   * Requires returnId, statusId
   * Returns 
   */
  Future<OfResult> updateReturnItemsStatus({@required String returnId, @required String statusId}) =>
      client.invoke('updateReturnItemsStatus', null, { 'returnId': returnId, 'statusId': statusId });

  /**
   * Update a ReturnReason record - ReturnReason
   *
   * Requires returnReasonId
   * Returns 
   */
  Future<OfResult> updateReturnReason(ReturnReason ent, ) =>
      client.invoke('updateReturnReason', ent, {  });

  /**
   * Update return/item status when items have been received - 
   *
   * Requires returnId
   * Returns returnHeaderStatus[String]
   */
  Future<OfResult> updateReturnStatusFromReceipt({@required String returnId}) =>
      client.invoke('updateReturnStatusFromReceipt', null, { 'returnId': returnId });

  /**
   * Update a ReturnType record - ReturnType
   *
   * Requires returnTypeId
   * Returns 
   */
  Future<OfResult> updateReturnType(ReturnType ent, ) =>
      client.invoke('updateReturnType', ent, {  });

}