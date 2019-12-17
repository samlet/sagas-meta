import 'package:sagas_meta/src/models/shipment_picklist.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ShipmentPicklistJsonifier{
  static Picklist extractPicklist(dynamic json) {
    return Picklist(
        entityId: create_id_from('Picklist', ['picklistId'], json),
        picklistId: json['picklistId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        facilityId: json['facilityId'] as String,
        statusId: json['statusId'] as String,
        description: json['description'] as String,
        picklistDate: check_dt(json['picklistDate']),
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Picklist overridesPicklist(Map<String, dynamic> map) {
    return Picklist(
        entityId: create_id_from('Picklist', ['picklistId'], map),
        picklistId: map['picklistId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        facilityId: map['facilityId'],
        statusId: map['statusId'],
        description: map['description'],
        picklistDate: map['picklistDate'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistAndBinAndItem extractPicklistAndBinAndItem(dynamic json) {
    return PicklistAndBinAndItem(
        entityId: create_id_from('PicklistAndBinAndItem', ['picklistId', 'picklistBinId', 'orderItemSeqId', 'inventoryItemId', 'orderId', 'shipGroupSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        orderId: json['orderId'] as String,
        description: json['description'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        binLocationNumber: json['binLocationNumber'] as int,
        itemStatusId: json['itemStatusId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        picklistId: json['picklistId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        statusId: json['statusId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        picklistDate: check_dt(json['picklistDate']),
        picklistBinId: json['picklistBinId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        primaryShipGroupSeqId: json['primaryShipGroupSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistAndBinAndItem overridesPicklistAndBinAndItem(Map<String, dynamic> map) {
    return PicklistAndBinAndItem(
        entityId: create_id_from('PicklistAndBinAndItem', ['picklistId', 'picklistBinId', 'orderItemSeqId', 'inventoryItemId', 'orderId', 'shipGroupSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        orderId: map['orderId'],
        description: map['description'],
        shipGroupSeqId: map['shipGroupSeqId'],
        binLocationNumber: map['binLocationNumber'],
        itemStatusId: map['itemStatusId'],
        inventoryItemId: map['inventoryItemId'],
        picklistId: map['picklistId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        statusId: map['statusId'],
        primaryOrderId: map['primaryOrderId'],
        picklistDate: map['picklistDate'],
        picklistBinId: map['picklistBinId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        createdByUserLogin: map['createdByUserLogin'],
        primaryShipGroupSeqId: map['primaryShipGroupSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistBin extractPicklistBin(dynamic json) {
    return PicklistBin(
        entityId: create_id_from('PicklistBin', ['picklistBinId'], json),
        picklistId: json['picklistId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        picklistBinId: json['picklistBinId'] as String,
        primaryShipGroupSeqId: json['primaryShipGroupSeqId'] as String,
        binLocationNumber: json['binLocationNumber'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistBin overridesPicklistBin(Map<String, dynamic> map) {
    return PicklistBin(
        entityId: create_id_from('PicklistBin', ['picklistBinId'], map),
        picklistId: map['picklistId'],
        primaryOrderId: map['primaryOrderId'],
        picklistBinId: map['picklistBinId'],
        primaryShipGroupSeqId: map['primaryShipGroupSeqId'],
        binLocationNumber: map['binLocationNumber'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistItem extractPicklistItem(dynamic json) {
    return PicklistItem(
        entityId: create_id_from('PicklistItem', ['picklistBinId', 'orderId', 'orderItemSeqId', 'shipGroupSeqId', 'inventoryItemId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        quantity: json['quantity'] as double,
        orderId: json['orderId'] as String,
        picklistBinId: json['picklistBinId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        itemStatusId: json['itemStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistItem overridesPicklistItem(Map<String, dynamic> map) {
    return PicklistItem(
        entityId: create_id_from('PicklistItem', ['picklistBinId', 'orderId', 'orderItemSeqId', 'shipGroupSeqId', 'inventoryItemId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        inventoryItemId: map['inventoryItemId'],
        quantity: map['quantity'],
        orderId: map['orderId'],
        picklistBinId: map['picklistBinId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        itemStatusId: map['itemStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistItemAndBin extractPicklistItemAndBin(dynamic json) {
    return PicklistItemAndBin(
        entityId: create_id_from('PicklistItemAndBin', ['picklistBinId', 'orderItemSeqId', 'inventoryItemId', 'orderId', 'shipGroupSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        picklistId: json['picklistId'] as String,
        quantity: json['quantity'] as double,
        orderId: json['orderId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        picklistBinId: json['picklistBinId'] as String,
        primaryShipGroupSeqId: json['primaryShipGroupSeqId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        binLocationNumber: json['binLocationNumber'] as int,
        itemStatusId: json['itemStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistItemAndBin overridesPicklistItemAndBin(Map<String, dynamic> map) {
    return PicklistItemAndBin(
        entityId: create_id_from('PicklistItemAndBin', ['picklistBinId', 'orderItemSeqId', 'inventoryItemId', 'orderId', 'shipGroupSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        inventoryItemId: map['inventoryItemId'],
        picklistId: map['picklistId'],
        quantity: map['quantity'],
        orderId: map['orderId'],
        primaryOrderId: map['primaryOrderId'],
        picklistBinId: map['picklistBinId'],
        primaryShipGroupSeqId: map['primaryShipGroupSeqId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        binLocationNumber: map['binLocationNumber'],
        itemStatusId: map['itemStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistRole extractPicklistRole(dynamic json) {
    return PicklistRole(
        entityId: create_id_from('PicklistRole', ['picklistId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        picklistId: json['picklistId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        partyId: json['partyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistRole overridesPicklistRole(Map<String, dynamic> map) {
    return PicklistRole(
        entityId: create_id_from('PicklistRole', ['picklistId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        picklistId: map['picklistId'],
        roleTypeId: map['roleTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        partyId: map['partyId'],
        createdByUserLogin: map['createdByUserLogin'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PicklistStatusHistory extractPicklistStatusHistory(dynamic json) {
    return PicklistStatusHistory(
        entityId: create_id_from('PicklistStatusHistory', ['picklistId', 'changeDate'], json),
        picklistId: json['picklistId'] as String,
        statusId: json['statusId'] as String,
        changeDate: check_dt(json['changeDate']),
        statusIdTo: json['statusIdTo'] as String,
        changeUserLoginId: json['changeUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PicklistStatusHistory overridesPicklistStatusHistory(Map<String, dynamic> map) {
    return PicklistStatusHistory(
        entityId: create_id_from('PicklistStatusHistory', ['picklistId', 'changeDate'], map),
        picklistId: map['picklistId'],
        statusId: map['statusId'],
        changeDate: map['changeDate'],
        statusIdTo: map['statusIdTo'],
        changeUserLoginId: map['changeUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}