import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity RejectionReason, Rejection Reason
class RejectionReason extends EntityBase {

  /// this entity has only one pk
  final String rejectionId; // pk
  final String description;
  RejectionReason({entityId,
    @required this.rejectionId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RejectionReason { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'rejectionId':rejectionId, 'description':description};
  }

}

/// Entity ShipmentReceipt, Shipment Receipt
class ShipmentReceipt extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String productId;
  final String orderId;
  final double quantityAccepted;
  final String shipmentPackageSeqId;
  final String shipmentItemSeqId;
  final double quantityRejected;
  final String inventoryItemId;
  final String rejectionId;
  final String shipmentId;
  final String receivedByUserLoginId;
  final String returnId;
  final String returnItemSeqId;
  final DateTime datetimeReceived;
  final String itemDescription;
  final String receiptId; // pk
  ShipmentReceipt({entityId,
    this.orderItemSeqId, this.productId, this.orderId, this.quantityAccepted, this.shipmentPackageSeqId, this.shipmentItemSeqId, this.quantityRejected, this.inventoryItemId, this.rejectionId, this.shipmentId, this.receivedByUserLoginId, this.returnId, this.returnItemSeqId, this.datetimeReceived, this.itemDescription, @required this.receiptId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentReceipt { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'productId':productId, 'orderId':orderId, 'quantityAccepted':quantityAccepted, 'shipmentPackageSeqId':shipmentPackageSeqId, 'shipmentItemSeqId':shipmentItemSeqId, 'quantityRejected':quantityRejected, 'inventoryItemId':inventoryItemId, 'rejectionId':rejectionId, 'shipmentId':shipmentId, 'receivedByUserLoginId':receivedByUserLoginId, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'datetimeReceived':datetimeReceived, 'itemDescription':itemDescription, 'receiptId':receiptId};
  }

}

/// Entity ShipmentReceiptRole, Shipment Receipt Role
class ShipmentReceiptRole extends EntityBase {

  final String roleTypeId; // pk
  final String partyId; // pk
  final String receiptId; // pk
  ShipmentReceiptRole({entityId,
    @required this.roleTypeId, @required this.partyId, @required this.receiptId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentReceiptRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'partyId':partyId, 'receiptId':receiptId};
  }

}