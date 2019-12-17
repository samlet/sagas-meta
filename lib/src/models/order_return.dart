import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CommunicationEventReturn, Communication Event Return
class CommunicationEventReturn extends EntityBase {

  final String returnId; // pk
  final String communicationEventId; // pk
  CommunicationEventReturn({entityId,
    @required this.returnId, @required this.communicationEventId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventReturn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'returnId':returnId, 'communicationEventId':communicationEventId};
  }

}

/// Entity ReturnAdjustment, Return Adjustment
class ReturnAdjustment extends EntityBase {

  /// this entity has only one pk
  final String customerReferenceId;
  final String correspondingProductId;
  final String includeInShipping;
  final String description;
  final String returnTypeId;
  final double exemptAmount;
  final String productPromoId;
  final String taxAuthPartyId;
  final String returnAdjustmentTypeId;
  final String lastModifiedByUserLogin;
  final String primaryGeoId;
  final String returnId;
  final String taxAuthGeoId;
  final String secondaryGeoId;
  final String createdByUserLogin;
  final String orderAdjustmentId;
  final double amount;
  final String comments;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final String productPromoRuleId;
  final String productFeatureId;
  final String taxAuthorityRateSeqId;
  final String overrideGlAccountId;
  final String shipGroupSeqId;
  final String includeInTax;
  final String returnAdjustmentId; // pk
  final DateTime createdDate;
  final String productPromoActionSeqId;
  final double sourcePercentage;
  final String returnItemSeqId;
  ReturnAdjustment({entityId,
    this.customerReferenceId, this.correspondingProductId, this.includeInShipping, this.description, this.returnTypeId, this.exemptAmount, this.productPromoId, this.taxAuthPartyId, this.returnAdjustmentTypeId, this.lastModifiedByUserLogin, this.primaryGeoId, this.returnId, this.taxAuthGeoId, this.secondaryGeoId, this.createdByUserLogin, this.orderAdjustmentId, this.amount, this.comments, this.lastModifiedDate, this.sourceReferenceId, this.productPromoRuleId, this.productFeatureId, this.taxAuthorityRateSeqId, this.overrideGlAccountId, this.shipGroupSeqId, this.includeInTax, @required this.returnAdjustmentId, this.createdDate, this.productPromoActionSeqId, this.sourcePercentage, this.returnItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnAdjustment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customerReferenceId':customerReferenceId, 'correspondingProductId':correspondingProductId, 'includeInShipping':includeInShipping, 'description':description, 'returnTypeId':returnTypeId, 'exemptAmount':exemptAmount, 'productPromoId':productPromoId, 'taxAuthPartyId':taxAuthPartyId, 'returnAdjustmentTypeId':returnAdjustmentTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'primaryGeoId':primaryGeoId, 'returnId':returnId, 'taxAuthGeoId':taxAuthGeoId, 'secondaryGeoId':secondaryGeoId, 'createdByUserLogin':createdByUserLogin, 'orderAdjustmentId':orderAdjustmentId, 'amount':amount, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'productPromoRuleId':productPromoRuleId, 'productFeatureId':productFeatureId, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'overrideGlAccountId':overrideGlAccountId, 'shipGroupSeqId':shipGroupSeqId, 'includeInTax':includeInTax, 'returnAdjustmentId':returnAdjustmentId, 'createdDate':createdDate, 'productPromoActionSeqId':productPromoActionSeqId, 'sourcePercentage':sourcePercentage, 'returnItemSeqId':returnItemSeqId};
  }

}

/// Entity ReturnAdjustmentType, Return Adjustment Type
class ReturnAdjustmentType extends EntityBase {

  /// this entity has only one pk
  final String returnAdjustmentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  ReturnAdjustmentType({entityId,
    @required this.returnAdjustmentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnAdjustmentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'returnAdjustmentTypeId':returnAdjustmentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity ReturnContactMech, Retrun Contact Mechanism
class ReturnContactMech extends EntityBase {

  final String contactMechPurposeTypeId; // pk
  final String returnId; // pk
  final String contactMechId; // pk
  ReturnContactMech({entityId,
    @required this.contactMechPurposeTypeId, @required this.returnId, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechPurposeTypeId':contactMechPurposeTypeId, 'returnId':returnId, 'contactMechId':contactMechId};
  }

}

/// Entity ReturnHeader, Return
class ReturnHeader extends EntityBase {

  /// this entity has only one pk
  final String fromPartyId;
  final DateTime entryDate;
  final String originContactMechId;
  final String billingAccountId;
  final String returnHeaderTypeId;
  final String finAccountId;
  final String currencyUomId;
  final String statusId;
  final String createdBy;
  final String paymentMethodId;
  final String needsInventoryReceive;
  final String returnId; // pk
  final String toPartyId;
  final String destinationFacilityId;
  final String supplierRmaId;
  ReturnHeader({entityId,
    this.fromPartyId, this.entryDate, this.originContactMechId, this.billingAccountId, this.returnHeaderTypeId, this.finAccountId, this.currencyUomId, this.statusId, this.createdBy, this.paymentMethodId, this.needsInventoryReceive, @required this.returnId, this.toPartyId, this.destinationFacilityId, this.supplierRmaId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromPartyId':fromPartyId, 'entryDate':entryDate, 'originContactMechId':originContactMechId, 'billingAccountId':billingAccountId, 'returnHeaderTypeId':returnHeaderTypeId, 'finAccountId':finAccountId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'createdBy':createdBy, 'paymentMethodId':paymentMethodId, 'needsInventoryReceive':needsInventoryReceive, 'returnId':returnId, 'toPartyId':toPartyId, 'destinationFacilityId':destinationFacilityId, 'supplierRmaId':supplierRmaId};
  }

}

/// Entity ReturnHeaderType, Return Header Type
class ReturnHeaderType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String description;
  final String returnHeaderTypeId; // pk
  ReturnHeaderType({entityId,
    this.parentTypeId, this.description, @required this.returnHeaderTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnHeaderType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'description':description, 'returnHeaderTypeId':returnHeaderTypeId};
  }

}

/// Entity ReturnItem, Return Item
class ReturnItem extends EntityBase {

  final String orderItemSeqId;
  final double returnQuantity;
  final String productId;
  final String orderId;
  final String returnTypeId;
  final String description;
  final double returnPrice;
  final String returnItemResponseId;
  final String statusId;
  final String returnReasonId;
  final String returnItemTypeId;
  final double receivedQuantity;
  final String returnId; // pk
  final String returnItemSeqId; // pk
  final String expectedItemStatus;
  ReturnItem({entityId,
    this.orderItemSeqId, this.returnQuantity, this.productId, this.orderId, this.returnTypeId, this.description, this.returnPrice, this.returnItemResponseId, this.statusId, this.returnReasonId, this.returnItemTypeId, this.receivedQuantity, @required this.returnId, @required this.returnItemSeqId, this.expectedItemStatus,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'returnQuantity':returnQuantity, 'productId':productId, 'orderId':orderId, 'returnTypeId':returnTypeId, 'description':description, 'returnPrice':returnPrice, 'returnItemResponseId':returnItemResponseId, 'statusId':statusId, 'returnReasonId':returnReasonId, 'returnItemTypeId':returnItemTypeId, 'receivedQuantity':receivedQuantity, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'expectedItemStatus':expectedItemStatus};
  }

}

/// Entity ReturnItemBilling, Records the quantity and amount returned to an inventory item from a return item.
class ReturnItemBilling extends EntityBase {

  final double amount;
  final double quantity;
  final String returnId; // pk
  final String returnItemSeqId; // pk
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String shipmentReceiptId;
  ReturnItemBilling({entityId,
    this.amount, this.quantity, @required this.returnId, @required this.returnItemSeqId, @required this.invoiceId, @required this.invoiceItemSeqId, this.shipmentReceiptId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItemBilling { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'quantity':quantity, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'shipmentReceiptId':shipmentReceiptId};
  }

}

/// Entity ReturnItemResponse, The Return Item Response
class ReturnItemResponse extends EntityBase {

  /// this entity has only one pk
  final String replacementOrderId;
  final String finAccountTransId;
  final String returnItemResponseId; // pk
  final String orderPaymentPreferenceId;
  final double responseAmount;
  final String paymentId;
  final String billingAccountId;
  final DateTime responseDate;
  ReturnItemResponse({entityId,
    this.replacementOrderId, this.finAccountTransId, @required this.returnItemResponseId, this.orderPaymentPreferenceId, this.responseAmount, this.paymentId, this.billingAccountId, this.responseDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItemResponse { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'replacementOrderId':replacementOrderId, 'finAccountTransId':finAccountTransId, 'returnItemResponseId':returnItemResponseId, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'responseAmount':responseAmount, 'paymentId':paymentId, 'billingAccountId':billingAccountId, 'responseDate':responseDate};
  }

}

/// Entity ReturnItemShipment, Return Item And Shipment Association
class ReturnItemShipment extends EntityBase {

  final double quantity;
  final String shipmentId; // pk
  final String returnId; // pk
  final String returnItemSeqId; // pk
  final String shipmentItemSeqId; // pk
  ReturnItemShipment({entityId,
    this.quantity, @required this.shipmentId, @required this.returnId, @required this.returnItemSeqId, @required this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItemShipment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'shipmentId':shipmentId, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}

/// Entity ReturnItemType, Return Item Type
class ReturnItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String returnItemTypeId; // pk
  final String description;
  ReturnItemType({entityId,
    this.parentTypeId, @required this.returnItemTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'returnItemTypeId':returnItemTypeId, 'description':description};
  }

}

/// Entity ReturnItemTypeMap, Return Item Type Map
class ReturnItemTypeMap extends EntityBase {

  final String returnItemTypeId;
  final String returnItemMapKey; // pk
  final String returnHeaderTypeId; // pk
  ReturnItemTypeMap({entityId,
    this.returnItemTypeId, @required this.returnItemMapKey, @required this.returnHeaderTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnItemTypeMap { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'returnItemTypeId':returnItemTypeId, 'returnItemMapKey':returnItemMapKey, 'returnHeaderTypeId':returnHeaderTypeId};
  }

}

/// Entity ReturnReason, Return Reason
class ReturnReason extends EntityBase {

  /// this entity has only one pk
  final String returnReasonId; // pk
  final String description;
  final String sequenceId;
  ReturnReason({entityId,
    @required this.returnReasonId, this.description, this.sequenceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnReason { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'returnReasonId':returnReasonId, 'description':description, 'sequenceId':sequenceId};
  }

}

/// Entity ReturnStatus, Return Status History
class ReturnStatus extends EntityBase {

  /// this entity has only one pk
  final String statusId;
  final String returnStatusId; // pk
  final String returnId;
  final String returnItemSeqId;
  final String changeByUserLoginId;
  final DateTime statusDatetime;
  ReturnStatus({entityId,
    this.statusId, @required this.returnStatusId, this.returnId, this.returnItemSeqId, this.changeByUserLoginId, this.statusDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusId':statusId, 'returnStatusId':returnStatusId, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'changeByUserLoginId':changeByUserLoginId, 'statusDatetime':statusDatetime};
  }

}

/// Entity ReturnType, Return Type
class ReturnType extends EntityBase {

  /// this entity has only one pk
  final String returnTypeId; // pk
  final String description;
  final String sequenceId;
  ReturnType({entityId,
    @required this.returnTypeId, this.description, this.sequenceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReturnType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'returnTypeId':returnTypeId, 'description':description, 'sequenceId':sequenceId};
  }

}