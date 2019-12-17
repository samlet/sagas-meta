import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ItemIssuance, Item Issuance
class ItemIssuance extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final double quantity;
  final String orderId;
  final String maintHistSeqId;
  final String shipmentItemSeqId;
  final String shipGroupSeqId;
  final double cancelQuantity;
  final String inventoryItemId;
  final String itemIssuanceId; // pk
  final String shipmentId;
  final DateTime issuedDateTime;
  final String fixedAssetId;
  final String issuedByUserLoginId;
  ItemIssuance({entityId,
    this.orderItemSeqId, this.quantity, this.orderId, this.maintHistSeqId, this.shipmentItemSeqId, this.shipGroupSeqId, this.cancelQuantity, this.inventoryItemId, @required this.itemIssuanceId, this.shipmentId, this.issuedDateTime, this.fixedAssetId, this.issuedByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ItemIssuance { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'orderId':orderId, 'maintHistSeqId':maintHistSeqId, 'shipmentItemSeqId':shipmentItemSeqId, 'shipGroupSeqId':shipGroupSeqId, 'cancelQuantity':cancelQuantity, 'inventoryItemId':inventoryItemId, 'itemIssuanceId':itemIssuanceId, 'shipmentId':shipmentId, 'issuedDateTime':issuedDateTime, 'fixedAssetId':fixedAssetId, 'issuedByUserLoginId':issuedByUserLoginId};
  }

}

/// Entity ItemIssuanceAndInventoryItem, ItemIssuanceAndInventoryItem
class ItemIssuanceAndInventoryItem extends EntityBase {

  final String orderId;
  final String softIdentifier;
  final String binNumber;
  final String maintHistSeqId;
  final double oldAvailableToPromise;
  final String inventoryItemFixedAssetId;
  final double quantityOnHandTotal;
  final String itemIssuanceId; // pk
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final double oldQuantityOnHand;
  final String partyId;
  final String containerId;
  final double availableToPromiseTotal;
  final String inventoryItemTypeId;
  final String locationSeqId;
  final String orderItemSeqId;
  final String facilityId;
  final String comments;
  final String serialNumber;
  final double quantity;
  final String productId;
  final String lotId;
  final String uomId;
  final double accountingQuantityTotal;
  final String shipmentItemSeqId;
  final String shipGroupSeqId;
  final double cancelQuantity;
  final String inventoryItemId; // pk
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final String statusId;
  final String shipmentId;
  final double unitCost;
  final DateTime issuedDateTime;
  final String fixedAssetId;
  final DateTime datetimeReceived;
  final String issuedByUserLoginId;
  ItemIssuanceAndInventoryItem({entityId,
    this.orderId, this.softIdentifier, this.binNumber, this.maintHistSeqId, this.oldAvailableToPromise, this.inventoryItemFixedAssetId, this.quantityOnHandTotal, @required this.itemIssuanceId, this.datetimeManufactured, this.expireDate, this.oldQuantityOnHand, this.partyId, this.containerId, this.availableToPromiseTotal, this.inventoryItemTypeId, this.locationSeqId, this.orderItemSeqId, this.facilityId, this.comments, this.serialNumber, this.quantity, this.productId, this.lotId, this.uomId, this.accountingQuantityTotal, this.shipmentItemSeqId, this.shipGroupSeqId, this.cancelQuantity, @required this.inventoryItemId, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.statusId, this.shipmentId, this.unitCost, this.issuedDateTime, this.fixedAssetId, this.datetimeReceived, this.issuedByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ItemIssuanceAndInventoryItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'softIdentifier':softIdentifier, 'binNumber':binNumber, 'maintHistSeqId':maintHistSeqId, 'oldAvailableToPromise':oldAvailableToPromise, 'inventoryItemFixedAssetId':inventoryItemFixedAssetId, 'quantityOnHandTotal':quantityOnHandTotal, 'itemIssuanceId':itemIssuanceId, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'oldQuantityOnHand':oldQuantityOnHand, 'partyId':partyId, 'containerId':containerId, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId, 'locationSeqId':locationSeqId, 'orderItemSeqId':orderItemSeqId, 'facilityId':facilityId, 'comments':comments, 'serialNumber':serialNumber, 'quantity':quantity, 'productId':productId, 'lotId':lotId, 'uomId':uomId, 'accountingQuantityTotal':accountingQuantityTotal, 'shipmentItemSeqId':shipmentItemSeqId, 'shipGroupSeqId':shipGroupSeqId, 'cancelQuantity':cancelQuantity, 'inventoryItemId':inventoryItemId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'statusId':statusId, 'shipmentId':shipmentId, 'unitCost':unitCost, 'issuedDateTime':issuedDateTime, 'fixedAssetId':fixedAssetId, 'datetimeReceived':datetimeReceived, 'issuedByUserLoginId':issuedByUserLoginId};
  }

}

/// Entity ItemIssuanceRole, Item Issuance Role
class ItemIssuanceRole extends EntityBase {

  final String roleTypeId; // pk
  final String itemIssuanceId; // pk
  final String partyId; // pk
  ItemIssuanceRole({entityId,
    @required this.roleTypeId, @required this.itemIssuanceId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ItemIssuanceRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'itemIssuanceId':itemIssuanceId, 'partyId':partyId};
  }

}