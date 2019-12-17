import 'package:sagas_meta/src/models/shipment_shipment.dart';
import 'package:sagas_meta/src/models/order_return.dart';
import 'package:sagas_meta/src/models/order_order.dart';
import 'package:sagas_meta/src/models/shipment_receipt.dart';
import 'package:sagas_meta/src/models/shipment_issuance.dart';
import 'package:sagas_meta/src/models/product_price.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipment{
  final SrvClient client;
  ProductServicesShipment(this.client);

  /**
   * Add an OrderShipment and a ShipmentItem - only for sales orders - OrderShipment
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, shipmentId, quantity
   * Returns shipmentItemSeqId[String], shipmentItemSeqId[String]
   */
  Future<OfResult> addOrderShipmentToShipment(OrderShipment ent, ) =>
      client.invoke('addOrderShipmentToShipment', ent, {  });

  /**
   * Add Shipment Content To Package - ShipmentPackageContent
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentItemSeqId, quantity, quantity, shipmentPackageSeqId
   * Returns shipmentPackageSeqId[String], shipmentPackageSeqId[String]
   */
  Future<OfResult> addShipmentContentToPackage(ShipmentPackageContent ent, ) =>
      client.invoke('addShipmentContentToPackage', ent, {  });

  /**
   * 
            Release the purchase order's items assigned to the shipment but not
            actually received; it is invoked as a seca when the purchase shipment
            is marked as 'received'
         - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> balanceItemIssuancesForShipment({@required String shipmentId}) =>
      client.invoke('balanceItemIssuancesForShipment', null, { 'shipmentId': shipmentId });

  /**
   * Generic Shipment Cost Estimate Calc Service - Use ShipmentCostEstimate Entities - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> calcShipmentCostEstimate({String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('calcShipmentCostEstimate', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   * Interface for shipment estimate calc service - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> calcShipmentEstimateInterface({String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('calcShipmentEstimateInterface', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   * Cancel an ItemIssuance from Sales Shipment - 
   *
   * Requires itemIssuanceId
   * Returns canceledQuantity[BigDecimal]
   */
  Future<OfResult> cancelOrderItemIssuanceFromSalesShipment({@required String itemIssuanceId, Decimal cancelQuantity}) =>
      client.invoke('cancelOrderItemIssuanceFromSalesShipment', null, { 'itemIssuanceId': itemIssuanceId, 'cancelQuantity': cancelQuantity });

  /**
   * Cancel Received Items against a purchase order if received something incorrectly - 
   *
   * Requires receiptId
   * Returns 
   */
  Future<OfResult> cancelReceivedItems({@required String receiptId, String facilityId}) =>
      client.invoke('cancelReceivedItems', null, { 'receiptId': receiptId, 'facilityId': facilityId });

  /**
   * Check Shipment Items and cancel Item Issuance and Order Shipment - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> checkCancelItemIssuanceAndOrderShipmentFromShipment({@required String shipmentId}) =>
      client.invoke('checkCancelItemIssuanceAndOrderShipmentFromShipment', null, { 'shipmentId': shipmentId });

  /**
   * Create a new Carrier Shipment Box Type Record - CarrierShipmentBoxType
   *
   * Requires shipmentBoxTypeId, partyId
   * Returns 
   */
  Future<OfResult> createCarrierShipmentBoxType(CarrierShipmentBoxType ent, ) =>
      client.invoke('createCarrierShipmentBoxType', ent, {  });

  /**
   * Creates A CarrierShipmentMethod - CarrierShipmentMethod
   *
   * Requires shipmentMethodTypeId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createCarrierShipmentMethod(CarrierShipmentMethod ent, ) =>
      client.invoke('createCarrierShipmentMethod', ent, {  });

  /**
   * Create a Delivery record - Delivery
   *
   * Requires 
   * Returns deliveryId[String]
   */
  Future<OfResult> createDelivery(Delivery ent, ) =>
      client.invoke('createDelivery', ent, {  });

  /**
   * Create ItemIssuance - ItemIssuance
   *
   * Requires 
   * Returns itemIssuanceId[String], affectAccounting[Boolean]
   */
  Future<OfResult> createItemIssuance(ItemIssuance ent, ) =>
      client.invoke('createItemIssuance', ent, {  });

  /**
   * Create ItemIssuanceRole - ItemIssuanceRole
   *
   * Requires itemIssuanceId, partyId, roleTypeId, shipmentId
   * Returns 
   */
  Future<OfResult> createItemIssuanceRole(ItemIssuanceRole ent, {@required String shipmentId}) =>
      client.invoke('createItemIssuanceRole', ent, { 'shipmentId': shipmentId });

  /**
   * Create Shipment, ShipmentItems and OrderShipment - 
   *
   * Requires orderId
   * Returns shipmentId[String]
   */
  Future<OfResult> createOrderShipmentPlan({@required String orderId}) =>
      client.invoke('createOrderShipmentPlan', null, { 'orderId': orderId });

  /**
   * Create a QuantityBreak - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createQuantityBreak({String quantityBreakTypeId, Decimal fromQuantity, Decimal thruQuantity}) =>
      client.invoke('createQuantityBreak', null, { 'quantityBreakTypeId': quantityBreakTypeId, 'fromQuantity': fromQuantity, 'thruQuantity': thruQuantity });

  /**
   * Create a RejectionReason record - RejectionReason
   *
   * Requires 
   * Returns rejectionId[String]
   */
  Future<OfResult> createRejectionReason(RejectionReason ent, ) =>
      client.invoke('createRejectionReason', ent, {  });

  /**
   * Create Shipment - Shipment
   *
   * Requires 
   * Returns shipmentId[String]
   */
  Future<OfResult> createShipment(Shipment ent, ) =>
      client.invoke('createShipment', ent, {  });

  /**
   * Create a Return Shipment and ShipmentItems with information from ReturnHeader and ReturnItems - ReturnHeader
   *
   * Requires returnId
   * Returns shipmentId[String]
   */
  Future<OfResult> createShipmentAndItemsForReturn(ReturnHeader ent, ) =>
      client.invoke('createShipmentAndItemsForReturn', ent, {  });

  /**
   * Create a Return Shipment and ShipmentItems with primaryReturnId - Shipment
   *
   * Requires primaryReturnId, primaryReturnId
   * Returns shipmentId[String]
   */
  Future<OfResult> createShipmentAndItemsForVendorReturn(Shipment ent, ) =>
      client.invoke('createShipmentAndItemsForVendorReturn', ent, {  });

  /**
   * Create a ShipmentAttribute record - ShipmentAttribute
   *
   * Requires shipmentId, attrName
   * Returns 
   */
  Future<OfResult> createShipmentAttribute(ShipmentAttribute ent, ) =>
      client.invoke('createShipmentAttribute', ent, {  });

  /**
   * Create a ShipmentBoxType record - ShipmentBoxType
   *
   * Requires 
   * Returns shipmentBoxTypeId[String]
   */
  Future<OfResult> createShipmentBoxType(ShipmentBoxType ent, ) =>
      client.invoke('createShipmentBoxType', ent, {  });

  /**
   * Create ShipmentContactMech - ShipmentContactMech
   *
   * Requires shipmentId, shipmentContactMechTypeId
   * Returns 
   */
  Future<OfResult> createShipmentContactMech(ShipmentContactMech ent, ) =>
      client.invoke('createShipmentContactMech', ent, {  });

  /**
   * Create a ShipmentContactMechType record - ShipmentContactMechType
   *
   * Requires 
   * Returns shipmentContactMechTypeId[String]
   */
  Future<OfResult> createShipmentContactMechType(ShipmentContactMechType ent, ) =>
      client.invoke('createShipmentContactMechType', ent, {  });

  /**
   * Create a ShipmentCostEstimate record - ShipmentCostEstimate
   *
   * Requires 
   * Returns shipmentCostEstimateId[String]
   */
  Future<OfResult> createShipmentCostEstimate(ShipmentCostEstimate ent, ) =>
      client.invoke('createShipmentCostEstimate', ent, {  });

  /**
   * Create Shipment Estimate - 
   *
   * Requires productStoreShipMethId, flatPercent
   * Returns shipmentCostEstimateId[String]
   */
  Future<OfResult> createShipmentEstimate({@required String productStoreShipMethId, String toGeo, String fromGeo, String partyId, String roleTypeId, @required Decimal flatPercent, Decimal flatPrice, Decimal flatItemPrice, Decimal shippingPricePercent, String productFeatureGroupId, Decimal featurePercent, Decimal featurePrice, Decimal oversizeUnit, Decimal oversizePrice, String weightBreakId, Decimal wmin, Decimal wmax, Decimal wprice, String wuom, String quantityBreakId, Decimal qmin, Decimal qmax, Decimal qprice, String quom, String priceBreakId, Decimal pmin, Decimal pmax, Decimal pprice, String puom}) =>
      client.invoke('createShipmentEstimate', null, { 'productStoreShipMethId': productStoreShipMethId, 'toGeo': toGeo, 'fromGeo': fromGeo, 'partyId': partyId, 'roleTypeId': roleTypeId, 'flatPercent': flatPercent, 'flatPrice': flatPrice, 'flatItemPrice': flatItemPrice, 'shippingPricePercent': shippingPricePercent, 'productFeatureGroupId': productFeatureGroupId, 'featurePercent': featurePercent, 'featurePrice': featurePrice, 'oversizeUnit': oversizeUnit, 'oversizePrice': oversizePrice, 'weightBreakId': weightBreakId, 'wmin': wmin, 'wmax': wmax, 'wprice': wprice, 'wuom': wuom, 'quantityBreakId': quantityBreakId, 'qmin': qmin, 'qmax': qmax, 'qprice': qprice, 'quom': quom, 'priceBreakId': priceBreakId, 'pmin': pmin, 'pmax': pmax, 'pprice': pprice, 'puom': puom });

  /**
   * Create a Return Shipment with information from ReturnHeader fields - ReturnHeader
   *
   * Requires returnId
   * Returns shipmentId[String]
   */
  Future<OfResult> createShipmentForReturn(ReturnHeader ent, ) =>
      client.invoke('createShipmentForReturn', ent, {  });

  /**
   * Create ShipmentItem - ShipmentItem
   *
   * Requires shipmentId
   * Returns shipmentItemSeqId[String], shipmentItemSeqId[String]
   */
  Future<OfResult> createShipmentItem(ShipmentItem ent, ) =>
      client.invoke('createShipmentItem', ent, {  });

  /**
   * Create a ShipmentItemBilling - ShipmentItemBilling
   *
   * Requires shipmentId, shipmentItemSeqId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> createShipmentItemBilling(ShipmentItemBilling ent, ) =>
      client.invoke('createShipmentItemBilling', ent, {  });

  /**
   * Create a ShipmentItemFeature - ShipmentItemFeature
   *
   * Requires shipmentId, shipmentItemSeqId, productFeatureId
   * Returns shipmentId[String], shipmentItemSeqId[String], productFeatureId[String]
   */
  Future<OfResult> createShipmentItemFeature(ShipmentItemFeature ent, ) =>
      client.invoke('createShipmentItemFeature', ent, {  });

  /**
   * Creates A ShipmentMethodType - ShipmentMethodType
   *
   * Requires shipmentMethodTypeId
   * Returns 
   */
  Future<OfResult> createShipmentMethodType(ShipmentMethodType ent, ) =>
      client.invoke('createShipmentMethodType', ent, {  });

  /**
   * Create ShipmentPackage - ShipmentPackage
   *
   * Requires shipmentId
   * Returns shipmentPackageSeqId[String], shipmentPackageSeqId[String]
   */
  Future<OfResult> createShipmentPackage(ShipmentPackage ent, ) =>
      client.invoke('createShipmentPackage', ent, {  });

  /**
   * Create ShipmentPackageContent - ShipmentPackageContent
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentItemSeqId, shipmentPackageSeqId
   * Returns shipmentPackageSeqId[String], shipmentPackageSeqId[String]
   */
  Future<OfResult> createShipmentPackageContent(ShipmentPackageContent ent, ) =>
      client.invoke('createShipmentPackageContent', ent, {  });

  /**
   * Create ShipmentPackageRouteSeg - ShipmentPackageRouteSeg
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> createShipmentPackageRouteSeg(ShipmentPackageRouteSeg ent, ) =>
      client.invoke('createShipmentPackageRouteSeg', ent, {  });

  /**
   * Creates a ShipmentReceipt Record - 
   *
   * Requires inventoryItemId, productId, quantityAccepted, quantityRejected
   * Returns receiptId[String], affectAccounting[Boolean]
   */
  Future<OfResult> createShipmentReceipt({@required String inventoryItemId, @required String productId, String shipmentId, String shipmentItemSeqId, String shipmentPackageSeqId, String orderId, String orderItemSeqId, String returnId, String returnItemSeqId, String rejectionId, String receivedByUserLoginId, DateTime datetimeReceived, String itemDescription, @required Decimal quantityAccepted, @required Decimal quantityRejected, String inventoryItemDetailSeqId}) =>
      client.invoke('createShipmentReceipt', null, { 'inventoryItemId': inventoryItemId, 'productId': productId, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'shipmentPackageSeqId': shipmentPackageSeqId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'rejectionId': rejectionId, 'receivedByUserLoginId': receivedByUserLoginId, 'datetimeReceived': datetimeReceived, 'itemDescription': itemDescription, 'quantityAccepted': quantityAccepted, 'quantityRejected': quantityRejected, 'inventoryItemDetailSeqId': inventoryItemDetailSeqId });

  /**
   * Create a ShipmentReceipt Role entry - 
   *
   * Requires receiptId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createShipmentReceiptRole({@required String receiptId, @required String partyId, @required String roleTypeId}) =>
      client.invoke('createShipmentReceiptRole', null, { 'receiptId': receiptId, 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Create ShipmentRouteSegment - ShipmentRouteSegment
   *
   * Requires shipmentId
   * Returns shipmentRouteSegmentId[String], shipmentRouteSegmentId[String]
   */
  Future<OfResult> createShipmentRouteSegment(ShipmentRouteSegment ent, ) =>
      client.invoke('createShipmentRouteSegment', ent, {  });

  /**
   * Create Shipment Status - ShipmentStatus
   *
   * Requires statusId, shipmentId
   * Returns 
   */
  Future<OfResult> createShipmentStatus(ShipmentStatus ent, ) =>
      client.invoke('createShipmentStatus', ent, {  });

  /**
   * Create a ShipmentTypeAttr Record - ShipmentTypeAttr
   *
   * Requires shipmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createShipmentTypeAttr(ShipmentTypeAttr ent, ) =>
      client.invoke('createShipmentTypeAttr', ent, {  });

  /**
   * Create a ShippingDocument - ShippingDocument
   *
   * Requires documentId
   * Returns 
   */
  Future<OfResult> createShippingDocument(ShippingDocument ent, ) =>
      client.invoke('createShippingDocument', ent, {  });

  /**
   * Delete an existing Carrier Shipment Box Type Record - CarrierShipmentBoxType
   *
   * Requires shipmentBoxTypeId, partyId
   * Returns 
   */
  Future<OfResult> deleteCarrierShipmentBoxType(CarrierShipmentBoxType ent, ) =>
      client.invoke('deleteCarrierShipmentBoxType', ent, {  });

  /**
   * Deletes A CarrierShipmentMethod - CarrierShipmentMethod
   *
   * Requires shipmentMethodTypeId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteCarrierShipmentMethod(CarrierShipmentMethod ent, ) =>
      client.invoke('deleteCarrierShipmentMethod', ent, {  });

  /**
   * Delete a Delivery record - Delivery
   *
   * Requires deliveryId
   * Returns 
   */
  Future<OfResult> deleteDelivery(Delivery ent, ) =>
      client.invoke('deleteDelivery', ent, {  });

  /**
   * Delete ItemIssuance - ItemIssuance
   *
   * Requires itemIssuanceId
   * Returns 
   */
  Future<OfResult> deleteItemIssuance(ItemIssuance ent, ) =>
      client.invoke('deleteItemIssuance', ent, {  });

  /**
   * Delete ItemIssuanceRole - ItemIssuanceRole
   *
   * Requires itemIssuanceId, partyId, roleTypeId, shipmentId
   * Returns 
   */
  Future<OfResult> deleteItemIssuanceRole(ItemIssuanceRole ent, {@required String shipmentId}) =>
      client.invoke('deleteItemIssuanceRole', ent, { 'shipmentId': shipmentId });

  /**
   * Delete a QuantityBreak - 
   *
   * Requires quantityBreakId
   * Returns 
   */
  Future<OfResult> deleteQuantityBreak({@required String quantityBreakId}) =>
      client.invoke('deleteQuantityBreak', null, { 'quantityBreakId': quantityBreakId });

  /**
   * Delete a RejectionReason record - RejectionReason
   *
   * Requires rejectionId
   * Returns 
   */
  Future<OfResult> deleteRejectionReason(RejectionReason ent, ) =>
      client.invoke('deleteRejectionReason', ent, {  });

  /**
   * Delete Shipment - Shipment
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> deleteShipment(Shipment ent, ) =>
      client.invoke('deleteShipment', ent, {  });

  /**
   * Delete a ShipmentAttribute record - ShipmentAttribute
   *
   * Requires shipmentId, attrName
   * Returns 
   */
  Future<OfResult> deleteShipmentAttribute(ShipmentAttribute ent, ) =>
      client.invoke('deleteShipmentAttribute', ent, {  });

  /**
   * Delete a ShipmentBoxType record - ShipmentBoxType
   *
   * Requires shipmentBoxTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentBoxType(ShipmentBoxType ent, ) =>
      client.invoke('deleteShipmentBoxType', ent, {  });

  /**
   * Delete ShipmentContactMech - ShipmentContactMech
   *
   * Requires shipmentId, shipmentContactMechTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentContactMech(ShipmentContactMech ent, ) =>
      client.invoke('deleteShipmentContactMech', ent, {  });

  /**
   * Delete a ShipmentContactMechType record - ShipmentContactMechType
   *
   * Requires shipmentContactMechTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentContactMechType(ShipmentContactMechType ent, ) =>
      client.invoke('deleteShipmentContactMechType', ent, {  });

  /**
   * Delete a ShipmentCostEstimate record - ShipmentCostEstimate
   *
   * Requires shipmentCostEstimateId
   * Returns 
   */
  Future<OfResult> deleteShipmentCostEstimate(ShipmentCostEstimate ent, ) =>
      client.invoke('deleteShipmentCostEstimate', ent, {  });

  /**
   * Delete ShipmentItem - ShipmentItem
   *
   * Requires shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> deleteShipmentItem(ShipmentItem ent, ) =>
      client.invoke('deleteShipmentItem', ent, {  });

  /**
   * Delete a ShipmentItemBilling - ShipmentItemBilling
   *
   * Requires shipmentId, shipmentItemSeqId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> deleteShipmentItemBilling(ShipmentItemBilling ent, ) =>
      client.invoke('deleteShipmentItemBilling', ent, {  });

  /**
   * Delete a ShipmentItemFeature - ShipmentItemFeature
   *
   * Requires shipmentId, shipmentItemSeqId, productFeatureId
   * Returns 
   */
  Future<OfResult> deleteShipmentItemFeature(ShipmentItemFeature ent, ) =>
      client.invoke('deleteShipmentItemFeature', ent, {  });

  /**
   * Deletes A ShipmentMethodType - ShipmentMethodType
   *
   * Requires shipmentMethodTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentMethodType(ShipmentMethodType ent, ) =>
      client.invoke('deleteShipmentMethodType', ent, {  });

  /**
   * Delete ShipmentPackage - ShipmentPackage
   *
   * Requires shipmentId, shipmentPackageSeqId
   * Returns 
   */
  Future<OfResult> deleteShipmentPackage(ShipmentPackage ent, ) =>
      client.invoke('deleteShipmentPackage', ent, {  });

  /**
   * Delete ShipmentPackageContent - ShipmentPackageContent
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> deleteShipmentPackageContent(ShipmentPackageContent ent, ) =>
      client.invoke('deleteShipmentPackageContent', ent, {  });

  /**
   * Delete ShipmentPackageRouteSeg - ShipmentPackageRouteSeg
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> deleteShipmentPackageRouteSeg(ShipmentPackageRouteSeg ent, ) =>
      client.invoke('deleteShipmentPackageRouteSeg', ent, {  });

  /**
   * Delete a ShipmentReceipt record - ShipmentReceipt
   *
   * Requires receiptId
   * Returns 
   */
  Future<OfResult> deleteShipmentReceipt(ShipmentReceipt ent, ) =>
      client.invoke('deleteShipmentReceipt', ent, {  });

  /**
   * Delete ShipmentRouteSegment - ShipmentRouteSegment
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> deleteShipmentRouteSegment(ShipmentRouteSegment ent, ) =>
      client.invoke('deleteShipmentRouteSegment', ent, {  });

  /**
   * Delete a ShipmentTypeAttr Record - ShipmentTypeAttr
   *
   * Requires shipmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteShipmentTypeAttr(ShipmentTypeAttr ent, ) =>
      client.invoke('deleteShipmentTypeAttr', ent, {  });

  /**
   * Delete a ShippingDocument - ShippingDocument
   *
   * Requires documentId
   * Returns 
   */
  Future<OfResult> deleteShippingDocument(ShippingDocument ent, ) =>
      client.invoke('deleteShippingDocument', ent, {  });

  /**
   * Duplicates a shipment route segment and creates the new route segment in the NOT_STARTED status - ShipmentRouteSegment
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns newShipmentRouteSegmentId[String]
   */
  Future<OfResult> duplicateShipmentRouteSegment(ShipmentRouteSegment ent, ) =>
      client.invoke('duplicateShipmentRouteSegment', ent, {  });

  /**
   * get the order item quantity still not put in shipments - OrderItem
   *
   * Requires orderId, orderItemSeqId
   * Returns remainingQuantity[BigDecimal]
   */
  Future<OfResult> getQuantityForShipment(OrderItem ent, ) =>
      client.invoke('getQuantityForShipment', ent, {  });

  /**
   * Calculates the total value of a shipment package by totalling the results of the getOrderItemInvoicedAmountAndQuantity
            service for the orderItem related to each ShipmentPackageContent, prorated by the quantity of the orderItem issued to the
            ShipmentPackageContent. Value is converted according to the incoming currencyUomId. - 
   *
   * Requires shipmentId, shipmentPackageSeqId, currencyUomId
   * Returns packageValue[BigDecimal]
   */
  Future<OfResult> getShipmentPackageValueFromOrders({@required String shipmentId, @required String shipmentPackageSeqId, @required String currencyUomId}) =>
      client.invoke('getShipmentPackageValueFromOrders', null, { 'shipmentId': shipmentId, 'shipmentPackageSeqId': shipmentPackageSeqId, 'currencyUomId': currencyUomId });

  /**
   * ShipmentReceipt Interface - 
   *
   * Requires inventoryItemId, productId, quantityAccepted, quantityRejected, inventoryItemId, productId, quantityAccepted, quantityRejected
   * Returns 
   */
  Future<OfResult> interfaceShipmentReceipt({@required String inventoryItemId, @required String productId, String shipmentId, String shipmentItemSeqId, String shipmentPackageSeqId, String orderId, String orderItemSeqId, String returnId, String returnItemSeqId, String rejectionId, String receivedByUserLoginId, DateTime datetimeReceived, String itemDescription, @required Decimal quantityAccepted, @required Decimal quantityRejected, String inventoryItemDetailSeqId}) =>
      client.invoke('interfaceShipmentReceipt', null, { 'inventoryItemId': inventoryItemId, 'productId': productId, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'shipmentPackageSeqId': shipmentPackageSeqId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'rejectionId': rejectionId, 'receivedByUserLoginId': receivedByUserLoginId, 'datetimeReceived': datetimeReceived, 'itemDescription': itemDescription, 'quantityAccepted': quantityAccepted, 'quantityRejected': quantityRejected, 'inventoryItemDetailSeqId': inventoryItemDetailSeqId });

  /**
   * Interface for ShipmentReceiptRole - 
   *
   * Requires receiptId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> interfaceShipmentReceiptRole({@required String receiptId, @required String partyId, @required String roleTypeId}) =>
      client.invoke('interfaceShipmentReceiptRole', null, { 'receiptId': receiptId, 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Issue an InventoryItem to a FixedAssetMaint - for conversion to use as supples/parts - 
   *
   * Requires inventoryItemId, fixedAssetId, maintHistSeqId, quantity
   * Returns itemIssuanceId[String]
   */
  Future<OfResult> issueInventoryItemToFixedAssetMaint({@required String inventoryItemId, @required String fixedAssetId, @required String maintHistSeqId, @required Decimal quantity}) =>
      client.invoke('issueInventoryItemToFixedAssetMaint', null, { 'inventoryItemId': inventoryItemId, 'fixedAssetId': fixedAssetId, 'maintHistSeqId': maintHistSeqId, 'quantity': quantity });

  /**
   * Issue an InventoryItem to a Shipment - 
   *
   * Requires shipmentId, shipmentItemSeqId, inventoryItemId, quantity, totalIssuedQty
   * Returns itemIssuanceId[String]
   */
  Future<OfResult> issueInventoryItemToShipment({@required String shipmentId, @required String shipmentItemSeqId, @required String inventoryItemId, @required Decimal quantity, @required Decimal totalIssuedQty}) =>
      client.invoke('issueInventoryItemToShipment', null, { 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'inventoryItemId': inventoryItemId, 'quantity': quantity, 'totalIssuedQty': totalIssuedQty });

  /**
   * Add an OrderItemShipGrpInvRes to a Shipment - only for sales orders - 
   *
   * Requires shipmentId, orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId, quantity
   * Returns shipmentItemSeqId[String], itemIssuanceId[String]
   */
  Future<OfResult> issueOrderItemShipGrpInvResToShipment({@required String shipmentId, @required String orderId, @required String shipGroupSeqId, @required String orderItemSeqId, @required String inventoryItemId, @required Decimal quantity, DateTime eventDate}) =>
      client.invoke('issueOrderItemShipGrpInvResToShipment', null, { 'shipmentId': shipmentId, 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'quantity': quantity, 'eventDate': eventDate });

  /**
   * Issue an OrderItem to a Shipment - only for non-sales orders - 
   *
   * Requires shipmentId, orderId, orderItemSeqId, shipGroupSeqId, quantity
   * Returns shipmentItemSeqId[String]
   */
  Future<OfResult> issueOrderItemToShipment({@required String shipmentId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity}) =>
      client.invoke('issueOrderItemToShipment', null, { 'shipmentId': shipmentId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity });

  /**
   * Issues order item quantity specified to the shipment, then receives inventory for that item and quantity - 
   *
   * Requires shipmentId, orderId, orderItemSeqId, shipGroupSeqId, quantity, inventoryItemTypeId, facilityId, quantityAccepted, quantityRejected
   * Returns shipmentItemSeqId[String], inventoryItemId[String]
   */
  Future<OfResult> issueOrderItemToShipmentAndReceiveAgainstPO({@required String shipmentId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity, String shipmentItemSeqId, @required String inventoryItemTypeId, String productId, String partyId, String ownerPartyId, String statusId, DateTime datetimeReceived, DateTime datetimeManufactured, DateTime expireDate, @required String facilityId, String containerId, String lotId, String uomId, String binNumber, String locationSeqId, String comments, Decimal accountingQuantityTotal, Decimal oldQuantityOnHand, Decimal oldAvailableToPromise, String serialNumber, String softIdentifier, String activationNumber, DateTime activationValidThru, Decimal unitCost, String currencyUomId, String fixedAssetId, DateTime effectiveDate, Decimal quantityOnHandDiff, Decimal availableToPromiseDiff, Decimal accountingQuantityDiff, String returnId, String returnItemSeqId, String workEffortId, String maintHistSeqId, String itemIssuanceId, String receiptId, String physicalInventoryId, String reasonEnumId, String description, String inventoryItemId, String shipmentPackageSeqId, String rejectionId, String receivedByUserLoginId, String itemDescription, @required Decimal quantityAccepted, @required Decimal quantityRejected, String inventoryItemDetailSeqId, String priorityOrderId, String priorityOrderItemSeqId, String currentInventoryItemId, String orderCurrencyUnitPrice}) =>
      client.invoke('issueOrderItemToShipmentAndReceiveAgainstPO', null, { 'shipmentId': shipmentId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'shipmentItemSeqId': shipmentItemSeqId, 'inventoryItemTypeId': inventoryItemTypeId, 'productId': productId, 'partyId': partyId, 'ownerPartyId': ownerPartyId, 'statusId': statusId, 'datetimeReceived': datetimeReceived, 'datetimeManufactured': datetimeManufactured, 'expireDate': expireDate, 'facilityId': facilityId, 'containerId': containerId, 'lotId': lotId, 'uomId': uomId, 'binNumber': binNumber, 'locationSeqId': locationSeqId, 'comments': comments, 'accountingQuantityTotal': accountingQuantityTotal, 'oldQuantityOnHand': oldQuantityOnHand, 'oldAvailableToPromise': oldAvailableToPromise, 'serialNumber': serialNumber, 'softIdentifier': softIdentifier, 'activationNumber': activationNumber, 'activationValidThru': activationValidThru, 'unitCost': unitCost, 'currencyUomId': currencyUomId, 'fixedAssetId': fixedAssetId, 'effectiveDate': effectiveDate, 'quantityOnHandDiff': quantityOnHandDiff, 'availableToPromiseDiff': availableToPromiseDiff, 'accountingQuantityDiff': accountingQuantityDiff, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'workEffortId': workEffortId, 'maintHistSeqId': maintHistSeqId, 'itemIssuanceId': itemIssuanceId, 'receiptId': receiptId, 'physicalInventoryId': physicalInventoryId, 'reasonEnumId': reasonEnumId, 'description': description, 'inventoryItemId': inventoryItemId, 'shipmentPackageSeqId': shipmentPackageSeqId, 'rejectionId': rejectionId, 'receivedByUserLoginId': receivedByUserLoginId, 'itemDescription': itemDescription, 'quantityAccepted': quantityAccepted, 'quantityRejected': quantityRejected, 'inventoryItemDetailSeqId': inventoryItemDetailSeqId, 'priorityOrderId': priorityOrderId, 'priorityOrderItemSeqId': priorityOrderItemSeqId, 'currentInventoryItemId': currentInventoryItemId, 'orderCurrencyUnitPrice': orderCurrencyUnitPrice });

  /**
   *  - 
   *
   * Requires inventoryItemId, shipmentId, orderId, orderItemSeqId, shipGroupSeqId, promisedDatetime
   * Returns 
   */
  Future<OfResult> issueSerializedInvToShipmentPackageAndSetTracking({@required String inventoryItemId, @required String shipmentId, String productId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, Decimal quantity, DateTime reservedDatetime, String requireInventory, String reserveOrderEnumId, int sequenceId, String serialNumber, String trackingNum, String originFacilityId, Decimal quantityNotReserved, @required DateTime promisedDatetime, String shipmentPackageSeqId}) =>
      client.invoke('issueSerializedInvToShipmentPackageAndSetTracking', null, { 'inventoryItemId': inventoryItemId, 'shipmentId': shipmentId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'reservedDatetime': reservedDatetime, 'requireInventory': requireInventory, 'reserveOrderEnumId': reserveOrderEnumId, 'sequenceId': sequenceId, 'serialNumber': serialNumber, 'trackingNum': trackingNum, 'originFacilityId': originFacilityId, 'quantityNotReserved': quantityNotReserved, 'promisedDatetime': promisedDatetime, 'shipmentPackageSeqId': shipmentPackageSeqId });

  /**
   * Creates a drop shipment for a ship group and calls updateShipment twice in succession to set
            shipment status to PURCH_SHIP_SHIPPED and then to PURCH_SHIP_RECEIVED - 
   *
   * Requires orderId, shipGroupSeqId
   * Returns shipmentId[String]
   */
  Future<OfResult> quickDropShipOrder({@required String orderId, @required String shipGroupSeqId}) =>
      client.invoke('quickDropShipOrder', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId });

  /**
   *  - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> quickReceiveReturn({@required String returnId, String inventoryItemTypeId, String statusId}) =>
      client.invoke('quickReceiveReturn', null, { 'returnId': returnId, 'inventoryItemTypeId': inventoryItemTypeId, 'statusId': statusId });

  /**
   * Schedules a shipment route segment with the carrier and service level in the ShipmentRouteSegment entity.
          Actual scheduling is done by an async service, and this does not return an error, so it can be called in a multi-form,
          and one failed shipment scheduling does not cause other shipments to be rolled back.
         - ShipmentRouteSegment
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> quickScheduleShipmentRouteSegment(ShipmentRouteSegment ent, ) =>
      client.invoke('quickScheduleShipmentRouteSegment', ent, {  });

  /**
   * Quick Ships An Entire Order Creating One Shipment Per Facility and Ship Group.  All approved order items are
          automatically issued in full and put into one package.  The shipment is created in the INPUT status and then updated to
          PACKED and SHIPPED.
         - 
   *
   * Requires orderId
   * Returns shipmentShipGroupFacilityList[List]
   */
  Future<OfResult> quickShipEntireOrder({@required String orderId, String originFacilityId, String setPackedOnly, DateTime eventDate}) =>
      client.invoke('quickShipEntireOrder', null, { 'orderId': orderId, 'originFacilityId': originFacilityId, 'setPackedOnly': setPackedOnly, 'eventDate': eventDate });

  /**
   * Quick Ships An Order By Item - 
   *
   * Requires orderId, shipGroupSeqId, itemShipList
   * Returns shipmentId[String]
   */
  Future<OfResult> quickShipOrderByItem({@required String orderId, @required String shipGroupSeqId, @required List<dynamic> itemShipList, String originFacilityId, String setPackedOnly}) =>
      client.invoke('quickShipOrderByItem', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'itemShipList': itemShipList, 'originFacilityId': originFacilityId, 'setPackedOnly': setPackedOnly });

  /**
   * The mirror of quickShipEntireOrder, this service automatically creates shipments for an entire purchase order.
          All order items on each ship group is created as a Shipment.  All items on a Shipment are automatically issued to a Package.
          The shipment's status is first set to CREATED and then set as SHIPPED.  The facilityId is used to set the destinationFacilityId
          of the Shipment.
         - 
   *
   * Requires orderId, facilityId
   * Returns 
   */
  Future<OfResult> quickShipPurchaseOrder({@required String orderId, @required String facilityId}) =>
      client.invoke('quickShipPurchaseOrder', null, { 'orderId': orderId, 'facilityId': facilityId });

  /**
   * Receive Inventory In Warehouse - 
   *
   * Requires inventoryItemTypeId, facilityId, productId, quantityAccepted, quantityRejected, quantityAccepted, quantityRejected, inventoryItemTypeId, productId, facilityId
   * Returns inventoryItemId[String]
   */
  Future<OfResult> receiveInventoryProduct({@required String inventoryItemTypeId, String productId, String partyId, String ownerPartyId, String statusId, DateTime datetimeReceived, DateTime datetimeManufactured, DateTime expireDate, @required String facilityId, String containerId, String lotId, String uomId, String binNumber, String locationSeqId, String comments, Decimal accountingQuantityTotal, Decimal oldQuantityOnHand, Decimal oldAvailableToPromise, String serialNumber, String softIdentifier, String activationNumber, DateTime activationValidThru, Decimal unitCost, String currencyUomId, String fixedAssetId, DateTime effectiveDate, Decimal quantityOnHandDiff, Decimal availableToPromiseDiff, Decimal accountingQuantityDiff, String orderId, String orderItemSeqId, String shipGroupSeqId, String shipmentId, String shipmentItemSeqId, String returnId, String returnItemSeqId, String workEffortId, String maintHistSeqId, String itemIssuanceId, String receiptId, String physicalInventoryId, String reasonEnumId, String description, String inventoryItemId, String shipmentPackageSeqId, String rejectionId, String receivedByUserLoginId, String itemDescription, @required Decimal quantityAccepted, @required Decimal quantityRejected, String inventoryItemDetailSeqId, String priorityOrderId, String priorityOrderItemSeqId, String currentInventoryItemId, String orderCurrencyUnitPrice}) =>
      client.invoke('receiveInventoryProduct', null, { 'inventoryItemTypeId': inventoryItemTypeId, 'productId': productId, 'partyId': partyId, 'ownerPartyId': ownerPartyId, 'statusId': statusId, 'datetimeReceived': datetimeReceived, 'datetimeManufactured': datetimeManufactured, 'expireDate': expireDate, 'facilityId': facilityId, 'containerId': containerId, 'lotId': lotId, 'uomId': uomId, 'binNumber': binNumber, 'locationSeqId': locationSeqId, 'comments': comments, 'accountingQuantityTotal': accountingQuantityTotal, 'oldQuantityOnHand': oldQuantityOnHand, 'oldAvailableToPromise': oldAvailableToPromise, 'serialNumber': serialNumber, 'softIdentifier': softIdentifier, 'activationNumber': activationNumber, 'activationValidThru': activationValidThru, 'unitCost': unitCost, 'currencyUomId': currencyUomId, 'fixedAssetId': fixedAssetId, 'effectiveDate': effectiveDate, 'quantityOnHandDiff': quantityOnHandDiff, 'availableToPromiseDiff': availableToPromiseDiff, 'accountingQuantityDiff': accountingQuantityDiff, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'returnId': returnId, 'returnItemSeqId': returnItemSeqId, 'workEffortId': workEffortId, 'maintHistSeqId': maintHistSeqId, 'itemIssuanceId': itemIssuanceId, 'receiptId': receiptId, 'physicalInventoryId': physicalInventoryId, 'reasonEnumId': reasonEnumId, 'description': description, 'inventoryItemId': inventoryItemId, 'shipmentPackageSeqId': shipmentPackageSeqId, 'rejectionId': rejectionId, 'receivedByUserLoginId': receivedByUserLoginId, 'itemDescription': itemDescription, 'quantityAccepted': quantityAccepted, 'quantityRejected': quantityRejected, 'inventoryItemDetailSeqId': inventoryItemDetailSeqId, 'priorityOrderId': priorityOrderId, 'priorityOrderItemSeqId': priorityOrderItemSeqId, 'currentInventoryItemId': currentInventoryItemId, 'orderCurrencyUnitPrice': orderCurrencyUnitPrice });

  /**
   * Delete an OrderShipment and updates the ShipmentItem - 
   *
   * Requires orderId, orderItemSeqId, shipGroupSeqId, shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> removeOrderShipmentFromShipment({@required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required String shipmentId, @required String shipmentItemSeqId}) =>
      client.invoke('removeOrderShipmentFromShipment', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId });

  /**
   * Remove Shipment Estimate - 
   *
   * Requires shipmentCostEstimateId
   * Returns 
   */
  Future<OfResult> removeShipmentEstimate({@required String shipmentCostEstimateId}) =>
      client.invoke('removeShipmentEstimate', null, { 'shipmentCostEstimateId': shipmentCostEstimateId });

  /**
   * Remove a ShipmentReceipt Role entry - 
   *
   * Requires receiptId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeShipmentReceiptRole({@required String receiptId, @required String partyId, @required String roleTypeId}) =>
      client.invoke('removeShipmentReceiptRole', null, { 'receiptId': receiptId, 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Return InventoryItem Issued to a FixedAssetMaint - for conversion to use as supples/parts - 
   *
   * Requires itemIssuanceId
   * Returns 
   */
  Future<OfResult> returnInventoryItemIssuedToFixedAssetMaint({@required String itemIssuanceId}) =>
      client.invoke('returnInventoryItemIssuedToFixedAssetMaint', null, { 'itemIssuanceId': itemIssuanceId });

  /**
   * Send a notification on Shipment Complete - 
   *
   * Requires shipmentId
   * Returns body[String], subject[String], orderId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String]
   */
  Future<OfResult> sendShipmentCompleteNotification({@required String shipmentId, String sendTo, String screenUri, String comments}) =>
      client.invoke('sendShipmentCompleteNotification', null, { 'shipmentId': shipmentId, 'sendTo': sendTo, 'screenUri': screenUri, 'comments': comments });

  /**
   * Send Shipment Scheduled Notification - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> sendShipmentScheduledNotification({@required String shipmentId}) =>
      client.invoke('sendShipmentScheduledNotification', null, { 'shipmentId': shipmentId });

  /**
   * Set Shipment Settings From Facilities - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> setShipmentSettingsFromFacilities({@required String shipmentId}) =>
      client.invoke('setShipmentSettingsFromFacilities', null, { 'shipmentId': shipmentId });

  /**
   * Set Shipment Settings From Primary Order - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> setShipmentSettingsFromPrimaryOrder({@required String shipmentId}) =>
      client.invoke('setShipmentSettingsFromPrimaryOrder', null, { 'shipmentId': shipmentId });

  /**
   * Move a shipment into Packed status and then to Shipped status - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> setShipmentStatusPackedAndShipped({@required String shipmentId}) =>
      client.invoke('setShipmentStatusPackedAndShipped', null, { 'shipmentId': shipmentId });

  /**
   * Splits the specified ShipmentItem creating a new ShipmentItem with the given newItemQuantity.
            NOTE that this does manage OrderShipment records, but NOTHING else, so it is only to be used for Shipment
            Plan stuff BEFORE the items are issued, shipment packed, etc. - 
   *
   * Requires shipmentId, shipmentItemSeqId, newItemQuantity
   * Returns newShipmentItemSeqId[String]
   */
  Future<OfResult> splitShipmentItemByQuantity({@required String shipmentId, @required String shipmentItemSeqId, @required Decimal newItemQuantity}) =>
      client.invoke('splitShipmentItemByQuantity', null, { 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'newItemQuantity': newItemQuantity });

  /**
   * Update a Carrier Shipment Box Type - CarrierShipmentBoxType
   *
   * Requires shipmentBoxTypeId, partyId
   * Returns 
   */
  Future<OfResult> updateCarrierShipmentBoxType(CarrierShipmentBoxType ent, ) =>
      client.invoke('updateCarrierShipmentBoxType', ent, {  });

  /**
   * Updates A CarrierShipmentMethod - CarrierShipmentMethod
   *
   * Requires shipmentMethodTypeId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> updateCarrierShipmentMethod(CarrierShipmentMethod ent, ) =>
      client.invoke('updateCarrierShipmentMethod', ent, {  });

  /**
   * Update a Delivery record - Delivery
   *
   * Requires deliveryId
   * Returns 
   */
  Future<OfResult> updateDelivery(Delivery ent, ) =>
      client.invoke('updateDelivery', ent, {  });

  /**
   * Update issuance, shipment and order items if quantity received is higher than quantity on purchase order - 
   *
   * Requires orderId, orderItemSeqId, quantityAccepted
   * Returns 
   */
  Future<OfResult> updateIssuanceShipmentAndPoOnReceiveInventory({@required String orderId, @required String orderItemSeqId, @required Decimal quantityAccepted, String shipmentId, String shipmentItemSeqId, String unitCost, String orderCurrencyUnitPrice}) =>
      client.invoke('updateIssuanceShipmentAndPoOnReceiveInventory', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'quantityAccepted': quantityAccepted, 'shipmentId': shipmentId, 'shipmentItemSeqId': shipmentItemSeqId, 'unitCost': unitCost, 'orderCurrencyUnitPrice': orderCurrencyUnitPrice });

  /**
   * Update ItemIssuance - ItemIssuance
   *
   * Requires itemIssuanceId
   * Returns 
   */
  Future<OfResult> updateItemIssuance(ItemIssuance ent, ) =>
      client.invoke('updateItemIssuance', ent, {  });

  /**
   * 
          Whenever a ShipmentReceipt is generated, check the Shipment associated
          with it to see if all items were received. If so, change its status to
          PURCH_SHIP_RECEIVED. The check is accomplished by counting the
          products shipped (from ShipmentAndItem) and matching them with the
          products received (from ShipmentReceipt).
         - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> updatePurchaseShipmentFromReceipt({@required String shipmentId}) =>
      client.invoke('updatePurchaseShipmentFromReceipt', null, { 'shipmentId': shipmentId });

  /**
   * Update a QuantityBreak - QuantityBreak
   *
   * Requires quantityBreakId
   * Returns 
   */
  Future<OfResult> updateQuantityBreak(QuantityBreak ent, ) =>
      client.invoke('updateQuantityBreak', ent, {  });

  /**
   * Update a RejectionReason record - RejectionReason
   *
   * Requires rejectionId
   * Returns 
   */
  Future<OfResult> updateRejectionReason(RejectionReason ent, ) =>
      client.invoke('updateRejectionReason', ent, {  });

  /**
   * Update Shipment - Shipment
   *
   * Requires shipmentId
   * Returns shipmentId[String], shipmentTypeId[String], oldStatusId[String], oldPrimaryOrderId[String], oldOriginFacilityId[String], oldDestinationFacilityId[String]
   */
  Future<OfResult> updateShipment(Shipment ent, {DateTime eventDate}) =>
      client.invoke('updateShipment', ent, { 'eventDate': eventDate });

  /**
   * Update a ShipmentAttribute record - ShipmentAttribute
   *
   * Requires shipmentId, attrName
   * Returns 
   */
  Future<OfResult> updateShipmentAttribute(ShipmentAttribute ent, ) =>
      client.invoke('updateShipmentAttribute', ent, {  });

  /**
   * Update a ShipmentBoxType record - ShipmentBoxType
   *
   * Requires shipmentBoxTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentBoxType(ShipmentBoxType ent, ) =>
      client.invoke('updateShipmentBoxType', ent, {  });

  /**
   * Update ShipmentContactMech - ShipmentContactMech
   *
   * Requires shipmentId, shipmentContactMechTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentContactMech(ShipmentContactMech ent, ) =>
      client.invoke('updateShipmentContactMech', ent, {  });

  /**
   * Update a ShipmentContactMechType record - ShipmentContactMechType
   *
   * Requires shipmentContactMechTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentContactMechType(ShipmentContactMechType ent, ) =>
      client.invoke('updateShipmentContactMechType', ent, {  });

  /**
   * Update a ShipmentCostEstimate record - ShipmentCostEstimate
   *
   * Requires shipmentCostEstimateId
   * Returns 
   */
  Future<OfResult> updateShipmentCostEstimate(ShipmentCostEstimate ent, ) =>
      client.invoke('updateShipmentCostEstimate', ent, {  });

  /**
   * Update ShipmentItem - ShipmentItem
   *
   * Requires shipmentId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> updateShipmentItem(ShipmentItem ent, ) =>
      client.invoke('updateShipmentItem', ent, {  });

  /**
   * Update a ShipmentItemBilling - ShipmentItemBilling
   *
   * Requires shipmentId, shipmentItemSeqId, invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> updateShipmentItemBilling(ShipmentItemBilling ent, ) =>
      client.invoke('updateShipmentItemBilling', ent, {  });

  /**
   * Updates A ShipmentMethodType - ShipmentMethodType
   *
   * Requires shipmentMethodTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentMethodType(ShipmentMethodType ent, ) =>
      client.invoke('updateShipmentMethodType', ent, {  });

  /**
   * Update ShipmentPackage - ShipmentPackage
   *
   * Requires shipmentId, shipmentPackageSeqId
   * Returns 
   */
  Future<OfResult> updateShipmentPackage(ShipmentPackage ent, ) =>
      client.invoke('updateShipmentPackage', ent, {  });

  /**
   * Update ShipmentPackageContent - ShipmentPackageContent
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentItemSeqId
   * Returns 
   */
  Future<OfResult> updateShipmentPackageContent(ShipmentPackageContent ent, ) =>
      client.invoke('updateShipmentPackageContent', ent, {  });

  /**
   * Update ShipmentPackageRouteSeg - ShipmentPackageRouteSeg
   *
   * Requires shipmentId, shipmentPackageSeqId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> updateShipmentPackageRouteSeg(ShipmentPackageRouteSeg ent, ) =>
      client.invoke('updateShipmentPackageRouteSeg', ent, {  });

  /**
   * Update a ShipmentReceipt record - ShipmentReceipt
   *
   * Requires receiptId
   * Returns 
   */
  Future<OfResult> updateShipmentReceipt(ShipmentReceipt ent, ) =>
      client.invoke('updateShipmentReceipt', ent, {  });

  /**
   * Update ShipmentRouteSegment - ShipmentRouteSegment
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> updateShipmentRouteSegment(ShipmentRouteSegment ent, ) =>
      client.invoke('updateShipmentRouteSegment', ent, {  });

  /**
   * Update a ShipmentTypeAttr Record - ShipmentTypeAttr
   *
   * Requires shipmentTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateShipmentTypeAttr(ShipmentTypeAttr ent, ) =>
      client.invoke('updateShipmentTypeAttr', ent, {  });

  /**
   * Update a ShippingDocument - ShippingDocument
   *
   * Requires documentId
   * Returns 
   */
  Future<OfResult> updateShippingDocument(ShippingDocument ent, ) =>
      client.invoke('updateShippingDocument', ent, {  });

}