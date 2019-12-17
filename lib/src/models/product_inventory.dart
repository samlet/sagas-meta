import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity BalanceInventoryItemsView, Balance Inventory Items View
class BalanceInventoryItemsView extends EntityBase {

  final String orderItemSeqId; // pk
  final String facilityId;
  final double quantity;
  final String productId;
  final String orderId; // pk
  final String shipGroupSeqId; // pk
  final int sequenceId;
  final String inventoryItemId; // pk
  final double quantityOnHandTotal;
  final double quantityNotAvailable;
  final String reserveOrderEnumId;
  final DateTime reservedDatetime;
  final double availableToPromiseTotal;
  final String inventoryItemTypeId;
  BalanceInventoryItemsView({entityId,
    @required this.orderItemSeqId, this.facilityId, this.quantity, this.productId, @required this.orderId, @required this.shipGroupSeqId, this.sequenceId, @required this.inventoryItemId, this.quantityOnHandTotal, this.quantityNotAvailable, this.reserveOrderEnumId, this.reservedDatetime, this.availableToPromiseTotal, this.inventoryItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BalanceInventoryItemsView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'facilityId':facilityId, 'quantity':quantity, 'productId':productId, 'orderId':orderId, 'shipGroupSeqId':shipGroupSeqId, 'sequenceId':sequenceId, 'inventoryItemId':inventoryItemId, 'quantityOnHandTotal':quantityOnHandTotal, 'quantityNotAvailable':quantityNotAvailable, 'reserveOrderEnumId':reserveOrderEnumId, 'reservedDatetime':reservedDatetime, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId};
  }

}

/// Entity InventoryItem, Inventory Item
class InventoryItem extends EntityBase {

  /// this entity has only one pk
  final String softIdentifier;
  final String binNumber;
  final double oldAvailableToPromise;
  final double quantityOnHandTotal;
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final double oldQuantityOnHand;
  final String partyId;
  final String containerId;
  final double availableToPromiseTotal;
  final String inventoryItemTypeId;
  final String locationSeqId;
  final String facilityId;
  final String comments;
  final String serialNumber;
  final String productId;
  final String lotId;
  final String uomId;
  final double accountingQuantityTotal;
  final String inventoryItemId; // pk
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final String statusId;
  final double unitCost;
  final String fixedAssetId;
  final DateTime datetimeReceived;
  InventoryItem({entityId,
    this.softIdentifier, this.binNumber, this.oldAvailableToPromise, this.quantityOnHandTotal, this.datetimeManufactured, this.expireDate, this.oldQuantityOnHand, this.partyId, this.containerId, this.availableToPromiseTotal, this.inventoryItemTypeId, this.locationSeqId, this.facilityId, this.comments, this.serialNumber, this.productId, this.lotId, this.uomId, this.accountingQuantityTotal, @required this.inventoryItemId, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.statusId, this.unitCost, this.fixedAssetId, this.datetimeReceived,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'softIdentifier':softIdentifier, 'binNumber':binNumber, 'oldAvailableToPromise':oldAvailableToPromise, 'quantityOnHandTotal':quantityOnHandTotal, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'oldQuantityOnHand':oldQuantityOnHand, 'partyId':partyId, 'containerId':containerId, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId, 'locationSeqId':locationSeqId, 'facilityId':facilityId, 'comments':comments, 'serialNumber':serialNumber, 'productId':productId, 'lotId':lotId, 'uomId':uomId, 'accountingQuantityTotal':accountingQuantityTotal, 'inventoryItemId':inventoryItemId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'statusId':statusId, 'unitCost':unitCost, 'fixedAssetId':fixedAssetId, 'datetimeReceived':datetimeReceived};
  }

}

/// Entity InventoryItemAndDetail, InventoryItemAndDetail
class InventoryItemAndDetail extends EntityBase {

  final String workEffortId;
  final String orderId;
  final String softIdentifier;
  final String binNumber;
  final String description;
  final String maintHistSeqId;
  final String inventoryItemDetailSeqId; // pk
  final double oldAvailableToPromise;
  final double accountingQuantityDiff;
  final String physicalInventoryId;
  final String inventoryItemFixedAssetId;
  final double quantityOnHandTotal;
  final String itemIssuanceId;
  final DateTime datetimeManufactured;
  final String returnId;
  final DateTime expireDate;
  final double oldQuantityOnHand;
  final String reasonEnumId;
  final String partyId;
  final String containerId;
  final double availableToPromiseTotal;
  final String receiptId;
  final String inventoryItemTypeId;
  final String locationSeqId;
  final double quantityOnHandDiff;
  final String orderItemSeqId;
  final String facilityId;
  final String comments;
  final String serialNumber;
  final String productId;
  final String lotId;
  final String uomId;
  final double accountingQuantityTotal;
  final String shipmentItemSeqId;
  final String shipGroupSeqId;
  final String inventoryItemId; // pk
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final String statusId;
  final double availableToPromiseDiff;
  final String shipmentId;
  final double unitCost;
  final String returnItemSeqId;
  final String fixedAssetId;
  final DateTime datetimeReceived;
  final DateTime effectiveDate;
  InventoryItemAndDetail({entityId,
    this.workEffortId, this.orderId, this.softIdentifier, this.binNumber, this.description, this.maintHistSeqId, @required this.inventoryItemDetailSeqId, this.oldAvailableToPromise, this.accountingQuantityDiff, this.physicalInventoryId, this.inventoryItemFixedAssetId, this.quantityOnHandTotal, this.itemIssuanceId, this.datetimeManufactured, this.returnId, this.expireDate, this.oldQuantityOnHand, this.reasonEnumId, this.partyId, this.containerId, this.availableToPromiseTotal, this.receiptId, this.inventoryItemTypeId, this.locationSeqId, this.quantityOnHandDiff, this.orderItemSeqId, this.facilityId, this.comments, this.serialNumber, this.productId, this.lotId, this.uomId, this.accountingQuantityTotal, this.shipmentItemSeqId, this.shipGroupSeqId, @required this.inventoryItemId, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.statusId, this.availableToPromiseDiff, this.shipmentId, this.unitCost, this.returnItemSeqId, this.fixedAssetId, this.datetimeReceived, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemAndDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'orderId':orderId, 'softIdentifier':softIdentifier, 'binNumber':binNumber, 'description':description, 'maintHistSeqId':maintHistSeqId, 'inventoryItemDetailSeqId':inventoryItemDetailSeqId, 'oldAvailableToPromise':oldAvailableToPromise, 'accountingQuantityDiff':accountingQuantityDiff, 'physicalInventoryId':physicalInventoryId, 'inventoryItemFixedAssetId':inventoryItemFixedAssetId, 'quantityOnHandTotal':quantityOnHandTotal, 'itemIssuanceId':itemIssuanceId, 'datetimeManufactured':datetimeManufactured, 'returnId':returnId, 'expireDate':expireDate, 'oldQuantityOnHand':oldQuantityOnHand, 'reasonEnumId':reasonEnumId, 'partyId':partyId, 'containerId':containerId, 'availableToPromiseTotal':availableToPromiseTotal, 'receiptId':receiptId, 'inventoryItemTypeId':inventoryItemTypeId, 'locationSeqId':locationSeqId, 'quantityOnHandDiff':quantityOnHandDiff, 'orderItemSeqId':orderItemSeqId, 'facilityId':facilityId, 'comments':comments, 'serialNumber':serialNumber, 'productId':productId, 'lotId':lotId, 'uomId':uomId, 'accountingQuantityTotal':accountingQuantityTotal, 'shipmentItemSeqId':shipmentItemSeqId, 'shipGroupSeqId':shipGroupSeqId, 'inventoryItemId':inventoryItemId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'statusId':statusId, 'availableToPromiseDiff':availableToPromiseDiff, 'shipmentId':shipmentId, 'unitCost':unitCost, 'returnItemSeqId':returnItemSeqId, 'fixedAssetId':fixedAssetId, 'datetimeReceived':datetimeReceived, 'effectiveDate':effectiveDate};
  }

}

/// Entity InventoryItemAndLocation, InventoryItem And FacilityLocation View
class InventoryItemAndLocation extends EntityBase {

  /// this entity has only one pk
  final String originGeoId;
  final String binNumber;
  final String mediumImageUrl;
  final String productName;
  final String originalImageUrl;
  final String inShippingBox;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String partyId;
  final String containerId;
  final double productRating;
  final String createdByUserLogin;
  final String locationSeqId;
  final String requireAmount;
  final String productId;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String uomId;
  final String inventoryItemId; // pk
  final String salesDiscWhenNotAvail;
  final String returnable;
  final String statusId;
  final String fixedAssetId;
  final String priceDetailText;
  final double reserv2ndPPPerc;
  final String diameterUomId;
  final double productDiameter;
  final String softIdentifier;
  final String ratingTypeEnum;
  final String chargeShipping;
  final double reservNthPPPerc;
  final double quantityIncluded;
  final String heightUomId;
  final String virtualVariantMethodEnum;
  final double shippingWeight;
  final double shippingWidth;
  final double shippingDepth;
  final DateTime datetimeManufactured;
  final DateTime expireDate;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final double productHeight;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String lotId;
  final double accountingQuantityTotal;
  final double productWeight;
  final String depthUomId;
  final String sectionId;
  final String ownerPartyId;
  final DateTime activationValidThru;
  final String activationNumber;
  final String currencyUomId;
  final DateTime createdDate;
  final String areaId;
  final String positionId;
  final String isVariant;
  final String locationTypeEnumId;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final DateTime introductionDate;
  final double shippingHeight;
  final double oldAvailableToPromise;
  final String detailImageUrl;
  final String includeInPromotions;
  final String configId;
  final String levelId;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final String brandName;
  final String serialNumber;
  final String smallImageUrl;
  final String weightUomId;
  final String isVirtual;
  final String geoPointId;
  final String widthUomId;
  final String longDescription;
  final String autoCreateKeywords;
  final String amountUomTypeId;
  final String description;
  final String aisleId;
  final String internalName;
  final String lastModifiedByUserLogin;
  final double quantityOnHandTotal;
  final double reservMaxPersons;
  final double oldQuantityOnHand;
  final double fixedAmount;
  final double availableToPromiseTotal;
  final double productDepth;
  final String facilityId;
  final String comments;
  final DateTime releaseDate;
  final DateTime lastModifiedDate;
  final String inventoryMessage;
  final String productTypeId;
  final double unitCost;
  final String largeImageUrl;
  final DateTime datetimeReceived;
  final String requirementMethodEnumId;
  InventoryItemAndLocation({entityId,
    this.originGeoId, this.binNumber, this.mediumImageUrl, this.productName, this.originalImageUrl, this.inShippingBox, this.supportDiscontinuationDate, this.productWidth, this.partyId, this.containerId, this.productRating, this.createdByUserLogin, this.locationSeqId, this.requireAmount, this.productId, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.uomId, @required this.inventoryItemId, this.salesDiscWhenNotAvail, this.returnable, this.statusId, this.fixedAssetId, this.priceDetailText, this.reserv2ndPPPerc, this.diameterUomId, this.productDiameter, this.softIdentifier, this.ratingTypeEnum, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.datetimeManufactured, this.expireDate, this.inventoryItemTypeId, this.piecesIncluded, this.productHeight, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.lotId, this.accountingQuantityTotal, this.productWeight, this.depthUomId, this.sectionId, this.ownerPartyId, this.activationValidThru, this.activationNumber, this.currencyUomId, this.createdDate, this.areaId, this.positionId, this.isVariant, this.locationTypeEnumId, this.detailScreen, this.requireInventory, this.quantityUomId, this.introductionDate, this.shippingHeight, this.oldAvailableToPromise, this.detailImageUrl, this.includeInPromotions, this.configId, this.levelId, this.billOfMaterialLevel, this.lotIdFilledIn, this.brandName, this.serialNumber, this.smallImageUrl, this.weightUomId, this.isVirtual, this.geoPointId, this.widthUomId, this.longDescription, this.autoCreateKeywords, this.amountUomTypeId, this.description, this.aisleId, this.internalName, this.lastModifiedByUserLogin, this.quantityOnHandTotal, this.reservMaxPersons, this.oldQuantityOnHand, this.fixedAmount, this.availableToPromiseTotal, this.productDepth, this.facilityId, this.comments, this.releaseDate, this.lastModifiedDate, this.inventoryMessage, this.productTypeId, this.unitCost, this.largeImageUrl, this.datetimeReceived, this.requirementMethodEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemAndLocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originGeoId':originGeoId, 'binNumber':binNumber, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'partyId':partyId, 'containerId':containerId, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'locationSeqId':locationSeqId, 'requireAmount':requireAmount, 'productId':productId, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'uomId':uomId, 'inventoryItemId':inventoryItemId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'diameterUomId':diameterUomId, 'productDiameter':productDiameter, 'softIdentifier':softIdentifier, 'ratingTypeEnum':ratingTypeEnum, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'datetimeManufactured':datetimeManufactured, 'expireDate':expireDate, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productHeight':productHeight, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'lotId':lotId, 'accountingQuantityTotal':accountingQuantityTotal, 'productWeight':productWeight, 'depthUomId':depthUomId, 'sectionId':sectionId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'areaId':areaId, 'positionId':positionId, 'isVariant':isVariant, 'locationTypeEnumId':locationTypeEnumId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'oldAvailableToPromise':oldAvailableToPromise, 'detailImageUrl':detailImageUrl, 'includeInPromotions':includeInPromotions, 'configId':configId, 'levelId':levelId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'brandName':brandName, 'serialNumber':serialNumber, 'smallImageUrl':smallImageUrl, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'geoPointId':geoPointId, 'widthUomId':widthUomId, 'longDescription':longDescription, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'description':description, 'aisleId':aisleId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'quantityOnHandTotal':quantityOnHandTotal, 'reservMaxPersons':reservMaxPersons, 'oldQuantityOnHand':oldQuantityOnHand, 'fixedAmount':fixedAmount, 'availableToPromiseTotal':availableToPromiseTotal, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'releaseDate':releaseDate, 'lastModifiedDate':lastModifiedDate, 'inventoryMessage':inventoryMessage, 'productTypeId':productTypeId, 'unitCost':unitCost, 'largeImageUrl':largeImageUrl, 'datetimeReceived':datetimeReceived, 'requirementMethodEnumId':requirementMethodEnumId};
  }

}

/// Entity InventoryItemAttribute, Inventory Item Attribute
class InventoryItemAttribute extends EntityBase {

  final String inventoryItemId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  InventoryItemAttribute({entityId,
    @required this.inventoryItemId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity InventoryItemDetail, Inventory Item Detail
class InventoryItemDetail extends EntityBase {

  final String workEffortId;
  final String orderId;
  final String description;
  final String maintHistSeqId;
  final String inventoryItemDetailSeqId; // pk
  final double accountingQuantityDiff;
  final String physicalInventoryId;
  final String itemIssuanceId;
  final String returnId;
  final String reasonEnumId;
  final String receiptId;
  final double quantityOnHandDiff;
  final String orderItemSeqId;
  final String shipmentItemSeqId;
  final String shipGroupSeqId;
  final String inventoryItemId; // pk
  final double availableToPromiseDiff;
  final String shipmentId;
  final double unitCost;
  final String returnItemSeqId;
  final String fixedAssetId;
  final DateTime effectiveDate;
  InventoryItemDetail({entityId,
    this.workEffortId, this.orderId, this.description, this.maintHistSeqId, @required this.inventoryItemDetailSeqId, this.accountingQuantityDiff, this.physicalInventoryId, this.itemIssuanceId, this.returnId, this.reasonEnumId, this.receiptId, this.quantityOnHandDiff, this.orderItemSeqId, this.shipmentItemSeqId, this.shipGroupSeqId, @required this.inventoryItemId, this.availableToPromiseDiff, this.shipmentId, this.unitCost, this.returnItemSeqId, this.fixedAssetId, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'orderId':orderId, 'description':description, 'maintHistSeqId':maintHistSeqId, 'inventoryItemDetailSeqId':inventoryItemDetailSeqId, 'accountingQuantityDiff':accountingQuantityDiff, 'physicalInventoryId':physicalInventoryId, 'itemIssuanceId':itemIssuanceId, 'returnId':returnId, 'reasonEnumId':reasonEnumId, 'receiptId':receiptId, 'quantityOnHandDiff':quantityOnHandDiff, 'orderItemSeqId':orderItemSeqId, 'shipmentItemSeqId':shipmentItemSeqId, 'shipGroupSeqId':shipGroupSeqId, 'inventoryItemId':inventoryItemId, 'availableToPromiseDiff':availableToPromiseDiff, 'shipmentId':shipmentId, 'unitCost':unitCost, 'returnItemSeqId':returnItemSeqId, 'fixedAssetId':fixedAssetId, 'effectiveDate':effectiveDate};
  }

}

/// Entity InventoryItemDetailForSum, Inventory Item And Inventory Item Detail for Summation View
class InventoryItemDetailForSum extends EntityBase {

  final String ownerPartyId;
  final double accountingQuantityDiff;
  final String facilityId;
  final String currencyUomId;
  final String productId;
  final String orderId;
  final double unitCost;
  final double quantityOnHandSum;
  final double accountingQuantitySum;
  final DateTime effectiveDate;
  final String inventoryItemTypeId;
  final double quantityOnHandDiff;
  InventoryItemDetailForSum({entityId,
    this.ownerPartyId, this.accountingQuantityDiff, this.facilityId, this.currencyUomId, this.productId, this.orderId, this.unitCost, this.quantityOnHandSum, this.accountingQuantitySum, this.effectiveDate, this.inventoryItemTypeId, this.quantityOnHandDiff,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemDetailForSum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerPartyId':ownerPartyId, 'accountingQuantityDiff':accountingQuantityDiff, 'facilityId':facilityId, 'currencyUomId':currencyUomId, 'productId':productId, 'orderId':orderId, 'unitCost':unitCost, 'quantityOnHandSum':quantityOnHandSum, 'accountingQuantitySum':accountingQuantitySum, 'effectiveDate':effectiveDate, 'inventoryItemTypeId':inventoryItemTypeId, 'quantityOnHandDiff':quantityOnHandDiff};
  }

}

/// Entity InventoryItemDetailSummary, Inventory Item Detail Summary View
class InventoryItemDetailSummary extends EntityBase {

  /// this entity has only one pk
  final String inventoryItemId; // pk
  final double quantityOnHandTotal;
  final double accountingQuantityTotal;
  final double availableToPromiseTotal;
  InventoryItemDetailSummary({entityId,
    @required this.inventoryItemId, this.quantityOnHandTotal, this.accountingQuantityTotal, this.availableToPromiseTotal,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemDetailSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'quantityOnHandTotal':quantityOnHandTotal, 'accountingQuantityTotal':accountingQuantityTotal, 'availableToPromiseTotal':availableToPromiseTotal};
  }

}

/// Entity InventoryItemLabel, Inventory Item Label
class InventoryItemLabel extends EntityBase {

  /// this entity has only one pk
  final String inventoryItemLabelId; // pk
  final String inventoryItemLabelTypeId;
  final String description;
  InventoryItemLabel({entityId,
    @required this.inventoryItemLabelId, this.inventoryItemLabelTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemLabel { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemLabelId':inventoryItemLabelId, 'inventoryItemLabelTypeId':inventoryItemLabelTypeId, 'description':description};
  }

}

/// Entity InventoryItemLabelAppl, Inventory Item Label Applicability
class InventoryItemLabelAppl extends EntityBase {

  final String inventoryItemId; // pk
  final String inventoryItemLabelId;
  final int sequenceNum;
  final String inventoryItemLabelTypeId; // pk
  InventoryItemLabelAppl({entityId,
    @required this.inventoryItemId, this.inventoryItemLabelId, this.sequenceNum, @required this.inventoryItemLabelTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemLabelAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'inventoryItemLabelId':inventoryItemLabelId, 'sequenceNum':sequenceNum, 'inventoryItemLabelTypeId':inventoryItemLabelTypeId};
  }

}

/// Entity InventoryItemLabelType, Inventory Item Label Type
class InventoryItemLabelType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String inventoryItemLabelTypeId; // pk
  final String description;
  InventoryItemLabelType({entityId,
    this.parentTypeId, this.hasTable, @required this.inventoryItemLabelTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemLabelType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'inventoryItemLabelTypeId':inventoryItemLabelTypeId, 'description':description};
  }

}

/// Entity InventoryItemStatus, Inventory Item Status History
class InventoryItemStatus extends EntityBase {

  final String inventoryItemId; // pk
  final String ownerPartyId;
  final String statusId; // pk
  final String productId;
  final DateTime statusDatetime; // pk
  final String changeByUserLoginId;
  final DateTime statusEndDatetime;
  InventoryItemStatus({entityId,
    @required this.inventoryItemId, this.ownerPartyId, @required this.statusId, this.productId, @required this.statusDatetime, this.changeByUserLoginId, this.statusEndDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'ownerPartyId':ownerPartyId, 'statusId':statusId, 'productId':productId, 'statusDatetime':statusDatetime, 'changeByUserLoginId':changeByUserLoginId, 'statusEndDatetime':statusEndDatetime};
  }

}

/// Entity InventoryItemStatusForCount, InventoryItemStatusForCount
class InventoryItemStatusForCount extends EntityBase {

  final String inventoryItemId; // pk
  final String facilityId;
  final String productId;
  final String statusId; // pk
  final DateTime statusDatetime; // pk
  final String inventoryItemTypeId;
  final DateTime statusEndDatetime;
  InventoryItemStatusForCount({entityId,
    @required this.inventoryItemId, this.facilityId, this.productId, @required this.statusId, @required this.statusDatetime, this.inventoryItemTypeId, this.statusEndDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemStatusForCount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'facilityId':facilityId, 'productId':productId, 'statusId':statusId, 'statusDatetime':statusDatetime, 'inventoryItemTypeId':inventoryItemTypeId, 'statusEndDatetime':statusEndDatetime};
  }

}

/// Entity InventoryItemTempRes, Inventory Item Temporary Reservation
class InventoryItemTempRes extends EntityBase {

  final DateTime reservedDate;
  final double quantity;
  final String visitId; // pk
  final String productId; // pk
  final String productStoreId; // pk
  InventoryItemTempRes({entityId,
    this.reservedDate, this.quantity, @required this.visitId, @required this.productId, @required this.productStoreId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemTempRes { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reservedDate':reservedDate, 'quantity':quantity, 'visitId':visitId, 'productId':productId, 'productStoreId':productStoreId};
  }

}

/// Entity InventoryItemType, Inventory Item Type
class InventoryItemType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String inventoryItemTypeId; // pk
  InventoryItemType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.inventoryItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'inventoryItemTypeId':inventoryItemTypeId};
  }

}

/// Entity InventoryItemTypeAttr, Inventory Item Type Attribute
class InventoryItemTypeAttr extends EntityBase {

  final String description;
  final String attrName; // pk
  final String inventoryItemTypeId; // pk
  InventoryItemTypeAttr({entityId,
    this.description, @required this.attrName, @required this.inventoryItemTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'attrName':attrName, 'inventoryItemTypeId':inventoryItemTypeId};
  }

}

/// Entity InventoryItemVariance, Inventory Item Variance
class InventoryItemVariance extends EntityBase {

  final String inventoryItemId; // pk
  final String varianceReasonId;
  final String physicalInventoryId; // pk
  final String comments;
  final double quantityOnHandVar;
  final double availableToPromiseVar;
  InventoryItemVariance({entityId,
    @required this.inventoryItemId, this.varianceReasonId, @required this.physicalInventoryId, this.comments, this.quantityOnHandVar, this.availableToPromiseVar,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryItemVariance { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'varianceReasonId':varianceReasonId, 'physicalInventoryId':physicalInventoryId, 'comments':comments, 'quantityOnHandVar':quantityOnHandVar, 'availableToPromiseVar':availableToPromiseVar};
  }

}

/// Entity InventoryTransfer, Inventory Transfer
class InventoryTransfer extends EntityBase {

  /// this entity has only one pk
  final String containerIdTo;
  final String facilityId;
  final String comments;
  final DateTime sendDate;
  final DateTime receiveDate;
  final String facilityIdTo;
  final String inventoryItemId;
  final String inventoryTransferId; // pk
  final String statusId;
  final String itemIssuanceId;
  final String containerId;
  final String locationSeqIdTo;
  final String locationSeqId;
  InventoryTransfer({entityId,
    this.containerIdTo, this.facilityId, this.comments, this.sendDate, this.receiveDate, this.facilityIdTo, this.inventoryItemId, @required this.inventoryTransferId, this.statusId, this.itemIssuanceId, this.containerId, this.locationSeqIdTo, this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'InventoryTransfer { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'containerIdTo':containerIdTo, 'facilityId':facilityId, 'comments':comments, 'sendDate':sendDate, 'receiveDate':receiveDate, 'facilityIdTo':facilityIdTo, 'inventoryItemId':inventoryItemId, 'inventoryTransferId':inventoryTransferId, 'statusId':statusId, 'itemIssuanceId':itemIssuanceId, 'containerId':containerId, 'locationSeqIdTo':locationSeqIdTo, 'locationSeqId':locationSeqId};
  }

}

/// Entity Lot, Lot
class Lot extends EntityBase {

  /// this entity has only one pk
  final double quantity;
  final String lotId; // pk
  final DateTime creationDate;
  final DateTime expirationDate;
  Lot({entityId,
    this.quantity, @required this.lotId, this.creationDate, this.expirationDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Lot { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'lotId':lotId, 'creationDate':creationDate, 'expirationDate':expirationDate};
  }

}

/// Entity PhysicalInventory, Physical Inventory
class PhysicalInventory extends EntityBase {

  /// this entity has only one pk
  final String physicalInventoryId; // pk
  final DateTime physicalInventoryDate;
  final String generalComments;
  final String partyId;
  PhysicalInventory({entityId,
    @required this.physicalInventoryId, this.physicalInventoryDate, this.generalComments, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PhysicalInventory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'physicalInventoryId':physicalInventoryId, 'physicalInventoryDate':physicalInventoryDate, 'generalComments':generalComments, 'partyId':partyId};
  }

}

/// Entity PhysicalInventoryAndVariance, PhysicalInventory and InventoryItemVariance View
class PhysicalInventoryAndVariance extends EntityBase {

  final String inventoryItemId; // pk
  final String varianceReasonId;
  final String physicalInventoryId; // pk
  final DateTime physicalInventoryDate;
  final String comments;
  final double quantityOnHandVar;
  final String generalComments;
  final String partyId;
  final double availableToPromiseVar;
  PhysicalInventoryAndVariance({entityId,
    @required this.inventoryItemId, this.varianceReasonId, @required this.physicalInventoryId, this.physicalInventoryDate, this.comments, this.quantityOnHandVar, this.generalComments, this.partyId, this.availableToPromiseVar,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PhysicalInventoryAndVariance { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryItemId':inventoryItemId, 'varianceReasonId':varianceReasonId, 'physicalInventoryId':physicalInventoryId, 'physicalInventoryDate':physicalInventoryDate, 'comments':comments, 'quantityOnHandVar':quantityOnHandVar, 'generalComments':generalComments, 'partyId':partyId, 'availableToPromiseVar':availableToPromiseVar};
  }

}

/// Entity VarianceReason, Variance Reason
class VarianceReason extends EntityBase {

  /// this entity has only one pk
  final String varianceReasonId; // pk
  final String description;
  VarianceReason({entityId,
    @required this.varianceReasonId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VarianceReason { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'varianceReasonId':varianceReasonId, 'description':description};
  }

}