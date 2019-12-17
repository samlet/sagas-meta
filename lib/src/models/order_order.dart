import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CommunicationEventOrder, Communication Event Order
class CommunicationEventOrder extends EntityBase {

  final String orderId; // pk
  final String communicationEventId; // pk
  CommunicationEventOrder({entityId,
    @required this.orderId, @required this.communicationEventId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'communicationEventId':communicationEventId};
  }

}

/// Entity ItemIssuanceQuantitySum, Sum item issuance quantity to use directly in OrderItemQuantityReportGroupByItem and OrderItemQuantityReportGroupByProduct entities
class ItemIssuanceQuantitySum extends EntityBase {

  final String orderItemSeqId;
  final String orderId;
  final double issuedQuantitySum;
  ItemIssuanceQuantitySum({entityId,
    this.orderItemSeqId, this.orderId, this.issuedQuantitySum,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ItemIssuanceQuantitySum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'issuedQuantitySum':issuedQuantitySum};
  }

}

/// Entity OrderAdjustment, Order Adjustment
class OrderAdjustment extends EntityBase {

  /// this entity has only one pk
  final String customerReferenceId;
  final String correspondingProductId;
  final String orderId;
  final String includeInShipping;
  final String description;
  final double exemptAmount;
  final String productPromoId;
  final String taxAuthPartyId;
  final String lastModifiedByUserLogin;
  final double oldPercentage;
  final String primaryGeoId;
  final String taxAuthGeoId;
  final String originalAdjustmentId;
  final String secondaryGeoId;
  final String createdByUserLogin;
  final String orderAdjustmentId; // pk
  final double amountAlreadyIncluded;
  final String orderItemSeqId;
  final double amount;
  final String comments;
  final double recurringAmount;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final String orderAdjustmentTypeId;
  final String productPromoRuleId;
  final String isManual;
  final String productFeatureId;
  final String taxAuthorityRateSeqId;
  final String overrideGlAccountId;
  final double oldAmountPerQuantity;
  final String shipGroupSeqId;
  final String includeInTax;
  final DateTime createdDate;
  final String productPromoActionSeqId;
  final double sourcePercentage;
  OrderAdjustment({entityId,
    this.customerReferenceId, this.correspondingProductId, this.orderId, this.includeInShipping, this.description, this.exemptAmount, this.productPromoId, this.taxAuthPartyId, this.lastModifiedByUserLogin, this.oldPercentage, this.primaryGeoId, this.taxAuthGeoId, this.originalAdjustmentId, this.secondaryGeoId, this.createdByUserLogin, @required this.orderAdjustmentId, this.amountAlreadyIncluded, this.orderItemSeqId, this.amount, this.comments, this.recurringAmount, this.lastModifiedDate, this.sourceReferenceId, this.orderAdjustmentTypeId, this.productPromoRuleId, this.isManual, this.productFeatureId, this.taxAuthorityRateSeqId, this.overrideGlAccountId, this.oldAmountPerQuantity, this.shipGroupSeqId, this.includeInTax, this.createdDate, this.productPromoActionSeqId, this.sourcePercentage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAdjustment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customerReferenceId':customerReferenceId, 'correspondingProductId':correspondingProductId, 'orderId':orderId, 'includeInShipping':includeInShipping, 'description':description, 'exemptAmount':exemptAmount, 'productPromoId':productPromoId, 'taxAuthPartyId':taxAuthPartyId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'oldPercentage':oldPercentage, 'primaryGeoId':primaryGeoId, 'taxAuthGeoId':taxAuthGeoId, 'originalAdjustmentId':originalAdjustmentId, 'secondaryGeoId':secondaryGeoId, 'createdByUserLogin':createdByUserLogin, 'orderAdjustmentId':orderAdjustmentId, 'amountAlreadyIncluded':amountAlreadyIncluded, 'orderItemSeqId':orderItemSeqId, 'amount':amount, 'comments':comments, 'recurringAmount':recurringAmount, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'orderAdjustmentTypeId':orderAdjustmentTypeId, 'productPromoRuleId':productPromoRuleId, 'isManual':isManual, 'productFeatureId':productFeatureId, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'overrideGlAccountId':overrideGlAccountId, 'oldAmountPerQuantity':oldAmountPerQuantity, 'shipGroupSeqId':shipGroupSeqId, 'includeInTax':includeInTax, 'createdDate':createdDate, 'productPromoActionSeqId':productPromoActionSeqId, 'sourcePercentage':sourcePercentage};
  }

}

/// Entity OrderAdjustmentAttribute, Order Adjustment Attribute
class OrderAdjustmentAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String orderAdjustmentId; // pk
  final String attrName; // pk
  OrderAdjustmentAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.orderAdjustmentId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAdjustmentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'orderAdjustmentId':orderAdjustmentId, 'attrName':attrName};
  }

}

/// Entity OrderAdjustmentBilling, Order Adjustment Billing
class OrderAdjustmentBilling extends EntityBase {

  final double amount;
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String orderAdjustmentId; // pk
  OrderAdjustmentBilling({entityId,
    this.amount, @required this.invoiceId, @required this.invoiceItemSeqId, @required this.orderAdjustmentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAdjustmentBilling { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'orderAdjustmentId':orderAdjustmentId};
  }

}

/// Entity OrderAdjustmentType, Order Adjustment Type
class OrderAdjustmentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String orderAdjustmentTypeId; // pk
  final String description;
  OrderAdjustmentType({entityId,
    this.parentTypeId, this.hasTable, @required this.orderAdjustmentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAdjustmentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'orderAdjustmentTypeId':orderAdjustmentTypeId, 'description':description};
  }

}

/// Entity OrderAdjustmentTypeAttr, Order Adjustment Type Attribute
class OrderAdjustmentTypeAttr extends EntityBase {

  final String orderAdjustmentTypeId; // pk
  final String description;
  final String attrName; // pk
  OrderAdjustmentTypeAttr({entityId,
    @required this.orderAdjustmentTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAdjustmentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderAdjustmentTypeId':orderAdjustmentTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity OrderAttribute, Order Attribute
class OrderAttribute extends EntityBase {

  final String orderId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  OrderAttribute({entityId,
    @required this.orderId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity OrderBlacklist, Order Blacklist
class OrderBlacklist extends EntityBase {

  final String orderBlacklistTypeId; // pk
  final String blacklistString; // pk
  OrderBlacklist({entityId,
    @required this.orderBlacklistTypeId, @required this.blacklistString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderBlacklist { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderBlacklistTypeId':orderBlacklistTypeId, 'blacklistString':blacklistString};
  }

}

/// Entity OrderBlacklistType, Order Blacklist Type
class OrderBlacklistType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String orderBlacklistTypeId; // pk
  OrderBlacklistType({entityId,
    this.description, @required this.orderBlacklistTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderBlacklistType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'orderBlacklistTypeId':orderBlacklistTypeId};
  }

}

/// Entity OrderContactMech, Order Contact Mechanism
class OrderContactMech extends EntityBase {

  final String contactMechPurposeTypeId; // pk
  final String orderId; // pk
  final String contactMechId; // pk
  OrderContactMech({entityId,
    @required this.contactMechPurposeTypeId, @required this.orderId, @required this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contactMechPurposeTypeId':contactMechPurposeTypeId, 'orderId':orderId, 'contactMechId':contactMechId};
  }

}

/// Entity OrderContent, Order Data Object
class OrderContent extends EntityBase {

  final String orderItemSeqId; // pk
  final DateTime fromDate; // pk
  final String orderId; // pk
  final String contentId; // pk
  final String orderContentTypeId; // pk
  final DateTime thruDate;
  OrderContent({entityId,
    @required this.orderItemSeqId, @required this.fromDate, @required this.orderId, @required this.contentId, @required this.orderContentTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'fromDate':fromDate, 'orderId':orderId, 'contentId':contentId, 'orderContentTypeId':orderContentTypeId, 'thruDate':thruDate};
  }

}

/// Entity OrderContentType, Order Content Type
class OrderContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String orderContentTypeId; // pk
  OrderContentType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.orderContentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'orderContentTypeId':orderContentTypeId};
  }

}

/// Entity OrderDeliverySchedule, The Order Delivery Schedule
class OrderDeliverySchedule extends EntityBase {

  final String orderItemSeqId; // pk
  final double unitsPieces;
  final String orderId; // pk
  final double totalCubicSize;
  final DateTime estimatedReadyDate;
  final int skidsPallets;
  final String statusId;
  final double totalWeight;
  final String totalWeightUomId;
  final String totalCubicUomId;
  final int cartons;
  OrderDeliverySchedule({entityId,
    @required this.orderItemSeqId, this.unitsPieces, @required this.orderId, this.totalCubicSize, this.estimatedReadyDate, this.skidsPallets, this.statusId, this.totalWeight, this.totalWeightUomId, this.totalCubicUomId, this.cartons,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderDeliverySchedule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'unitsPieces':unitsPieces, 'orderId':orderId, 'totalCubicSize':totalCubicSize, 'estimatedReadyDate':estimatedReadyDate, 'skidsPallets':skidsPallets, 'statusId':statusId, 'totalWeight':totalWeight, 'totalWeightUomId':totalWeightUomId, 'totalCubicUomId':totalCubicUomId, 'cartons':cartons};
  }

}

/// Entity OrderHeader, Order Header
class OrderHeader extends EntityBase {

  /// this entity has only one pk
  final String invoicePerShipment;
  final String salesChannelEnumId;
  final String orderId; // pk
  final String orderTypeId;
  final String billingAccountId;
  final String terminalId;
  final String isViewed;
  final String visitId;
  final String agreementId;
  final String productStoreId;
  final double remainingSubTotal;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final DateTime entryDate;
  final double grandTotal;
  final String autoOrderShoppingListId;
  final String externalId;
  final String priority;
  final String transactionId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String statusId;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final DateTime orderDate;
  final String internalCode;
  OrderHeader({entityId,
    this.invoicePerShipment, this.salesChannelEnumId, @required this.orderId, this.orderTypeId, this.billingAccountId, this.terminalId, this.isViewed, this.visitId, this.agreementId, this.productStoreId, this.remainingSubTotal, this.orderName, this.webSiteId, this.isRushOrder, this.entryDate, this.grandTotal, this.autoOrderShoppingListId, this.externalId, this.priority, this.transactionId, this.firstAttemptOrderId, this.originFacilityId, this.statusId, this.createdBy, this.currencyUom, this.syncStatusId, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.orderDate, this.internalCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'terminalId':terminalId, 'isViewed':isViewed, 'visitId':visitId, 'agreementId':agreementId, 'productStoreId':productStoreId, 'remainingSubTotal':remainingSubTotal, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'entryDate':entryDate, 'grandTotal':grandTotal, 'autoOrderShoppingListId':autoOrderShoppingListId, 'externalId':externalId, 'priority':priority, 'transactionId':transactionId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'orderDate':orderDate, 'internalCode':internalCode};
  }

}

/// Entity OrderHeaderAndItemFacilityLocation, OrderHeader, OrderItemShipGrpInvRes, OrderItemShipGroup, InventoryItem and FacilityLocation View Entity
class OrderHeaderAndItemFacilityLocation extends EntityBase {

  final String orderItemSeqId; // pk
  final String inventoryItemId; // pk
  final String carrierPartyId;
  final String facilityId;
  final String areaId;
  final String productId;
  final String orderId; // pk
  final String shipGroupSeqId; // pk
  final String shipmentMethodTypeId;
  final String locationTypeEnumId;
  final String locationSeqId;
  OrderHeaderAndItemFacilityLocation({entityId,
    @required this.orderItemSeqId, @required this.inventoryItemId, this.carrierPartyId, this.facilityId, this.areaId, this.productId, @required this.orderId, @required this.shipGroupSeqId, this.shipmentMethodTypeId, this.locationTypeEnumId, this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndItemFacilityLocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'inventoryItemId':inventoryItemId, 'carrierPartyId':carrierPartyId, 'facilityId':facilityId, 'areaId':areaId, 'productId':productId, 'orderId':orderId, 'shipGroupSeqId':shipGroupSeqId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'locationTypeEnumId':locationTypeEnumId, 'locationSeqId':locationSeqId};
  }

}

/// Entity OrderHeaderAndItems, Order Header And Order Items View Entity
class OrderHeaderAndItems extends EntityBase {

  final String orderItemSeqId; // pk
  final double unitPrice;
  final double quantity;
  final String productId;
  final String orderId; // pk
  final double grandTotal;
  final String orderTypeId;
  final DateTime estimatedDeliveryDate;
  final double cancelQuantity;
  final String itemStatusId;
  final DateTime shipAfterDate;
  final DateTime shipBeforeDate;
  final String orderStatusId;
  final double unitListPrice;
  final DateTime estimatedShipDate;
  final String productStoreId;
  final String itemDescription;
  final DateTime orderDate;
  final String orderItemTypeId;
  OrderHeaderAndItems({entityId,
    @required this.orderItemSeqId, this.unitPrice, this.quantity, this.productId, @required this.orderId, this.grandTotal, this.orderTypeId, this.estimatedDeliveryDate, this.cancelQuantity, this.itemStatusId, this.shipAfterDate, this.shipBeforeDate, this.orderStatusId, this.unitListPrice, this.estimatedShipDate, this.productStoreId, this.itemDescription, this.orderDate, this.orderItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndItems { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'grandTotal':grandTotal, 'orderTypeId':orderTypeId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'cancelQuantity':cancelQuantity, 'itemStatusId':itemStatusId, 'shipAfterDate':shipAfterDate, 'shipBeforeDate':shipBeforeDate, 'orderStatusId':orderStatusId, 'unitListPrice':unitListPrice, 'estimatedShipDate':estimatedShipDate, 'productStoreId':productStoreId, 'itemDescription':itemDescription, 'orderDate':orderDate, 'orderItemTypeId':orderItemTypeId};
  }

}

/// Entity OrderHeaderAndPaymentPref, Order Header And Payment Preference View Entity
class OrderHeaderAndPaymentPref extends EntityBase {

  final String originFacilityId;
  final String orderPaymentPreferenceId; // pk
  final String orderStatusId;
  final String orderId; // pk
  final String currencyUom;
  final String productStoreId;
  final String terminalId;
  final String paymentMethodTypeId;
  final String paymentStatusId;
  final double maxAmount;
  final DateTime orderDate;
  final String webSiteId;
  OrderHeaderAndPaymentPref({entityId,
    this.originFacilityId, @required this.orderPaymentPreferenceId, this.orderStatusId, @required this.orderId, this.currencyUom, this.productStoreId, this.terminalId, this.paymentMethodTypeId, this.paymentStatusId, this.maxAmount, this.orderDate, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndPaymentPref { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originFacilityId':originFacilityId, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'orderStatusId':orderStatusId, 'orderId':orderId, 'currencyUom':currencyUom, 'productStoreId':productStoreId, 'terminalId':terminalId, 'paymentMethodTypeId':paymentMethodTypeId, 'paymentStatusId':paymentStatusId, 'maxAmount':maxAmount, 'orderDate':orderDate, 'webSiteId':webSiteId};
  }

}

/// Entity OrderHeaderAndRoleSummary, Order Header And Roles View Entity
class OrderHeaderAndRoleSummary extends EntityBase {

  final double totalGrandAmount;
  final String roleTypeId; // pk
  final String statusId;
  final String orderId; // pk
  final String orderTypeId;
  final int totalOrders; // pk
  final String partyId; // pk
  final DateTime orderDate;
  final double totalSubRemainingAmount;
  OrderHeaderAndRoleSummary({entityId,
    this.totalGrandAmount, @required this.roleTypeId, this.statusId, @required this.orderId, this.orderTypeId, @required this.totalOrders, @required this.partyId, this.orderDate, this.totalSubRemainingAmount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndRoleSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'totalGrandAmount':totalGrandAmount, 'roleTypeId':roleTypeId, 'statusId':statusId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'totalOrders':totalOrders, 'partyId':partyId, 'orderDate':orderDate, 'totalSubRemainingAmount':totalSubRemainingAmount};
  }

}

/// Entity OrderHeaderAndRoles, Order Header And Roles View Entity
class OrderHeaderAndRoles extends EntityBase {

  final String invoicePerShipment;
  final String salesChannelEnumId;
  final String orderId; // pk
  final String orderTypeId;
  final String billingAccountId;
  final String terminalId;
  final String isViewed;
  final String visitId;
  final String agreementId;
  final String productStoreId;
  final String partyId; // pk
  final double remainingSubTotal;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final String roleTypeId; // pk
  final DateTime entryDate;
  final double grandTotal;
  final String autoOrderShoppingListId;
  final String externalId;
  final String priority;
  final String transactionId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String statusId;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final DateTime orderDate;
  final String internalCode;
  OrderHeaderAndRoles({entityId,
    this.invoicePerShipment, this.salesChannelEnumId, @required this.orderId, this.orderTypeId, this.billingAccountId, this.terminalId, this.isViewed, this.visitId, this.agreementId, this.productStoreId, @required this.partyId, this.remainingSubTotal, this.orderName, this.webSiteId, this.isRushOrder, @required this.roleTypeId, this.entryDate, this.grandTotal, this.autoOrderShoppingListId, this.externalId, this.priority, this.transactionId, this.firstAttemptOrderId, this.originFacilityId, this.statusId, this.createdBy, this.currencyUom, this.syncStatusId, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.orderDate, this.internalCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndRoles { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'terminalId':terminalId, 'isViewed':isViewed, 'visitId':visitId, 'agreementId':agreementId, 'productStoreId':productStoreId, 'partyId':partyId, 'remainingSubTotal':remainingSubTotal, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'roleTypeId':roleTypeId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'autoOrderShoppingListId':autoOrderShoppingListId, 'externalId':externalId, 'priority':priority, 'transactionId':transactionId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'orderDate':orderDate, 'internalCode':internalCode};
  }

}

/// Entity OrderHeaderAndShipGroups, Order Header And Ship Groups
class OrderHeaderAndShipGroups extends EntityBase {

  final String invoicePerShipment;
  final String salesChannelEnumId;
  final String orderId; // pk
  final String postalCode;
  final String billingAccountId;
  final String postalCodeExt;
  final String contactMechId;
  final String telecomContactMechId;
  final String countyGeoId;
  final String visitId;
  final String toName;
  final String cityGeoId;
  final String partyId; // pk
  final String shipmentMethodTypeId;
  final String trackingNumber;
  final double remainingSubTotal;
  final String countryGeoId;
  final String giftMessage;
  final DateTime entryDate;
  final double grandTotal;
  final String shippingInstructions;
  final String autoOrderShoppingListId;
  final String priority;
  final String shipGroupSeqId; // pk
  final DateTime estimatedDeliveryDate;
  final String transactionId;
  final String carrierPartyId;
  final String directions;
  final String statusId;
  final String currencyUom;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final String geoPointId;
  final DateTime orderDate;
  final String houseNumberExt;
  final String city;
  final String postalCodeGeoId;
  final DateTime shipByDate;
  final int houseNumber;
  final String orderTypeId;
  final String terminalId;
  final String isViewed;
  final String attnName;
  final String agreementId;
  final String isGift;
  final String productStoreId;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final String roleTypeId; // pk
  final String facilityId;
  final String address2;
  final String address1;
  final String maySplit;
  final String externalId;
  final String supplierAgreementId;
  final String vendorPartyId;
  final DateTime shipAfterDate;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String createdBy;
  final String carrierRoleTypeId;
  final String municipalityGeoId;
  final String supplierPartyId;
  final String stateProvinceGeoId;
  final String internalCode;
  OrderHeaderAndShipGroups({entityId,
    this.invoicePerShipment, this.salesChannelEnumId, @required this.orderId, this.postalCode, this.billingAccountId, this.postalCodeExt, this.contactMechId, this.telecomContactMechId, this.countyGeoId, this.visitId, this.toName, this.cityGeoId, @required this.partyId, this.shipmentMethodTypeId, this.trackingNumber, this.remainingSubTotal, this.countryGeoId, this.giftMessage, this.entryDate, this.grandTotal, this.shippingInstructions, this.autoOrderShoppingListId, this.priority, @required this.shipGroupSeqId, this.estimatedDeliveryDate, this.transactionId, this.carrierPartyId, this.directions, this.statusId, this.currencyUom, this.syncStatusId, this.estimatedShipDate, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.geoPointId, this.orderDate, this.houseNumberExt, this.city, this.postalCodeGeoId, this.shipByDate, this.houseNumber, this.orderTypeId, this.terminalId, this.isViewed, this.attnName, this.agreementId, this.isGift, this.productStoreId, this.orderName, this.webSiteId, this.isRushOrder, @required this.roleTypeId, this.facilityId, this.address2, this.address1, this.maySplit, this.externalId, this.supplierAgreementId, this.vendorPartyId, this.shipAfterDate, this.firstAttemptOrderId, this.originFacilityId, this.createdBy, this.carrierRoleTypeId, this.municipalityGeoId, this.supplierPartyId, this.stateProvinceGeoId, this.internalCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndShipGroups { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'orderId':orderId, 'postalCode':postalCode, 'billingAccountId':billingAccountId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'telecomContactMechId':telecomContactMechId, 'countyGeoId':countyGeoId, 'visitId':visitId, 'toName':toName, 'cityGeoId':cityGeoId, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'trackingNumber':trackingNumber, 'remainingSubTotal':remainingSubTotal, 'countryGeoId':countryGeoId, 'giftMessage':giftMessage, 'entryDate':entryDate, 'grandTotal':grandTotal, 'shippingInstructions':shippingInstructions, 'autoOrderShoppingListId':autoOrderShoppingListId, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'transactionId':transactionId, 'carrierPartyId':carrierPartyId, 'directions':directions, 'statusId':statusId, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'geoPointId':geoPointId, 'orderDate':orderDate, 'houseNumberExt':houseNumberExt, 'city':city, 'postalCodeGeoId':postalCodeGeoId, 'shipByDate':shipByDate, 'houseNumber':houseNumber, 'orderTypeId':orderTypeId, 'terminalId':terminalId, 'isViewed':isViewed, 'attnName':attnName, 'agreementId':agreementId, 'isGift':isGift, 'productStoreId':productStoreId, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'address2':address2, 'address1':address1, 'maySplit':maySplit, 'externalId':externalId, 'supplierAgreementId':supplierAgreementId, 'vendorPartyId':vendorPartyId, 'shipAfterDate':shipAfterDate, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'createdBy':createdBy, 'carrierRoleTypeId':carrierRoleTypeId, 'municipalityGeoId':municipalityGeoId, 'supplierPartyId':supplierPartyId, 'stateProvinceGeoId':stateProvinceGeoId, 'internalCode':internalCode};
  }

}

/// Entity OrderHeaderAndShipGroupsByProduct, Order Header And Ship Groups By Product
class OrderHeaderAndShipGroupsByProduct extends EntityBase {

  final String invoicePerShipment;
  final String salesChannelEnumId;
  final String orderId; // pk
  final String postalCode;
  final String billingAccountId;
  final String postalCodeExt;
  final String contactMechId;
  final String telecomContactMechId;
  final String countyGeoId;
  final String visitId;
  final String toName;
  final String cityGeoId;
  final String partyId; // pk
  final String shipmentMethodTypeId;
  final String trackingNumber;
  final double remainingSubTotal;
  final String countryGeoId;
  final String brandName;
  final String productId; // pk
  final String giftMessage;
  final DateTime entryDate;
  final double grandTotal;
  final String shippingInstructions;
  final String autoOrderShoppingListId;
  final String priority;
  final String shipGroupSeqId; // pk
  final DateTime estimatedDeliveryDate;
  final String transactionId;
  final String carrierPartyId;
  final String directions;
  final String statusId;
  final String currencyUom;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final String geoPointId;
  final DateTime orderDate;
  final String houseNumberExt;
  final String city;
  final String postalCodeGeoId;
  final DateTime shipByDate;
  final int houseNumber;
  final String orderTypeId;
  final String terminalId;
  final String isViewed;
  final String internalName;
  final String attnName;
  final String agreementId;
  final String isGift;
  final String productStoreId;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final String roleTypeId; // pk
  final String facilityId;
  final String address2;
  final String address1;
  final String maySplit;
  final String externalId;
  final String supplierAgreementId;
  final String vendorPartyId;
  final DateTime shipAfterDate;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String createdBy;
  final String carrierRoleTypeId;
  final String municipalityGeoId;
  final String supplierPartyId;
  final String stateProvinceGeoId;
  final String internalCode;
  OrderHeaderAndShipGroupsByProduct({entityId,
    this.invoicePerShipment, this.salesChannelEnumId, @required this.orderId, this.postalCode, this.billingAccountId, this.postalCodeExt, this.contactMechId, this.telecomContactMechId, this.countyGeoId, this.visitId, this.toName, this.cityGeoId, @required this.partyId, this.shipmentMethodTypeId, this.trackingNumber, this.remainingSubTotal, this.countryGeoId, this.brandName, @required this.productId, this.giftMessage, this.entryDate, this.grandTotal, this.shippingInstructions, this.autoOrderShoppingListId, this.priority, @required this.shipGroupSeqId, this.estimatedDeliveryDate, this.transactionId, this.carrierPartyId, this.directions, this.statusId, this.currencyUom, this.syncStatusId, this.estimatedShipDate, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.geoPointId, this.orderDate, this.houseNumberExt, this.city, this.postalCodeGeoId, this.shipByDate, this.houseNumber, this.orderTypeId, this.terminalId, this.isViewed, this.internalName, this.attnName, this.agreementId, this.isGift, this.productStoreId, this.orderName, this.webSiteId, this.isRushOrder, @required this.roleTypeId, this.facilityId, this.address2, this.address1, this.maySplit, this.externalId, this.supplierAgreementId, this.vendorPartyId, this.shipAfterDate, this.firstAttemptOrderId, this.originFacilityId, this.createdBy, this.carrierRoleTypeId, this.municipalityGeoId, this.supplierPartyId, this.stateProvinceGeoId, this.internalCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndShipGroupsByProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'orderId':orderId, 'postalCode':postalCode, 'billingAccountId':billingAccountId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'telecomContactMechId':telecomContactMechId, 'countyGeoId':countyGeoId, 'visitId':visitId, 'toName':toName, 'cityGeoId':cityGeoId, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'trackingNumber':trackingNumber, 'remainingSubTotal':remainingSubTotal, 'countryGeoId':countryGeoId, 'brandName':brandName, 'productId':productId, 'giftMessage':giftMessage, 'entryDate':entryDate, 'grandTotal':grandTotal, 'shippingInstructions':shippingInstructions, 'autoOrderShoppingListId':autoOrderShoppingListId, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'transactionId':transactionId, 'carrierPartyId':carrierPartyId, 'directions':directions, 'statusId':statusId, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'geoPointId':geoPointId, 'orderDate':orderDate, 'houseNumberExt':houseNumberExt, 'city':city, 'postalCodeGeoId':postalCodeGeoId, 'shipByDate':shipByDate, 'houseNumber':houseNumber, 'orderTypeId':orderTypeId, 'terminalId':terminalId, 'isViewed':isViewed, 'internalName':internalName, 'attnName':attnName, 'agreementId':agreementId, 'isGift':isGift, 'productStoreId':productStoreId, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'address2':address2, 'address1':address1, 'maySplit':maySplit, 'externalId':externalId, 'supplierAgreementId':supplierAgreementId, 'vendorPartyId':vendorPartyId, 'shipAfterDate':shipAfterDate, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'createdBy':createdBy, 'carrierRoleTypeId':carrierRoleTypeId, 'municipalityGeoId':municipalityGeoId, 'supplierPartyId':supplierPartyId, 'stateProvinceGeoId':stateProvinceGeoId, 'internalCode':internalCode};
  }

}

/// Entity OrderHeaderAndWorkEffort, Order Header And Work Effort View Entity
class OrderHeaderAndWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String invoicePerShipment;
  final String recurrenceInfoId;
  final String salesChannelEnumId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String orderId; // pk
  final String billingAccountId;
  final String tempExprId;
  final String showAsEnumId;
  final String visitId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double remainingSubTotal;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime entryDate;
  final double grandTotal;
  final DateTime estimatedStartDate;
  final String autoOrderShoppingListId;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final String transactionId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final String statusId;
  final String currencyUom;
  final int timeTransparency;
  final String syncStatusId;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final double reserv2ndPPPerc;
  final DateTime orderDate;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String orderTypeId;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String terminalId;
  final String workEffortName;
  final String isViewed;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final String agreementId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final String productStoreId;
  final double quantityProduced;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final String externalId;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final DateTime createdDate;
  final String createdBy;
  final double actualSetupMillis;
  final String internalCode;
  final DateTime estimatedCompletionDate;
  OrderHeaderAndWorkEffort({entityId,
    @required this.workEffortId, this.invoicePerShipment, this.recurrenceInfoId, this.salesChannelEnumId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, @required this.orderId, this.billingAccountId, this.tempExprId, this.showAsEnumId, this.visitId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.remainingSubTotal, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.entryDate, this.grandTotal, this.estimatedStartDate, this.autoOrderShoppingListId, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.transactionId, this.estimatedMilliSeconds, this.specialTerms, this.statusId, this.currencyUom, this.timeTransparency, this.syncStatusId, this.actualCompletionDate, this.fixedAssetId, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.reserv2ndPPPerc, this.orderDate, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.orderTypeId, this.moneyUomId, this.reservNthPPPerc, this.terminalId, this.workEffortName, this.isViewed, this.lastModifiedByUserLogin, this.accommodationMapId, this.agreementId, this.actualStartDate, this.scopeEnumId, this.productStoreId, this.quantityProduced, this.orderName, this.webSiteId, this.isRushOrder, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.externalId, this.percentComplete, this.totalMilliSecondsAllowed, this.firstAttemptOrderId, this.originFacilityId, this.createdDate, this.createdBy, this.actualSetupMillis, this.internalCode, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderAndWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'invoicePerShipment':invoicePerShipment, 'recurrenceInfoId':recurrenceInfoId, 'salesChannelEnumId':salesChannelEnumId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'orderId':orderId, 'billingAccountId':billingAccountId, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'visitId':visitId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'remainingSubTotal':remainingSubTotal, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'estimatedStartDate':estimatedStartDate, 'autoOrderShoppingListId':autoOrderShoppingListId, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'transactionId':transactionId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'statusId':statusId, 'currencyUom':currencyUom, 'timeTransparency':timeTransparency, 'syncStatusId':syncStatusId, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'reserv2ndPPPerc':reserv2ndPPPerc, 'orderDate':orderDate, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'orderTypeId':orderTypeId, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'terminalId':terminalId, 'workEffortName':workEffortName, 'isViewed':isViewed, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'agreementId':agreementId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'productStoreId':productStoreId, 'quantityProduced':quantityProduced, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'externalId':externalId, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'createdDate':createdDate, 'createdBy':createdBy, 'actualSetupMillis':actualSetupMillis, 'internalCode':internalCode, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity OrderHeaderItemAndInv, Order Header And Roles View Entity
class OrderHeaderItemAndInv extends EntityBase {

  /// this entity has only one pk
  final double unitPrice;
  final double quantity;
  final String productId;
  final String orderId; // pk
  final DateTime entryDate;
  final double grandTotal;
  final DateTime autoCancelDate;
  final String orderTypeId;
  final String billingAccountId;
  final String correspondingPoId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String visitId;
  final String statusId;
  final double unitListPrice;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final double quantityNotAvailable;
  final String productStoreId;
  final DateTime orderDate;
  final double remainingSubTotal;
  final String webSiteId;
  OrderHeaderItemAndInv({entityId,
    this.unitPrice, this.quantity, this.productId, @required this.orderId, this.entryDate, this.grandTotal, this.autoCancelDate, this.orderTypeId, this.billingAccountId, this.correspondingPoId, this.firstAttemptOrderId, this.originFacilityId, this.visitId, this.statusId, this.unitListPrice, this.createdBy, this.currencyUom, this.syncStatusId, this.estimatedShipDate, this.quantityNotAvailable, this.productStoreId, this.orderDate, this.remainingSubTotal, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderItemAndInv { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'autoCancelDate':autoCancelDate, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'correspondingPoId':correspondingPoId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'visitId':visitId, 'statusId':statusId, 'unitListPrice':unitListPrice, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'quantityNotAvailable':quantityNotAvailable, 'productStoreId':productStoreId, 'orderDate':orderDate, 'remainingSubTotal':remainingSubTotal, 'webSiteId':webSiteId};
  }

}

/// Entity OrderHeaderItemAndInvRoles, Order Header And Roles View Entity
class OrderHeaderItemAndInvRoles extends EntityBase {

  final String orderId; // pk
  final String orderTypeId;
  final String billingAccountId;
  final String visitId;
  final double unitListPrice;
  final String productStoreId;
  final String partyId; // pk
  final double remainingSubTotal;
  final String webSiteId;
  final double unitPrice;
  final String roleTypeId; // pk
  final double quantity;
  final String productId;
  final DateTime entryDate;
  final double grandTotal;
  final DateTime autoCancelDate;
  final String correspondingPoId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String statusId;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final double quantityNotAvailable;
  final DateTime orderDate;
  OrderHeaderItemAndInvRoles({entityId,
    @required this.orderId, this.orderTypeId, this.billingAccountId, this.visitId, this.unitListPrice, this.productStoreId, @required this.partyId, this.remainingSubTotal, this.webSiteId, this.unitPrice, @required this.roleTypeId, this.quantity, this.productId, this.entryDate, this.grandTotal, this.autoCancelDate, this.correspondingPoId, this.firstAttemptOrderId, this.originFacilityId, this.statusId, this.createdBy, this.currencyUom, this.syncStatusId, this.estimatedShipDate, this.quantityNotAvailable, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderItemAndInvRoles { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'visitId':visitId, 'unitListPrice':unitListPrice, 'productStoreId':productStoreId, 'partyId':partyId, 'remainingSubTotal':remainingSubTotal, 'webSiteId':webSiteId, 'unitPrice':unitPrice, 'roleTypeId':roleTypeId, 'quantity':quantity, 'productId':productId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'autoCancelDate':autoCancelDate, 'correspondingPoId':correspondingPoId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'quantityNotAvailable':quantityNotAvailable, 'orderDate':orderDate};
  }

}

/// Entity OrderHeaderItemAndRoles, Order Header And Roles View Entity
class OrderHeaderItemAndRoles extends EntityBase {

  final String orderId; // pk
  final String orderTypeId;
  final String billingAccountId;
  final String orderItemStatusId;
  final String visitId;
  final double unitListPrice;
  final String productStoreId;
  final String itemDescription;
  final String partyId; // pk
  final double remainingSubTotal;
  final String orderName;
  final String webSiteId;
  final String orderItemTypeId;
  final double unitPrice;
  final String orderItemSeqId; // pk
  final String roleTypeId; // pk
  final double quantity;
  final String productId;
  final DateTime entryDate;
  final double grandTotal;
  final DateTime autoCancelDate;
  final String correspondingPoId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String statusId;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final DateTime orderDate;
  OrderHeaderItemAndRoles({entityId,
    @required this.orderId, this.orderTypeId, this.billingAccountId, this.orderItemStatusId, this.visitId, this.unitListPrice, this.productStoreId, this.itemDescription, @required this.partyId, this.remainingSubTotal, this.orderName, this.webSiteId, this.orderItemTypeId, this.unitPrice, @required this.orderItemSeqId, @required this.roleTypeId, this.quantity, this.productId, this.entryDate, this.grandTotal, this.autoCancelDate, this.correspondingPoId, this.firstAttemptOrderId, this.originFacilityId, this.statusId, this.createdBy, this.currencyUom, this.syncStatusId, this.estimatedShipDate, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderItemAndRoles { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'orderItemStatusId':orderItemStatusId, 'visitId':visitId, 'unitListPrice':unitListPrice, 'productStoreId':productStoreId, 'itemDescription':itemDescription, 'partyId':partyId, 'remainingSubTotal':remainingSubTotal, 'orderName':orderName, 'webSiteId':webSiteId, 'orderItemTypeId':orderItemTypeId, 'unitPrice':unitPrice, 'orderItemSeqId':orderItemSeqId, 'roleTypeId':roleTypeId, 'quantity':quantity, 'productId':productId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'autoCancelDate':autoCancelDate, 'correspondingPoId':correspondingPoId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'orderDate':orderDate};
  }

}

/// Entity OrderHeaderItemAndShipGroup, OrderHeader, OrderItem And ShipGroups View Entity
class OrderHeaderItemAndShipGroup extends EntityBase {

  final String orderId; // pk
  final String billingAccountId;
  final DateTime oiEstimatedDeliveryDate;
  final String visitId;
  final String deploymentId;
  final double remainingSubTotal;
  final String shipmentMethodTypeId;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String giftMessage;
  final String productId;
  final DateTime entryDate;
  final double grandTotal;
  final String isItemGroupPrimary;
  final String priority;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String transactionId;
  final String quoteId;
  final String carrierPartyId;
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String subscriptionId;
  final DateTime shipByDate;
  final String terminalId;
  final String isPromo;
  final String isViewed;
  final double oiCancelQuantity;
  final String productCategoryId;
  final String productStoreId;
  final DateTime oiShipBeforeDate;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final DateTime dontCancelSetDate;
  final String recurringFreqUomId;
  final String fromInventoryItemId;
  final String budgetItemSeqId;
  final String supplierAgreementId;
  final String correspondingPoId;
  final double cancelQuantity;
  final String vendorPartyId;
  final String oiSyncStatusId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final DateTime oiEstimatedShipDate;
  final String carrierRoleTypeId;
  final String internalCode;
  final String invoicePerShipment;
  final String salesChannelEnumId;
  final double reservedQuantity;
  final String contactMechId;
  final String telecomContactMechId;
  final String oiExternalId;
  final DateTime cancelBackOrderDate;
  final String itemDescription;
  final String trackingNumber;
  final double unitRecurringPrice;
  final String shippingInstructions;
  final DateTime autoCancelDate;
  final String autoOrderShoppingListId;
  final String productFeatureId;
  final double oiQuantity;
  final String overrideGlAccountId;
  final String budgetId;
  final String shipGroupSeqId; // pk
  final String currencyUom;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final String shoppingListItemSeqId;
  final DateTime orderDate;
  final String salesOpportunityId;
  final String dontCancelSetUserLogin;
  final String orderTypeId;
  final String isModifiedPrice;
  final DateTime oiShipAfterDate;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final String agreementId;
  final String isGift;
  final String orderItemTypeId;
  final String facilityId;
  final double quantity;
  final String comments;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String maySplit;
  final String externalId;
  final DateTime shipAfterDate;
  final String createdBy;
  final String oiStatusId;
  final String supplierPartyId;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderHeaderItemAndShipGroup({entityId,
    @required this.orderId, this.billingAccountId, this.oiEstimatedDeliveryDate, this.visitId, this.deploymentId, this.remainingSubTotal, this.shipmentMethodTypeId, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.giftMessage, this.productId, this.entryDate, this.grandTotal, this.isItemGroupPrimary, this.priority, this.supplierProductId, this.estimatedDeliveryDate, this.transactionId, this.quoteId, this.carrierPartyId, this.statusId, this.syncStatusId, this.estimatedShipDate, this.subscriptionId, this.shipByDate, this.terminalId, this.isPromo, this.isViewed, this.oiCancelQuantity, this.productCategoryId, this.productStoreId, this.oiShipBeforeDate, this.orderName, this.webSiteId, this.isRushOrder, this.dontCancelSetDate, this.recurringFreqUomId, this.fromInventoryItemId, this.budgetItemSeqId, this.supplierAgreementId, this.correspondingPoId, this.cancelQuantity, this.vendorPartyId, this.oiSyncStatusId, this.firstAttemptOrderId, this.originFacilityId, this.oiEstimatedShipDate, this.carrierRoleTypeId, this.internalCode, this.invoicePerShipment, this.salesChannelEnumId, this.reservedQuantity, this.contactMechId, this.telecomContactMechId, this.oiExternalId, this.cancelBackOrderDate, this.itemDescription, this.trackingNumber, this.unitRecurringPrice, this.shippingInstructions, this.autoCancelDate, this.autoOrderShoppingListId, this.productFeatureId, this.oiQuantity, this.overrideGlAccountId, this.budgetId, @required this.shipGroupSeqId, this.currencyUom, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.shoppingListItemSeqId, this.orderDate, this.salesOpportunityId, this.dontCancelSetUserLogin, this.orderTypeId, this.isModifiedPrice, this.oiShipAfterDate, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.agreementId, this.isGift, this.orderItemTypeId, this.facilityId, this.quantity, this.comments, this.orderItemGroupSeqId, this.quoteItemSeqId, this.maySplit, this.externalId, this.shipAfterDate, this.createdBy, this.oiStatusId, this.supplierPartyId, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderItemAndShipGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'billingAccountId':billingAccountId, 'oiEstimatedDeliveryDate':oiEstimatedDeliveryDate, 'visitId':visitId, 'deploymentId':deploymentId, 'remainingSubTotal':remainingSubTotal, 'shipmentMethodTypeId':shipmentMethodTypeId, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'giftMessage':giftMessage, 'productId':productId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'isItemGroupPrimary':isItemGroupPrimary, 'priority':priority, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'transactionId':transactionId, 'quoteId':quoteId, 'carrierPartyId':carrierPartyId, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'subscriptionId':subscriptionId, 'shipByDate':shipByDate, 'terminalId':terminalId, 'isPromo':isPromo, 'isViewed':isViewed, 'oiCancelQuantity':oiCancelQuantity, 'productCategoryId':productCategoryId, 'productStoreId':productStoreId, 'oiShipBeforeDate':oiShipBeforeDate, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'dontCancelSetDate':dontCancelSetDate, 'recurringFreqUomId':recurringFreqUomId, 'fromInventoryItemId':fromInventoryItemId, 'budgetItemSeqId':budgetItemSeqId, 'supplierAgreementId':supplierAgreementId, 'correspondingPoId':correspondingPoId, 'cancelQuantity':cancelQuantity, 'vendorPartyId':vendorPartyId, 'oiSyncStatusId':oiSyncStatusId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'oiEstimatedShipDate':oiEstimatedShipDate, 'carrierRoleTypeId':carrierRoleTypeId, 'internalCode':internalCode, 'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'reservedQuantity':reservedQuantity, 'contactMechId':contactMechId, 'telecomContactMechId':telecomContactMechId, 'oiExternalId':oiExternalId, 'cancelBackOrderDate':cancelBackOrderDate, 'itemDescription':itemDescription, 'trackingNumber':trackingNumber, 'unitRecurringPrice':unitRecurringPrice, 'shippingInstructions':shippingInstructions, 'autoCancelDate':autoCancelDate, 'autoOrderShoppingListId':autoOrderShoppingListId, 'productFeatureId':productFeatureId, 'oiQuantity':oiQuantity, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'shipGroupSeqId':shipGroupSeqId, 'currencyUom':currencyUom, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'shoppingListItemSeqId':shoppingListItemSeqId, 'orderDate':orderDate, 'salesOpportunityId':salesOpportunityId, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'orderTypeId':orderTypeId, 'isModifiedPrice':isModifiedPrice, 'oiShipAfterDate':oiShipAfterDate, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'agreementId':agreementId, 'isGift':isGift, 'orderItemTypeId':orderItemTypeId, 'facilityId':facilityId, 'quantity':quantity, 'comments':comments, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'maySplit':maySplit, 'externalId':externalId, 'shipAfterDate':shipAfterDate, 'createdBy':createdBy, 'oiStatusId':oiStatusId, 'supplierPartyId':supplierPartyId, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderHeaderNote, Order Header Note
class OrderHeaderNote extends EntityBase {

  final String orderId; // pk
  final String internalNote;
  final String noteId; // pk
  OrderHeaderNote({entityId,
    @required this.orderId, this.internalNote, @required this.noteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'internalNote':internalNote, 'noteId':noteId};
  }

}

/// Entity OrderHeaderNoteView, Order Header Note View Entity
class OrderHeaderNoteView extends EntityBase {

  final String orderId; // pk
  final String internalNote;
  final String noteName;
  final DateTime noteDateTime;
  final String noteInfo;
  final String noteId; // pk
  final String noteParty;
  OrderHeaderNoteView({entityId,
    @required this.orderId, this.internalNote, this.noteName, this.noteDateTime, this.noteInfo, @required this.noteId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderNoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'internalNote':internalNote, 'noteName':noteName, 'noteDateTime':noteDateTime, 'noteInfo':noteInfo, 'noteId':noteId, 'noteParty':noteParty};
  }

}

/// Entity OrderHeaderWorkEffort, OrderHeader WorkEffort
class OrderHeaderWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String orderId; // pk
  OrderHeaderWorkEffort({entityId,
    @required this.workEffortId, @required this.orderId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderHeaderWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'orderId':orderId};
  }

}

/// Entity OrderItem, Order Item
class OrderItem extends EntityBase {

  final String orderId; // pk
  final String deploymentId;
  final DateTime cancelBackOrderDate;
  final String itemDescription;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String productId;
  final double unitRecurringPrice;
  final String isItemGroupPrimary;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String budgetId;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String quoteId;
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String shoppingListItemSeqId;
  final String subscriptionId;
  final String salesOpportunityId;
  final String dontCancelSetUserLogin;
  final String isPromo;
  final String isModifiedPrice;
  final DateTime shipBeforeDate;
  final String productCategoryId;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final String orderItemTypeId;
  final DateTime dontCancelSetDate;
  final double quantity;
  final String comments;
  final String recurringFreqUomId;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String fromInventoryItemId;
  final String budgetItemSeqId;
  final String correspondingPoId;
  final double cancelQuantity;
  final DateTime shipAfterDate;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderItem({entityId,
    @required this.orderId, this.deploymentId, this.cancelBackOrderDate, this.itemDescription, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.productId, this.unitRecurringPrice, this.isItemGroupPrimary, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.budgetId, this.supplierProductId, this.estimatedDeliveryDate, this.quoteId, this.statusId, this.syncStatusId, this.estimatedShipDate, this.shoppingListItemSeqId, this.subscriptionId, this.salesOpportunityId, this.dontCancelSetUserLogin, this.isPromo, this.isModifiedPrice, this.shipBeforeDate, this.productCategoryId, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.orderItemTypeId, this.dontCancelSetDate, this.quantity, this.comments, this.recurringFreqUomId, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.fromInventoryItemId, this.budgetItemSeqId, this.correspondingPoId, this.cancelQuantity, this.shipAfterDate, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'deploymentId':deploymentId, 'cancelBackOrderDate':cancelBackOrderDate, 'itemDescription':itemDescription, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'productId':productId, 'unitRecurringPrice':unitRecurringPrice, 'isItemGroupPrimary':isItemGroupPrimary, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'quoteId':quoteId, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'shoppingListItemSeqId':shoppingListItemSeqId, 'subscriptionId':subscriptionId, 'salesOpportunityId':salesOpportunityId, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'isPromo':isPromo, 'isModifiedPrice':isModifiedPrice, 'shipBeforeDate':shipBeforeDate, 'productCategoryId':productCategoryId, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'orderItemTypeId':orderItemTypeId, 'dontCancelSetDate':dontCancelSetDate, 'quantity':quantity, 'comments':comments, 'recurringFreqUomId':recurringFreqUomId, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'fromInventoryItemId':fromInventoryItemId, 'budgetItemSeqId':budgetItemSeqId, 'correspondingPoId':correspondingPoId, 'cancelQuantity':cancelQuantity, 'shipAfterDate':shipAfterDate, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderItemAndProduct, OrderItem And Product View Entity
class OrderItemAndProduct extends EntityBase {

  final String orderId; // pk
  final String originGeoId;
  final String mediumImageUrl;
  final String productName;
  final String originalImageUrl;
  final String inShippingBox;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String deploymentId;
  final double productRating;
  final String createdByUserLogin;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String requireAmount;
  final String productId;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String isItemGroupPrimary;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String quoteId;
  final String salesDiscWhenNotAvail;
  final String returnable;
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String subscriptionId;
  final String priceDetailText;
  final double reserv2ndPPPerc;
  final String diameterUomId;
  final double productDiameter;
  final String ratingTypeEnum;
  final String chargeShipping;
  final double reservNthPPPerc;
  final String isPromo;
  final double quantityIncluded;
  final String heightUomId;
  final DateTime shipBeforeDate;
  final String productCategoryId;
  final String virtualVariantMethodEnum;
  final double shippingWeight;
  final double shippingWidth;
  final double shippingDepth;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final DateTime dontCancelSetDate;
  final String recurringFreqUomId;
  final double productHeight;
  final String fromInventoryItemId;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String budgetItemSeqId;
  final double productWeight;
  final String depthUomId;
  final String correspondingPoId;
  final double cancelQuantity;
  final DateTime createdDate;
  final String isVariant;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final DateTime introductionDate;
  final double shippingHeight;
  final String detailImageUrl;
  final String includeInPromotions;
  final String configId;
  final DateTime cancelBackOrderDate;
  final int billOfMaterialLevel;
  final String itemDescription;
  final String lotIdFilledIn;
  final String brandName;
  final String smallImageUrl;
  final double unitRecurringPrice;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String budgetId;
  final String weightUomId;
  final String shoppingListItemSeqId;
  final String isVirtual;
  final String salesOpportunityId;
  final String widthUomId;
  final String longDescription;
  final String autoCreateKeywords;
  final String dontCancelSetUserLogin;
  final String amountUomTypeId;
  final String description;
  final String isModifiedPrice;
  final String internalName;
  final String lastModifiedByUserLogin;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final double reservMaxPersons;
  final double fixedAmount;
  final String orderItemTypeId;
  final double productDepth;
  final double quantity;
  final String comments;
  final String facilityId;
  final DateTime releaseDate;
  final DateTime lastModifiedDate;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String inventoryMessage;
  final String productTypeId;
  final DateTime shipAfterDate;
  final String largeImageUrl;
  final String requirementMethodEnumId;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderItemAndProduct({entityId,
    @required this.orderId, this.originGeoId, this.mediumImageUrl, this.productName, this.originalImageUrl, this.inShippingBox, this.supportDiscontinuationDate, this.productWidth, this.deploymentId, this.productRating, this.createdByUserLogin, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.requireAmount, this.productId, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.isItemGroupPrimary, this.supplierProductId, this.estimatedDeliveryDate, this.quoteId, this.salesDiscWhenNotAvail, this.returnable, this.statusId, this.syncStatusId, this.estimatedShipDate, this.subscriptionId, this.priceDetailText, this.reserv2ndPPPerc, this.diameterUomId, this.productDiameter, this.ratingTypeEnum, this.chargeShipping, this.reservNthPPPerc, this.isPromo, this.quantityIncluded, this.heightUomId, this.shipBeforeDate, this.productCategoryId, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.inventoryItemTypeId, this.piecesIncluded, this.dontCancelSetDate, this.recurringFreqUomId, this.productHeight, this.fromInventoryItemId, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.budgetItemSeqId, this.productWeight, this.depthUomId, this.correspondingPoId, this.cancelQuantity, this.createdDate, this.isVariant, this.detailScreen, this.requireInventory, this.quantityUomId, this.introductionDate, this.shippingHeight, this.detailImageUrl, this.includeInPromotions, this.configId, this.cancelBackOrderDate, this.billOfMaterialLevel, this.itemDescription, this.lotIdFilledIn, this.brandName, this.smallImageUrl, this.unitRecurringPrice, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.budgetId, this.weightUomId, this.shoppingListItemSeqId, this.isVirtual, this.salesOpportunityId, this.widthUomId, this.longDescription, this.autoCreateKeywords, this.dontCancelSetUserLogin, this.amountUomTypeId, this.description, this.isModifiedPrice, this.internalName, this.lastModifiedByUserLogin, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.reservMaxPersons, this.fixedAmount, this.orderItemTypeId, this.productDepth, this.quantity, this.comments, this.facilityId, this.releaseDate, this.lastModifiedDate, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.inventoryMessage, this.productTypeId, this.shipAfterDate, this.largeImageUrl, this.requirementMethodEnumId, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAndProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'originGeoId':originGeoId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'deploymentId':deploymentId, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'requireAmount':requireAmount, 'productId':productId, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'isItemGroupPrimary':isItemGroupPrimary, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'quoteId':quoteId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'subscriptionId':subscriptionId, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'diameterUomId':diameterUomId, 'productDiameter':productDiameter, 'ratingTypeEnum':ratingTypeEnum, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'isPromo':isPromo, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'shipBeforeDate':shipBeforeDate, 'productCategoryId':productCategoryId, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'dontCancelSetDate':dontCancelSetDate, 'recurringFreqUomId':recurringFreqUomId, 'productHeight':productHeight, 'fromInventoryItemId':fromInventoryItemId, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'budgetItemSeqId':budgetItemSeqId, 'productWeight':productWeight, 'depthUomId':depthUomId, 'correspondingPoId':correspondingPoId, 'cancelQuantity':cancelQuantity, 'createdDate':createdDate, 'isVariant':isVariant, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'detailImageUrl':detailImageUrl, 'includeInPromotions':includeInPromotions, 'configId':configId, 'cancelBackOrderDate':cancelBackOrderDate, 'billOfMaterialLevel':billOfMaterialLevel, 'itemDescription':itemDescription, 'lotIdFilledIn':lotIdFilledIn, 'brandName':brandName, 'smallImageUrl':smallImageUrl, 'unitRecurringPrice':unitRecurringPrice, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'weightUomId':weightUomId, 'shoppingListItemSeqId':shoppingListItemSeqId, 'isVirtual':isVirtual, 'salesOpportunityId':salesOpportunityId, 'widthUomId':widthUomId, 'longDescription':longDescription, 'autoCreateKeywords':autoCreateKeywords, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'amountUomTypeId':amountUomTypeId, 'description':description, 'isModifiedPrice':isModifiedPrice, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'orderItemTypeId':orderItemTypeId, 'productDepth':productDepth, 'quantity':quantity, 'comments':comments, 'facilityId':facilityId, 'releaseDate':releaseDate, 'lastModifiedDate':lastModifiedDate, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'inventoryMessage':inventoryMessage, 'productTypeId':productTypeId, 'shipAfterDate':shipAfterDate, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderItemAndProductContentInfo, OrderItem And ProductContent Info View Entity
class OrderItemAndProductContentInfo extends EntityBase {

  final String useTimeUomId;
  final int sequenceNum;
  final String orderId; // pk
  final String originGeoId;
  final String mimeTypeId;
  final String mediumImageUrl;
  final String productName;
  final String originalImageUrl;
  final String inShippingBox;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String deploymentId;
  final String dataResourceId;
  final double productRating;
  final String createdByUserLogin;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String requireAmount;
  final String productId;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String isItemGroupPrimary;
  final int useCountLimit;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String quoteId;
  final String salesDiscWhenNotAvail;
  final String returnable;
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String subscriptionId;
  final String priceDetailText;
  final double reserv2ndPPPerc;
  final int childBranchCount;
  final String diameterUomId;
  final double productDiameter;
  final String contentTypeId;
  final String ratingTypeEnum;
  final String contentStatusId;
  final String chargeShipping;
  final double reservNthPPPerc;
  final String isPromo;
  final double quantityIncluded;
  final String heightUomId;
  final DateTime shipBeforeDate;
  final String dataSourceId;
  final String productCategoryId;
  final String virtualVariantMethodEnum;
  final double shippingWeight;
  final double shippingWidth;
  final double shippingDepth;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final DateTime dontCancelSetDate;
  final DateTime purchaseFromDate;
  final String recurringFreqUomId;
  final String templateDataResourceId;
  final double productHeight;
  final String fromInventoryItemId;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String budgetItemSeqId;
  final double productWeight;
  final String depthUomId;
  final String correspondingPoId;
  final String productContentTypeId; // pk
  final double cancelQuantity;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final String isVariant;
  final String ownerContentId;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final DateTime introductionDate;
  final double shippingHeight;
  final String privilegeEnumId;
  final String detailImageUrl;
  final String includeInPromotions;
  final String configId;
  final DateTime cancelBackOrderDate;
  final int billOfMaterialLevel;
  final String itemDescription;
  final String lotIdFilledIn;
  final String brandName;
  final String smallImageUrl;
  final double unitRecurringPrice;
  final String instanceOfContentId;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String budgetId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String weightUomId;
  final String shoppingListItemSeqId;
  final String isVirtual;
  final String salesOpportunityId;
  final String widthUomId;
  final String longDescription;
  final String autoCreateKeywords;
  final String dontCancelSetUserLogin;
  final String amountUomTypeId;
  final String contentId; // pk
  final String description;
  final int childLeafCount;
  final String isModifiedPrice;
  final String internalName;
  final String lastModifiedByUserLogin;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final String useRoleTypeId;
  final int useTime;
  final double reservMaxPersons;
  final double fixedAmount;
  final String orderItemTypeId;
  final double productDepth;
  final double quantity;
  final String facilityId;
  final String comments;
  final DateTime lastModifiedDate;
  final DateTime releaseDate;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String inventoryMessage;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String productTypeId;
  final DateTime shipAfterDate;
  final String largeImageUrl;
  final String decoratorContentId;
  final DateTime purchaseThruDate;
  final String requirementMethodEnumId;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderItemAndProductContentInfo({entityId,
    this.useTimeUomId, this.sequenceNum, @required this.orderId, this.originGeoId, this.mimeTypeId, this.mediumImageUrl, this.productName, this.originalImageUrl, this.inShippingBox, this.supportDiscontinuationDate, this.productWidth, this.deploymentId, this.dataResourceId, this.productRating, this.createdByUserLogin, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.requireAmount, this.productId, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.isItemGroupPrimary, this.useCountLimit, this.supplierProductId, this.estimatedDeliveryDate, this.quoteId, this.salesDiscWhenNotAvail, this.returnable, this.statusId, this.syncStatusId, this.estimatedShipDate, this.subscriptionId, this.priceDetailText, this.reserv2ndPPPerc, this.childBranchCount, this.diameterUomId, this.productDiameter, this.contentTypeId, this.ratingTypeEnum, this.contentStatusId, this.chargeShipping, this.reservNthPPPerc, this.isPromo, this.quantityIncluded, this.heightUomId, this.shipBeforeDate, this.dataSourceId, this.productCategoryId, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.inventoryItemTypeId, this.piecesIncluded, this.dontCancelSetDate, this.purchaseFromDate, this.recurringFreqUomId, this.templateDataResourceId, this.productHeight, this.fromInventoryItemId, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.budgetItemSeqId, this.productWeight, this.depthUomId, this.correspondingPoId, @required this.productContentTypeId, this.cancelQuantity, this.contentName, this.createdDate, this.localeString, this.isVariant, this.ownerContentId, this.detailScreen, this.requireInventory, this.quantityUomId, this.introductionDate, this.shippingHeight, this.privilegeEnumId, this.detailImageUrl, this.includeInPromotions, this.configId, this.cancelBackOrderDate, this.billOfMaterialLevel, this.itemDescription, this.lotIdFilledIn, this.brandName, this.smallImageUrl, this.unitRecurringPrice, this.instanceOfContentId, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.budgetId, this.thruDate, @required this.fromDate, this.weightUomId, this.shoppingListItemSeqId, this.isVirtual, this.salesOpportunityId, this.widthUomId, this.longDescription, this.autoCreateKeywords, this.dontCancelSetUserLogin, this.amountUomTypeId, @required this.contentId, this.description, this.childLeafCount, this.isModifiedPrice, this.internalName, this.lastModifiedByUserLogin, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.useRoleTypeId, this.useTime, this.reservMaxPersons, this.fixedAmount, this.orderItemTypeId, this.productDepth, this.quantity, this.facilityId, this.comments, this.lastModifiedDate, this.releaseDate, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.inventoryMessage, this.serviceName, this.customMethodId, this.characterSetId, this.productTypeId, this.shipAfterDate, this.largeImageUrl, this.decoratorContentId, this.purchaseThruDate, this.requirementMethodEnumId, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAndProductContentInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'useTimeUomId':useTimeUomId, 'sequenceNum':sequenceNum, 'orderId':orderId, 'originGeoId':originGeoId, 'mimeTypeId':mimeTypeId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'deploymentId':deploymentId, 'dataResourceId':dataResourceId, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'requireAmount':requireAmount, 'productId':productId, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'isItemGroupPrimary':isItemGroupPrimary, 'useCountLimit':useCountLimit, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'quoteId':quoteId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'subscriptionId':subscriptionId, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'childBranchCount':childBranchCount, 'diameterUomId':diameterUomId, 'productDiameter':productDiameter, 'contentTypeId':contentTypeId, 'ratingTypeEnum':ratingTypeEnum, 'contentStatusId':contentStatusId, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'isPromo':isPromo, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'shipBeforeDate':shipBeforeDate, 'dataSourceId':dataSourceId, 'productCategoryId':productCategoryId, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'dontCancelSetDate':dontCancelSetDate, 'purchaseFromDate':purchaseFromDate, 'recurringFreqUomId':recurringFreqUomId, 'templateDataResourceId':templateDataResourceId, 'productHeight':productHeight, 'fromInventoryItemId':fromInventoryItemId, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'budgetItemSeqId':budgetItemSeqId, 'productWeight':productWeight, 'depthUomId':depthUomId, 'correspondingPoId':correspondingPoId, 'productContentTypeId':productContentTypeId, 'cancelQuantity':cancelQuantity, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'isVariant':isVariant, 'ownerContentId':ownerContentId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'privilegeEnumId':privilegeEnumId, 'detailImageUrl':detailImageUrl, 'includeInPromotions':includeInPromotions, 'configId':configId, 'cancelBackOrderDate':cancelBackOrderDate, 'billOfMaterialLevel':billOfMaterialLevel, 'itemDescription':itemDescription, 'lotIdFilledIn':lotIdFilledIn, 'brandName':brandName, 'smallImageUrl':smallImageUrl, 'unitRecurringPrice':unitRecurringPrice, 'instanceOfContentId':instanceOfContentId, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'thruDate':thruDate, 'fromDate':fromDate, 'weightUomId':weightUomId, 'shoppingListItemSeqId':shoppingListItemSeqId, 'isVirtual':isVirtual, 'salesOpportunityId':salesOpportunityId, 'widthUomId':widthUomId, 'longDescription':longDescription, 'autoCreateKeywords':autoCreateKeywords, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'amountUomTypeId':amountUomTypeId, 'contentId':contentId, 'description':description, 'childLeafCount':childLeafCount, 'isModifiedPrice':isModifiedPrice, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'useRoleTypeId':useRoleTypeId, 'useTime':useTime, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'orderItemTypeId':orderItemTypeId, 'productDepth':productDepth, 'quantity':quantity, 'facilityId':facilityId, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'releaseDate':releaseDate, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'inventoryMessage':inventoryMessage, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'productTypeId':productTypeId, 'shipAfterDate':shipAfterDate, 'largeImageUrl':largeImageUrl, 'decoratorContentId':decoratorContentId, 'purchaseThruDate':purchaseThruDate, 'requirementMethodEnumId':requirementMethodEnumId, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderItemAndShipGroupAssoc, OrderItem And ShipGroupAssoc View Entity
class OrderItemAndShipGroupAssoc extends EntityBase {

  final String orderId; // pk
  final String deploymentId;
  final DateTime cancelBackOrderDate;
  final String itemDescription;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final double orderItemCancelQuantity;
  final String productId;
  final double unitRecurringPrice;
  final String isItemGroupPrimary;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String budgetId;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String shipGroupSeqId; // pk
  final String quoteId;
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String shoppingListItemSeqId;
  final String subscriptionId;
  final String salesOpportunityId;
  final String dontCancelSetUserLogin;
  final String isPromo;
  final String isModifiedPrice;
  final DateTime shipBeforeDate;
  final String productCategoryId;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final String orderItemTypeId;
  final DateTime dontCancelSetDate;
  final String comments;
  final double quantity;
  final String recurringFreqUomId;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String fromInventoryItemId;
  final String budgetItemSeqId;
  final String correspondingPoId;
  final double cancelQuantity;
  final DateTime shipAfterDate;
  final String changeByUserLoginId;
  final double orderItemQuantity;
  final String prodCatalogId;
  OrderItemAndShipGroupAssoc({entityId,
    @required this.orderId, this.deploymentId, this.cancelBackOrderDate, this.itemDescription, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.orderItemCancelQuantity, this.productId, this.unitRecurringPrice, this.isItemGroupPrimary, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.budgetId, this.supplierProductId, this.estimatedDeliveryDate, @required this.shipGroupSeqId, this.quoteId, this.statusId, this.syncStatusId, this.estimatedShipDate, this.shoppingListItemSeqId, this.subscriptionId, this.salesOpportunityId, this.dontCancelSetUserLogin, this.isPromo, this.isModifiedPrice, this.shipBeforeDate, this.productCategoryId, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.orderItemTypeId, this.dontCancelSetDate, this.comments, this.quantity, this.recurringFreqUomId, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.fromInventoryItemId, this.budgetItemSeqId, this.correspondingPoId, this.cancelQuantity, this.shipAfterDate, this.changeByUserLoginId, this.orderItemQuantity, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAndShipGroupAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'deploymentId':deploymentId, 'cancelBackOrderDate':cancelBackOrderDate, 'itemDescription':itemDescription, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'orderItemCancelQuantity':orderItemCancelQuantity, 'productId':productId, 'unitRecurringPrice':unitRecurringPrice, 'isItemGroupPrimary':isItemGroupPrimary, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'shipGroupSeqId':shipGroupSeqId, 'quoteId':quoteId, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'shoppingListItemSeqId':shoppingListItemSeqId, 'subscriptionId':subscriptionId, 'salesOpportunityId':salesOpportunityId, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'isPromo':isPromo, 'isModifiedPrice':isModifiedPrice, 'shipBeforeDate':shipBeforeDate, 'productCategoryId':productCategoryId, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'orderItemTypeId':orderItemTypeId, 'dontCancelSetDate':dontCancelSetDate, 'comments':comments, 'quantity':quantity, 'recurringFreqUomId':recurringFreqUomId, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'fromInventoryItemId':fromInventoryItemId, 'budgetItemSeqId':budgetItemSeqId, 'correspondingPoId':correspondingPoId, 'cancelQuantity':cancelQuantity, 'shipAfterDate':shipAfterDate, 'changeByUserLoginId':changeByUserLoginId, 'orderItemQuantity':orderItemQuantity, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderItemAndShipGrpInvResAndItem, Order Item and Inventory Reservation View Entity
class OrderItemAndShipGrpInvResAndItem extends EntityBase {

  final String orderId; // pk
  final String binNumber;
  final int sequenceId;
  final double oldAvailableToPromise;
  final String deploymentId;
  final DateTime cancelBackOrderDate;
  final String itemDescription;
  final DateTime reservedDatetime;
  final String partyId;
  final String containerId;
  final double selectedAmount;
  final String locationSeqId;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String serialNumber;
  final String productId;
  final double unitRecurringPrice;
  final String isItemGroupPrimary;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String uomId;
  final String budgetId;
  final String supplierProductId;
  final String priority;
  final DateTime estimatedDeliveryDate;
  final String shipGroupSeqId; // pk
  final String quoteId;
  final String inventoryItemId; // pk
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String fixedAssetId;
  final double quantityNotAvailable;
  final DateTime createdDatetime;
  final String shoppingListItemSeqId;
  final String reserveOrderEnumId;
  final String subscriptionId;
  final String salesOpportunityId;
  final String dontCancelSetUserLogin;
  final String softIdentifier;
  final DateTime promisedDatetime;
  final String isPromo;
  final String isModifiedPrice;
  final DateTime oldPickStartDate;
  final DateTime shipBeforeDate;
  final String productCategoryId;
  final String shoppingListId;
  final double unitListPrice;
  final double quantityOnHandTotal;
  final double unitAverageCost;
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final double oldQuantityOnHand;
  final double availableToPromiseTotal;
  final String orderItemTypeId;
  final String inventoryItemTypeId;
  final DateTime dontCancelSetDate;
  final double quantity;
  final String comments;
  final String facilityId;
  final String recurringFreqUomId;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String fromInventoryItemId;
  final String budgetItemSeqId;
  final String lotId;
  final double accountingQuantityTotal;
  final String correspondingPoId;
  final double cancelQuantity;
  final DateTime shipAfterDate;
  final DateTime currentPromisedDate;
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final double unitCost;
  final DateTime datetimeReceived;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderItemAndShipGrpInvResAndItem({entityId,
    @required this.orderId, this.binNumber, this.sequenceId, this.oldAvailableToPromise, this.deploymentId, this.cancelBackOrderDate, this.itemDescription, this.reservedDatetime, this.partyId, this.containerId, this.selectedAmount, this.locationSeqId, @required this.orderItemSeqId, this.unitPrice, this.serialNumber, this.productId, this.unitRecurringPrice, this.isItemGroupPrimary, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.uomId, this.budgetId, this.supplierProductId, this.priority, this.estimatedDeliveryDate, @required this.shipGroupSeqId, this.quoteId, @required this.inventoryItemId, this.statusId, this.syncStatusId, this.estimatedShipDate, this.fixedAssetId, this.quantityNotAvailable, this.createdDatetime, this.shoppingListItemSeqId, this.reserveOrderEnumId, this.subscriptionId, this.salesOpportunityId, this.dontCancelSetUserLogin, this.softIdentifier, this.promisedDatetime, this.isPromo, this.isModifiedPrice, this.oldPickStartDate, this.shipBeforeDate, this.productCategoryId, this.shoppingListId, this.unitListPrice, this.quantityOnHandTotal, this.unitAverageCost, this.datetimeManufactured, this.expireDate, this.oldQuantityOnHand, this.availableToPromiseTotal, this.orderItemTypeId, this.inventoryItemTypeId, this.dontCancelSetDate, this.quantity, this.comments, this.facilityId, this.recurringFreqUomId, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.fromInventoryItemId, this.budgetItemSeqId, this.lotId, this.accountingQuantityTotal, this.correspondingPoId, this.cancelQuantity, this.shipAfterDate, this.currentPromisedDate, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.unitCost, this.datetimeReceived, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAndShipGrpInvResAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'binNumber':binNumber, 'sequenceId':sequenceId, 'oldAvailableToPromise':oldAvailableToPromise, 'deploymentId':deploymentId, 'cancelBackOrderDate':cancelBackOrderDate, 'itemDescription':itemDescription, 'reservedDatetime':reservedDatetime, 'partyId':partyId, 'containerId':containerId, 'selectedAmount':selectedAmount, 'locationSeqId':locationSeqId, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'serialNumber':serialNumber, 'productId':productId, 'unitRecurringPrice':unitRecurringPrice, 'isItemGroupPrimary':isItemGroupPrimary, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'uomId':uomId, 'budgetId':budgetId, 'supplierProductId':supplierProductId, 'priority':priority, 'estimatedDeliveryDate':estimatedDeliveryDate, 'shipGroupSeqId':shipGroupSeqId, 'quoteId':quoteId, 'inventoryItemId':inventoryItemId, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'fixedAssetId':fixedAssetId, 'quantityNotAvailable':quantityNotAvailable, 'createdDatetime':createdDatetime, 'shoppingListItemSeqId':shoppingListItemSeqId, 'reserveOrderEnumId':reserveOrderEnumId, 'subscriptionId':subscriptionId, 'salesOpportunityId':salesOpportunityId, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'softIdentifier':softIdentifier, 'promisedDatetime':promisedDatetime, 'isPromo':isPromo, 'isModifiedPrice':isModifiedPrice, 'oldPickStartDate':oldPickStartDate, 'shipBeforeDate':shipBeforeDate, 'productCategoryId':productCategoryId, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'quantityOnHandTotal':quantityOnHandTotal, 'unitAverageCost':unitAverageCost, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'oldQuantityOnHand':oldQuantityOnHand, 'availableToPromiseTotal':availableToPromiseTotal, 'orderItemTypeId':orderItemTypeId, 'inventoryItemTypeId':inventoryItemTypeId, 'dontCancelSetDate':dontCancelSetDate, 'quantity':quantity, 'comments':comments, 'facilityId':facilityId, 'recurringFreqUomId':recurringFreqUomId, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'fromInventoryItemId':fromInventoryItemId, 'budgetItemSeqId':budgetItemSeqId, 'lotId':lotId, 'accountingQuantityTotal':accountingQuantityTotal, 'correspondingPoId':correspondingPoId, 'cancelQuantity':cancelQuantity, 'shipAfterDate':shipAfterDate, 'currentPromisedDate':currentPromisedDate, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'unitCost':unitCost, 'datetimeReceived':datetimeReceived, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderItemAndShipGrpInvResAndItemSum, Order Item and Inventory Reservation View Entity
class OrderItemAndShipGrpInvResAndItemSum extends EntityBase {

  final String orderItemSeqId; // pk
  final String productId;
  final String orderId; // pk
  final double totQuantityAvailable;
  final double quantityOrdered;
  final double totQuantityReserved;
  final String shipGroupSeqId; // pk
  final String inventoryProductId;
  final double totQuantityNotAvailable;
  OrderItemAndShipGrpInvResAndItemSum({entityId,
    @required this.orderItemSeqId, this.productId, @required this.orderId, this.totQuantityAvailable, this.quantityOrdered, this.totQuantityReserved, @required this.shipGroupSeqId, this.inventoryProductId, this.totQuantityNotAvailable,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAndShipGrpInvResAndItemSum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'productId':productId, 'orderId':orderId, 'totQuantityAvailable':totQuantityAvailable, 'quantityOrdered':quantityOrdered, 'totQuantityReserved':totQuantityReserved, 'shipGroupSeqId':shipGroupSeqId, 'inventoryProductId':inventoryProductId, 'totQuantityNotAvailable':totQuantityNotAvailable};
  }

}

/// Entity OrderItemAssoc, Order Item Assoc
class OrderItemAssoc extends EntityBase {

  final String orderItemSeqId; // pk
  final double quantity;
  final String toOrderId; // pk
  final String orderId; // pk
  final String toOrderItemSeqId; // pk
  final String orderItemAssocTypeId; // pk
  final String shipGroupSeqId; // pk
  final String toShipGroupSeqId; // pk
  OrderItemAssoc({entityId,
    @required this.orderItemSeqId, this.quantity, @required this.toOrderId, @required this.orderId, @required this.toOrderItemSeqId, @required this.orderItemAssocTypeId, @required this.shipGroupSeqId, @required this.toShipGroupSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'toOrderId':toOrderId, 'orderId':orderId, 'toOrderItemSeqId':toOrderItemSeqId, 'orderItemAssocTypeId':orderItemAssocTypeId, 'shipGroupSeqId':shipGroupSeqId, 'toShipGroupSeqId':toShipGroupSeqId};
  }

}

/// Entity OrderItemAssocType, Order Item Assoc Type
class OrderItemAssocType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String orderItemAssocTypeId; // pk
  OrderItemAssocType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.orderItemAssocTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'orderItemAssocTypeId':orderItemAssocTypeId};
  }

}

/// Entity OrderItemAttribute, Order Item Attribute
class OrderItemAttribute extends EntityBase {

  final String orderItemSeqId; // pk
  final String orderId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  OrderItemAttribute({entityId,
    @required this.orderItemSeqId, @required this.orderId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity OrderItemBilling, Order Item Billing
class OrderItemBilling extends EntityBase {

  final String orderItemSeqId; // pk
  final double amount;
  final double quantity;
  final String orderId; // pk
  final String itemIssuanceId;
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String shipmentReceiptId;
  OrderItemBilling({entityId,
    @required this.orderItemSeqId, this.amount, this.quantity, @required this.orderId, this.itemIssuanceId, @required this.invoiceId, @required this.invoiceItemSeqId, this.shipmentReceiptId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemBilling { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'amount':amount, 'quantity':quantity, 'orderId':orderId, 'itemIssuanceId':itemIssuanceId, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'shipmentReceiptId':shipmentReceiptId};
  }

}

/// Entity OrderItemBillingAndInvoiceAndItem, OrderItemBilling and Invoice and InvoiceItem View Entity
class OrderItemBillingAndInvoiceAndItem extends EntityBase {

  final String orderItemSeqId; // pk
  final double amount;
  final double quantity;
  final String statusId;
  final String orderId; // pk
  final String itemIssuanceId;
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String shipmentReceiptId;
  OrderItemBillingAndInvoiceAndItem({entityId,
    @required this.orderItemSeqId, this.amount, this.quantity, this.statusId, @required this.orderId, this.itemIssuanceId, @required this.invoiceId, @required this.invoiceItemSeqId, this.shipmentReceiptId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemBillingAndInvoiceAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'amount':amount, 'quantity':quantity, 'statusId':statusId, 'orderId':orderId, 'itemIssuanceId':itemIssuanceId, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'shipmentReceiptId':shipmentReceiptId};
  }

}

/// Entity OrderItemChange, Order Item Change
class OrderItemChange extends EntityBase {

  /// this entity has only one pk
  final String orderItemChangeId; // pk
  final String orderItemSeqId;
  final double unitPrice;
  final String changeTypeEnumId;
  final String changeUserLogin;
  final double quantity;
  final String orderId;
  final double cancelQuantity;
  final DateTime changeDatetime;
  final String changeComments;
  final String itemDescription;
  final String reasonEnumId;
  OrderItemChange({entityId,
    @required this.orderItemChangeId, this.orderItemSeqId, this.unitPrice, this.changeTypeEnumId, this.changeUserLogin, this.quantity, this.orderId, this.cancelQuantity, this.changeDatetime, this.changeComments, this.itemDescription, this.reasonEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemChange { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemChangeId':orderItemChangeId, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'changeTypeEnumId':changeTypeEnumId, 'changeUserLogin':changeUserLogin, 'quantity':quantity, 'orderId':orderId, 'cancelQuantity':cancelQuantity, 'changeDatetime':changeDatetime, 'changeComments':changeComments, 'itemDescription':itemDescription, 'reasonEnumId':reasonEnumId};
  }

}

/// Entity OrderItemContactMech, Order Item Contact Mechanism
class OrderItemContactMech extends EntityBase {

  final String orderItemSeqId; // pk
  final String contactMechPurposeTypeId; // pk
  final String orderId; // pk
  final String contactMechId;
  OrderItemContactMech({entityId,
    @required this.orderItemSeqId, @required this.contactMechPurposeTypeId, @required this.orderId, this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'contactMechPurposeTypeId':contactMechPurposeTypeId, 'orderId':orderId, 'contactMechId':contactMechId};
  }

}

/// Entity OrderItemGroup, Order Item Group
class OrderItemGroup extends EntityBase {

  final String groupName;
  final String orderId; // pk
  final String orderItemGroupSeqId; // pk
  final String parentGroupSeqId;
  OrderItemGroup({entityId,
    this.groupName, @required this.orderId, @required this.orderItemGroupSeqId, this.parentGroupSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'groupName':groupName, 'orderId':orderId, 'orderItemGroupSeqId':orderItemGroupSeqId, 'parentGroupSeqId':parentGroupSeqId};
  }

}

/// Entity OrderItemGroupOrder, Order Item Group Order
class OrderItemGroupOrder extends EntityBase {

  final String orderItemSeqId; // pk
  final String groupOrderId; // pk
  final String orderId; // pk
  OrderItemGroupOrder({entityId,
    @required this.orderItemSeqId, @required this.groupOrderId, @required this.orderId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemGroupOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'groupOrderId':groupOrderId, 'orderId':orderId};
  }

}

/// Entity OrderItemPriceInfo, Order Item Price Info
class OrderItemPriceInfo extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String orderId;
  final String productPriceActionSeqId;
  final double modifyAmount;
  final String description;
  final String productPriceRuleId;
  final String rateCode;
  final String orderItemPriceInfoId; // pk
  OrderItemPriceInfo({entityId,
    this.orderItemSeqId, this.orderId, this.productPriceActionSeqId, this.modifyAmount, this.description, this.productPriceRuleId, this.rateCode, @required this.orderItemPriceInfoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemPriceInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'productPriceActionSeqId':productPriceActionSeqId, 'modifyAmount':modifyAmount, 'description':description, 'productPriceRuleId':productPriceRuleId, 'rateCode':rateCode, 'orderItemPriceInfoId':orderItemPriceInfoId};
  }

}

/// Entity OrderItemQuantityReportGroupByItem, Reports quantity ordered, issued and open by item for OrderItems.
class OrderItemQuantityReportGroupByItem extends EntityBase {

  final String orderItemSeqId; // pk
  final String productId;
  final String orderId; // pk
  final String orderTypeId;
  final double quantityOrdered;
  final String orderItemStatusId;
  final DateTime shipAfterDate;
  final DateTime shipBeforeDate;
  final String orderStatusId;
  final double quantityOpen;
  final String productStoreId;
  final String itemDescription;
  final DateTime orderDate;
  final double quantityIssued;
  OrderItemQuantityReportGroupByItem({entityId,
    @required this.orderItemSeqId, this.productId, @required this.orderId, this.orderTypeId, this.quantityOrdered, this.orderItemStatusId, this.shipAfterDate, this.shipBeforeDate, this.orderStatusId, this.quantityOpen, this.productStoreId, this.itemDescription, this.orderDate, this.quantityIssued,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemQuantityReportGroupByItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'productId':productId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'quantityOrdered':quantityOrdered, 'orderItemStatusId':orderItemStatusId, 'shipAfterDate':shipAfterDate, 'shipBeforeDate':shipBeforeDate, 'orderStatusId':orderStatusId, 'quantityOpen':quantityOpen, 'productStoreId':productStoreId, 'itemDescription':itemDescription, 'orderDate':orderDate, 'quantityIssued':quantityIssued};
  }

}

/// Entity OrderItemQuantityReportGroupByProduct, Reports quantity ordered, issued and open by product for OrderItems.
class OrderItemQuantityReportGroupByProduct extends EntityBase {

  final String orderStatusId;
  final String productId;
  final double quantityOpen;
  final String orderTypeId;
  final double quantityOrdered;
  final String orderItemStatusId;
  final DateTime orderDate;
  final double quantityIssued;
  OrderItemQuantityReportGroupByProduct({entityId,
    this.orderStatusId, this.productId, this.quantityOpen, this.orderTypeId, this.quantityOrdered, this.orderItemStatusId, this.orderDate, this.quantityIssued,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemQuantityReportGroupByProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderStatusId':orderStatusId, 'productId':productId, 'quantityOpen':quantityOpen, 'orderTypeId':orderTypeId, 'quantityOrdered':quantityOrdered, 'orderItemStatusId':orderItemStatusId, 'orderDate':orderDate, 'quantityIssued':quantityIssued};
  }

}

/// Entity OrderItemRole, Order Item Role
class OrderItemRole extends EntityBase {

  final String orderItemSeqId; // pk
  final String roleTypeId; // pk
  final String orderId; // pk
  final String partyId; // pk
  OrderItemRole({entityId,
    @required this.orderItemSeqId, @required this.roleTypeId, @required this.orderId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'roleTypeId':roleTypeId, 'orderId':orderId, 'partyId':partyId};
  }

}

/// Entity OrderItemShipGroup, Order Item Ship Group
class OrderItemShipGroup extends EntityBase {

  final String facilityId;
  final String giftMessage;
  final String orderId; // pk
  final String shippingInstructions;
  final String maySplit;
  final DateTime shipByDate;
  final String shipGroupSeqId; // pk
  final String supplierAgreementId;
  final DateTime estimatedDeliveryDate;
  final String vendorPartyId;
  final String contactMechId;
  final String telecomContactMechId;
  final DateTime shipAfterDate;
  final String carrierPartyId;
  final String carrierRoleTypeId;
  final String isGift;
  final DateTime estimatedShipDate;
  final String supplierPartyId;
  final String shipmentMethodTypeId;
  final String trackingNumber;
  OrderItemShipGroup({entityId,
    this.facilityId, this.giftMessage, @required this.orderId, this.shippingInstructions, this.maySplit, this.shipByDate, @required this.shipGroupSeqId, this.supplierAgreementId, this.estimatedDeliveryDate, this.vendorPartyId, this.contactMechId, this.telecomContactMechId, this.shipAfterDate, this.carrierPartyId, this.carrierRoleTypeId, this.isGift, this.estimatedShipDate, this.supplierPartyId, this.shipmentMethodTypeId, this.trackingNumber,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemShipGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'giftMessage':giftMessage, 'orderId':orderId, 'shippingInstructions':shippingInstructions, 'maySplit':maySplit, 'shipByDate':shipByDate, 'shipGroupSeqId':shipGroupSeqId, 'supplierAgreementId':supplierAgreementId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'vendorPartyId':vendorPartyId, 'contactMechId':contactMechId, 'telecomContactMechId':telecomContactMechId, 'shipAfterDate':shipAfterDate, 'carrierPartyId':carrierPartyId, 'carrierRoleTypeId':carrierRoleTypeId, 'isGift':isGift, 'estimatedShipDate':estimatedShipDate, 'supplierPartyId':supplierPartyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'trackingNumber':trackingNumber};
  }

}

/// Entity OrderItemShipGroupAssoc, Order Item Package Association
class OrderItemShipGroupAssoc extends EntityBase {

  final String orderItemSeqId; // pk
  final double quantity;
  final String orderId; // pk
  final String shipGroupSeqId; // pk
  final double cancelQuantity;
  OrderItemShipGroupAssoc({entityId,
    @required this.orderItemSeqId, this.quantity, @required this.orderId, @required this.shipGroupSeqId, this.cancelQuantity,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemShipGroupAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'orderId':orderId, 'shipGroupSeqId':shipGroupSeqId, 'cancelQuantity':cancelQuantity};
  }

}

/// Entity OrderItemShipGrpInvRes, Order Item Inventory Reservation
class OrderItemShipGrpInvRes extends EntityBase {

  final String orderItemSeqId; // pk
  final double quantity;
  final String orderId; // pk
  final DateTime promisedDatetime;
  final String priority;
  final String shipGroupSeqId; // pk
  final int sequenceId;
  final DateTime oldPickStartDate;
  final DateTime currentPromisedDate;
  final String inventoryItemId; // pk
  final double quantityNotAvailable;
  final DateTime createdDatetime;
  final String reserveOrderEnumId;
  final DateTime reservedDatetime;
  OrderItemShipGrpInvRes({entityId,
    @required this.orderItemSeqId, this.quantity, @required this.orderId, this.promisedDatetime, this.priority, @required this.shipGroupSeqId, this.sequenceId, this.oldPickStartDate, this.currentPromisedDate, @required this.inventoryItemId, this.quantityNotAvailable, this.createdDatetime, this.reserveOrderEnumId, this.reservedDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemShipGrpInvRes { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'orderId':orderId, 'promisedDatetime':promisedDatetime, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'sequenceId':sequenceId, 'oldPickStartDate':oldPickStartDate, 'currentPromisedDate':currentPromisedDate, 'inventoryItemId':inventoryItemId, 'quantityNotAvailable':quantityNotAvailable, 'createdDatetime':createdDatetime, 'reserveOrderEnumId':reserveOrderEnumId, 'reservedDatetime':reservedDatetime};
  }

}

/// Entity OrderItemShipGrpInvResAndItem, Order Item Inventory Reservation and Inventory Item View Entity
class OrderItemShipGrpInvResAndItem extends EntityBase {

  final String orderId; // pk
  final String softIdentifier;
  final DateTime promisedDatetime;
  final String binNumber;
  final int sequenceId;
  final DateTime oldPickStartDate;
  final double oldAvailableToPromise;
  final double quantityOnHandTotal;
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final DateTime reservedDatetime;
  final double oldQuantityOnHand;
  final String partyId;
  final String containerId;
  final double availableToPromiseTotal;
  final String inventoryItemTypeId;
  final String locationSeqId;
  final String orderItemSeqId; // pk
  final double quantity;
  final String facilityId;
  final String comments;
  final String serialNumber;
  final String productId;
  final String lotId;
  final String uomId;
  final double accountingQuantityTotal;
  final String priority;
  final String shipGroupSeqId; // pk
  final DateTime currentPromisedDate;
  final String inventoryItemId; // pk
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final String statusId;
  final double unitCost;
  final String fixedAssetId;
  final double quantityNotAvailable;
  final DateTime createdDatetime;
  final DateTime datetimeReceived;
  final String reserveOrderEnumId;
  OrderItemShipGrpInvResAndItem({entityId,
    @required this.orderId, this.softIdentifier, this.promisedDatetime, this.binNumber, this.sequenceId, this.oldPickStartDate, this.oldAvailableToPromise, this.quantityOnHandTotal, this.datetimeManufactured, this.expireDate, this.reservedDatetime, this.oldQuantityOnHand, this.partyId, this.containerId, this.availableToPromiseTotal, this.inventoryItemTypeId, this.locationSeqId, @required this.orderItemSeqId, this.quantity, this.facilityId, this.comments, this.serialNumber, this.productId, this.lotId, this.uomId, this.accountingQuantityTotal, this.priority, @required this.shipGroupSeqId, this.currentPromisedDate, @required this.inventoryItemId, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.statusId, this.unitCost, this.fixedAssetId, this.quantityNotAvailable, this.createdDatetime, this.datetimeReceived, this.reserveOrderEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemShipGrpInvResAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'softIdentifier':softIdentifier, 'promisedDatetime':promisedDatetime, 'binNumber':binNumber, 'sequenceId':sequenceId, 'oldPickStartDate':oldPickStartDate, 'oldAvailableToPromise':oldAvailableToPromise, 'quantityOnHandTotal':quantityOnHandTotal, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'reservedDatetime':reservedDatetime, 'oldQuantityOnHand':oldQuantityOnHand, 'partyId':partyId, 'containerId':containerId, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId, 'locationSeqId':locationSeqId, 'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'facilityId':facilityId, 'comments':comments, 'serialNumber':serialNumber, 'productId':productId, 'lotId':lotId, 'uomId':uomId, 'accountingQuantityTotal':accountingQuantityTotal, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'currentPromisedDate':currentPromisedDate, 'inventoryItemId':inventoryItemId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'statusId':statusId, 'unitCost':unitCost, 'fixedAssetId':fixedAssetId, 'quantityNotAvailable':quantityNotAvailable, 'createdDatetime':createdDatetime, 'datetimeReceived':datetimeReceived, 'reserveOrderEnumId':reserveOrderEnumId};
  }

}

/// Entity OrderItemShipGrpInvResAndItemLocation, Order Item Inventory Reservation and Inventory Item and FacilityLocation View Entity
class OrderItemShipGrpInvResAndItemLocation extends EntityBase {

  final String orderId; // pk
  final String binNumber;
  final int sequenceId;
  final double oldAvailableToPromise;
  final String levelId;
  final DateTime reservedDatetime;
  final String partyId;
  final String containerId;
  final String locationSeqId;
  final String orderItemSeqId; // pk
  final String serialNumber;
  final String productId;
  final String uomId;
  final String priority;
  final String shipGroupSeqId; // pk
  final String inventoryItemId; // pk
  final String statusId;
  final String fixedAssetId;
  final double quantityNotAvailable;
  final DateTime createdDatetime;
  final String reserveOrderEnumId;
  final String geoPointId;
  final String softIdentifier;
  final DateTime promisedDatetime;
  final String orderItemStatusId;
  final DateTime oldPickStartDate;
  final String aisleId;
  final double quantityOnHandTotal;
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final double oldQuantityOnHand;
  final double availableToPromiseTotal;
  final String inventoryItemTypeId;
  final double quantity;
  final String facilityId;
  final String comments;
  final String lotId;
  final double accountingQuantityTotal;
  final String sectionId;
  final DateTime currentPromisedDate;
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final String areaId;
  final String positionId;
  final double unitCost;
  final DateTime datetimeReceived;
  final String locationTypeEnumId;
  OrderItemShipGrpInvResAndItemLocation({entityId,
    @required this.orderId, this.binNumber, this.sequenceId, this.oldAvailableToPromise, this.levelId, this.reservedDatetime, this.partyId, this.containerId, this.locationSeqId, @required this.orderItemSeqId, this.serialNumber, this.productId, this.uomId, this.priority, @required this.shipGroupSeqId, @required this.inventoryItemId, this.statusId, this.fixedAssetId, this.quantityNotAvailable, this.createdDatetime, this.reserveOrderEnumId, this.geoPointId, this.softIdentifier, this.promisedDatetime, this.orderItemStatusId, this.oldPickStartDate, this.aisleId, this.quantityOnHandTotal, this.datetimeManufactured, this.expireDate, this.oldQuantityOnHand, this.availableToPromiseTotal, this.inventoryItemTypeId, this.quantity, this.facilityId, this.comments, this.lotId, this.accountingQuantityTotal, this.sectionId, this.currentPromisedDate, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.areaId, this.positionId, this.unitCost, this.datetimeReceived, this.locationTypeEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemShipGrpInvResAndItemLocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'binNumber':binNumber, 'sequenceId':sequenceId, 'oldAvailableToPromise':oldAvailableToPromise, 'levelId':levelId, 'reservedDatetime':reservedDatetime, 'partyId':partyId, 'containerId':containerId, 'locationSeqId':locationSeqId, 'orderItemSeqId':orderItemSeqId, 'serialNumber':serialNumber, 'productId':productId, 'uomId':uomId, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'inventoryItemId':inventoryItemId, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'quantityNotAvailable':quantityNotAvailable, 'createdDatetime':createdDatetime, 'reserveOrderEnumId':reserveOrderEnumId, 'geoPointId':geoPointId, 'softIdentifier':softIdentifier, 'promisedDatetime':promisedDatetime, 'orderItemStatusId':orderItemStatusId, 'oldPickStartDate':oldPickStartDate, 'aisleId':aisleId, 'quantityOnHandTotal':quantityOnHandTotal, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'oldQuantityOnHand':oldQuantityOnHand, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId, 'quantity':quantity, 'facilityId':facilityId, 'comments':comments, 'lotId':lotId, 'accountingQuantityTotal':accountingQuantityTotal, 'sectionId':sectionId, 'currentPromisedDate':currentPromisedDate, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'areaId':areaId, 'positionId':positionId, 'unitCost':unitCost, 'datetimeReceived':datetimeReceived, 'locationTypeEnumId':locationTypeEnumId};
  }

}

/// Entity OrderItemType, Order Item Type
class OrderItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String orderItemTypeId; // pk
  OrderItemType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.orderItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'orderItemTypeId':orderItemTypeId};
  }

}

/// Entity OrderItemTypeAttr, Order Item Type Attribute
class OrderItemTypeAttr extends EntityBase {

  final String description;
  final String attrName; // pk
  final String orderItemTypeId; // pk
  OrderItemTypeAttr({entityId,
    this.description, @required this.attrName, @required this.orderItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderItemTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'attrName':attrName, 'orderItemTypeId':orderItemTypeId};
  }

}

/// Entity OrderNotification, Order Notification
class OrderNotification extends EntityBase {

  /// this entity has only one pk
  final String orderNotificationId; // pk
  final String comments;
  final String orderId;
  final String emailType;
  final DateTime notificationDate;
  OrderNotification({entityId,
    @required this.orderNotificationId, this.comments, this.orderId, this.emailType, this.notificationDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderNotification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderNotificationId':orderNotificationId, 'comments':comments, 'orderId':orderId, 'emailType':emailType, 'notificationDate':notificationDate};
  }

}

/// Entity OrderPaymentPrefAndPayment, Payment Preference and Payment View Entity
class OrderPaymentPrefAndPayment extends EntityBase {

  final double amount;
  final String orderPaymentPreferenceId; // pk
  final String paymentTypeId;
  final String statusId;
  final String orderId;
  final String paymentId; // pk
  OrderPaymentPrefAndPayment({entityId,
    this.amount, @required this.orderPaymentPreferenceId, this.paymentTypeId, this.statusId, this.orderId, @required this.paymentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderPaymentPrefAndPayment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'paymentTypeId':paymentTypeId, 'statusId':statusId, 'orderId':orderId, 'paymentId':paymentId};
  }

}

/// Entity OrderPaymentPreference, The Order Payment Preference
class OrderPaymentPreference extends EntityBase {

  /// this entity has only one pk
  final String orderId;
  final String manualAuthCode;
  final String lastModifiedByUserLogin;
  final String orderPaymentPreferenceId; // pk
  final String paymentMethodId;
  final String overflowFlag;
  final String productPricePurposeId;
  final double maxAmount;
  final String createdByUserLogin;
  final String orderItemSeqId;
  final String track2;
  final DateTime lastModifiedDate;
  final String manualRefNum;
  final String swipedFlag;
  final String securityCode;
  final String paymentMethodTypeId;
  final String shipGroupSeqId;
  final int processAttempt;
  final String needsNsfRetry;
  final String finAccountId;
  final DateTime createdDate;
  final String statusId;
  final String billingPostalCode;
  final String presentFlag;
  OrderPaymentPreference({entityId,
    this.orderId, this.manualAuthCode, this.lastModifiedByUserLogin, @required this.orderPaymentPreferenceId, this.paymentMethodId, this.overflowFlag, this.productPricePurposeId, this.maxAmount, this.createdByUserLogin, this.orderItemSeqId, this.track2, this.lastModifiedDate, this.manualRefNum, this.swipedFlag, this.securityCode, this.paymentMethodTypeId, this.shipGroupSeqId, this.processAttempt, this.needsNsfRetry, this.finAccountId, this.createdDate, this.statusId, this.billingPostalCode, this.presentFlag,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderPaymentPreference { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'manualAuthCode':manualAuthCode, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'paymentMethodId':paymentMethodId, 'overflowFlag':overflowFlag, 'productPricePurposeId':productPricePurposeId, 'maxAmount':maxAmount, 'createdByUserLogin':createdByUserLogin, 'orderItemSeqId':orderItemSeqId, 'track2':track2, 'lastModifiedDate':lastModifiedDate, 'manualRefNum':manualRefNum, 'swipedFlag':swipedFlag, 'securityCode':securityCode, 'paymentMethodTypeId':paymentMethodTypeId, 'shipGroupSeqId':shipGroupSeqId, 'processAttempt':processAttempt, 'needsNsfRetry':needsNsfRetry, 'finAccountId':finAccountId, 'createdDate':createdDate, 'statusId':statusId, 'billingPostalCode':billingPostalCode, 'presentFlag':presentFlag};
  }

}

/// Entity OrderProductPromoCode, Order Product Promo Code
class OrderProductPromoCode extends EntityBase {

  final String orderId; // pk
  final String productPromoCodeId; // pk
  OrderProductPromoCode({entityId,
    @required this.orderId, @required this.productPromoCodeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderProductPromoCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'productPromoCodeId':productPromoCodeId};
  }

}

/// Entity OrderPurchasePaymentSummary, Order Purchase Payment Summary View Entity
class OrderPurchasePaymentSummary extends EntityBase {

  /// this entity has only one pk
  final String orderId; // pk
  final String description;
  final String orderTypeId;
  final String billingAccountId;
  final String terminalId;
  final String paymentMethodTypeId;
  final String originFacilityId;
  final String statusId;
  final String preferenceStatusId;
  final String productStoreId;
  final double maxAmount;
  final DateTime orderDate;
  final String webSiteId;
  OrderPurchasePaymentSummary({entityId,
    @required this.orderId, this.description, this.orderTypeId, this.billingAccountId, this.terminalId, this.paymentMethodTypeId, this.originFacilityId, this.statusId, this.preferenceStatusId, this.productStoreId, this.maxAmount, this.orderDate, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderPurchasePaymentSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderId':orderId, 'description':description, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'terminalId':terminalId, 'paymentMethodTypeId':paymentMethodTypeId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'preferenceStatusId':preferenceStatusId, 'productStoreId':productStoreId, 'maxAmount':maxAmount, 'orderDate':orderDate, 'webSiteId':webSiteId};
  }

}

/// Entity OrderPurchaseProductSummary, Order Purchase Product Summary View Entity
class OrderPurchaseProductSummary extends EntityBase {

  final double unitPrice;
  final double quantity;
  final String productId; // pk
  final String orderId; // pk
  final String orderTypeId;
  final String terminalId;
  final double cancelQuantity;
  final String itemStatusId;
  final String originFacilityId;
  final String internalName;
  final String statusId;
  final double unitListPrice;
  final String productStoreId;
  final DateTime orderDate;
  final String webSiteId;
  OrderPurchaseProductSummary({entityId,
    this.unitPrice, this.quantity, @required this.productId, @required this.orderId, this.orderTypeId, this.terminalId, this.cancelQuantity, this.itemStatusId, this.originFacilityId, this.internalName, this.statusId, this.unitListPrice, this.productStoreId, this.orderDate, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderPurchaseProductSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'terminalId':terminalId, 'cancelQuantity':cancelQuantity, 'itemStatusId':itemStatusId, 'originFacilityId':originFacilityId, 'internalName':internalName, 'statusId':statusId, 'unitListPrice':unitListPrice, 'productStoreId':productStoreId, 'orderDate':orderDate, 'webSiteId':webSiteId};
  }

}

/// Entity OrderReportGroupByProduct, Basic product quantity and price report with ability to select based on order type, status, date and order item status
class OrderReportGroupByProduct extends EntityBase {

  final double unitPrice;
  final String orderStatusId;
  final double quantity;
  final String productId;
  final String orderTypeId;
  final String orderItemStatusId;
  final DateTime orderDate;
  OrderReportGroupByProduct({entityId,
    this.unitPrice, this.orderStatusId, this.quantity, this.productId, this.orderTypeId, this.orderItemStatusId, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderReportGroupByProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'orderStatusId':orderStatusId, 'quantity':quantity, 'productId':productId, 'orderTypeId':orderTypeId, 'orderItemStatusId':orderItemStatusId, 'orderDate':orderDate};
  }

}

/// Entity OrderReportPurchasesGroupByProduct, Order Report Group By Product View Entity with extra details for purchase order reporting
class OrderReportPurchasesGroupByProduct extends EntityBase {

  final double unitPrice;
  final String internalName;
  final String fromPartyId; // pk
  final String orderStatusId;
  final double quantity;
  final String productId;
  final String toRoleTypeId; // pk
  final String orderTypeId;
  final String orderItemStatusId;
  final String toPartyId; // pk
  final String fromRoleTypeId; // pk
  final DateTime orderDate;
  OrderReportPurchasesGroupByProduct({entityId,
    this.unitPrice, this.internalName, @required this.fromPartyId, this.orderStatusId, this.quantity, this.productId, @required this.toRoleTypeId, this.orderTypeId, this.orderItemStatusId, @required this.toPartyId, @required this.fromRoleTypeId, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderReportPurchasesGroupByProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'internalName':internalName, 'fromPartyId':fromPartyId, 'orderStatusId':orderStatusId, 'quantity':quantity, 'productId':productId, 'toRoleTypeId':toRoleTypeId, 'orderTypeId':orderTypeId, 'orderItemStatusId':orderItemStatusId, 'toPartyId':toPartyId, 'fromRoleTypeId':fromRoleTypeId, 'orderDate':orderDate};
  }

}

/// Entity OrderReportSalesGroupByProduct, Order Report Group By Product View Entity with extra details for sales order reporting
class OrderReportSalesGroupByProduct extends EntityBase {

  final String internalName;
  final String roleTypeId; // pk
  final double amount;
  final String orderStatusId;
  final String productId;
  final String orderTypeId;
  final String storeName;
  final double quantityOrdered;
  final String productStoreId;
  final String orderItemStatusId;
  final String partyId; // pk
  final DateTime orderDate;
  OrderReportSalesGroupByProduct({entityId,
    this.internalName, @required this.roleTypeId, this.amount, this.orderStatusId, this.productId, this.orderTypeId, this.storeName, this.quantityOrdered, this.productStoreId, this.orderItemStatusId, @required this.partyId, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderReportSalesGroupByProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'internalName':internalName, 'roleTypeId':roleTypeId, 'amount':amount, 'orderStatusId':orderStatusId, 'productId':productId, 'orderTypeId':orderTypeId, 'storeName':storeName, 'quantityOrdered':quantityOrdered, 'productStoreId':productStoreId, 'orderItemStatusId':orderItemStatusId, 'partyId':partyId, 'orderDate':orderDate};
  }

}

/// Entity OrderReportView, Order Report View Entity
class OrderReportView extends EntityBase {

  /// this entity has only one pk
  final double unitPrice;
  final double quantity;
  final String productId;
  final String orderId; // pk
  final double grandTotal;
  final String orderTypeId;
  final String orderStatus;
  final String originFacilityId;
  final String groupName;
  final String visitId;
  final String currencyUom;
  final String itemStatus;
  final String paymentMethod;
  final String itemDescription;
  final DateTime orderDate;
  final String webSiteId;
  OrderReportView({entityId,
    this.unitPrice, this.quantity, this.productId, @required this.orderId, this.grandTotal, this.orderTypeId, this.orderStatus, this.originFacilityId, this.groupName, this.visitId, this.currencyUom, this.itemStatus, this.paymentMethod, this.itemDescription, this.orderDate, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderReportView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'unitPrice':unitPrice, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'grandTotal':grandTotal, 'orderTypeId':orderTypeId, 'orderStatus':orderStatus, 'originFacilityId':originFacilityId, 'groupName':groupName, 'visitId':visitId, 'currencyUom':currencyUom, 'itemStatus':itemStatus, 'paymentMethod':paymentMethod, 'itemDescription':itemDescription, 'orderDate':orderDate, 'webSiteId':webSiteId};
  }

}

/// Entity OrderRole, Order Role
class OrderRole extends EntityBase {

  final String roleTypeId; // pk
  final String orderId; // pk
  final String partyId; // pk
  OrderRole({entityId,
    @required this.roleTypeId, @required this.orderId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'orderId':orderId, 'partyId':partyId};
  }

}

/// Entity OrderRoleAndProductContentInfo, OrderRole And OrderItem And ProductContent Info View Entity
class OrderRoleAndProductContentInfo extends EntityBase {

  final String useTimeUomId;
  final int sequenceNum;
  final String orderId; // pk
  final String ownerContentId;
  final String mimeTypeId;
  final String productName;
  final String privilegeEnumId;
  final String deploymentId;
  final String dataResourceId;
  final DateTime cancelBackOrderDate;
  final String itemDescription;
  final String partyId; // pk
  final String createdByUserLogin;
  final double selectedAmount;
  final String orderItemSeqId; // pk
  final double unitPrice;
  final String productId;
  final double unitRecurringPrice;
  final String instanceOfContentId;
  final String isItemGroupPrimary;
  final DateTime autoCancelDate;
  final String productFeatureId;
  final String overrideGlAccountId;
  final String budgetId;
  final int useCountLimit;
  final String supplierProductId;
  final DateTime estimatedDeliveryDate;
  final String quoteId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String statusId;
  final String syncStatusId;
  final DateTime estimatedShipDate;
  final String shoppingListItemSeqId;
  final String subscriptionId;
  final String salesOpportunityId;
  final int childBranchCount;
  final String dontCancelSetUserLogin;
  final String contentId; // pk
  final String contentTypeId;
  final String contentStatusId;
  final String description;
  final int childLeafCount;
  final String isPromo;
  final String isModifiedPrice;
  final DateTime shipBeforeDate;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String productCategoryId;
  final String shoppingListId;
  final double unitListPrice;
  final double unitAverageCost;
  final String useRoleTypeId;
  final int useTime;
  final String orderItemTypeId;
  final String roleTypeId; // pk
  final DateTime dontCancelSetDate;
  final DateTime purchaseFromDate;
  final double quantity;
  final String comments;
  final String recurringFreqUomId;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String orderItemGroupSeqId;
  final String quoteItemSeqId;
  final String externalId;
  final String fromInventoryItemId;
  final String budgetItemSeqId;
  final String serviceName;
  final String correspondingPoId;
  final String productContentTypeId; // pk
  final String customMethodId;
  final String characterSetId;
  final double cancelQuantity;
  final DateTime shipAfterDate;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final String decoratorContentId;
  final DateTime purchaseThruDate;
  final String changeByUserLoginId;
  final String prodCatalogId;
  OrderRoleAndProductContentInfo({entityId,
    this.useTimeUomId, this.sequenceNum, @required this.orderId, this.ownerContentId, this.mimeTypeId, this.productName, this.privilegeEnumId, this.deploymentId, this.dataResourceId, this.cancelBackOrderDate, this.itemDescription, @required this.partyId, this.createdByUserLogin, this.selectedAmount, @required this.orderItemSeqId, this.unitPrice, this.productId, this.unitRecurringPrice, this.instanceOfContentId, this.isItemGroupPrimary, this.autoCancelDate, this.productFeatureId, this.overrideGlAccountId, this.budgetId, this.useCountLimit, this.supplierProductId, this.estimatedDeliveryDate, this.quoteId, this.thruDate, @required this.fromDate, this.statusId, this.syncStatusId, this.estimatedShipDate, this.shoppingListItemSeqId, this.subscriptionId, this.salesOpportunityId, this.childBranchCount, this.dontCancelSetUserLogin, @required this.contentId, this.contentTypeId, this.contentStatusId, this.description, this.childLeafCount, this.isPromo, this.isModifiedPrice, this.shipBeforeDate, this.dataSourceId, this.lastModifiedByUserLogin, this.productCategoryId, this.shoppingListId, this.unitListPrice, this.unitAverageCost, this.useRoleTypeId, this.useTime, this.orderItemTypeId, @required this.roleTypeId, this.dontCancelSetDate, this.purchaseFromDate, this.quantity, this.comments, this.recurringFreqUomId, this.templateDataResourceId, this.lastModifiedDate, this.orderItemGroupSeqId, this.quoteItemSeqId, this.externalId, this.fromInventoryItemId, this.budgetItemSeqId, this.serviceName, this.correspondingPoId, @required this.productContentTypeId, this.customMethodId, this.characterSetId, this.cancelQuantity, this.shipAfterDate, this.contentName, this.createdDate, this.localeString, this.decoratorContentId, this.purchaseThruDate, this.changeByUserLoginId, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderRoleAndProductContentInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'useTimeUomId':useTimeUomId, 'sequenceNum':sequenceNum, 'orderId':orderId, 'ownerContentId':ownerContentId, 'mimeTypeId':mimeTypeId, 'productName':productName, 'privilegeEnumId':privilegeEnumId, 'deploymentId':deploymentId, 'dataResourceId':dataResourceId, 'cancelBackOrderDate':cancelBackOrderDate, 'itemDescription':itemDescription, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'selectedAmount':selectedAmount, 'orderItemSeqId':orderItemSeqId, 'unitPrice':unitPrice, 'productId':productId, 'unitRecurringPrice':unitRecurringPrice, 'instanceOfContentId':instanceOfContentId, 'isItemGroupPrimary':isItemGroupPrimary, 'autoCancelDate':autoCancelDate, 'productFeatureId':productFeatureId, 'overrideGlAccountId':overrideGlAccountId, 'budgetId':budgetId, 'useCountLimit':useCountLimit, 'supplierProductId':supplierProductId, 'estimatedDeliveryDate':estimatedDeliveryDate, 'quoteId':quoteId, 'thruDate':thruDate, 'fromDate':fromDate, 'statusId':statusId, 'syncStatusId':syncStatusId, 'estimatedShipDate':estimatedShipDate, 'shoppingListItemSeqId':shoppingListItemSeqId, 'subscriptionId':subscriptionId, 'salesOpportunityId':salesOpportunityId, 'childBranchCount':childBranchCount, 'dontCancelSetUserLogin':dontCancelSetUserLogin, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentStatusId':contentStatusId, 'description':description, 'childLeafCount':childLeafCount, 'isPromo':isPromo, 'isModifiedPrice':isModifiedPrice, 'shipBeforeDate':shipBeforeDate, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'productCategoryId':productCategoryId, 'shoppingListId':shoppingListId, 'unitListPrice':unitListPrice, 'unitAverageCost':unitAverageCost, 'useRoleTypeId':useRoleTypeId, 'useTime':useTime, 'orderItemTypeId':orderItemTypeId, 'roleTypeId':roleTypeId, 'dontCancelSetDate':dontCancelSetDate, 'purchaseFromDate':purchaseFromDate, 'quantity':quantity, 'comments':comments, 'recurringFreqUomId':recurringFreqUomId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'orderItemGroupSeqId':orderItemGroupSeqId, 'quoteItemSeqId':quoteItemSeqId, 'externalId':externalId, 'fromInventoryItemId':fromInventoryItemId, 'budgetItemSeqId':budgetItemSeqId, 'serviceName':serviceName, 'correspondingPoId':correspondingPoId, 'productContentTypeId':productContentTypeId, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'cancelQuantity':cancelQuantity, 'shipAfterDate':shipAfterDate, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'purchaseThruDate':purchaseThruDate, 'changeByUserLoginId':changeByUserLoginId, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity OrderShipment, Order Shipment
class OrderShipment extends EntityBase {

  final String orderItemSeqId; // pk
  final double quantity;
  final String orderId; // pk
  final String shipmentId; // pk
  final String shipmentItemSeqId; // pk
  final String shipGroupSeqId; // pk
  OrderShipment({entityId,
    @required this.orderItemSeqId, this.quantity, @required this.orderId, @required this.shipmentId, @required this.shipmentItemSeqId, @required this.shipGroupSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderShipment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'quantity':quantity, 'orderId':orderId, 'shipmentId':shipmentId, 'shipmentItemSeqId':shipmentItemSeqId, 'shipGroupSeqId':shipGroupSeqId};
  }

}

/// Entity OrderStatus, Order Status
class OrderStatus extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String orderStatusId; // pk
  final String orderPaymentPreferenceId;
  final String statusId;
  final String statusUserLogin;
  final String changeReason;
  final String orderId;
  final DateTime statusDatetime;
  OrderStatus({entityId,
    this.orderItemSeqId, @required this.orderStatusId, this.orderPaymentPreferenceId, this.statusId, this.statusUserLogin, this.changeReason, this.orderId, this.statusDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderStatusId':orderStatusId, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'statusId':statusId, 'statusUserLogin':statusUserLogin, 'changeReason':changeReason, 'orderId':orderId, 'statusDatetime':statusDatetime};
  }

}

/// Entity OrderSummaryEntry, Order Summary Entry
class OrderSummaryEntry extends EntityBase {

  final String facilityId; // pk
  final double totalQuantity;
  final double productCost;
  final String productId; // pk
  final DateTime entryDate; // pk
  final double grossSales;
  OrderSummaryEntry({entityId,
    @required this.facilityId, this.totalQuantity, this.productCost, @required this.productId, @required this.entryDate, this.grossSales,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderSummaryEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'totalQuantity':totalQuantity, 'productCost':productCost, 'productId':productId, 'entryDate':entryDate, 'grossSales':grossSales};
  }

}

/// Entity OrderTaskList, Order WorkEffort Task List
class OrderTaskList extends EntityBase {

  final String workEffortId; // pk
  final String workEffortTypeId;
  final String orderId; // pk
  final String orderRoleTypeId; // pk
  final String orderTypeId;
  final String description;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String infoUrl;
  final DateTime statusDateTime;
  final DateTime actualStartDate;
  final String customerLastName;
  final String createdByUserLogin;
  final String customerPartyId; // pk
  final String wepaPartyId; // pk
  final String roleTypeId; // pk
  final DateTime entryDate;
  final double grandTotal;
  final DateTime lastModifiedDate;
  final DateTime estimatedStartDate;
  final DateTime lastStatusUpdate;
  final int priority;
  final String currentStatusId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String customerFirstName;
  final DateTime actualCompletionDate;
  final DateTime orderDate;
  final DateTime estimatedCompletionDate;
  OrderTaskList({entityId,
    @required this.workEffortId, this.workEffortTypeId, @required this.orderId, @required this.orderRoleTypeId, this.orderTypeId, this.description, this.workEffortName, this.lastModifiedByUserLogin, this.infoUrl, this.statusDateTime, this.actualStartDate, this.customerLastName, this.createdByUserLogin, @required this.customerPartyId, @required this.wepaPartyId, @required this.roleTypeId, this.entryDate, this.grandTotal, this.lastModifiedDate, this.estimatedStartDate, this.lastStatusUpdate, this.priority, this.currentStatusId, this.thruDate, @required this.fromDate, this.createdDate, this.statusId, this.customerFirstName, this.actualCompletionDate, this.orderDate, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderTaskList { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'workEffortTypeId':workEffortTypeId, 'orderId':orderId, 'orderRoleTypeId':orderRoleTypeId, 'orderTypeId':orderTypeId, 'description':description, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'infoUrl':infoUrl, 'statusDateTime':statusDateTime, 'actualStartDate':actualStartDate, 'customerLastName':customerLastName, 'createdByUserLogin':createdByUserLogin, 'customerPartyId':customerPartyId, 'wepaPartyId':wepaPartyId, 'roleTypeId':roleTypeId, 'entryDate':entryDate, 'grandTotal':grandTotal, 'lastModifiedDate':lastModifiedDate, 'estimatedStartDate':estimatedStartDate, 'lastStatusUpdate':lastStatusUpdate, 'priority':priority, 'currentStatusId':currentStatusId, 'thruDate':thruDate, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'customerFirstName':customerFirstName, 'actualCompletionDate':actualCompletionDate, 'orderDate':orderDate, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity OrderTerm, Order Term
class OrderTerm extends EntityBase {

  final String orderItemSeqId; // pk
  final String textValue;
  final String orderId; // pk
  final int termDays;
  final String termTypeId; // pk
  final String description;
  final String uomId;
  final double termValue;
  OrderTerm({entityId,
    @required this.orderItemSeqId, this.textValue, @required this.orderId, this.termDays, @required this.termTypeId, this.description, this.uomId, this.termValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'textValue':textValue, 'orderId':orderId, 'termDays':termDays, 'termTypeId':termTypeId, 'description':description, 'uomId':uomId, 'termValue':termValue};
  }

}

/// Entity OrderTermAttribute, Order Term Attribute
class OrderTermAttribute extends EntityBase {

  final String orderItemSeqId; // pk
  final String orderId; // pk
  final String attrDescription;
  final String termTypeId; // pk
  final String attrValue;
  final String attrName; // pk
  OrderTermAttribute({entityId,
    @required this.orderItemSeqId, @required this.orderId, this.attrDescription, @required this.termTypeId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderTermAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'attrDescription':attrDescription, 'termTypeId':termTypeId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity OrderType, Order Type
class OrderType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String orderTypeId; // pk
  final String description;
  OrderType({entityId,
    this.parentTypeId, this.hasTable, @required this.orderTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'orderTypeId':orderTypeId, 'description':description};
  }

}

/// Entity OrderTypeAttr, Order Type Attribute
class OrderTypeAttr extends EntityBase {

  final String orderTypeId; // pk
  final String description;
  final String attrName; // pk
  OrderTypeAttr({entityId,
    @required this.orderTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderTypeId':orderTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity ProductOrderItem, Product Order Item
class ProductOrderItem extends EntityBase {

  final String orderItemSeqId; // pk
  final String engagementItemSeqId; // pk
  final String productId;
  final String orderId; // pk
  final String engagementId; // pk
  ProductOrderItem({entityId,
    @required this.orderItemSeqId, @required this.engagementItemSeqId, this.productId, @required this.orderId, @required this.engagementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductOrderItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'engagementItemSeqId':engagementItemSeqId, 'productId':productId, 'orderId':orderId, 'engagementId':engagementId};
  }

}

/// Entity WorkAndOrderItemFulfillment, WorkOrderItemFulfillment And WorkEffort View Entity
class WorkAndOrderItemFulfillment extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final String orderId; // pk
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String orderItemSeqId; // pk
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String shipGroupSeqId;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkAndOrderItemFulfillment({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, @required this.orderId, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, @required this.orderItemSeqId, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.shipGroupSeqId, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkAndOrderItemFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'orderId':orderId, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'orderItemSeqId':orderItemSeqId, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'shipGroupSeqId':shipGroupSeqId, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkOrderItemFulfillment, Work Order Item Fulfillment
class WorkOrderItemFulfillment extends EntityBase {

  final String workEffortId; // pk
  final String orderItemSeqId; // pk
  final String orderId; // pk
  final String shipGroupSeqId;
  WorkOrderItemFulfillment({entityId,
    @required this.workEffortId, @required this.orderItemSeqId, @required this.orderId, this.shipGroupSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkOrderItemFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'shipGroupSeqId':shipGroupSeqId};
  }

}