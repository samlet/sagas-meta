import 'package:sagas_meta/src/models/shipment_issuance.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ShipmentIssuanceJsonifier{
  static ItemIssuance extractItemIssuance(dynamic json) {
    return ItemIssuance(
        entityId: create_id_from('ItemIssuance', ['itemIssuanceId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        quantity: json['quantity'] as double,
        orderId: json['orderId'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        cancelQuantity: json['cancelQuantity'] as double,
        inventoryItemId: json['inventoryItemId'] as String,
        itemIssuanceId: json['itemIssuanceId'] as String,
        shipmentId: json['shipmentId'] as String,
        issuedDateTime: check_dt(json['issuedDateTime']),
        fixedAssetId: json['fixedAssetId'] as String,
        issuedByUserLoginId: json['issuedByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ItemIssuance overridesItemIssuance(Map<String, dynamic> map) {
    return ItemIssuance(
        entityId: create_id_from('ItemIssuance', ['itemIssuanceId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        quantity: map['quantity'],
        orderId: map['orderId'],
        maintHistSeqId: map['maintHistSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        cancelQuantity: map['cancelQuantity'],
        inventoryItemId: map['inventoryItemId'],
        itemIssuanceId: map['itemIssuanceId'],
        shipmentId: map['shipmentId'],
        issuedDateTime: map['issuedDateTime'],
        fixedAssetId: map['fixedAssetId'],
        issuedByUserLoginId: map['issuedByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ItemIssuanceAndInventoryItem extractItemIssuanceAndInventoryItem(dynamic json) {
    return ItemIssuanceAndInventoryItem(
        entityId: create_id_from('ItemIssuanceAndInventoryItem', ['inventoryItemId', 'itemIssuanceId'], json),
        orderId: json['orderId'] as String,
        softIdentifier: json['softIdentifier'] as String,
        binNumber: json['binNumber'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        oldAvailableToPromise: json['oldAvailableToPromise'] as double,
        inventoryItemFixedAssetId: json['inventoryItemFixedAssetId'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        itemIssuanceId: json['itemIssuanceId'] as String,
        datetimeManufactured: check_dt(json['datetimeManufactured']),
        expireDate: check_dt(json['expireDate']),
        oldQuantityOnHand: json['oldQuantityOnHand'] as double,
        partyId: json['partyId'] as String,
        containerId: json['containerId'] as String,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        orderItemSeqId: json['orderItemSeqId'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        serialNumber: json['serialNumber'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        lotId: json['lotId'] as String,
        uomId: json['uomId'] as String,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        cancelQuantity: json['cancelQuantity'] as double,
        inventoryItemId: json['inventoryItemId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        activationValidThru: check_dt(json['activationValidThru']),
        activationNumber: json['activationNumber'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        shipmentId: json['shipmentId'] as String,
        unitCost: json['unitCost'] as double,
        issuedDateTime: check_dt(json['issuedDateTime']),
        fixedAssetId: json['fixedAssetId'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        issuedByUserLoginId: json['issuedByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ItemIssuanceAndInventoryItem overridesItemIssuanceAndInventoryItem(Map<String, dynamic> map) {
    return ItemIssuanceAndInventoryItem(
        entityId: create_id_from('ItemIssuanceAndInventoryItem', ['inventoryItemId', 'itemIssuanceId'], map),
        orderId: map['orderId'],
        softIdentifier: map['softIdentifier'],
        binNumber: map['binNumber'],
        maintHistSeqId: map['maintHistSeqId'],
        oldAvailableToPromise: map['oldAvailableToPromise'],
        inventoryItemFixedAssetId: map['inventoryItemFixedAssetId'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        itemIssuanceId: map['itemIssuanceId'],
        datetimeManufactured: map['datetimeManufactured'],
        expireDate: map['expireDate'],
        oldQuantityOnHand: map['oldQuantityOnHand'],
        partyId: map['partyId'],
        containerId: map['containerId'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        locationSeqId: map['locationSeqId'],
        orderItemSeqId: map['orderItemSeqId'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        serialNumber: map['serialNumber'],
        quantity: map['quantity'],
        productId: map['productId'],
        lotId: map['lotId'],
        uomId: map['uomId'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        cancelQuantity: map['cancelQuantity'],
        inventoryItemId: map['inventoryItemId'],
        ownerPartyId: map['ownerPartyId'],
        activationValidThru: map['activationValidThru'],
        activationNumber: map['activationNumber'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        shipmentId: map['shipmentId'],
        unitCost: map['unitCost'],
        issuedDateTime: map['issuedDateTime'],
        fixedAssetId: map['fixedAssetId'],
        datetimeReceived: map['datetimeReceived'],
        issuedByUserLoginId: map['issuedByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ItemIssuanceRole extractItemIssuanceRole(dynamic json) {
    return ItemIssuanceRole(
        entityId: create_id_from('ItemIssuanceRole', ['itemIssuanceId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        itemIssuanceId: json['itemIssuanceId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ItemIssuanceRole overridesItemIssuanceRole(Map<String, dynamic> map) {
    return ItemIssuanceRole(
        entityId: create_id_from('ItemIssuanceRole', ['itemIssuanceId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        itemIssuanceId: map['itemIssuanceId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}