import 'package:sagas_meta/src/models/order_order.dart';
import 'package:sagas_meta/src/models/order_requirement.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesOrder{
  final SrvClient client;
  OrderServicesOrder(this.client);

  /**
   * Create an OrderAdjustmentAttribute record - OrderAdjustmentAttribute
   *
   * Requires orderAdjustmentId, attrName
   * Returns 
   */
  Future<OfResult> createOrderAdjustmentAttribute(OrderAdjustmentAttribute ent, ) =>
      client.invoke('createOrderAdjustmentAttribute', ent, {  });

  /**
   * Create an OrderAdjustmentType record - OrderAdjustmentType
   *
   * Requires 
   * Returns orderAdjustmentTypeId[String]
   */
  Future<OfResult> createOrderAdjustmentType(OrderAdjustmentType ent, ) =>
      client.invoke('createOrderAdjustmentType', ent, {  });

  /**
   * Create an OrderAttribute record - OrderAttribute
   *
   * Requires orderId, attrName
   * Returns 
   */
  Future<OfResult> createOrderAttribute(OrderAttribute ent, ) =>
      client.invoke('createOrderAttribute', ent, {  });

  /**
   * Create an OrderBlacklist record - OrderBlacklist
   *
   * Requires blacklistString, orderBlacklistTypeId
   * Returns 
   */
  Future<OfResult> createOrderBlacklist(OrderBlacklist ent, ) =>
      client.invoke('createOrderBlacklist', ent, {  });

  /**
   * Create an OrderBlacklistType record - OrderBlacklistType
   *
   * Requires 
   * Returns orderBlacklistTypeId[String]
   */
  Future<OfResult> createOrderBlacklistType(OrderBlacklistType ent, ) =>
      client.invoke('createOrderBlacklistType', ent, {  });

  /**
   * Create a OrderContentType - OrderContentType
   *
   * Requires 
   * Returns orderContentTypeId[String]
   */
  Future<OfResult> createOrderContentType(OrderContentType ent, ) =>
      client.invoke('createOrderContentType', ent, {  });

  /**
   * Create an OrderItemAssoc record - OrderItemAssoc
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, toOrderId, toOrderItemSeqId, toShipGroupSeqId, orderItemAssocTypeId
   * Returns 
   */
  Future<OfResult> createOrderItemAssoc(OrderItemAssoc ent, ) =>
      client.invoke('createOrderItemAssoc', ent, {  });

  /**
   * Create an OrderItemAssocType record - OrderItemAssocType
   *
   * Requires 
   * Returns orderItemAssocTypeId[String]
   */
  Future<OfResult> createOrderItemAssocType(OrderItemAssocType ent, ) =>
      client.invoke('createOrderItemAssocType', ent, {  });

  /**
   * Create an OrderItemContactMech record - OrderItemContactMech
   *
   * Requires orderId, orderItemSeqId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> createOrderItemContactMech(OrderItemContactMech ent, ) =>
      client.invoke('createOrderItemContactMech', ent, {  });

  /**
   * Create an OrderItemGroup record - OrderItemGroup
   *
   * Requires orderId, orderItemGroupSeqId
   * Returns 
   */
  Future<OfResult> createOrderItemGroup(OrderItemGroup ent, ) =>
      client.invoke('createOrderItemGroup', ent, {  });

  /**
   * Create an OrderItemPriceInfo record - OrderItemPriceInfo
   *
   * Requires 
   * Returns orderItemPriceInfoId[String]
   */
  Future<OfResult> createOrderItemPriceInfo(OrderItemPriceInfo ent, ) =>
      client.invoke('createOrderItemPriceInfo', ent, {  });

  /**
   * Create an OrderItemPriceInfo record - OrderItemRole
   *
   * Requires orderId, orderItemSeqId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createOrderItemRole(OrderItemRole ent, ) =>
      client.invoke('createOrderItemRole', ent, {  });

  /**
   * Create an OrderItemShipGrpInvRes record - OrderItemShipGrpInvRes
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId
   * Returns 
   */
  Future<OfResult> createOrderItemShipGrpInvRes(OrderItemShipGrpInvRes ent, ) =>
      client.invoke('createOrderItemShipGrpInvRes', ent, {  });

  /**
   * Create an OrderItemType record - OrderItemType
   *
   * Requires 
   * Returns orderItemTypeId[String]
   */
  Future<OfResult> createOrderItemType(OrderItemType ent, ) =>
      client.invoke('createOrderItemType', ent, {  });

  /**
   * Create an OrderItemTypeAttr record - OrderItemTypeAttr
   *
   * Requires orderItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> createOrderItemTypeAttr(OrderItemTypeAttr ent, ) =>
      client.invoke('createOrderItemTypeAttr', ent, {  });

  /**
   * Create an OrderProductPromoCode record - OrderProductPromoCode
   *
   * Requires orderId, productPromoCodeId
   * Returns 
   */
  Future<OfResult> createOrderProductPromoCode(OrderProductPromoCode ent, ) =>
      client.invoke('createOrderProductPromoCode', ent, {  });

  /**
   * Create an OrderSummaryEntry record - OrderSummaryEntry
   *
   * Requires entryDate, productId, facilityId
   * Returns 
   */
  Future<OfResult> createOrderSummaryEntry(OrderSummaryEntry ent, ) =>
      client.invoke('createOrderSummaryEntry', ent, {  });

  /**
   * Create an OrderTermAttribute record - OrderTermAttribute
   *
   * Requires termTypeId, orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createOrderTermAttribute(OrderTermAttribute ent, ) =>
      client.invoke('createOrderTermAttribute', ent, {  });

  /**
   * Create an OrderType record - OrderType
   *
   * Requires 
   * Returns orderTypeId[String]
   */
  Future<OfResult> createOrderType(OrderType ent, ) =>
      client.invoke('createOrderType', ent, {  });

  /**
   * Create an OrderTypeAttr record - OrderTypeAttr
   *
   * Requires orderTypeId, attrName
   * Returns 
   */
  Future<OfResult> createOrderTypeAttr(OrderTypeAttr ent, ) =>
      client.invoke('createOrderTypeAttr', ent, {  });

  /**
   * Delete an OrderAdjustmentAttribute record - OrderAdjustmentAttribute
   *
   * Requires orderAdjustmentId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderAdjustmentAttribute(OrderAdjustmentAttribute ent, ) =>
      client.invoke('deleteOrderAdjustmentAttribute', ent, {  });

  /**
   * Delete an OrderAdjustmentType record - OrderAdjustmentType
   *
   * Requires orderAdjustmentTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderAdjustmentType(OrderAdjustmentType ent, ) =>
      client.invoke('deleteOrderAdjustmentType', ent, {  });

  /**
   * Delete an OrderAttribute record - OrderAttribute
   *
   * Requires orderId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderAttribute(OrderAttribute ent, ) =>
      client.invoke('deleteOrderAttribute', ent, {  });

  /**
   * Delete an OrderBlacklist record - OrderBlacklist
   *
   * Requires blacklistString, orderBlacklistTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderBlacklist(OrderBlacklist ent, ) =>
      client.invoke('deleteOrderBlacklist', ent, {  });

  /**
   * Delete an OrderBlacklistType record - OrderBlacklistType
   *
   * Requires orderBlacklistTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderBlacklistType(OrderBlacklistType ent, ) =>
      client.invoke('deleteOrderBlacklistType', ent, {  });

  /**
   * Delete a OrderContentType - OrderContentType
   *
   * Requires orderContentTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderContentType(OrderContentType ent, ) =>
      client.invoke('deleteOrderContentType', ent, {  });

  /**
   * Delete an OrderItemAssoc record - OrderItemAssoc
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, toOrderId, toOrderItemSeqId, toShipGroupSeqId, orderItemAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderItemAssoc(OrderItemAssoc ent, ) =>
      client.invoke('deleteOrderItemAssoc', ent, {  });

  /**
   * Delete an OrderItemAssocType record - OrderItemAssocType
   *
   * Requires orderItemAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderItemAssocType(OrderItemAssocType ent, ) =>
      client.invoke('deleteOrderItemAssocType', ent, {  });

  /**
   * Delete an OrderItemContactMech record - OrderItemContactMech
   *
   * Requires orderId, orderItemSeqId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderItemContactMech(OrderItemContactMech ent, ) =>
      client.invoke('deleteOrderItemContactMech', ent, {  });

  /**
   * Delete an OrderItemGroup record - OrderItemGroup
   *
   * Requires orderId, orderItemGroupSeqId
   * Returns 
   */
  Future<OfResult> deleteOrderItemGroup(OrderItemGroup ent, ) =>
      client.invoke('deleteOrderItemGroup', ent, {  });

  /**
   * Delete an OrderItemPriceInfo record - OrderItemPriceInfo
   *
   * Requires orderItemPriceInfoId
   * Returns 
   */
  Future<OfResult> deleteOrderItemPriceInfo(OrderItemPriceInfo ent, ) =>
      client.invoke('deleteOrderItemPriceInfo', ent, {  });

  /**
   * Delete an OrderItemPriceInfo record - OrderItemRole
   *
   * Requires orderId, orderItemSeqId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderItemRole(OrderItemRole ent, ) =>
      client.invoke('deleteOrderItemRole', ent, {  });

  /**
   * Delete an OrderItemShipGrpInvRes record - OrderItemShipGrpInvRes
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId
   * Returns 
   */
  Future<OfResult> deleteOrderItemShipGrpInvRes(OrderItemShipGrpInvRes ent, ) =>
      client.invoke('deleteOrderItemShipGrpInvRes', ent, {  });

  /**
   * Delete an OrderItemType record - OrderItemType
   *
   * Requires orderItemTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderItemType(OrderItemType ent, ) =>
      client.invoke('deleteOrderItemType', ent, {  });

  /**
   * Delete an OrderItemTypeAttr record - OrderItemTypeAttr
   *
   * Requires orderItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderItemTypeAttr(OrderItemTypeAttr ent, ) =>
      client.invoke('deleteOrderItemTypeAttr', ent, {  });

  /**
   * Delete an OrderNotification record - OrderNotification
   *
   * Requires orderNotificationId
   * Returns 
   */
  Future<OfResult> deleteOrderNotification(OrderNotification ent, ) =>
      client.invoke('deleteOrderNotification', ent, {  });

  /**
   * Delete an OrderProductPromoCode record - OrderProductPromoCode
   *
   * Requires orderId, productPromoCodeId
   * Returns 
   */
  Future<OfResult> deleteOrderProductPromoCode(OrderProductPromoCode ent, ) =>
      client.invoke('deleteOrderProductPromoCode', ent, {  });

  /**
   * Delete an OrderRequirementCommitment record - OrderRequirementCommitment
   *
   * Requires orderId, orderItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> deleteOrderRequirementCommitment(OrderRequirementCommitment ent, ) =>
      client.invoke('deleteOrderRequirementCommitment', ent, {  });

  /**
   * Delete an OrderSummaryEntry record - OrderSummaryEntry
   *
   * Requires entryDate, productId, facilityId
   * Returns 
   */
  Future<OfResult> deleteOrderSummaryEntry(OrderSummaryEntry ent, ) =>
      client.invoke('deleteOrderSummaryEntry', ent, {  });

  /**
   * Delete an OrderTermAttribute record - OrderTermAttribute
   *
   * Requires termTypeId, orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderTermAttribute(OrderTermAttribute ent, ) =>
      client.invoke('deleteOrderTermAttribute', ent, {  });

  /**
   * Delete an OrderType record - OrderType
   *
   * Requires orderTypeId
   * Returns 
   */
  Future<OfResult> deleteOrderType(OrderType ent, ) =>
      client.invoke('deleteOrderType', ent, {  });

  /**
   * Delete an OrderTypeAttr record - OrderTypeAttr
   *
   * Requires orderTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteOrderTypeAttr(OrderTypeAttr ent, ) =>
      client.invoke('deleteOrderTypeAttr', ent, {  });

  /**
   * Update an OrderAdjustmentAttribute record - OrderAdjustmentAttribute
   *
   * Requires orderAdjustmentId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderAdjustmentAttribute(OrderAdjustmentAttribute ent, ) =>
      client.invoke('updateOrderAdjustmentAttribute', ent, {  });

  /**
   * Update an OrderAdjustmentType record - OrderAdjustmentType
   *
   * Requires orderAdjustmentTypeId
   * Returns 
   */
  Future<OfResult> updateOrderAdjustmentType(OrderAdjustmentType ent, ) =>
      client.invoke('updateOrderAdjustmentType', ent, {  });

  /**
   * Update an OrderAttribute record - OrderAttribute
   *
   * Requires orderId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderAttribute(OrderAttribute ent, ) =>
      client.invoke('updateOrderAttribute', ent, {  });

  /**
   * Update an OrderBlacklistType record - OrderBlacklistType
   *
   * Requires orderBlacklistTypeId
   * Returns 
   */
  Future<OfResult> updateOrderBlacklistType(OrderBlacklistType ent, ) =>
      client.invoke('updateOrderBlacklistType', ent, {  });

  /**
   * Update a OrderContentType - OrderContentType
   *
   * Requires orderContentTypeId
   * Returns 
   */
  Future<OfResult> updateOrderContentType(OrderContentType ent, ) =>
      client.invoke('updateOrderContentType', ent, {  });

  /**
   * Update an OrderItemAssoc record - OrderItemAssoc
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, toOrderId, toOrderItemSeqId, toShipGroupSeqId, orderItemAssocTypeId
   * Returns 
   */
  Future<OfResult> updateOrderItemAssoc(OrderItemAssoc ent, ) =>
      client.invoke('updateOrderItemAssoc', ent, {  });

  /**
   * Update an OrderItemAssocType record - OrderItemAssocType
   *
   * Requires orderItemAssocTypeId
   * Returns 
   */
  Future<OfResult> updateOrderItemAssocType(OrderItemAssocType ent, ) =>
      client.invoke('updateOrderItemAssocType', ent, {  });

  /**
   * Update an OrderItemContactMech record - OrderItemContactMech
   *
   * Requires orderId, orderItemSeqId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateOrderItemContactMech(OrderItemContactMech ent, ) =>
      client.invoke('updateOrderItemContactMech', ent, {  });

  /**
   * Update an OrderItemGroup record - OrderItemGroup
   *
   * Requires orderId, orderItemGroupSeqId
   * Returns 
   */
  Future<OfResult> updateOrderItemGroup(OrderItemGroup ent, ) =>
      client.invoke('updateOrderItemGroup', ent, {  });

  /**
   * Update an OrderItemPriceInfo record - OrderItemPriceInfo
   *
   * Requires orderItemPriceInfoId
   * Returns 
   */
  Future<OfResult> updateOrderItemPriceInfo(OrderItemPriceInfo ent, ) =>
      client.invoke('updateOrderItemPriceInfo', ent, {  });

  /**
   * Update an OrderItemShipGrpInvRes record - OrderItemShipGrpInvRes
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId
   * Returns 
   */
  Future<OfResult> updateOrderItemShipGrpInvRes(OrderItemShipGrpInvRes ent, ) =>
      client.invoke('updateOrderItemShipGrpInvRes', ent, {  });

  /**
   * Update an OrderItemType record - OrderItemType
   *
   * Requires orderItemTypeId
   * Returns 
   */
  Future<OfResult> updateOrderItemType(OrderItemType ent, ) =>
      client.invoke('updateOrderItemType', ent, {  });

  /**
   * Update an OrderItemTypeAttr record - OrderItemTypeAttr
   *
   * Requires orderItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderItemTypeAttr(OrderItemTypeAttr ent, ) =>
      client.invoke('updateOrderItemTypeAttr', ent, {  });

  /**
   * Update an OrderNotification record - OrderNotification
   *
   * Requires orderNotificationId
   * Returns 
   */
  Future<OfResult> updateOrderNotification(OrderNotification ent, ) =>
      client.invoke('updateOrderNotification', ent, {  });

  /**
   * Update an OrderRequirementCommitment record - OrderRequirementCommitment
   *
   * Requires orderId, orderItemSeqId, requirementId
   * Returns 
   */
  Future<OfResult> updateOrderRequirementCommitment(OrderRequirementCommitment ent, ) =>
      client.invoke('updateOrderRequirementCommitment', ent, {  });

  /**
   * Update an OrderSummaryEntry record - OrderSummaryEntry
   *
   * Requires entryDate, productId, facilityId
   * Returns 
   */
  Future<OfResult> updateOrderSummaryEntry(OrderSummaryEntry ent, ) =>
      client.invoke('updateOrderSummaryEntry', ent, {  });

  /**
   * Update an OrderTermAttribute record - OrderTermAttribute
   *
   * Requires termTypeId, orderId, orderItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderTermAttribute(OrderTermAttribute ent, ) =>
      client.invoke('updateOrderTermAttribute', ent, {  });

  /**
   * Update an OrderType record - OrderType
   *
   * Requires orderTypeId
   * Returns 
   */
  Future<OfResult> updateOrderType(OrderType ent, ) =>
      client.invoke('updateOrderType', ent, {  });

  /**
   * Update an OrderTypeAttr record - OrderTypeAttr
   *
   * Requires orderTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateOrderTypeAttr(OrderTypeAttr ent, ) =>
      client.invoke('updateOrderTypeAttr', ent, {  });

}