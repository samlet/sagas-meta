import 'package:sagas_meta/src/models/product_store.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesStore{
  final SrvClient client;
  ProductServicesStore(this.client);

  /**
   * Check if a productStoreGroupId with a primaryParentGroupId has related productStoreGroupRollup or for first ProductStoreGroupRollup on a ProductStoreGroup set relation on primaryParentGroupId - 
   *
   * Requires productStoreGroupId
   * Returns 
   */
  Future<OfResult> checkProductStoreGroupRollup({@required String productStoreGroupId, String primaryParentGroupId, String parentGroupId, String fromDate}) =>
      client.invoke('checkProductStoreGroupRollup', null, { 'productStoreGroupId': productStoreGroupId, 'primaryParentGroupId': primaryParentGroupId, 'parentGroupId': parentGroupId, 'fromDate': fromDate });

  /**
   * Create a Product Store - ProductStore
   *
   * Requires storeName, storeName
   * Returns productStoreId[String]
   */
  Future<OfResult> createProductStore(ProductStore ent, ) =>
      client.invoke('createProductStore', ent, {  });

  /**
   * Create ProductStoreCatalog - ProductStoreCatalog
   *
   * Requires productStoreId, prodCatalogId
   * Returns 
   */
  Future<OfResult> createProductStoreCatalog(ProductStoreCatalog ent, ) =>
      client.invoke('createProductStoreCatalog', ent, {  });

  /**
   * Create a Product Store Email Setting - ProductStoreEmailSetting
   *
   * Requires productStoreId, emailType, bodyScreenLocation, fromAddress, subject
   * Returns 
   */
  Future<OfResult> createProductStoreEmailSetting(ProductStoreEmailSetting ent, ) =>
      client.invoke('createProductStoreEmailSetting', ent, {  });

  /**
   * Create a ProductStoreFacility - ProductStoreFacility
   *
   * Requires productStoreId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> createProductStoreFacility(ProductStoreFacility ent, ) =>
      client.invoke('createProductStoreFacility', ent, {  });

  /**
   * Create ProductStoreFinActSetting - ProductStoreFinActSetting
   *
   * Requires productStoreId, finAccountTypeId
   * Returns 
   */
  Future<OfResult> createProductStoreFinActSetting(ProductStoreFinActSetting ent, ) =>
      client.invoke('createProductStoreFinActSetting', ent, {  });

  /**
   * Create a ProductStoreGroup - ProductStoreGroup
   *
   * Requires 
   * Returns productStoreGroupId[String]
   */
  Future<OfResult> createProductStoreGroup(ProductStoreGroup ent, ) =>
      client.invoke('createProductStoreGroup', ent, {  });

  /**
   * Create a ProductStoreGroupMember - ProductStoreGroupMember
   *
   * Requires productStoreId, productStoreGroupId, fromDate
   * Returns 
   */
  Future<OfResult> createProductStoreGroupMember(ProductStoreGroupMember ent, ) =>
      client.invoke('createProductStoreGroupMember', ent, {  });

  /**
   * Create a ProductStoreGroupRole - ProductStoreGroupRole
   *
   * Requires productStoreGroupId, partyId, roleTypeId
   * Returns productStoreGroupId[String], partyId[String], roleTypeId[String]
   */
  Future<OfResult> createProductStoreGroupRole(ProductStoreGroupRole ent, ) =>
      client.invoke('createProductStoreGroupRole', ent, {  });

  /**
   * Create a ProductStoreGroupRollup - ProductStoreGroupRollup
   *
   * Requires productStoreGroupId, parentGroupId, fromDate
   * Returns 
   */
  Future<OfResult> createProductStoreGroupRollup(ProductStoreGroupRollup ent, ) =>
      client.invoke('createProductStoreGroupRollup', ent, {  });

  /**
   * Create a ProductStoreGroupType - ProductStoreGroupType
   *
   * Requires 
   * Returns productStoreGroupTypeId[String]
   */
  Future<OfResult> createProductStoreGroupType(ProductStoreGroupType ent, ) =>
      client.invoke('createProductStoreGroupType', ent, {  });

  /**
   * Create a Product Store Keyword Override - ProductStoreKeywordOvrd
   *
   * Requires productStoreId, keyword, target, targetTypeEnumId, target, targetTypeEnumId
   * Returns 
   */
  Future<OfResult> createProductStoreKeywordOvrd(ProductStoreKeywordOvrd ent, ) =>
      client.invoke('createProductStoreKeywordOvrd', ent, {  });

  /**
   * Create ProductStorePaymentSetting - ProductStorePaymentSetting
   *
   * Requires productStoreId, paymentMethodTypeId, paymentServiceTypeEnumId, applyToAllProducts
   * Returns 
   */
  Future<OfResult> createProductStorePaymentSetting(ProductStorePaymentSetting ent, ) =>
      client.invoke('createProductStorePaymentSetting', ent, {  });

  /**
   * Create ProductStorePromoAppl - ProductStorePromoAppl
   *
   * Requires productStoreId, productPromoId
   * Returns 
   */
  Future<OfResult> createProductStorePromoAppl(ProductStorePromoAppl ent, ) =>
      client.invoke('createProductStorePromoAppl', ent, {  });

  /**
   * Create ProductStoreRole - ProductStoreRole
   *
   * Requires partyId, roleTypeId, productStoreId
   * Returns 
   */
  Future<OfResult> createProductStoreRole(ProductStoreRole ent, ) =>
      client.invoke('createProductStoreRole', ent, {  });

  /**
   * Create a Product Store Shipment Method - ProductStoreShipmentMeth
   *
   * Requires productStoreId, shipmentMethodTypeId, partyId, roleTypeId, productStoreId, shipmentMethodTypeId, partyId, roleTypeId
   * Returns productStoreShipMethId[String]
   */
  Future<OfResult> createProductStoreShipMeth(ProductStoreShipmentMeth ent, ) =>
      client.invoke('createProductStoreShipMeth', ent, {  });

  /**
   * Create a Product Store Survey Appl - ProductStoreSurveyAppl
   *
   * Requires 
   * Returns productStoreSurveyId[String]
   */
  Future<OfResult> createProductStoreSurveyAppl(ProductStoreSurveyAppl ent, ) =>
      client.invoke('createProductStoreSurveyAppl', ent, {  });

  /**
   *  - ProductStoreVendorPayment
   *
   * Requires productStoreId, vendorPartyId, paymentMethodTypeId, creditCardEnumId
   * Returns 
   */
  Future<OfResult> createProductStoreVendorPayment(ProductStoreVendorPayment ent, ) =>
      client.invoke('createProductStoreVendorPayment', ent, {  });

  /**
   *  - ProductStoreVendorShipment
   *
   * Requires productStoreId, vendorPartyId, shipmentMethodTypeId, carrierPartyId
   * Returns 
   */
  Future<OfResult> createProductStoreVendorShipment(ProductStoreVendorShipment ent, ) =>
      client.invoke('createProductStoreVendorShipment', ent, {  });

  /**
   * Delete ProductStoreCatalog - ProductStoreCatalog
   *
   * Requires productStoreId, prodCatalogId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductStoreCatalog(ProductStoreCatalog ent, ) =>
      client.invoke('deleteProductStoreCatalog', ent, {  });

  /**
   * Delete a ProductStoreFacility - ProductStoreFacility
   *
   * Requires productStoreId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductStoreFacility(ProductStoreFacility ent, ) =>
      client.invoke('deleteProductStoreFacility', ent, {  });

  /**
   * Delete a ProductStoreGroup - ProductStoreGroup
   *
   * Requires productStoreGroupId
   * Returns 
   */
  Future<OfResult> deleteProductStoreGroup(ProductStoreGroup ent, ) =>
      client.invoke('deleteProductStoreGroup', ent, {  });

  /**
   * Delete a ProductStoreGroupRole - ProductStoreGroupRole
   *
   * Requires productStoreGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteProductStoreGroupRole(ProductStoreGroupRole ent, ) =>
      client.invoke('deleteProductStoreGroupRole', ent, {  });

  /**
   * Delete a ProductStoreGroupRollup - ProductStoreGroupRollup
   *
   * Requires productStoreGroupId, parentGroupId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductStoreGroupRollup(ProductStoreGroupRollup ent, ) =>
      client.invoke('deleteProductStoreGroupRollup', ent, {  });

  /**
   * Delete a ProductStoreGroupType - ProductStoreGroupType
   *
   * Requires productStoreGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteProductStoreGroupType(ProductStoreGroupType ent, ) =>
      client.invoke('deleteProductStoreGroupType', ent, {  });

  /**
   * Delete a Product Store Keyword Override - ProductStoreKeywordOvrd
   *
   * Requires productStoreId, keyword, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductStoreKeywordOvrd(ProductStoreKeywordOvrd ent, ) =>
      client.invoke('deleteProductStoreKeywordOvrd', ent, {  });

  /**
   * Delete ProductStorePaymentSetting - ProductStorePaymentSetting
   *
   * Requires productStoreId, paymentMethodTypeId, paymentServiceTypeEnumId
   * Returns 
   */
  Future<OfResult> deleteProductStorePaymentSetting(ProductStorePaymentSetting ent, ) =>
      client.invoke('deleteProductStorePaymentSetting', ent, {  });

  /**
   * Delete ProductStorePromoAppl - ProductStorePromoAppl
   *
   * Requires productStoreId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductStorePromoAppl(ProductStorePromoAppl ent, ) =>
      client.invoke('deleteProductStorePromoAppl', ent, {  });

  /**
   * Delete a Product Store Survey Appl - ProductStoreSurveyAppl
   *
   * Requires productStoreSurveyId
   * Returns 
   */
  Future<OfResult> deleteProductStoreSurveyAppl(ProductStoreSurveyAppl ent, ) =>
      client.invoke('deleteProductStoreSurveyAppl', ent, {  });

  /**
   *  - ProductStoreVendorPayment
   *
   * Requires productStoreId, vendorPartyId, paymentMethodTypeId, creditCardEnumId
   * Returns 
   */
  Future<OfResult> deleteProductStoreVendorPayment(ProductStoreVendorPayment ent, ) =>
      client.invoke('deleteProductStoreVendorPayment', ent, {  });

  /**
   *  - ProductStoreVendorShipment
   *
   * Requires productStoreId, vendorPartyId, shipmentMethodTypeId, carrierPartyId
   * Returns 
   */
  Future<OfResult> deleteProductStoreVendorShipment(ProductStoreVendorShipment ent, ) =>
      client.invoke('deleteProductStoreVendorShipment', ent, {  });

  /**
   * Checks if Store Inventory is Required - 
   *
   * Requires productStoreId, productId, quantity
   * Returns available[String]
   */
  Future<OfResult> isStoreInventoryAvailable({@required String productStoreId, Map<String,dynamic> productStore, @required String productId, Map<String,dynamic> product, @required Decimal quantity}) =>
      client.invoke('isStoreInventoryAvailable', null, { 'productStoreId': productStoreId, 'productStore': productStore, 'productId': productId, 'product': product, 'quantity': quantity });

  /**
   * Checks if Store Inventory is Required - 
   *
   * Requires productStoreId, productId, quantity
   * Returns availableOrNotRequired[String]
   */
  Future<OfResult> isStoreInventoryAvailableOrNotRequired({@required String productStoreId, Map<String,dynamic> productStore, @required String productId, Map<String,dynamic> product, @required Decimal quantity}) =>
      client.invoke('isStoreInventoryAvailableOrNotRequired', null, { 'productStoreId': productStoreId, 'productStore': productStore, 'productId': productId, 'product': product, 'quantity': quantity });

  /**
   * Checks if Store Inventory is Required - 
   *
   * Requires productStoreId, productId
   * Returns requireInventory[String]
   */
  Future<OfResult> isStoreInventoryRequired({@required String productStoreId, Map<String,dynamic> productStore, @required String productId, Map<String,dynamic> product}) =>
      client.invoke('isStoreInventoryRequired', null, { 'productStoreId': productStoreId, 'productStore': productStore, 'productId': productId, 'product': product });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> productStoreGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('productStoreGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Remove a Product Store Email Setting - ProductStoreEmailSetting
   *
   * Requires productStoreId, emailType
   * Returns 
   */
  Future<OfResult> removeProductStoreEmailSetting(ProductStoreEmailSetting ent, ) =>
      client.invoke('removeProductStoreEmailSetting', ent, {  });

  /**
   * Remove ProductStoreFinActSetting - ProductStoreFinActSetting
   *
   * Requires productStoreId, finAccountTypeId
   * Returns 
   */
  Future<OfResult> removeProductStoreFinActSetting(ProductStoreFinActSetting ent, ) =>
      client.invoke('removeProductStoreFinActSetting', ent, {  });

  /**
   * Remove ProductStoreRole - ProductStoreRole
   *
   * Requires partyId, roleTypeId, productStoreId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductStoreRole(ProductStoreRole ent, ) =>
      client.invoke('removeProductStoreRole', ent, {  });

  /**
   * Remove a Product Store Shipment Method - ProductStoreShipmentMeth
   *
   * Requires productStoreShipMethId
   * Returns 
   */
  Future<OfResult> removeProductStoreShipMeth(ProductStoreShipmentMeth ent, ) =>
      client.invoke('removeProductStoreShipMeth', ent, {  });

  /**
   * Reserve Inventory in a Product Store - 
   *
   * Requires productStoreId, productId, quantity
   * Returns quantityNotReserved[BigDecimal]
   */
  Future<OfResult> reserveStoreInventory({@required String productStoreId, @required String productId, String facilityId, @required Decimal quantity, String orderId, String orderItemSeqId, String shipGroupSeqId}) =>
      client.invoke('reserveStoreInventory', null, { 'productStoreId': productStoreId, 'productId': productId, 'facilityId': facilityId, 'quantity': quantity, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId });

  /**
   * Update a Product Store - ProductStore
   *
   * Requires productStoreId
   * Returns 
   */
  Future<OfResult> updateProductStore(ProductStore ent, ) =>
      client.invoke('updateProductStore', ent, {  });

  /**
   * Update ProductStoreCatalog - ProductStoreCatalog
   *
   * Requires productStoreId, prodCatalogId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreCatalog(ProductStoreCatalog ent, ) =>
      client.invoke('updateProductStoreCatalog', ent, {  });

  /**
   * Update a Product Store Email Setting - ProductStoreEmailSetting
   *
   * Requires productStoreId, emailType, bodyScreenLocation, fromAddress, subject
   * Returns 
   */
  Future<OfResult> updateProductStoreEmailSetting(ProductStoreEmailSetting ent, ) =>
      client.invoke('updateProductStoreEmailSetting', ent, {  });

  /**
   * Update a ProductStoreFacility - ProductStoreFacility
   *
   * Requires productStoreId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreFacility(ProductStoreFacility ent, ) =>
      client.invoke('updateProductStoreFacility', ent, {  });

  /**
   * Update ProductStoreFinActSetting - ProductStoreFinActSetting
   *
   * Requires productStoreId, finAccountTypeId
   * Returns 
   */
  Future<OfResult> updateProductStoreFinActSetting(ProductStoreFinActSetting ent, ) =>
      client.invoke('updateProductStoreFinActSetting', ent, {  });

  /**
   * Update a ProductStoreGroup - ProductStoreGroup
   *
   * Requires productStoreGroupId
   * Returns 
   */
  Future<OfResult> updateProductStoreGroup(ProductStoreGroup ent, ) =>
      client.invoke('updateProductStoreGroup', ent, {  });

  /**
   * Update a ProductStoreGroupMember - ProductStoreGroupMember
   *
   * Requires productStoreId, productStoreGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreGroupMember(ProductStoreGroupMember ent, ) =>
      client.invoke('updateProductStoreGroupMember', ent, {  });

  /**
   * Update a ProductStoreGroupRollup - ProductStoreGroupRollup
   *
   * Requires productStoreGroupId, parentGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreGroupRollup(ProductStoreGroupRollup ent, ) =>
      client.invoke('updateProductStoreGroupRollup', ent, {  });

  /**
   * Update a ProductStoreGroupType - ProductStoreGroupType
   *
   * Requires productStoreGroupTypeId
   * Returns 
   */
  Future<OfResult> updateProductStoreGroupType(ProductStoreGroupType ent, ) =>
      client.invoke('updateProductStoreGroupType', ent, {  });

  /**
   * Update a Product Store Keyword Override - ProductStoreKeywordOvrd
   *
   * Requires productStoreId, keyword, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreKeywordOvrd(ProductStoreKeywordOvrd ent, ) =>
      client.invoke('updateProductStoreKeywordOvrd', ent, {  });

  /**
   * Update ProductStorePaymentSetting - ProductStorePaymentSetting
   *
   * Requires productStoreId, paymentMethodTypeId, paymentServiceTypeEnumId, applyToAllProducts
   * Returns 
   */
  Future<OfResult> updateProductStorePaymentSetting(ProductStorePaymentSetting ent, ) =>
      client.invoke('updateProductStorePaymentSetting', ent, {  });

  /**
   * Update ProductStorePromoAppl - ProductStorePromoAppl
   *
   * Requires productStoreId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStorePromoAppl(ProductStorePromoAppl ent, ) =>
      client.invoke('updateProductStorePromoAppl', ent, {  });

  /**
   * Update a Product Store Role - ProductStoreRole
   *
   * Requires partyId, roleTypeId, productStoreId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductStoreRole(ProductStoreRole ent, ) =>
      client.invoke('updateProductStoreRole', ent, {  });

  /**
   * Update a Product Store Shipment Method - ProductStoreShipmentMeth
   *
   * Requires productStoreShipMethId
   * Returns 
   */
  Future<OfResult> updateProductStoreShipMeth(ProductStoreShipmentMeth ent, ) =>
      client.invoke('updateProductStoreShipMeth', ent, {  });

}