import 'package:sagas_meta/src/models/shipment_receipt.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ShipmentReceiptJsonifier{
  static RejectionReason extractRejectionReason(dynamic json) {
    return RejectionReason(
        entityId: create_id_from('RejectionReason', ['rejectionId'], json),
        rejectionId: json['rejectionId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RejectionReason overridesRejectionReason(Map<String, dynamic> map) {
    return RejectionReason(
        entityId: create_id_from('RejectionReason', ['rejectionId'], map),
        rejectionId: map['rejectionId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentReceipt extractShipmentReceipt(dynamic json) {
    return ShipmentReceipt(
        entityId: create_id_from('ShipmentReceipt', ['receiptId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        quantityAccepted: json['quantityAccepted'] as double,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        quantityRejected: json['quantityRejected'] as double,
        inventoryItemId: json['inventoryItemId'] as String,
        rejectionId: json['rejectionId'] as String,
        shipmentId: json['shipmentId'] as String,
        receivedByUserLoginId: json['receivedByUserLoginId'] as String,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        itemDescription: json['itemDescription'] as String,
        receiptId: json['receiptId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentReceipt overridesShipmentReceipt(Map<String, dynamic> map) {
    return ShipmentReceipt(
        entityId: create_id_from('ShipmentReceipt', ['receiptId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        productId: map['productId'],
        orderId: map['orderId'],
        quantityAccepted: map['quantityAccepted'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        quantityRejected: map['quantityRejected'],
        inventoryItemId: map['inventoryItemId'],
        rejectionId: map['rejectionId'],
        shipmentId: map['shipmentId'],
        receivedByUserLoginId: map['receivedByUserLoginId'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        datetimeReceived: map['datetimeReceived'],
        itemDescription: map['itemDescription'],
        receiptId: map['receiptId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentReceiptRole extractShipmentReceiptRole(dynamic json) {
    return ShipmentReceiptRole(
        entityId: create_id_from('ShipmentReceiptRole', ['receiptId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        receiptId: json['receiptId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentReceiptRole overridesShipmentReceiptRole(Map<String, dynamic> map) {
    return ShipmentReceiptRole(
        entityId: create_id_from('ShipmentReceiptRole', ['receiptId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        receiptId: map['receiptId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}