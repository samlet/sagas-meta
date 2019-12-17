import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity GoodIdentification, Good Identification
class GoodIdentification extends EntityBase {

  final String productId; // pk
  final String goodIdentificationTypeId; // pk
  final String idValue;
  GoodIdentification({entityId,
    @required this.productId, @required this.goodIdentificationTypeId, this.idValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GoodIdentification { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'goodIdentificationTypeId':goodIdentificationTypeId, 'idValue':idValue};
  }

}

/// Entity GoodIdentificationAndProduct, GoodIdentification and Product View
class GoodIdentificationAndProduct extends EntityBase {

  final String originGeoId;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final String mediumImageUrl;
  final String productName;
  final DateTime introductionDate;
  final double shippingHeight;
  final String originalImageUrl;
  final String inShippingBox;
  final String detailImageUrl;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String includeInPromotions;
  final String configId;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final double productRating;
  final String createdByUserLogin;
  final String brandName;
  final String requireAmount;
  final String productId; // pk
  final String smallImageUrl;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String goodIdentificationTypeId; // pk
  final String salesDiscWhenNotAvail;
  final String returnable;
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
  final double reservMaxPersons;
  final double fixedAmount;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final double productDepth;
  final String facilityId;
  final String comments;
  final DateTime releaseDate;
  final double productHeight;
  final DateTime lastModifiedDate;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String idValue;
  final String inventoryMessage;
  final double productWeight;
  final String depthUomId;
  final String productTypeId;
  final DateTime createdDate;
  final String isVariant;
  final String largeImageUrl;
  final String requirementMethodEnumId;
  GoodIdentificationAndProduct({entityId,
    this.originGeoId, this.detailScreen, this.requireInventory, this.quantityUomId, this.mediumImageUrl, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.detailImageUrl, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.lotIdFilledIn, this.productRating, this.createdByUserLogin, this.brandName, this.requireAmount, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, @required this.goodIdentificationTypeId, this.salesDiscWhenNotAvail, this.returnable, this.weightUomId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.reservMaxPersons, this.fixedAmount, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.facilityId, this.comments, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.idValue, this.inventoryMessage, this.productWeight, this.depthUomId, this.productTypeId, this.createdDate, this.isVariant, this.largeImageUrl, this.requirementMethodEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GoodIdentificationAndProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originGeoId':originGeoId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'detailImageUrl':detailImageUrl, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'brandName':brandName, 'requireAmount':requireAmount, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'goodIdentificationTypeId':goodIdentificationTypeId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'idValue':idValue, 'inventoryMessage':inventoryMessage, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'createdDate':createdDate, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId};
  }

}

/// Entity GoodIdentificationType, Good Identification Type
class GoodIdentificationType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String goodIdentificationTypeId; // pk
  final String description;
  GoodIdentificationType({entityId,
    this.parentTypeId, this.hasTable, @required this.goodIdentificationTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GoodIdentificationType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'goodIdentificationTypeId':goodIdentificationTypeId, 'description':description};
  }

}

/// Entity Product, Product
class Product extends EntityBase {

  /// this entity has only one pk
  final String originGeoId;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final String mediumImageUrl;
  final String productName;
  final DateTime introductionDate;
  final double shippingHeight;
  final String originalImageUrl;
  final String inShippingBox;
  final String detailImageUrl;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String includeInPromotions;
  final String configId;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final double productRating;
  final String createdByUserLogin;
  final String brandName;
  final String requireAmount;
  final String productId; // pk
  final String smallImageUrl;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String salesDiscWhenNotAvail;
  final String returnable;
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
  final double reservMaxPersons;
  final double fixedAmount;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final double productDepth;
  final String facilityId;
  final String comments;
  final DateTime releaseDate;
  final double productHeight;
  final DateTime lastModifiedDate;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final String inventoryMessage;
  final double productWeight;
  final String depthUomId;
  final String productTypeId;
  final DateTime createdDate;
  final String isVariant;
  final String largeImageUrl;
  final String requirementMethodEnumId;
  Product({entityId,
    this.originGeoId, this.detailScreen, this.requireInventory, this.quantityUomId, this.mediumImageUrl, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.detailImageUrl, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.lotIdFilledIn, this.productRating, this.createdByUserLogin, this.brandName, this.requireAmount, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.salesDiscWhenNotAvail, this.returnable, this.weightUomId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.reservMaxPersons, this.fixedAmount, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.facilityId, this.comments, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.inventoryMessage, this.productWeight, this.depthUomId, this.productTypeId, this.createdDate, this.isVariant, this.largeImageUrl, this.requirementMethodEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Product { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originGeoId':originGeoId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'detailImageUrl':detailImageUrl, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'brandName':brandName, 'requireAmount':requireAmount, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'inventoryMessage':inventoryMessage, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'createdDate':createdDate, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId};
  }

}

/// Entity ProductAndAssoc, Product and ProductAssoc View
class ProductAndAssoc extends EntityBase {

  final DateTime fromDate; // pk
  final String internalName;
  final double quantity;
  final String productId; // pk
  final String productIdTo; // pk
  final String productAssocTypeId; // pk
  ProductAndAssoc({entityId,
    @required this.fromDate, this.internalName, this.quantity, @required this.productId, @required this.productIdTo, @required this.productAssocTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAndAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'internalName':internalName, 'quantity':quantity, 'productId':productId, 'productIdTo':productIdTo, 'productAssocTypeId':productAssocTypeId};
  }

}

/// Entity ProductAndPriceView, Product And Price View
class ProductAndPriceView extends EntityBase {

  final String productId; // pk
  final String primaryProductCategoryId;
  final String description;
  final String productTypeId;
  final String productName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String internalName;
  final String currencyUomId; // pk
  final double price;
  final String isVirtual;
  final String productPricePurposeId; // pk
  final String productPriceTypeId; // pk
  ProductAndPriceView({entityId,
    @required this.productId, this.primaryProductCategoryId, this.description, this.productTypeId, this.productName, this.thruDate, @required this.fromDate, this.internalName, @required this.currencyUomId, this.price, this.isVirtual, @required this.productPricePurposeId, @required this.productPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAndPriceView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'primaryProductCategoryId':primaryProductCategoryId, 'description':description, 'productTypeId':productTypeId, 'productName':productName, 'thruDate':thruDate, 'fromDate':fromDate, 'internalName':internalName, 'currencyUomId':currencyUomId, 'price':price, 'isVirtual':isVirtual, 'productPricePurposeId':productPricePurposeId, 'productPriceTypeId':productPriceTypeId};
  }

}

/// Entity ProductAssoc, Product Association
class ProductAssoc extends EntityBase {

  final String reason;
  final double scrapFactor;
  final double quantity;
  final String recurrenceInfoId;
  final String productId; // pk
  final int sequenceNum;
  final String estimateCalcMethod;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String instruction;
  final String productIdTo; // pk
  final String productAssocTypeId; // pk
  final String routingWorkEffortId;
  ProductAssoc({entityId,
    this.reason, this.scrapFactor, this.quantity, this.recurrenceInfoId, @required this.productId, this.sequenceNum, this.estimateCalcMethod, this.thruDate, @required this.fromDate, this.instruction, @required this.productIdTo, @required this.productAssocTypeId, this.routingWorkEffortId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reason':reason, 'scrapFactor':scrapFactor, 'quantity':quantity, 'recurrenceInfoId':recurrenceInfoId, 'productId':productId, 'sequenceNum':sequenceNum, 'estimateCalcMethod':estimateCalcMethod, 'thruDate':thruDate, 'fromDate':fromDate, 'instruction':instruction, 'productIdTo':productIdTo, 'productAssocTypeId':productAssocTypeId, 'routingWorkEffortId':routingWorkEffortId};
  }

}

/// Entity ProductAssocType, Product Association Type
class ProductAssocType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String productAssocTypeId; // pk
  ProductAssocType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.productAssocTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'productAssocTypeId':productAssocTypeId};
  }

}

/// Entity ProductAttribute, Product Attribute
class ProductAttribute extends EntityBase {

  final String productId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  final String attrType;
  ProductAttribute({entityId,
    @required this.productId, this.attrDescription, this.attrValue, @required this.attrName, this.attrType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName, 'attrType':attrType};
  }

}

/// Entity ProductCalculatedInfo, Product Calculated Info
class ProductCalculatedInfo extends EntityBase {

  /// this entity has only one pk
  final double averageCustomerRating;
  final String productId; // pk
  final int totalTimesViewed;
  final double totalQuantityOrdered;
  ProductCalculatedInfo({entityId,
    this.averageCustomerRating, @required this.productId, this.totalTimesViewed, this.totalQuantityOrdered,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCalculatedInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'averageCustomerRating':averageCustomerRating, 'productId':productId, 'totalTimesViewed':totalTimesViewed, 'totalQuantityOrdered':totalQuantityOrdered};
  }

}

/// Entity ProductContent, Product Data Object
class ProductContent extends EntityBase {

  final DateTime purchaseFromDate;
  final String useTimeUomId;
  final String productId; // pk
  final int sequenceNum;
  final String contentId; // pk
  final int useCountLimit;
  final String productContentTypeId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String useRoleTypeId;
  final int useTime;
  final DateTime purchaseThruDate;
  ProductContent({entityId,
    this.purchaseFromDate, this.useTimeUomId, @required this.productId, this.sequenceNum, @required this.contentId, this.useCountLimit, @required this.productContentTypeId, this.thruDate, @required this.fromDate, this.useRoleTypeId, this.useTime, this.purchaseThruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'purchaseFromDate':purchaseFromDate, 'useTimeUomId':useTimeUomId, 'productId':productId, 'sequenceNum':sequenceNum, 'contentId':contentId, 'useCountLimit':useCountLimit, 'productContentTypeId':productContentTypeId, 'thruDate':thruDate, 'fromDate':fromDate, 'useRoleTypeId':useRoleTypeId, 'useTime':useTime, 'purchaseThruDate':purchaseThruDate};
  }

}

/// Entity ProductContentAndInfo, ProductContent, Content and DataResource View
class ProductContentAndInfo extends EntityBase {

  final String useTimeUomId;
  final int sequenceNum;
  final String ownerContentId;
  final String mimeTypeId;
  final String drRelatedDetailId;
  final String drIsPublic;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String createdByUserLogin;
  final String productId; // pk
  final String drObjectInfo;
  final String instanceOfContentId;
  final int useCountLimit;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final String statusId;
  final String drDataResourceName;
  final String drMimeTypeId;
  final int childBranchCount;
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final int childLeafCount;
  final String drDataCategoryId;
  final String drDataResourceTypeId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String useRoleTypeId;
  final String drSurveyId;
  final int useTime;
  final DateTime purchaseFromDate;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String serviceName;
  final String productContentTypeId; // pk
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataSourceId;
  final String decoratorContentId;
  final DateTime purchaseThruDate;
  final String drLocaleString;
  ProductContentAndInfo({entityId,
    this.useTimeUomId, this.sequenceNum, this.ownerContentId, this.mimeTypeId, this.drRelatedDetailId, this.drIsPublic, this.drCreatedByUserLogin, this.privilegeEnumId, this.drDataTemplateTypeId, this.dataResourceId, this.createdByUserLogin, @required this.productId, this.drObjectInfo, this.instanceOfContentId, this.useCountLimit, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, @required this.fromDate, this.drCreatedDate, this.statusId, this.drDataResourceName, this.drMimeTypeId, this.childBranchCount, @required this.drDataResourceId, this.drSurveyResponseId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.childLeafCount, this.drDataCategoryId, this.drDataResourceTypeId, this.dataSourceId, this.lastModifiedByUserLogin, this.useRoleTypeId, this.drSurveyId, this.useTime, this.purchaseFromDate, this.templateDataResourceId, this.lastModifiedDate, this.serviceName, @required this.productContentTypeId, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.localeString, this.drLastModifiedDate, this.drDataSourceId, this.decoratorContentId, this.purchaseThruDate, this.drLocaleString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'useTimeUomId':useTimeUomId, 'sequenceNum':sequenceNum, 'ownerContentId':ownerContentId, 'mimeTypeId':mimeTypeId, 'drRelatedDetailId':drRelatedDetailId, 'drIsPublic':drIsPublic, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'productId':productId, 'drObjectInfo':drObjectInfo, 'instanceOfContentId':instanceOfContentId, 'useCountLimit':useCountLimit, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'statusId':statusId, 'drDataResourceName':drDataResourceName, 'drMimeTypeId':drMimeTypeId, 'childBranchCount':childBranchCount, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'childLeafCount':childLeafCount, 'drDataCategoryId':drDataCategoryId, 'drDataResourceTypeId':drDataResourceTypeId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'useRoleTypeId':useRoleTypeId, 'drSurveyId':drSurveyId, 'useTime':useTime, 'purchaseFromDate':purchaseFromDate, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'serviceName':serviceName, 'productContentTypeId':productContentTypeId, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'purchaseThruDate':purchaseThruDate, 'drLocaleString':drLocaleString};
  }

}

/// Entity ProductContentType, Product Content Type
class ProductContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String productContentTypeId; // pk
  ProductContentType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.productContentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'productContentTypeId':productContentTypeId};
  }

}

/// Entity ProductGeo, Product Geo
class ProductGeo extends EntityBase {

  final String productId; // pk
  final String geoId; // pk
  final String description;
  final String productGeoEnumId;
  ProductGeo({entityId,
    @required this.productId, @required this.geoId, this.description, this.productGeoEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductGeo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'geoId':geoId, 'description':description, 'productGeoEnumId':productGeoEnumId};
  }

}

/// Entity ProductGlAccount, Product GlAccount
class ProductGlAccount extends EntityBase {

  final String productId; // pk
  final String glAccountTypeId; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  ProductGlAccount({entityId,
    @required this.productId, @required this.glAccountTypeId, this.glAccountId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'glAccountTypeId':glAccountTypeId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity ProductGroupOrder, Product Group Order
class ProductGroupOrder extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String jobId;
  final String groupOrderId; // pk
  final String productId;
  final String statusId;
  final double reqOrderQty;
  final double soldOrderQty;
  final DateTime thruDate;
  ProductGroupOrder({entityId,
    this.fromDate, this.jobId, @required this.groupOrderId, this.productId, this.statusId, this.reqOrderQty, this.soldOrderQty, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductGroupOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'jobId':jobId, 'groupOrderId':groupOrderId, 'productId':productId, 'statusId':statusId, 'reqOrderQty':reqOrderQty, 'soldOrderQty':soldOrderQty, 'thruDate':thruDate};
  }

}

/// Entity ProductInventoryItem, View entity joining Product and InventoryItem to allow queries for InventoryItem based on product attributes
class ProductInventoryItem extends EntityBase {

  final String inventoryComments;
  final String originGeoId;
  final String detailScreen;
  final String binNumber;
  final String requireInventory;
  final String quantityUomId;
  final String mediumImageUrl;
  final String productName;
  final DateTime introductionDate;
  final double shippingHeight;
  final String originalImageUrl;
  final String inShippingBox;
  final double oldAvailableToPromise;
  final String detailImageUrl;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String includeInPromotions;
  final String configId;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final double productRating;
  final String partyId;
  final String containerId;
  final String createdByUserLogin;
  final String locationSeqId;
  final String brandName;
  final String requireAmount;
  final String serialNumber;
  final String productId; // pk
  final String smallImageUrl;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final String uomId;
  final String salesDiscWhenNotAvail;
  final String inventoryItemId; // pk
  final String returnable;
  final String statusId;
  final String weightUomId;
  final String fixedAssetId;
  final String isVirtual;
  final String priceDetailText;
  final double reserv2ndPPPerc;
  final String widthUomId;
  final String longDescription;
  final String diameterUomId;
  final String autoCreateKeywords;
  final String amountUomTypeId;
  final double productDiameter;
  final String softIdentifier;
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
  final double quantityOnHandTotal;
  final DateTime datetimeManufactured;
  final double reservMaxPersons;
  final DateTime expireDate;
  final double fixedAmount;
  final double oldQuantityOnHand;
  final double availableToPromiseTotal;
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
  final String lotId;
  final double accountingQuantityTotal;
  final double productWeight;
  final String depthUomId;
  final String productTypeId;
  final String ownerPartyId;
  final DateTime activationValidThru;
  final DateTime createdDate;
  final String activationNumber;
  final String currencyUomId;
  final String isVariant;
  final String largeImageUrl;
  final double unitCost;
  final DateTime datetimeReceived;
  final String requirementMethodEnumId;
  final String productFacilityId;
  ProductInventoryItem({entityId,
    this.inventoryComments, this.originGeoId, this.detailScreen, this.binNumber, this.requireInventory, this.quantityUomId, this.mediumImageUrl, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.oldAvailableToPromise, this.detailImageUrl, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.lotIdFilledIn, this.productRating, this.partyId, this.containerId, this.createdByUserLogin, this.locationSeqId, this.brandName, this.requireAmount, this.serialNumber, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.uomId, this.salesDiscWhenNotAvail, @required this.inventoryItemId, this.returnable, this.statusId, this.weightUomId, this.fixedAssetId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.softIdentifier, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.quantityOnHandTotal, this.datetimeManufactured, this.reservMaxPersons, this.expireDate, this.fixedAmount, this.oldQuantityOnHand, this.availableToPromiseTotal, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.comments, this.facilityId, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.inventoryMessage, this.lotId, this.accountingQuantityTotal, this.productWeight, this.depthUomId, this.productTypeId, this.ownerPartyId, this.activationValidThru, this.createdDate, this.activationNumber, this.currencyUomId, this.isVariant, this.largeImageUrl, this.unitCost, this.datetimeReceived, this.requirementMethodEnumId, this.productFacilityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductInventoryItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'inventoryComments':inventoryComments, 'originGeoId':originGeoId, 'detailScreen':detailScreen, 'binNumber':binNumber, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'oldAvailableToPromise':oldAvailableToPromise, 'detailImageUrl':detailImageUrl, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'productRating':productRating, 'partyId':partyId, 'containerId':containerId, 'createdByUserLogin':createdByUserLogin, 'locationSeqId':locationSeqId, 'brandName':brandName, 'requireAmount':requireAmount, 'serialNumber':serialNumber, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'uomId':uomId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'inventoryItemId':inventoryItemId, 'returnable':returnable, 'statusId':statusId, 'weightUomId':weightUomId, 'fixedAssetId':fixedAssetId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'softIdentifier':softIdentifier, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'quantityOnHandTotal':quantityOnHandTotal, 'datetimeManufactured':datetimeManufactured, 'reservMaxPersons':reservMaxPersons, 'expireDate':expireDate, 'fixedAmount':fixedAmount, 'oldQuantityOnHand':oldQuantityOnHand, 'availableToPromiseTotal':availableToPromiseTotal, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'comments':comments, 'facilityId':facilityId, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'inventoryMessage':inventoryMessage, 'lotId':lotId, 'accountingQuantityTotal':accountingQuantityTotal, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'ownerPartyId':ownerPartyId, 'activationValidThru':activationValidThru, 'createdDate':createdDate, 'activationNumber':activationNumber, 'currencyUomId':currencyUomId, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'unitCost':unitCost, 'datetimeReceived':datetimeReceived, 'requirementMethodEnumId':requirementMethodEnumId, 'productFacilityId':productFacilityId};
  }

}

/// Entity ProductKeyword, Product Keyword
class ProductKeyword extends EntityBase {

  final int relevancyWeight;
  final String productId; // pk
  final String statusId;
  final String keywordTypeId; // pk
  final String keyword; // pk
  ProductKeyword({entityId,
    this.relevancyWeight, @required this.productId, this.statusId, @required this.keywordTypeId, @required this.keyword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductKeyword { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'relevancyWeight':relevancyWeight, 'productId':productId, 'statusId':statusId, 'keywordTypeId':keywordTypeId, 'keyword':keyword};
  }

}

/// Entity ProductMaint, Product Maintenance
class ProductMaint extends EntityBase {

  final String productId; // pk
  final String maintTemplateWorkEffortId;
  final String maintName;
  final String productMaintTypeId;
  final String intervalMeterTypeId;
  final String productMaintSeqId; // pk
  final String intervalUomId;
  final double intervalQuantity;
  final int repeatCount;
  ProductMaint({entityId,
    @required this.productId, this.maintTemplateWorkEffortId, this.maintName, this.productMaintTypeId, this.intervalMeterTypeId, @required this.productMaintSeqId, this.intervalUomId, this.intervalQuantity, this.repeatCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductMaint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'maintTemplateWorkEffortId':maintTemplateWorkEffortId, 'maintName':maintName, 'productMaintTypeId':productMaintTypeId, 'intervalMeterTypeId':intervalMeterTypeId, 'productMaintSeqId':productMaintSeqId, 'intervalUomId':intervalUomId, 'intervalQuantity':intervalQuantity, 'repeatCount':repeatCount};
  }

}

/// Entity ProductMaintType, Product Maintenance Type
class ProductMaintType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String description;
  final String productMaintTypeId; // pk
  ProductMaintType({entityId,
    this.parentTypeId, this.description, @required this.productMaintTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductMaintType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'description':description, 'productMaintTypeId':productMaintTypeId};
  }

}

/// Entity ProductMeter, Product Meter
class ProductMeter extends EntityBase {

  final String productId; // pk
  final String productMeterTypeId; // pk
  final String meterName;
  final String meterUomId;
  ProductMeter({entityId,
    @required this.productId, @required this.productMeterTypeId, this.meterName, this.meterUomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductMeter { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'productMeterTypeId':productMeterTypeId, 'meterName':meterName, 'meterUomId':meterUomId};
  }

}

/// Entity ProductMeterType, Product Meter Type
class ProductMeterType extends EntityBase {

  /// this entity has only one pk
  final String defaultUomId;
  final String productMeterTypeId; // pk
  final String description;
  ProductMeterType({entityId,
    this.defaultUomId, @required this.productMeterTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductMeterType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'defaultUomId':defaultUomId, 'productMeterTypeId':productMeterTypeId, 'description':description};
  }

}

/// Entity ProductReview, Product Review
class ProductReview extends EntityBase {

  /// this entity has only one pk
  final String productId;
  final DateTime postedDateTime;
  final String productReviewId; // pk
  final String productReview;
  final String userLoginId;
  final String statusId;
  final String productStoreId;
  final String postedAnonymous;
  final double productRating;
  ProductReview({entityId,
    this.productId, this.postedDateTime, @required this.productReviewId, this.productReview, this.userLoginId, this.statusId, this.productStoreId, this.postedAnonymous, this.productRating,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductReview { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'postedDateTime':postedDateTime, 'productReviewId':productReviewId, 'productReview':productReview, 'userLoginId':userLoginId, 'statusId':statusId, 'productStoreId':productStoreId, 'postedAnonymous':postedAnonymous, 'productRating':productRating};
  }

}

/// Entity ProductRole, Product Role
class ProductRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String comments;
  final String productId; // pk
  final int sequenceNum;
  final String partyId; // pk
  final DateTime thruDate;
  ProductRole({entityId,
    @required this.fromDate, @required this.roleTypeId, this.comments, @required this.productId, this.sequenceNum, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'comments':comments, 'productId':productId, 'sequenceNum':sequenceNum, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ProductSearchConstraint, Product Search Result Constraint
class ProductSearchConstraint extends EntityBase {

  final String constraintSeqId; // pk
  final String anyPrefix;
  final String highValue;
  final String includeSubCategories;
  final String constraintName;
  final String isAnd;
  final String removeStems;
  final String lowValue;
  final String productSearchResultId; // pk
  final String infoString;
  final String anySuffix;
  ProductSearchConstraint({entityId,
    @required this.constraintSeqId, this.anyPrefix, this.highValue, this.includeSubCategories, this.constraintName, this.isAnd, this.removeStems, this.lowValue, @required this.productSearchResultId, this.infoString, this.anySuffix,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductSearchConstraint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'constraintSeqId':constraintSeqId, 'anyPrefix':anyPrefix, 'highValue':highValue, 'includeSubCategories':includeSubCategories, 'constraintName':constraintName, 'isAnd':isAnd, 'removeStems':removeStems, 'lowValue':lowValue, 'productSearchResultId':productSearchResultId, 'infoString':infoString, 'anySuffix':anySuffix};
  }

}

/// Entity ProductSearchResult, Product Search Result
class ProductSearchResult extends EntityBase {

  /// this entity has only one pk
  final String productSearchResultId; // pk
  final String visitId;
  final String orderByName;
  final int numResults;
  final double secondsTotal;
  final DateTime searchDate;
  final String isAscending;
  ProductSearchResult({entityId,
    @required this.productSearchResultId, this.visitId, this.orderByName, this.numResults, this.secondsTotal, this.searchDate, this.isAscending,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductSearchResult { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productSearchResultId':productSearchResultId, 'visitId':visitId, 'orderByName':orderByName, 'numResults':numResults, 'secondsTotal':secondsTotal, 'searchDate':searchDate, 'isAscending':isAscending};
  }

}

/// Entity ProductType, Product Type
class ProductType extends EntityBase {

  /// this entity has only one pk
  final String isPhysical;
  final String parentTypeId;
  final String isDigital;
  final String hasTable;
  final String description;
  final String productTypeId; // pk
  ProductType({entityId,
    this.isPhysical, this.parentTypeId, this.isDigital, this.hasTable, this.description, @required this.productTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'isPhysical':isPhysical, 'parentTypeId':parentTypeId, 'isDigital':isDigital, 'hasTable':hasTable, 'description':description, 'productTypeId':productTypeId};
  }

}

/// Entity ProductTypeAttr, Product Type Attribute
class ProductTypeAttr extends EntityBase {

  final String description;
  final String productTypeId; // pk
  final String attrName; // pk
  ProductTypeAttr({entityId,
    this.description, @required this.productTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'productTypeId':productTypeId, 'attrName':attrName};
  }

}

/// Entity ProductVirtualAndAssocPrices, Virtual and Associated Product Prices View
class ProductVirtualAndAssocPrices extends EntityBase {

  final String productId; // pk
  final DateTime assocPriceFromDate; // pk
  final String assocProductStoreGroupId; // pk
  final double assocMaxPrice;
  final String productName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String internalName;
  final DateTime assocPriceThruDate;
  final double assocMinPrice;
  final String assocProductId; // pk
  final int assocProductCount; // pk
  final String assocCurrencyUomId; // pk
  final String productAssocTypeId; // pk
  final String assocPriceTypeId; // pk
  ProductVirtualAndAssocPrices({entityId,
    @required this.productId, @required this.assocPriceFromDate, @required this.assocProductStoreGroupId, this.assocMaxPrice, this.productName, this.thruDate, @required this.fromDate, this.internalName, this.assocPriceThruDate, this.assocMinPrice, @required this.assocProductId, @required this.assocProductCount, @required this.assocCurrencyUomId, @required this.productAssocTypeId, @required this.assocPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductVirtualAndAssocPrices { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'assocPriceFromDate':assocPriceFromDate, 'assocProductStoreGroupId':assocProductStoreGroupId, 'assocMaxPrice':assocMaxPrice, 'productName':productName, 'thruDate':thruDate, 'fromDate':fromDate, 'internalName':internalName, 'assocPriceThruDate':assocPriceThruDate, 'assocMinPrice':assocMinPrice, 'assocProductId':assocProductId, 'assocProductCount':assocProductCount, 'assocCurrencyUomId':assocCurrencyUomId, 'productAssocTypeId':productAssocTypeId, 'assocPriceTypeId':assocPriceTypeId};
  }

}

/// Entity ProductVirtualAndVariantInfo, Virtual and Variant Product View
class ProductVirtualAndVariantInfo extends EntityBase {

  final String productFeatureTypeId;
  final DateTime variantFeatureApplThruDate;
  final String productId; // pk
  final String variantPriceTypeId; // pk
  final DateTime variantPriceFromDate; // pk
  final String productFeatureId; // pk
  final String productFeatureCategoryId;
  final String description;
  final String productName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String internalName;
  final String variantProductStoreGroupId; // pk
  final DateTime variantFeatureApplFromDate; // pk
  final DateTime variantPriceThruDate;
  final String variantProductId; // pk
  final String productFeatureApplTypeId;
  final String productAssocTypeId; // pk
  final double variantPrice;
  final String variantCurrencyUomId; // pk
  ProductVirtualAndVariantInfo({entityId,
    this.productFeatureTypeId, this.variantFeatureApplThruDate, @required this.productId, @required this.variantPriceTypeId, @required this.variantPriceFromDate, @required this.productFeatureId, this.productFeatureCategoryId, this.description, this.productName, this.thruDate, @required this.fromDate, this.internalName, @required this.variantProductStoreGroupId, @required this.variantFeatureApplFromDate, this.variantPriceThruDate, @required this.variantProductId, this.productFeatureApplTypeId, @required this.productAssocTypeId, this.variantPrice, @required this.variantCurrencyUomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductVirtualAndVariantInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productFeatureTypeId':productFeatureTypeId, 'variantFeatureApplThruDate':variantFeatureApplThruDate, 'productId':productId, 'variantPriceTypeId':variantPriceTypeId, 'variantPriceFromDate':variantPriceFromDate, 'productFeatureId':productFeatureId, 'productFeatureCategoryId':productFeatureCategoryId, 'description':description, 'productName':productName, 'thruDate':thruDate, 'fromDate':fromDate, 'internalName':internalName, 'variantProductStoreGroupId':variantProductStoreGroupId, 'variantFeatureApplFromDate':variantFeatureApplFromDate, 'variantPriceThruDate':variantPriceThruDate, 'variantProductId':variantProductId, 'productFeatureApplTypeId':productFeatureApplTypeId, 'productAssocTypeId':productAssocTypeId, 'variantPrice':variantPrice, 'variantCurrencyUomId':variantCurrencyUomId};
  }

}

/// Entity VendorProduct, VendorProduct
class VendorProduct extends EntityBase {

  final String productId; // pk
  final String vendorPartyId; // pk
  final String productStoreGroupId; // pk
  VendorProduct({entityId,
    @required this.productId, @required this.vendorPartyId, @required this.productStoreGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VendorProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'vendorPartyId':vendorPartyId, 'productStoreGroupId':productStoreGroupId};
  }

}