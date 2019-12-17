import 'package:sagas_meta/src/models/shipment_picklist.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesPicklist{
  final SrvClient client;
  ProductServicesPicklist(this.client);

  /**
   * If Picklist is Cancelled then cancel all the PicklistItems. - 
   *
   * Requires picklistId
   * Returns 
   */
  Future<OfResult> cancelPicklistAndItems({@required String picklistId}) =>
      client.invoke('cancelPicklistAndItems', null, { 'picklistId': picklistId });

  /**
   * Update Picklist based on Item Status - PicklistBin
   *
   * Requires picklistBinId
   * Returns 
   */
  Future<OfResult> checkPicklistBinItemStatuses(PicklistBin ent, ) =>
      client.invoke('checkPicklistBinItemStatuses', ent, {  });

  /**
   * Convert a list of order IDs to a list of headers - 
   *
   * Requires 
   * Returns orderHeaderList[List]
   */
  Future<OfResult> convertPickOrderIdListToHeaders({List<dynamic> orderIdList, List<dynamic> orderHeaderList}) =>
      client.invoke('convertPickOrderIdListToHeaders', null, { 'orderIdList': orderIdList, 'orderHeaderList': orderHeaderList });

  /**
   * Create Picklist - Picklist
   *
   * Requires 
   * Returns picklistId[String]
   */
  Future<OfResult> createPicklist(Picklist ent, ) =>
      client.invoke('createPicklist', ent, {  });

  /**
   * Create PicklistBin - PicklistBin
   *
   * Requires picklistId, binLocationNumber, primaryOrderId, primaryShipGroupSeqId
   * Returns picklistBinId[String]
   */
  Future<OfResult> createPicklistBin(PicklistBin ent, ) =>
      client.invoke('createPicklistBin', ent, {  });

  /**
   * Create Picklist From Orders - 
   *
   * Requires facilityId
   * Returns orderHeaderList[List], picklistId[String]
   */
  Future<OfResult> createPicklistFromOrders({@required String facilityId, String shipmentMethodTypeId, int maxNumberOfOrders, String isRushOrder, List<dynamic> orderIdList, List<dynamic> orderHeaderList}) =>
      client.invoke('createPicklistFromOrders', null, { 'facilityId': facilityId, 'shipmentMethodTypeId': shipmentMethodTypeId, 'maxNumberOfOrders': maxNumberOfOrders, 'isRushOrder': isRushOrder, 'orderIdList': orderIdList, 'orderHeaderList': orderHeaderList });

  /**
   * Create PicklistItem - PicklistItem
   *
   * Requires picklistBinId, orderId, orderItemSeqId, shipGroupSeqId, inventoryItemId, quantity
   * Returns 
   */
  Future<OfResult> createPicklistItem(PicklistItem ent, ) =>
      client.invoke('createPicklistItem', ent, {  });

  /**
   * Create PicklistRole - PicklistRole
   *
   * Requires picklistId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createPicklistRole(PicklistRole ent, ) =>
      client.invoke('createPicklistRole', ent, {  });

  /**
   * Delete Picklist - Picklist
   *
   * Requires picklistId
   * Returns 
   */
  Future<OfResult> deletePicklist(Picklist ent, ) =>
      client.invoke('deletePicklist', ent, {  });

  /**
   * Delete PicklistBin - PicklistBin
   *
   * Requires picklistBinId
   * Returns 
   */
  Future<OfResult> deletePicklistBin(PicklistBin ent, ) =>
      client.invoke('deletePicklistBin', ent, {  });

  /**
   * Delete PicklistItem - PicklistItem
   *
   * Requires picklistBinId, orderId, orderItemSeqId, shipGroupSeqId, inventoryItemId
   * Returns 
   */
  Future<OfResult> deletePicklistItem(PicklistItem ent, ) =>
      client.invoke('deletePicklistItem', ent, {  });

  /**
   * Delete PicklistRole - PicklistRole
   *
   * Requires picklistId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePicklistRole(PicklistRole ent, ) =>
      client.invoke('deletePicklistRole', ent, {  });

  /**
   * Edit PicklistItem - PicklistItem
   *
   * Requires picklistBinId, orderId, orderItemSeqId, shipGroupSeqId, inventoryItemId, lotId, quantity, productId, facilityId
   * Returns 
   */
  Future<OfResult> editPicklistItem(PicklistItem ent, {@required String lotId, @required String productId, @required String facilityId, String oldLotId}) =>
      client.invoke('editPicklistItem', ent, { 'lotId': lotId, 'productId': productId, 'facilityId': facilityId, 'oldLotId': oldLotId });

  /**
   * Gets Picklist Data - 
   *
   * Requires facilityId
   * Returns pickMoveInfoList[List], rushOrderInfo[Map]
   */
  Future<OfResult> findOrdersToPickMove({@required String facilityId, String shipmentMethodTypeId, String isRushOrder, int maxNumberOfOrders, List<dynamic> orderHeaderList, String groupByNoOfOrderItems, String groupByWarehouseArea, String groupByShippingMethod, String orderId}) =>
      client.invoke('findOrdersToPickMove', null, { 'facilityId': facilityId, 'shipmentMethodTypeId': shipmentMethodTypeId, 'isRushOrder': isRushOrder, 'maxNumberOfOrders': maxNumberOfOrders, 'orderHeaderList': orderHeaderList, 'groupByNoOfOrderItems': groupByNoOfOrderItems, 'groupByWarehouseArea': groupByWarehouseArea, 'groupByShippingMethod': groupByShippingMethod, 'orderId': orderId });

  /**
   * Get Pick And Pack Report Info - 
   *
   * Requires picklistId
   * Returns picklistInfo[Map], facilityLocationInfoList[List], noLocationProductInfoList[List]
   */
  Future<OfResult> getPickAndPackReportInfo({@required String picklistId}) =>
      client.invoke('getPickAndPackReportInfo', null, { 'picklistId': picklistId });

  /**
   * Create Picklist From Orders - 
   *
   * Requires facilityId
   * Returns viewIndex[Integer], viewSize[Integer], highIndex[Integer], lowIndex[Integer], picklistCount[Long], picklistInfoList[List]
   */
  Future<OfResult> getPicklistDisplayInfo({@required String facilityId, int viewIndex, int viewSize}) =>
      client.invoke('getPicklistDisplayInfo', null, { 'facilityId': facilityId, 'viewIndex': viewIndex, 'viewSize': viewSize });

  /**
   * Print pick sheets for orders - 
   *
   * Requires facilityId
   * Returns pickMoveInfoList[List]
   */
  Future<OfResult> printPickSheets({@required String facilityId, int maxNumberOfOrdersToPrint, String printGroupName, String groupByNoOfOrderItems, String groupByWarehouseArea, String groupByShippingMethod, String orderId}) =>
      client.invoke('printPickSheets', null, { 'facilityId': facilityId, 'maxNumberOfOrdersToPrint': maxNumberOfOrdersToPrint, 'printGroupName': printGroupName, 'groupByNoOfOrderItems': groupByNoOfOrderItems, 'groupByWarehouseArea': groupByWarehouseArea, 'groupByShippingMethod': groupByShippingMethod, 'orderId': orderId });

  /**
   * Update PicklistItem's Status to COMPLETE - PicklistItem
   *
   * Requires picklistBinId, orderId, orderItemSeqId, shipGroupSeqId, inventoryItemId, itemStatusId, quantity
   * Returns 
   */
  Future<OfResult> setPicklistItemToComplete(PicklistItem ent, ) =>
      client.invoke('setPicklistItemToComplete', ent, {  });

  /**
   * Update Picklist - Picklist
   *
   * Requires picklistId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updatePicklist(Picklist ent, ) =>
      client.invoke('updatePicklist', ent, {  });

  /**
   * Update PicklistBin - PicklistBin
   *
   * Requires picklistBinId
   * Returns 
   */
  Future<OfResult> updatePicklistBin(PicklistBin ent, ) =>
      client.invoke('updatePicklistBin', ent, {  });

  /**
   * Update PicklistItem - PicklistItem
   *
   * Requires picklistBinId, orderId, orderItemSeqId, shipGroupSeqId, inventoryItemId
   * Returns oldItemStatusId[String]
   */
  Future<OfResult> updatePicklistItem(PicklistItem ent, ) =>
      client.invoke('updatePicklistItem', ent, {  });

  /**
   * Update PicklistRole - PicklistRole
   *
   * Requires picklistId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePicklistRole(PicklistRole ent, ) =>
      client.invoke('updatePicklistRole', ent, {  });

}