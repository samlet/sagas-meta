import 'package:sagas_meta/src/models/common_geo.dart';
import 'package:sagas_meta/src/models/product_facility.dart';
import 'package:sagas_meta/src/models/product_inventory.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesFacility{
  final SrvClient client;
  ProductServicesFacility(this.client);

  /**
   * Add ContactMech To Facility - FacilityContactMech
   *
   * Requires facilityId, contactMechId, fromDate
   * Returns 
   */
  Future<OfResult> addContactMechToFacility(FacilityContactMech ent, ) =>
      client.invoke('addContactMechToFacility', ent, {  });

  /**
   * Add FacilityGroup To FacilityGroup - FacilityGroupRollup
   *
   * Requires facilityGroupId, parentFacilityGroupId
   * Returns 
   */
  Future<OfResult> addFacilityGroupToGroup(FacilityGroupRollup ent, ) =>
      client.invoke('addFacilityGroupToGroup', ent, {  });

  /**
   * Add Facility To FacilityGroup - FacilityGroupMember
   *
   * Requires facilityId, facilityGroupId
   * Returns 
   */
  Future<OfResult> addFacilityToGroup(FacilityGroupMember ent, ) =>
      client.invoke('addFacilityToGroup', ent, {  });

  /**
   * Create a FacilityParty record - FacilityParty
   *
   * Requires facilityId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> addPartyToFacility(FacilityParty ent, ) =>
      client.invoke('addPartyToFacility', ent, {  });

  /**
   * Add Party To FacilityGroup - FacilityGroupRole
   *
   * Requires facilityGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> addPartyToFacilityGroup(FacilityGroupRole ent, ) =>
      client.invoke('addPartyToFacilityGroup', ent, {  });

  /**
   * Balance inventory items based on the new item specified which will have available inventory that back-order (negative ATP) reservations can be reassigned to. - 
   *
   * Requires inventoryItemId
   * Returns noLongerOnBackOrderIdSet[Set]
   */
  Future<OfResult> balanceInventoryItems({@required String inventoryItemId, String priorityOrderId, String priorityOrderItemSeqId}) =>
      client.invoke('balanceInventoryItems', null, { 'inventoryItemId': inventoryItemId, 'priorityOrderId': priorityOrderId, 'priorityOrderItemSeqId': priorityOrderItemSeqId });

  /**
   * For each product with a negative reservation in the order, calls reassignInventoryReservations - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> balanceOrderItemsWithNegativeReservations({@required String orderId}) =>
      client.invoke('balanceOrderItemsWithNegativeReservations', null, { 'orderId': orderId });

  /**
   * Cancel the inventory transfer - 
   *
   * Requires inventoryTransferId
   * Returns 
   */
  Future<OfResult> cancelInventoryTransfer({@required String inventoryTransferId}) =>
      client.invoke('cancelInventoryTransfer', null, { 'inventoryTransferId': inventoryTransferId });

  /**
   * 
            Iterates through each OrderItemShipGrpInvRes on each OrderItem for the order
            with the given orderId and cancels the reservation by changing the status
            of the OrderItemShipGrpInvRes and incrementing the corresponding non-serialized
            inventoryItem's availableToPromise quantity, or setting the status of the
            corresponding serialized inventoryItem to available.
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> cancelOrderInventoryReservation({@required String orderId, String orderItemSeqId, String shipGroupSeqId}) =>
      client.invoke('cancelOrderInventoryReservation', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId });

  /**
   * Cancel a specific quantity for an order item - 
   *
   * Requires orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> cancelOrderItemInvResQty({@required String orderId, @required String orderItemSeqId, String shipGroupSeqId, Decimal cancelQuantity}) =>
      client.invoke('cancelOrderItemInvResQty', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'cancelQuantity': cancelQuantity });

  /**
   * Cancels an inventory reservation - 
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId
   * Returns 
   */
  Future<OfResult> cancelOrderItemShipGrpInvRes({@required String orderId, @required String shipGroupSeqId, @required String orderItemSeqId, @required String inventoryItemId, Decimal cancelQuantity}) =>
      client.invoke('cancelOrderItemShipGrpInvRes', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'cancelQuantity': cancelQuantity });

  /**
   * If product store setOwnerUponIssuance is Y or empty, set the inventory item owner upon issuance. - 
   *
   * Requires itemIssuanceId
   * Returns 
   */
  Future<OfResult> changeOwnerUponIssuance({@required String itemIssuanceId}) =>
      client.invoke('changeOwnerUponIssuance', null, { 'itemIssuanceId': itemIssuanceId });

  /**
   * Batch service for checking and sending backorder notifications.  Will also set an autoCancelDate for sales orders to 30 days (hard coded)
            beyond the OISGIR's promisedDatetime, which is in turn set by reserveProductInventory service using ProductFacility.daysToShip or 30 days by default. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> checkInventoryAvailability() =>
      client.invoke('checkInventoryAvailability', null, {  });

  /**
   * ProductFacility Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> checkProductFacilityRelatedPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('checkProductFacilityRelatedPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Check Product Inventory Discontinuation - 
   *
   * Requires productId
   * Returns 
   */
  Future<OfResult> checkProductInventoryDiscontinuation({@required String productId}) =>
      client.invoke('checkProductInventoryDiscontinuation', null, { 'productId': productId });

  /**
   * Completes the inventory transfer - 
   *
   * Requires inventoryTransferId
   * Returns 
   */
  Future<OfResult> completeInventoryTransfer({@required String inventoryTransferId, DateTime receiveDate}) =>
      client.invoke('completeInventoryTransfer', null, { 'inventoryTransferId': inventoryTransferId, 'receiveDate': receiveDate });

  /**
   * Count Inventory On Hand for a Product constrained by a facilityId at a given date. - 
   *
   * Requires productId, facilityId, inventoryCountDate
   * Returns quantityOnHandTotal[BigDecimal]
   */
  Future<OfResult> countProductInventoryOnHand({@required String productId, @required String facilityId, String statusId, @required DateTime inventoryCountDate}) =>
      client.invoke('countProductInventoryOnHand', null, { 'productId': productId, 'facilityId': facilityId, 'statusId': statusId, 'inventoryCountDate': inventoryCountDate });

  /**
   * Count Inventory Shipped for Sales Orders for a Product constrained by a facilityId in a given date range. - 
   *
   * Requires productId, facilityId, fromDate
   * Returns quantityOnHandTotal[BigDecimal]
   */
  Future<OfResult> countProductInventoryShippedForSales({@required String productId, @required String facilityId, String statusId, @required DateTime fromDate, DateTime thruDate}) =>
      client.invoke('countProductInventoryShippedForSales', null, { 'productId': productId, 'facilityId': facilityId, 'statusId': statusId, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Create a new Container Record - Container
   *
   * Requires 
   * Returns containerId[String]
   */
  Future<OfResult> createContainer(Container ent, ) =>
      client.invoke('createContainer', ent, {  });

  /**
   * Create a new ContainerType Record - ContainerType
   *
   * Requires 
   * Returns containerTypeId[String]
   */
  Future<OfResult> createContainerType(ContainerType ent, ) =>
      client.invoke('createContainerType', ent, {  });

  /**
   * Create a Facility - Facility
   *
   * Requires facilityTypeId, ownerPartyId, facilityName, facilityTypeId, facilityName, ownerPartyId
   * Returns facilityId[String]
   */
  Future<OfResult> createFacility(Facility ent, ) =>
      client.invoke('createFacility', ent, {  });

  /**
   * Create Facility Attribute - FacilityAttribute
   *
   * Requires facilityId, attrName
   * Returns 
   */
  Future<OfResult> createFacilityAttribute(FacilityAttribute ent, ) =>
      client.invoke('createFacilityAttribute', ent, {  });

  /**
   * Create a FacilityCarrierShipment record - FacilityCarrierShipment
   *
   * Requires facilityId, partyId, roleTypeId, shipmentMethodTypeId
   * Returns facilityId[String], partyId[String], roleTypeId[String], shipmentMethodTypeId[String]
   */
  Future<OfResult> createFacilityCarrierShipment(FacilityCarrierShipment ent, ) =>
      client.invoke('createFacilityCarrierShipment', ent, {  });

  /**
   * Create a FacilityContactMech - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createFacilityContactMech({String contactMechTypeId, String infoString, String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String contactMechPurposeTypeId}) =>
      client.invoke('createFacilityContactMech', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a purpose for facility contact mech - 
   *
   * Requires facilityId, contactMechId, contactMechPurposeTypeId
   * Returns fromDate[Timestamp]
   */
  Future<OfResult> createFacilityContactMechPurpose({@required String facilityId, @required String contactMechId, @required String contactMechPurposeTypeId}) =>
      client.invoke('createFacilityContactMechPurpose', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a Facility Content - FacilityContent
   *
   * Requires facilityId, contentId
   * Returns 
   */
  Future<OfResult> createFacilityContent(FacilityContent ent, ) =>
      client.invoke('createFacilityContent', ent, {  });

  /**
   * Create an Email Address - 
   *
   * Requires emailAddress
   * Returns contactMechId[String]
   */
  Future<OfResult> createFacilityEmailAddress({String contactMechTypeId, String infoString, String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String contactMechPurposeTypeId, @required String emailAddress}) =>
      client.invoke('createFacilityEmailAddress', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'emailAddress': emailAddress });

  /**
   * Create a Facility Group - FacilityGroup
   *
   * Requires facilityGroupTypeId, facilityGroupName, facilityGroupName, facilityGroupTypeId
   * Returns facilityGroupId[String]
   */
  Future<OfResult> createFacilityGroup(FacilityGroup ent, ) =>
      client.invoke('createFacilityGroup', ent, {  });

  /**
   * Create a FacilityGroupType - FacilityGroupType
   *
   * Requires 
   * Returns facilityGroupTypeId[String]
   */
  Future<OfResult> createFacilityGroupType(FacilityGroupType ent, ) =>
      client.invoke('createFacilityGroupType', ent, {  });

  /**
   * Create a Facility Location - FacilityLocation
   *
   * Requires facilityId
   * Returns locationSeqId[String]
   */
  Future<OfResult> createFacilityLocation(FacilityLocation ent, ) =>
      client.invoke('createFacilityLocation', ent, {  });

  /**
   * Create a FacilityLocationGeoPoint record - FacilityLocationGeoPoint
   *
   * Requires facilityId, locationSeqId, geoPointId, fromDate
   * Returns facilityId[String], locationSeqId[String], geoPointId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createFacilityLocationGeoPoint(FacilityLocationGeoPoint ent, ) =>
      client.invoke('createFacilityLocationGeoPoint', ent, {  });

  /**
   * Create a Postal Address - 
   *
   * Requires address1, city, address1, city
   * Returns contactMechId[String]
   */
  Future<OfResult> createFacilityPostalAddress({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String paymentMethodId, String contactMechPurposeTypeId, String latitude, String longitude}) =>
      client.invoke('createFacilityPostalAddress', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'paymentMethodId': paymentMethodId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'latitude': latitude, 'longitude': longitude });

  /**
   * Create a Telecommunications Number - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createFacilityTelecomNumber({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String countryCode, String areaCode, String contactNumber, String askForName, String contactMechPurposeTypeId}) =>
      client.invoke('createFacilityTelecomNumber', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a FacilityType record - FacilityType
   *
   * Requires 
   * Returns facilityTypeId[String]
   */
  Future<OfResult> createFacilityType(FacilityType ent, ) =>
      client.invoke('createFacilityType', ent, {  });

  /**
   * Create a FacilityTypeAttr - FacilityTypeAttr
   *
   * Requires facilityTypeId, attrName
   * Returns facilityTypeId[String], attrName[String]
   */
  Future<OfResult> createFacilityTypeAttr(FacilityTypeAttr ent, ) =>
      client.invoke('createFacilityTypeAttr', ent, {  });

  /**
   * Create an InventoryItem - InventoryItem
   *
   * Requires inventoryItemTypeId, productId, facilityId, inventoryItemTypeId, productId, facilityId
   * Returns inventoryItemId[String]
   */
  Future<OfResult> createInventoryItem(InventoryItem ent, {String isReturned}) =>
      client.invoke('createInventoryItem', ent, { 'isReturned': isReturned });

  /**
   * 
         - 
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> createInventoryItemCheckSetAtpQoh({@required String inventoryItemId, Decimal availableToPromiseTotal, Decimal quantityOnHandTotal}) =>
      client.invoke('createInventoryItemCheckSetAtpQoh', null, { 'inventoryItemId': inventoryItemId, 'availableToPromiseTotal': availableToPromiseTotal, 'quantityOnHandTotal': quantityOnHandTotal });

  /**
   * Create an createInventoryItemDetail - note that the quantityOnHand and availableToPromise are relative (positive or negative) and will be added to the corresponding value on the given InventoryItem - InventoryItemDetail
   *
   * Requires inventoryItemId
   * Returns inventoryItemDetailSeqId[String], inventoryItemDetailSeqId[String]
   */
  Future<OfResult> createInventoryItemDetail(InventoryItemDetail ent, ) =>
      client.invoke('createInventoryItemDetail', ent, {  });

  /**
   * Create an InventoryItemLabel - InventoryItemLabel
   *
   * Requires inventoryItemLabelId
   * Returns 
   */
  Future<OfResult> createInventoryItemLabel(InventoryItemLabel ent, ) =>
      client.invoke('createInventoryItemLabel', ent, {  });

  /**
   * Create an InventoryItemLabelAppl - InventoryItemLabelAppl
   *
   * Requires inventoryItemId, inventoryItemLabelId, inventoryItemLabelId
   * Returns 
   */
  Future<OfResult> createInventoryItemLabelAppl(InventoryItemLabelAppl ent, ) =>
      client.invoke('createInventoryItemLabelAppl', ent, {  });

  /**
   * Create an InventoryItemLabelType - InventoryItemLabelType
   *
   * Requires inventoryItemLabelTypeId
   * Returns 
   */
  Future<OfResult> createInventoryItemLabelType(InventoryItemLabelType ent, ) =>
      client.invoke('createInventoryItemLabelType', ent, {  });

  /**
   * Create an inventory item status record - InventoryItemStatus
   *
   * Requires inventoryItemId, statusId, inventoryItemId, statusId
   * Returns 
   */
  Future<OfResult> createInventoryItemStatus(InventoryItemStatus ent, ) =>
      client.invoke('createInventoryItemStatus', ent, {  });

  /**
   * Create InventoryItemType - InventoryItemType
   *
   * Requires 
   * Returns inventoryItemTypeId[String]
   */
  Future<OfResult> createInventoryItemType(InventoryItemType ent, ) =>
      client.invoke('createInventoryItemType', ent, {  });

  /**
   * Create an InventoryItemVariance - note that the quantityOnHand and availableToPromise are relative and will be added to the corresponding value on the given InventoryItem - InventoryItemVariance
   *
   * Requires inventoryItemId, physicalInventoryId
   * Returns 
   */
  Future<OfResult> createInventoryItemVariance(InventoryItemVariance ent, ) =>
      client.invoke('createInventoryItemVariance', ent, {  });

  /**
   * Create an inventory transfer.  Uses the prepareInventoryTransfer service; see comments there about transfer quantities and inventory items. - 
   *
   * Requires xferQty, inventoryItemId, statusId
   * Returns inventoryTransferId[String]
   */
  Future<OfResult> createInventoryTransfer({@required Decimal xferQty, @required String inventoryItemId, @required String statusId, String facilityId, String locationSeqId, String containerId, String facilityIdTo, String locationSeqIdTo, String containerIdTo, String itemIssuanceId, DateTime sendDate, DateTime receiveDate, String comments}) =>
      client.invoke('createInventoryTransfer', null, { 'xferQty': xferQty, 'inventoryItemId': inventoryItemId, 'statusId': statusId, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'containerId': containerId, 'facilityIdTo': facilityIdTo, 'locationSeqIdTo': locationSeqIdTo, 'containerIdTo': containerIdTo, 'itemIssuanceId': itemIssuanceId, 'sendDate': sendDate, 'receiveDate': receiveDate, 'comments': comments });

  /**
   * Create inventory transfers for the given product and quantity. Return the units not available for transfers. - 
   *
   * Requires facilityId, facilityIdTo, productId, quantity
   * Returns quantityNotTransferred[BigDecimal]
   */
  Future<OfResult> createInventoryTransfersForProduct({@required String facilityId, String containerId, String locationSeqIdTo, @required String facilityIdTo, DateTime sendDate, @required String productId, @required Decimal quantity, String reserveOrderEnumId, String statusId}) =>
      client.invoke('createInventoryTransfersForProduct', null, { 'facilityId': facilityId, 'containerId': containerId, 'locationSeqIdTo': locationSeqIdTo, 'facilityIdTo': facilityIdTo, 'sendDate': sendDate, 'productId': productId, 'quantity': quantity, 'reserveOrderEnumId': reserveOrderEnumId, 'statusId': statusId });

  /**
   * Create an PhysicalInventory - PhysicalInventory
   *
   * Requires 
   * Returns physicalInventoryId[String]
   */
  Future<OfResult> createPhysicalInventory(PhysicalInventory ent, ) =>
      client.invoke('createPhysicalInventory', ent, {  });

  /**
   * Create a PhysicalInventory and an InventoryItemVariance - 
   *
   * Requires inventoryItemId
   * Returns physicalInventoryId[String], physicalInventoryId[String]
   */
  Future<OfResult> createPhysicalInventoryAndVariance({@required String inventoryItemId, DateTime physicalInventoryDate, String partyId, String generalComments, String varianceReasonId, Decimal availableToPromiseVar, Decimal quantityOnHandVar, String comments}) =>
      client.invoke('createPhysicalInventoryAndVariance', null, { 'inventoryItemId': inventoryItemId, 'physicalInventoryDate': physicalInventoryDate, 'partyId': partyId, 'generalComments': generalComments, 'varianceReasonId': varianceReasonId, 'availableToPromiseVar': availableToPromiseVar, 'quantityOnHandVar': quantityOnHandVar, 'comments': comments });

  /**
   * Create an ProductFacility - ProductFacility
   *
   * Requires productId, facilityId
   * Returns 
   */
  Future<OfResult> createProductFacility(ProductFacility ent, ) =>
      client.invoke('createProductFacility', ent, {  });

  /**
   * Create an ProductFacilityLocation - ProductFacilityLocation
   *
   * Requires productId, facilityId, locationSeqId
   * Returns 
   */
  Future<OfResult> createProductFacilityLocation(ProductFacilityLocation ent, ) =>
      client.invoke('createProductFacilityLocation', ent, {  });

  /**
   * Create or update GeoPoint assigned to facility - GeoPoint
   *
   * Requires dataSourceId, latitude, longitude, facilityId, dataSourceId, latitude, longitude
   * Returns 
   */
  Future<OfResult> createUpdateFacilityGeoPoint(GeoPoint ent, {@required String facilityId}) =>
      client.invoke('createUpdateFacilityGeoPoint', ent, { 'facilityId': facilityId });

  /**
   * Delete an existing Container Record - Container
   *
   * Requires containerId
   * Returns 
   */
  Future<OfResult> deleteContainer(Container ent, ) =>
      client.invoke('deleteContainer', ent, {  });

  /**
   * Delete an existing ContainerType Record - ContainerType
   *
   * Requires containerTypeId
   * Returns 
   */
  Future<OfResult> deleteContainerType(ContainerType ent, ) =>
      client.invoke('deleteContainerType', ent, {  });

  /**
   * Delete a Facility - Facility
   *
   * Requires facilityId
   * Returns 
   */
  Future<OfResult> deleteFacility(Facility ent, ) =>
      client.invoke('deleteFacility', ent, {  });

  /**
   * Delete Facility Attribute - FacilityAttribute
   *
   * Requires facilityId, attrName
   * Returns 
   */
  Future<OfResult> deleteFacilityAttribute(FacilityAttribute ent, ) =>
      client.invoke('deleteFacilityAttribute', ent, {  });

  /**
   * Delete a FacilityCarrierShipment record - FacilityCarrierShipment
   *
   * Requires facilityId, partyId, roleTypeId, shipmentMethodTypeId
   * Returns 
   */
  Future<OfResult> deleteFacilityCarrierShipment(FacilityCarrierShipment ent, ) =>
      client.invoke('deleteFacilityCarrierShipment', ent, {  });

  /**
   * Delete a FacilityContactMech - 
   *
   * Requires facilityId, contactMechId
   * Returns 
   */
  Future<OfResult> deleteFacilityContactMech({@required String facilityId, @required String contactMechId}) =>
      client.invoke('deleteFacilityContactMech', null, { 'facilityId': facilityId, 'contactMechId': contactMechId });

  /**
   * Delete a purpose for facility contact mech - 
   *
   * Requires facilityId, contactMechId, contactMechPurposeTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFacilityContactMechPurpose({@required String facilityId, @required String contactMechId, @required String contactMechPurposeTypeId, @required DateTime fromDate}) =>
      client.invoke('deleteFacilityContactMechPurpose', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'fromDate': fromDate });

  /**
   * Delete Content From Facility - FacilityContent
   *
   * Requires facilityId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFacilityContent(FacilityContent ent, ) =>
      client.invoke('deleteFacilityContent', ent, {  });

  /**
   * Delete a Facility Group - FacilityGroup
   *
   * Requires facilityGroupId
   * Returns 
   */
  Future<OfResult> deleteFacilityGroup(FacilityGroup ent, ) =>
      client.invoke('deleteFacilityGroup', ent, {  });

  /**
   * Delete a FacilityGroupType - FacilityGroupType
   *
   * Requires facilityGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteFacilityGroupType(FacilityGroupType ent, ) =>
      client.invoke('deleteFacilityGroupType', ent, {  });

  /**
   * Delete a Facility Location - FacilityLocation
   *
   * Requires facilityId, locationSeqId
   * Returns 
   */
  Future<OfResult> deleteFacilityLocation(FacilityLocation ent, ) =>
      client.invoke('deleteFacilityLocation', ent, {  });

  /**
   * Delete a FacilityType record - FacilityType
   *
   * Requires facilityTypeId
   * Returns 
   */
  Future<OfResult> deleteFacilityType(FacilityType ent, ) =>
      client.invoke('deleteFacilityType', ent, {  });

  /**
   * Delete an InventoryItemLabel - InventoryItemLabel
   *
   * Requires inventoryItemLabelId
   * Returns 
   */
  Future<OfResult> deleteInventoryItemLabel(InventoryItemLabel ent, ) =>
      client.invoke('deleteInventoryItemLabel', ent, {  });

  /**
   * Delete an InventoryItemLabelAppl - InventoryItemLabelAppl
   *
   * Requires inventoryItemId, inventoryItemLabelTypeId
   * Returns 
   */
  Future<OfResult> deleteInventoryItemLabelAppl(InventoryItemLabelAppl ent, ) =>
      client.invoke('deleteInventoryItemLabelAppl', ent, {  });

  /**
   * Delete an InventoryItemLabelType - InventoryItemLabelType
   *
   * Requires inventoryItemLabelTypeId
   * Returns 
   */
  Future<OfResult> deleteInventoryItemLabelType(InventoryItemLabelType ent, ) =>
      client.invoke('deleteInventoryItemLabelType', ent, {  });

  /**
   * Delete InventoryItemType - InventoryItemType
   *
   * Requires inventoryItemTypeId
   * Returns 
   */
  Future<OfResult> deleteInventoryItemType(InventoryItemType ent, ) =>
      client.invoke('deleteInventoryItemType', ent, {  });

  /**
   * Delete an ProductFacility - ProductFacility
   *
   * Requires productId, facilityId
   * Returns 
   */
  Future<OfResult> deleteProductFacility(ProductFacility ent, ) =>
      client.invoke('deleteProductFacility', ent, {  });

  /**
   * Delete an ProductFacilityLocation - ProductFacilityLocation
   *
   * Requires productId, facilityId, locationSeqId
   * Returns 
   */
  Future<OfResult> deleteProductFacilityLocation(ProductFacilityLocation ent, ) =>
      client.invoke('deleteProductFacilityLocation', ent, {  });

  /**
   * Expire a FacilityLocationGeoPoint record - FacilityLocationGeoPoint
   *
   * Requires facilityId, locationSeqId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> expireFacilityLocationGeoPoint(FacilityLocationGeoPoint ent, ) =>
      client.invoke('expireFacilityLocationGeoPoint', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> facilityGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('facilityGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Find Product's inventory locations from facility - 
   *
   * Requires facilityId, productId
   * Returns LocationList[List]
   */
  Future<OfResult> findProductInventorylocations({@required String facilityId, @required String productId}) =>
      client.invoke('findProductInventorylocations', null, { 'facilityId': facilityId, 'productId': productId });

  /**
   * 
            Find all Stock Moves that need to be done.
            This service differs from the inventory transfer services in that it does not require
            sufficient availableToPromise to move the stock, in fact it is generally triggered because
            some promised inventory is in a bulk location and needs to be moved to a pick location.
         - 
   *
   * Requires facilityId
   * Returns moveByOisgirInfoList[List], stockMoveHandled[Map], warningMessageList[List]
   */
  Future<OfResult> findStockMovesNeeded({@required String facilityId}) =>
      client.invoke('findStockMovesNeeded', null, { 'facilityId': facilityId });

  /**
   * Get Inventory Availability for a Product constrained by a containerId - 
   *
   * Requires productId, containerId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getInventoryAvailableByContainer({@required String productId, @required String containerId, String statusId}) =>
      client.invoke('getInventoryAvailableByContainer', null, { 'productId': productId, 'containerId': containerId, 'statusId': statusId });

  /**
   * Get Inventory Availability for a Product constrained by a facilityId - 
   *
   * Requires productId, facilityId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getInventoryAvailableByFacility({@required String productId, @required String facilityId, String statusId, String lotId, bool useCache}) =>
      client.invoke('getInventoryAvailableByFacility', null, { 'productId': productId, 'facilityId': facilityId, 'statusId': statusId, 'lotId': lotId, 'useCache': useCache });

  /**
   * Get Inventory Availability for an InventoryItem - 
   *
   * Requires inventoryItemId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getInventoryAvailableByItem({@required String inventoryItemId, bool useCache}) =>
      client.invoke('getInventoryAvailableByItem', null, { 'inventoryItemId': inventoryItemId, 'useCache': useCache });

  /**
   * Get Inventory Availability for a Product constrained by a facility and location - 
   *
   * Requires productId, facilityId, locationSeqId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getInventoryAvailableByLocation({@required String productId, @required String facilityId, @required String locationSeqId, String statusId, bool useCache}) =>
      client.invoke('getInventoryAvailableByLocation', null, { 'productId': productId, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'statusId': statusId, 'useCache': useCache });

  /**
   * Get Marketing Packages Available From Components In Inventory - 
   *
   * Requires productId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal]
   */
  Future<OfResult> getMktgPackagesAvailable({@required String productId, String facilityId, String statusId}) =>
      client.invoke('getMktgPackagesAvailable', null, { 'productId': productId, 'facilityId': facilityId, 'statusId': statusId });

  /**
   * Get ATP/QOH Availability for a list of OrderItems by summing over all facilities.  If the item is a MARKETING_PKG_AUTO/PICK, then put its quantity available from components
            in the mktgPkgATPMap and mktgPkgQOHMap. - 
   *
   * Requires facilityId, productId
   * Returns quantityUomId[String], totalQuantityOnHand[BigDecimal], totalAvailableToPromise[BigDecimal], quantityOnOrder[BigDecimal], offsetQOHQtyAvailable[BigDecimal], offsetATPQtyAvailable[BigDecimal], defaultPrice[BigDecimal], listPrice[BigDecimal], wholeSalePrice[BigDecimal], usageQuantity[BigDecimal]
   */
  Future<OfResult> getProductInventoryAndFacilitySummary({DateTime checkTime, @required String facilityId, @required String productId, Decimal minimumStock, String statusId}) =>
      client.invoke('getProductInventoryAndFacilitySummary', null, { 'checkTime': checkTime, 'facilityId': facilityId, 'productId': productId, 'minimumStock': minimumStock, 'statusId': statusId });

  /**
   * Get Inventory Availability for a Product - 
   *
   * Requires productId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getProductInventoryAvailable({@required String productId, String statusId, bool useCache}) =>
      client.invoke('getProductInventoryAvailable', null, { 'productId': productId, 'statusId': statusId, 'useCache': useCache });

  /**
   * Get Inventory Availability for a Product by a Supplier - 
   *
   * Requires productId, partyId
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal], accountingQuantityTotal[BigDecimal]
   */
  Future<OfResult> getProductInventoryAvailableBySupplier({@required String productId, @required String partyId, String statusId, bool useCache}) =>
      client.invoke('getProductInventoryAvailableBySupplier', null, { 'productId': productId, 'partyId': partyId, 'statusId': statusId, 'useCache': useCache });

  /**
   * 
            Get Inventory Availability for a product based on List of associated products,
            usually marketing package components.
         - 
   *
   * Requires assocProducts
   * Returns quantityOnHandTotal[BigDecimal], availableToPromiseTotal[BigDecimal]
   */
  Future<OfResult> getProductInventoryAvailableFromAssocProducts({String facilityId, @required List<dynamic> assocProducts, String statusId}) =>
      client.invoke('getProductInventoryAvailableFromAssocProducts', null, { 'facilityId': facilityId, 'assocProducts': assocProducts, 'statusId': statusId });

  /**
   * Get ATP/QOH Availability for a list of OrderItems by summing over all facilities.  If the item is a MARKETING_PKG_AUTO/PICK, then put its quantity available from components
            in the mktgPkgATPMap and mktgPkgQOHMap. - 
   *
   * Requires orderItems
   * Returns quantityOnHandMap[Map], availableToPromiseMap[Map], mktgPkgQOHMap[Map], mktgPkgATPMap[Map]
   */
  Future<OfResult> getProductInventorySummaryForItems({@required List<dynamic> orderItems, String facilityId}) =>
      client.invoke('getProductInventorySummaryForItems', null, { 'orderItems': orderItems, 'facilityId': facilityId });

  /**
   * Inventory Transfer Interface - 
   *
   * Requires inventoryItemId, statusId
   * Returns 
   */
  Future<OfResult> interfaceInventoryTransfer({@required String inventoryItemId, @required String statusId, String facilityId, String locationSeqId, String containerId, String facilityIdTo, String locationSeqIdTo, String containerIdTo, String itemIssuanceId, DateTime sendDate, DateTime receiveDate, String comments}) =>
      client.invoke('interfaceInventoryTransfer', null, { 'inventoryItemId': inventoryItemId, 'statusId': statusId, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'containerId': containerId, 'facilityIdTo': facilityIdTo, 'locationSeqIdTo': locationSeqIdTo, 'containerIdTo': containerIdTo, 'itemIssuanceId': itemIssuanceId, 'sendDate': sendDate, 'receiveDate': receiveDate, 'comments': comments });

  /**
   * 
            Issues the Inventory for an Order that was Immediately Fulfilled.
            Note that this skips the normal inventory reservation process, and the shipment process (no shipment is created).
         - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> issueImmediatelyFulfilledOrder({@required String orderId}) =>
      client.invoke('issueImmediatelyFulfilledOrder', null, { 'orderId': orderId });

  /**
   * 
            Issues the Inventory for an Order Item that was Immediately Fulfilled for more info see the issueImmediatelyFulfilledOrder service.
         - 
   *
   * Requires orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> issueImmediatelyFulfilledOrderItem({@required String orderId, @required String orderItemSeqId, Map<String,dynamic> orderHeader, Map<String,dynamic> orderItem, Map<String,dynamic> productStore}) =>
      client.invoke('issueImmediatelyFulfilledOrderItem', null, { 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'orderHeader': orderHeader, 'orderItem': orderItem, 'productStore': productStore });

  /**
   * Prepares inventory item for transfer.  If the xferQty is less than quantityOnHandTotal of the inventory item, then the inventory
                item is "split," and an new inventory item will be created with xferQty and used for the inventory transfer. - 
   *
   * Requires inventoryItemId, xferQty
   * Returns inventoryItemId[String]
   */
  Future<OfResult> prepareInventoryTransfer({@required String inventoryItemId, @required Decimal xferQty}) =>
      client.invoke('prepareInventoryTransfer', null, { 'inventoryItemId': inventoryItemId, 'xferQty': xferQty });

  /**
   * 
            Process a Physical Stock Move from one FacilityLocation to another, in the same Facility.
            This service will not only move quantities from one InventoryItem to another but it will
            also reassign any existing OrderItemShipGrpInvRes records to the new InventoryItem.
         - 
   *
   * Requires productId, facilityId, locationSeqId, targetLocationSeqId, quantityMoved
   * Returns warningMessageList[List]
   */
  Future<OfResult> processPhysicalStockMove({@required String productId, @required String facilityId, @required String locationSeqId, @required String targetLocationSeqId, @required Decimal quantityMoved, List<dynamic> warningMessageList}) =>
      client.invoke('processPhysicalStockMove', null, { 'productId': productId, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'targetLocationSeqId': targetLocationSeqId, 'quantityMoved': quantityMoved, 'warningMessageList': warningMessageList });

  /**
   * Balance inventory reservations for a given product/facility, considering all the reservations with promised date greater than fromDate. - 
   *
   * Requires productId, facilityId
   * Returns noLongerOnBackOrderIdSet[Set]
   */
  Future<OfResult> reassignInventoryReservations({@required String productId, @required String facilityId, DateTime fromDate, String priority}) =>
      client.invoke('reassignInventoryReservations', null, { 'productId': productId, 'facilityId': facilityId, 'fromDate': fromDate, 'priority': priority });

  /**
   * Remove ContactMech From Facility - FacilityContactMech
   *
   * Requires facilityId, contactMechId, fromDate
   * Returns 
   */
  Future<OfResult> removeContactMechFromFacility(FacilityContactMech ent, ) =>
      client.invoke('removeContactMechFromFacility', ent, {  });

  /**
   * Remove Facility From FacilityGroup - FacilityGroupMember
   *
   * Requires facilityId, facilityGroupId, fromDate
   * Returns 
   */
  Future<OfResult> removeFacilityFromGroup(FacilityGroupMember ent, ) =>
      client.invoke('removeFacilityFromGroup', ent, {  });

  /**
   * Remove FacilityGroup From FacilityGroup - FacilityGroupRollup
   *
   * Requires facilityGroupId, parentFacilityGroupId, fromDate
   * Returns 
   */
  Future<OfResult> removeFacilityGroupFromGroup(FacilityGroupRollup ent, ) =>
      client.invoke('removeFacilityGroupFromGroup', ent, {  });

  /**
   * Remove a FacilityTypeAttr - FacilityTypeAttr
   *
   * Requires facilityTypeId, attrName
   * Returns 
   */
  Future<OfResult> removeFacilityTypeAttr(FacilityTypeAttr ent, ) =>
      client.invoke('removeFacilityTypeAttr', ent, {  });

  /**
   * Remove Party From Facility - FacilityParty
   *
   * Requires facilityId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removePartyFromFacility(FacilityParty ent, ) =>
      client.invoke('removePartyFromFacility', ent, {  });

  /**
   * Remove Party From FacilityGroup - FacilityGroupRole
   *
   * Requires facilityGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removePartyFromFacilityGroup(FacilityGroupRole ent, ) =>
      client.invoke('removePartyFromFacilityGroup', ent, {  });

  /**
   *  - 
   *
   * Requires inventoryItemId, productId, orderId, orderItemSeqId, shipGroupSeqId, quantity, requireInventory, promisedDatetime
   * Returns inventoryItemId[String]
   */
  Future<OfResult> reserveAnInventoryItem({@required String inventoryItemId, @required String productId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity, DateTime reservedDatetime, @required String requireInventory, String serialNumber, int sequenceId, @required DateTime promisedDatetime, String priority}) =>
      client.invoke('reserveAnInventoryItem', null, { 'inventoryItemId': inventoryItemId, 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'reservedDatetime': reservedDatetime, 'requireInventory': requireInventory, 'serialNumber': serialNumber, 'sequenceId': sequenceId, 'promisedDatetime': promisedDatetime, 'priority': priority });

  /**
   * Create OrderItemShipGrpInvRes or increment existing reserved quantity. - 
   *
   * Requires orderId, shipGroupSeqId, orderItemSeqId, inventoryItemId, quantity, quantity
   * Returns 
   */
  Future<OfResult> reserveOrderItemInventory({@required String orderId, @required String shipGroupSeqId, @required String orderItemSeqId, @required String inventoryItemId, String reserveOrderEnumId, @required Decimal quantity, Decimal quantityNotAvailable, DateTime reservedDatetime, DateTime promisedDatetime, DateTime currentPromisedDate, String priority, int sequenceId, DateTime oldPickStartDate}) =>
      client.invoke('reserveOrderItemInventory', null, { 'orderId': orderId, 'shipGroupSeqId': shipGroupSeqId, 'orderItemSeqId': orderItemSeqId, 'inventoryItemId': inventoryItemId, 'reserveOrderEnumId': reserveOrderEnumId, 'quantity': quantity, 'quantityNotAvailable': quantityNotAvailable, 'reservedDatetime': reservedDatetime, 'promisedDatetime': promisedDatetime, 'currentPromisedDate': currentPromisedDate, 'priority': priority, 'sequenceId': sequenceId, 'oldPickStartDate': oldPickStartDate });

  /**
   * Reserve Inventory for a Product.
            If requireInventory is Y the quantity not reserved is returned, if N then a negative
            availableToPromise will be used to track quantity ordered beyond what is in stock.
         - 
   *
   * Requires productId, orderId, orderItemSeqId, shipGroupSeqId, quantity, requireInventory, reserveOrderEnumId
   * Returns quantityNotReserved[BigDecimal]
   */
  Future<OfResult> reserveProductInventory({@required String productId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity, DateTime reservedDatetime, @required String requireInventory, @required String reserveOrderEnumId, int sequenceId, String lotId, String priority}) =>
      client.invoke('reserveProductInventory', null, { 'productId': productId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'reservedDatetime': reservedDatetime, 'requireInventory': requireInventory, 'reserveOrderEnumId': reserveOrderEnumId, 'sequenceId': sequenceId, 'lotId': lotId, 'priority': priority });

  /**
   * Reserve Inventory for a Product By Container
            If requireInventory is Y the quantity not reserved is returned, if N then a negative
            availableToPromise will be used to track quantity ordered beyond what is in stock.
         - 
   *
   * Requires productId, containerId, orderId, orderItemSeqId, shipGroupSeqId, quantity, requireInventory
   * Returns quantityNotReserved[BigDecimal]
   */
  Future<OfResult> reserveProductInventoryByContainer({@required String productId, @required String containerId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity, DateTime reservedDatetime, @required String requireInventory, String reserveOrderEnumId, int sequenceId}) =>
      client.invoke('reserveProductInventoryByContainer', null, { 'productId': productId, 'containerId': containerId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'reservedDatetime': reservedDatetime, 'requireInventory': requireInventory, 'reserveOrderEnumId': reserveOrderEnumId, 'sequenceId': sequenceId });

  /**
   * Reserve Inventory for a Product By Facility
            If requireInventory is Y the quantity not reserved is returned, if N then a negative
            availableToPromise will be used to track quantity ordered beyond what is in stock.
         - 
   *
   * Requires productId, facilityId, orderId, orderItemSeqId, shipGroupSeqId, quantity, requireInventory
   * Returns quantityNotReserved[BigDecimal]
   */
  Future<OfResult> reserveProductInventoryByFacility({@required String productId, @required String facilityId, @required String orderId, @required String orderItemSeqId, @required String shipGroupSeqId, @required Decimal quantity, DateTime reservedDatetime, @required String requireInventory, String reserveOrderEnumId, int sequenceId, String priority, String lotId}) =>
      client.invoke('reserveProductInventoryByFacility', null, { 'productId': productId, 'facilityId': facilityId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'shipGroupSeqId': shipGroupSeqId, 'quantity': quantity, 'reservedDatetime': reservedDatetime, 'requireInventory': requireInventory, 'reserveOrderEnumId': reserveOrderEnumId, 'sequenceId': sequenceId, 'priority': priority, 'lotId': lotId });

  /**
   * Service which run as EECA (on InventoryItemDetail entity) and updates lastInventoryCount for products available in facility in ProductFacility entity - 
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> setLastInventoryCount({@required String inventoryItemId}) =>
      client.invoke('setLastInventoryCount', null, { 'inventoryItemId': inventoryItemId });

  /**
   * set order priority - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> setOrderReservationPriority({String priority, @required String orderId}) =>
      client.invoke('setOrderReservationPriority', null, { 'priority': priority, 'orderId': orderId });

  /**
   * Update a Container - Container
   *
   * Requires containerId
   * Returns 
   */
  Future<OfResult> updateContainer(Container ent, ) =>
      client.invoke('updateContainer', ent, {  });

  /**
   * Update a ContainerType - ContainerType
   *
   * Requires containerTypeId
   * Returns 
   */
  Future<OfResult> updateContainerType(ContainerType ent, ) =>
      client.invoke('updateContainerType', ent, {  });

  /**
   * Update a Facility - Facility
   *
   * Requires facilityId
   * Returns 
   */
  Future<OfResult> updateFacility(Facility ent, ) =>
      client.invoke('updateFacility', ent, {  });

  /**
   * Update Facility Attribute - FacilityAttribute
   *
   * Requires facilityId, attrName
   * Returns 
   */
  Future<OfResult> updateFacilityAttribute(FacilityAttribute ent, ) =>
      client.invoke('updateFacilityAttribute', ent, {  });

  /**
   * Update a FacilityContactMech - 
   *
   * Requires contactMechId, contactMechTypeId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateFacilityContactMech({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, @required String contactMechTypeId, String infoString, String newContactMechId}) =>
      client.invoke('updateFacilityContactMech', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'newContactMechId': newContactMechId });

  /**
   * Update an Email Address - 
   *
   * Requires contactMechId, emailAddress
   * Returns contactMechId[String]
   */
  Future<OfResult> updateFacilityEmailAddress({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, @required String emailAddress}) =>
      client.invoke('updateFacilityEmailAddress', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'emailAddress': emailAddress });

  /**
   * Update a Facility Group - FacilityGroup
   *
   * Requires facilityGroupId
   * Returns 
   */
  Future<OfResult> updateFacilityGroup(FacilityGroup ent, ) =>
      client.invoke('updateFacilityGroup', ent, {  });

  /**
   * Update FacilityGroup To FacilityGroup Rollup - FacilityGroupRollup
   *
   * Requires facilityGroupId, parentFacilityGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateFacilityGroupToGroup(FacilityGroupRollup ent, ) =>
      client.invoke('updateFacilityGroupToGroup', ent, {  });

  /**
   * Update a FacilityGroupType - FacilityGroupType
   *
   * Requires facilityGroupTypeId
   * Returns 
   */
  Future<OfResult> updateFacilityGroupType(FacilityGroupType ent, ) =>
      client.invoke('updateFacilityGroupType', ent, {  });

  /**
   * Update a Facility Location - FacilityLocation
   *
   * Requires facilityId, locationSeqId
   * Returns 
   */
  Future<OfResult> updateFacilityLocation(FacilityLocation ent, ) =>
      client.invoke('updateFacilityLocation', ent, {  });

  /**
   * Update a Postal Address - 
   *
   * Requires contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateFacilityPostalAddress({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String toName, String attnName, String address1, String address2, int houseNumber, String houseNumberExt, String directions, String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String latitude, String longitude}) =>
      client.invoke('updateFacilityPostalAddress', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'latitude': latitude, 'longitude': longitude });

  /**
   * Update a Telecommunications Number - 
   *
   * Requires contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateFacilityTelecomNumber({String facilityId, String contactMechId, DateTime fromDate, DateTime thruDate, String extension, String comments, String countryCode, String areaCode, String contactNumber, String askForName}) =>
      client.invoke('updateFacilityTelecomNumber', null, { 'facilityId': facilityId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'extension': extension, 'comments': comments, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName });

  /**
   * Update Facility -> Group Member - FacilityGroupMember
   *
   * Requires facilityId, facilityGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateFacilityToGroup(FacilityGroupMember ent, ) =>
      client.invoke('updateFacilityToGroup', ent, {  });

  /**
   * Update a FacilityType record - FacilityType
   *
   * Requires facilityTypeId
   * Returns 
   */
  Future<OfResult> updateFacilityType(FacilityType ent, ) =>
      client.invoke('updateFacilityType', ent, {  });

  /**
   * Update a FacilityTypeAttr - FacilityTypeAttr
   *
   * Requires facilityTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateFacilityTypeAttr(FacilityTypeAttr ent, ) =>
      client.invoke('updateFacilityTypeAttr', ent, {  });

  /**
   * Update an InventoryItem - InventoryItem
   *
   * Requires inventoryItemId
   * Returns oldOwnerPartyId[String], oldProductId[String], oldStatusId[String]
   */
  Future<OfResult> updateInventoryItem(InventoryItem ent, ) =>
      client.invoke('updateInventoryItem', ent, {  });

  /**
   * 
            Sums all availableToPromiseDiff and quantityOnHandDiff elements for the inventoryItemId and sets the availableToPromise and quantityOnHand fields on the corresponding InventoryItem.
            Meant to be run as an Entity ECA triggered on any modify operation on the InventoryItemDetail entity.
         - InventoryItemDetail
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> updateInventoryItemFromDetail(InventoryItemDetail ent, ) =>
      client.invoke('updateInventoryItemFromDetail', ent, {  });

  /**
   * Update an InventoryItemLabel - InventoryItemLabel
   *
   * Requires inventoryItemLabelId
   * Returns 
   */
  Future<OfResult> updateInventoryItemLabel(InventoryItemLabel ent, ) =>
      client.invoke('updateInventoryItemLabel', ent, {  });

  /**
   * Update an InventoryItemLabelAppl - InventoryItemLabelAppl
   *
   * Requires inventoryItemId, inventoryItemLabelTypeId
   * Returns 
   */
  Future<OfResult> updateInventoryItemLabelAppl(InventoryItemLabelAppl ent, ) =>
      client.invoke('updateInventoryItemLabelAppl', ent, {  });

  /**
   * Update an InventoryItemLabelType - InventoryItemLabelType
   *
   * Requires inventoryItemLabelTypeId
   * Returns 
   */
  Future<OfResult> updateInventoryItemLabelType(InventoryItemLabelType ent, ) =>
      client.invoke('updateInventoryItemLabelType', ent, {  });

  /**
   * Update InventoryItemType - InventoryItemType
   *
   * Requires inventoryItemTypeId
   * Returns 
   */
  Future<OfResult> updateInventoryItemType(InventoryItemType ent, ) =>
      client.invoke('updateInventoryItemType', ent, {  });

  /**
   * Update an inventory transfer record - 
   *
   * Requires inventoryTransferId, inventoryItemId, statusId
   * Returns 
   */
  Future<OfResult> updateInventoryTransfer({@required String inventoryTransferId, @required String inventoryItemId, @required String statusId, String facilityId, String locationSeqId, String containerId, String facilityIdTo, String locationSeqIdTo, String containerIdTo, String itemIssuanceId, DateTime sendDate, DateTime receiveDate, String comments}) =>
      client.invoke('updateInventoryTransfer', null, { 'inventoryTransferId': inventoryTransferId, 'inventoryItemId': inventoryItemId, 'statusId': statusId, 'facilityId': facilityId, 'locationSeqId': locationSeqId, 'containerId': containerId, 'facilityIdTo': facilityIdTo, 'locationSeqIdTo': locationSeqIdTo, 'containerIdTo': containerIdTo, 'itemIssuanceId': itemIssuanceId, 'sendDate': sendDate, 'receiveDate': receiveDate, 'comments': comments });

  /**
   * Update an ProductFacility - ProductFacility
   *
   * Requires productId, facilityId
   * Returns 
   */
  Future<OfResult> updateProductFacility(ProductFacility ent, ) =>
      client.invoke('updateProductFacility', ent, {  });

  /**
   * Update an ProductFacilityLocation - ProductFacilityLocation
   *
   * Requires productId, facilityId, locationSeqId
   * Returns 
   */
  Future<OfResult> updateProductFacilityLocation(ProductFacilityLocation ent, ) =>
      client.invoke('updateProductFacilityLocation', ent, {  });

  /**
   * Sets the ATP/QOH totals for serialized inventory items - InventoryItem
   *
   * Requires inventoryItemId
   * Returns 
   */
  Future<OfResult> updateSerializedInventoryTotals(InventoryItem ent, ) =>
      client.invoke('updateSerializedInventoryTotals', ent, {  });

}