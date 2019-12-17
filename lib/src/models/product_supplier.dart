import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity MarketInterest, Market Interest
class MarketInterest extends EntityBase {

  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String partyClassificationGroupId; // pk
  final DateTime thruDate;
  MarketInterest({entityId,
    @required this.fromDate, @required this.productCategoryId, @required this.partyClassificationGroupId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketInterest { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productCategoryId':productCategoryId, 'partyClassificationGroupId':partyClassificationGroupId, 'thruDate':thruDate};
  }

}

/// Entity ReorderGuideline, Reorder Guideline
class ReorderGuideline extends EntityBase {

  /// this entity has only one pk
  final String roleTypeId;
  final String facilityId;
  final String productId;
  final double reorderQuantity;
  final DateTime thruDate;
  final DateTime fromDate;
  final double reorderLevel;
  final String reorderGuidelineId; // pk
  final String geoId;
  final String partyId;
  ReorderGuideline({entityId,
    this.roleTypeId, this.facilityId, this.productId, this.reorderQuantity, this.thruDate, this.fromDate, this.reorderLevel, @required this.reorderGuidelineId, this.geoId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ReorderGuideline { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'facilityId':facilityId, 'productId':productId, 'reorderQuantity':reorderQuantity, 'thruDate':thruDate, 'fromDate':fromDate, 'reorderLevel':reorderLevel, 'reorderGuidelineId':reorderGuidelineId, 'geoId':geoId, 'partyId':partyId};
  }

}

/// Entity SupplierPrefOrder, Preference Type
class SupplierPrefOrder extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String supplierPrefOrderId; // pk
  SupplierPrefOrder({entityId,
    this.description, @required this.supplierPrefOrderId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SupplierPrefOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'supplierPrefOrderId':supplierPrefOrderId};
  }

}

/// Entity SupplierProduct, Supplier Product
class SupplierProduct extends EntityBase {

  final String supplierProductName;
  final String comments;
  final String productId; // pk
  final String canDropShip;
  final double minimumOrderQuantity; // pk
  final String supplierRatingTypeId;
  final String agreementItemSeqId;
  final String quantityUomId;
  final String supplierProductId;
  final String supplierPrefOrderId;
  final double unitsIncluded;
  final double orderQtyIncrements;
  final String currencyUomId; // pk
  final DateTime availableFromDate; // pk
  final double shippingPrice;
  final String agreementId;
  final DateTime availableThruDate;
  final String partyId; // pk
  final double standardLeadTimeDays;
  final double lastPrice;
  SupplierProduct({entityId,
    this.supplierProductName, this.comments, @required this.productId, this.canDropShip, @required this.minimumOrderQuantity, this.supplierRatingTypeId, this.agreementItemSeqId, this.quantityUomId, this.supplierProductId, this.supplierPrefOrderId, this.unitsIncluded, this.orderQtyIncrements, @required this.currencyUomId, @required this.availableFromDate, this.shippingPrice, this.agreementId, this.availableThruDate, @required this.partyId, this.standardLeadTimeDays, this.lastPrice,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SupplierProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'supplierProductName':supplierProductName, 'comments':comments, 'productId':productId, 'canDropShip':canDropShip, 'minimumOrderQuantity':minimumOrderQuantity, 'supplierRatingTypeId':supplierRatingTypeId, 'agreementItemSeqId':agreementItemSeqId, 'quantityUomId':quantityUomId, 'supplierProductId':supplierProductId, 'supplierPrefOrderId':supplierPrefOrderId, 'unitsIncluded':unitsIncluded, 'orderQtyIncrements':orderQtyIncrements, 'currencyUomId':currencyUomId, 'availableFromDate':availableFromDate, 'shippingPrice':shippingPrice, 'agreementId':agreementId, 'availableThruDate':availableThruDate, 'partyId':partyId, 'standardLeadTimeDays':standardLeadTimeDays, 'lastPrice':lastPrice};
  }

}

/// Entity SupplierProductAndProduct, Supplier-product and product antityview for purchase order entry
class SupplierProductAndProduct extends EntityBase {

  final String supplierProductName;
  final String canDropShip;
  final String originGeoId;
  final double minimumOrderQuantity; // pk
  final String detailScreen;
  final String quantityUomId;
  final String requireInventory;
  final String mediumImageUrl;
  final double unitsIncluded;
  final String productName;
  final DateTime introductionDate;
  final double shippingHeight;
  final String originalImageUrl;
  final String inShippingBox;
  final String detailImageUrl;
  final DateTime availableFromDate; // pk
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String includeInPromotions;
  final String configId;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final String partyId; // pk
  final double productRating;
  final String createdByUserLogin;
  final String brandName;
  final String requireAmount;
  final String productId; // pk
  final String smallImageUrl;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String agreementItemSeqId;
  final String supplierProductId;
  final String supplierPrefOrderId;
  final String salesDiscWhenNotAvail;
  final double orderQtyIncrements;
  final String returnable;
  final double shippingPrice;
  final DateTime availableThruDate;
  final String weightUomId;
  final String isVirtual;
  final String priceDetailText;
  final double reserv2ndPPPerc;
  final String widthUomId;
  final String longDescription;
  final String diameterUomId;
  final String autoCreateKeywords;
  final String amountUomTypeId;
  final double productDiameter;
  final String supplierRatingTypeId;
  final String ratingTypeEnum;
  final String description;
  final String chargeShipping;
  final double reservNthPPPerc;
  final double quantityIncluded;
  final String heightUomId;
  final String internalName;
  final String lastModifiedByUserLogin;
  final String virtualVariantMethodEnum;
  final double shippingWeight;
  final double shippingWidth;
  final double shippingDepth;
  final String agreementId;
  final double reservMaxPersons;
  final double fixedAmount;
  final double standardLeadTimeDays;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final double productDepth;
  final String comments;
  final String facilityId;
  final DateTime releaseDate;
  final double productHeight;
  final DateTime lastModifiedDate;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String inventoryMessage;
  final double productWeight;
  final String depthUomId;
  final String productTypeId;
  final String currencyUomId; // pk
  final DateTime createdDate;
  final String isVariant;
  final String largeImageUrl;
  final String requirementMethodEnumId;
  final double lastPrice;
  SupplierProductAndProduct({entityId,
    this.supplierProductName, this.canDropShip, this.originGeoId, @required this.minimumOrderQuantity, this.detailScreen, this.quantityUomId, this.requireInventory, this.mediumImageUrl, this.unitsIncluded, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.detailImageUrl, @required this.availableFromDate, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.lotIdFilledIn, @required this.partyId, this.productRating, this.createdByUserLogin, this.brandName, this.requireAmount, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.agreementItemSeqId, this.supplierProductId, this.supplierPrefOrderId, this.salesDiscWhenNotAvail, this.orderQtyIncrements, this.returnable, this.shippingPrice, this.availableThruDate, this.weightUomId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.supplierRatingTypeId, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.agreementId, this.reservMaxPersons, this.fixedAmount, this.standardLeadTimeDays, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.comments, this.facilityId, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.inventoryMessage, this.productWeight, this.depthUomId, this.productTypeId, @required this.currencyUomId, this.createdDate, this.isVariant, this.largeImageUrl, this.requirementMethodEnumId, this.lastPrice,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SupplierProductAndProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'supplierProductName':supplierProductName, 'canDropShip':canDropShip, 'originGeoId':originGeoId, 'minimumOrderQuantity':minimumOrderQuantity, 'detailScreen':detailScreen, 'quantityUomId':quantityUomId, 'requireInventory':requireInventory, 'mediumImageUrl':mediumImageUrl, 'unitsIncluded':unitsIncluded, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'detailImageUrl':detailImageUrl, 'availableFromDate':availableFromDate, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'partyId':partyId, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'brandName':brandName, 'requireAmount':requireAmount, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'agreementItemSeqId':agreementItemSeqId, 'supplierProductId':supplierProductId, 'supplierPrefOrderId':supplierPrefOrderId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'orderQtyIncrements':orderQtyIncrements, 'returnable':returnable, 'shippingPrice':shippingPrice, 'availableThruDate':availableThruDate, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'supplierRatingTypeId':supplierRatingTypeId, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'agreementId':agreementId, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'standardLeadTimeDays':standardLeadTimeDays, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'comments':comments, 'facilityId':facilityId, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'inventoryMessage':inventoryMessage, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId, 'lastPrice':lastPrice};
  }

}

/// Entity SupplierProductFeature, Supplier-specific product feature information
class SupplierProductFeature extends EntityBase {

  final String idCode;
  final String productFeatureId; // pk
  final String description;
  final String uomId;
  final String partyId; // pk
  SupplierProductFeature({entityId,
    this.idCode, @required this.productFeatureId, this.description, this.uomId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SupplierProductFeature { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'idCode':idCode, 'productFeatureId':productFeatureId, 'description':description, 'uomId':uomId, 'partyId':partyId};
  }

}

/// Entity SupplierRatingType, Supplier Rating Type
class SupplierRatingType extends EntityBase {

  /// this entity has only one pk
  final String supplierRatingTypeId; // pk
  final String description;
  SupplierRatingType({entityId,
    @required this.supplierRatingTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SupplierRatingType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'supplierRatingTypeId':supplierRatingTypeId, 'description':description};
  }

}