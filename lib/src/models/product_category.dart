import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductAndCategoryMember, Product And ProductCategoryMember View
class ProductAndCategoryMember extends EntityBase {

  final int sequenceNum;
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
  final String memberComments;
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
  final DateTime thruDate;
  final String salesDiscWhenNotAvail;
  final DateTime fromDate; // pk
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
  final String productCategoryId; // pk
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
  final double quantity;
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
  ProductAndCategoryMember({entityId,
    this.sequenceNum, this.originGeoId, this.detailScreen, this.requireInventory, this.quantityUomId, this.mediumImageUrl, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.detailImageUrl, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.memberComments, this.lotIdFilledIn, this.productRating, this.createdByUserLogin, this.brandName, this.requireAmount, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.thruDate, this.salesDiscWhenNotAvail, @required this.fromDate, this.returnable, this.weightUomId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, @required this.productCategoryId, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.reservMaxPersons, this.fixedAmount, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.facilityId, this.comments, this.quantity, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.inventoryMessage, this.productWeight, this.depthUomId, this.productTypeId, this.createdDate, this.isVariant, this.largeImageUrl, this.requirementMethodEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAndCategoryMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'originGeoId':originGeoId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'detailImageUrl':detailImageUrl, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'memberComments':memberComments, 'lotIdFilledIn':lotIdFilledIn, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'brandName':brandName, 'requireAmount':requireAmount, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'thruDate':thruDate, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'fromDate':fromDate, 'returnable':returnable, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'productCategoryId':productCategoryId, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'quantity':quantity, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'inventoryMessage':inventoryMessage, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'createdDate':createdDate, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId};
  }

}

/// Entity ProductCategory, Product Category
class ProductCategory extends EntityBase {

  /// this entity has only one pk
  final String longDescription;
  final String productCategoryTypeId;
  final String detailScreen;
  final String description;
  final String linkTwoImageUrl;
  final String categoryName;
  final String productCategoryId; // pk
  final String linkOneImageUrl;
  final String primaryParentCategoryId;
  final String categoryImageUrl;
  final String showInSelect;
  ProductCategory({entityId,
    this.longDescription, this.productCategoryTypeId, this.detailScreen, this.description, this.linkTwoImageUrl, this.categoryName, @required this.productCategoryId, this.linkOneImageUrl, this.primaryParentCategoryId, this.categoryImageUrl, this.showInSelect,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'productCategoryTypeId':productCategoryTypeId, 'detailScreen':detailScreen, 'description':description, 'linkTwoImageUrl':linkTwoImageUrl, 'categoryName':categoryName, 'productCategoryId':productCategoryId, 'linkOneImageUrl':linkOneImageUrl, 'primaryParentCategoryId':primaryParentCategoryId, 'categoryImageUrl':categoryImageUrl, 'showInSelect':showInSelect};
  }

}

/// Entity ProductCategoryAndMember, ProductCategory And ProductCategoryMember View
class ProductCategoryAndMember extends EntityBase {

  final String longDescription;
  final String productCategoryTypeId;
  final String comments;
  final double quantity;
  final String productId; // pk
  final int sequenceNum;
  final String detailScreen;
  final String description;
  final String linkTwoImageUrl;
  final String categoryName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String linkOneImageUrl;
  final String primaryParentCategoryId;
  final String categoryImageUrl;
  final String showInSelect;
  ProductCategoryAndMember({entityId,
    this.longDescription, this.productCategoryTypeId, this.comments, this.quantity, @required this.productId, this.sequenceNum, this.detailScreen, this.description, this.linkTwoImageUrl, this.categoryName, this.thruDate, @required this.fromDate, @required this.productCategoryId, this.linkOneImageUrl, this.primaryParentCategoryId, this.categoryImageUrl, this.showInSelect,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryAndMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'productCategoryTypeId':productCategoryTypeId, 'comments':comments, 'quantity':quantity, 'productId':productId, 'sequenceNum':sequenceNum, 'detailScreen':detailScreen, 'description':description, 'linkTwoImageUrl':linkTwoImageUrl, 'categoryName':categoryName, 'thruDate':thruDate, 'fromDate':fromDate, 'productCategoryId':productCategoryId, 'linkOneImageUrl':linkOneImageUrl, 'primaryParentCategoryId':primaryParentCategoryId, 'categoryImageUrl':categoryImageUrl, 'showInSelect':showInSelect};
  }

}

/// Entity ProductCategoryAttribute, Product Category Attribute
class ProductCategoryAttribute extends EntityBase {

  final String productCategoryId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  ProductCategoryAttribute({entityId,
    @required this.productCategoryId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productCategoryId':productCategoryId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity ProductCategoryContent, Product Category Data Object
class ProductCategoryContent extends EntityBase {

  final DateTime purchaseFromDate;
  final String contentId; // pk
  final double useDaysLimit;
  final int useCountLimit;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String prodCatContentTypeId; // pk
  final String productCategoryId; // pk
  final DateTime purchaseThruDate;
  ProductCategoryContent({entityId,
    this.purchaseFromDate, @required this.contentId, this.useDaysLimit, this.useCountLimit, this.thruDate, @required this.fromDate, @required this.prodCatContentTypeId, @required this.productCategoryId, this.purchaseThruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'purchaseFromDate':purchaseFromDate, 'contentId':contentId, 'useDaysLimit':useDaysLimit, 'useCountLimit':useCountLimit, 'thruDate':thruDate, 'fromDate':fromDate, 'prodCatContentTypeId':prodCatContentTypeId, 'productCategoryId':productCategoryId, 'purchaseThruDate':purchaseThruDate};
  }

}

/// Entity ProductCategoryContentAndInfo, ProductCategoryContent, Content and DataResource View
class ProductCategoryContentAndInfo extends EntityBase {

  final String ownerContentId;
  final double useDaysLimit;
  final String mimeTypeId;
  final String drRelatedDetailId;
  final String drIsPublic;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String instanceOfContentId;
  final int useCountLimit;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String prodCatContentTypeId; // pk
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
  final String productCategoryId; // pk
  final String drSurveyId;
  final DateTime purchaseFromDate;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String serviceName;
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
  ProductCategoryContentAndInfo({entityId,
    this.ownerContentId, this.useDaysLimit, this.mimeTypeId, this.drRelatedDetailId, this.drIsPublic, this.drCreatedByUserLogin, this.privilegeEnumId, this.drDataTemplateTypeId, this.dataResourceId, this.createdByUserLogin, this.drObjectInfo, this.instanceOfContentId, this.useCountLimit, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, @required this.fromDate, @required this.prodCatContentTypeId, this.drCreatedDate, this.statusId, this.drDataResourceName, this.drMimeTypeId, this.childBranchCount, @required this.drDataResourceId, this.drSurveyResponseId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.childLeafCount, this.drDataCategoryId, this.drDataResourceTypeId, this.dataSourceId, this.lastModifiedByUserLogin, @required this.productCategoryId, this.drSurveyId, this.purchaseFromDate, this.templateDataResourceId, this.lastModifiedDate, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.localeString, this.drLastModifiedDate, this.drDataSourceId, this.decoratorContentId, this.purchaseThruDate, this.drLocaleString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerContentId':ownerContentId, 'useDaysLimit':useDaysLimit, 'mimeTypeId':mimeTypeId, 'drRelatedDetailId':drRelatedDetailId, 'drIsPublic':drIsPublic, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'instanceOfContentId':instanceOfContentId, 'useCountLimit':useCountLimit, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'fromDate':fromDate, 'prodCatContentTypeId':prodCatContentTypeId, 'drCreatedDate':drCreatedDate, 'statusId':statusId, 'drDataResourceName':drDataResourceName, 'drMimeTypeId':drMimeTypeId, 'childBranchCount':childBranchCount, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'childLeafCount':childLeafCount, 'drDataCategoryId':drDataCategoryId, 'drDataResourceTypeId':drDataResourceTypeId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'productCategoryId':productCategoryId, 'drSurveyId':drSurveyId, 'purchaseFromDate':purchaseFromDate, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'purchaseThruDate':purchaseThruDate, 'drLocaleString':drLocaleString};
  }

}

/// Entity ProductCategoryContentType, Product Category Content Type
class ProductCategoryContentType extends EntityBase {

  /// this entity has only one pk
  final String prodCatContentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  ProductCategoryContentType({entityId,
    @required this.prodCatContentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'prodCatContentTypeId':prodCatContentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity ProductCategoryGlAccount, Product Category GlAccount
class ProductCategoryGlAccount extends EntityBase {

  final String productCategoryId; // pk
  final String glAccountTypeId; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  ProductCategoryGlAccount({entityId,
    @required this.productCategoryId, @required this.glAccountTypeId, this.glAccountId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productCategoryId':productCategoryId, 'glAccountTypeId':glAccountTypeId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity ProductCategoryLink, Product Category Link
class ProductCategoryLink extends EntityBase {

  final String linkInfo;
  final String comments;
  final int sequenceNum;
  final String detailText;
  final DateTime thruDate;
  final String detailSubScreen;
  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String titleText;
  final String imageUrl;
  final String imageTwoUrl;
  final String linkTypeEnumId;
  final String linkSeqId; // pk
  ProductCategoryLink({entityId,
    this.linkInfo, this.comments, this.sequenceNum, this.detailText, this.thruDate, this.detailSubScreen, @required this.fromDate, @required this.productCategoryId, this.titleText, this.imageUrl, this.imageTwoUrl, this.linkTypeEnumId, @required this.linkSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryLink { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'linkInfo':linkInfo, 'comments':comments, 'sequenceNum':sequenceNum, 'detailText':detailText, 'thruDate':thruDate, 'detailSubScreen':detailSubScreen, 'fromDate':fromDate, 'productCategoryId':productCategoryId, 'titleText':titleText, 'imageUrl':imageUrl, 'imageTwoUrl':imageTwoUrl, 'linkTypeEnumId':linkTypeEnumId, 'linkSeqId':linkSeqId};
  }

}

/// Entity ProductCategoryMember, Product Category Member
class ProductCategoryMember extends EntityBase {

  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String comments;
  final double quantity;
  final String productId; // pk
  final int sequenceNum;
  final DateTime thruDate;
  ProductCategoryMember({entityId,
    @required this.fromDate, @required this.productCategoryId, this.comments, this.quantity, @required this.productId, this.sequenceNum, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productCategoryId':productCategoryId, 'comments':comments, 'quantity':quantity, 'productId':productId, 'sequenceNum':sequenceNum, 'thruDate':thruDate};
  }

}

/// Entity ProductCategoryMemberAndPrice, ProductCategoryMember And ProductPrice View Entiry
class ProductCategoryMemberAndPrice extends EntityBase {

  final double productProductWeight;
  final String productProductTypeId;
  final int sequenceNum;
  final String productPriceDetailText;
  final String productIsVariant;
  final double productReservNthPPPerc;
  final String priceProductPricePurposeId; // pk
  final String productSmallImageUrl;
  final String priceProductPriceTypeId; // pk
  final double pricePriceWithoutTax;
  final double productReserv2ndPPPerc;
  final DateTime priceLastModifiedDate;
  final double productQuantityIncluded;
  final String productRatingTypeEnum;
  final String productLotIdFilledIn;
  final String priceCustomPriceCalcService;
  final String productReturnable;
  final String productAmountUomTypeId;
  final double productProductDiameter;
  final String productInShippingBox;
  final String productDescription;
  final String productQuantityUomId;
  final String productId; // pk
  final DateTime productLastModifiedDate;
  final DateTime priceFromDate; // pk
  final String productIsVirtual;
  final String priceProductStoreGroupId; // pk
  final String productConfigId;
  final String productCreatedByUserLogin;
  final int productPiecesIncluded;
  final String productDefaultShipmentBoxTypeId;
  final String productDepthUomId;
  final String productWeightUomId;
  final String productInventoryMessage;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String productTaxable;
  final String productChargeShipping;
  final String productVirtualVariantMethodEnum;
  final String productOrderDecimalQuantity;
  final double productProductHeight;
  final String productAutoCreateKeywords;
  final String priceTaxAuthPartyId;
  final double productShippingWeight;
  final DateTime productIntroductionDate;
  final String productMediumImageUrl;
  final String productSalesDiscWhenNotAvail;
  final DateTime priceCreatedDate;
  final String productRequireAmount;
  final String productLargeImageUrl;
  final String priceTaxAuthGeoId;
  final int productBillOfMaterialLevel;
  final String productRequireInventory;
  final DateTime priceThruDate;
  final String productBrandName;
  final double productShippingDepth;
  final double productShippingWidth;
  final String productLastModifiedByUserLogin;
  final String productCategoryId; // pk
  final String productIncludeInPromotions;
  final String productComments;
  final double productShippingHeight;
  final String priceTaxInPrice;
  final String productDetailScreen;
  final String productProductName;
  final String productInventoryItemTypeId;
  final String priceCreatedByUserLogin;
  final double priceTaxPercentage;
  final String productWidthUomId;
  final String priceLastModifiedByUserLogin;
  final double priceTaxAmount;
  final double productProductRating;
  final String comments;
  final double quantity;
  final DateTime productSalesDiscontinuationDate;
  final String productInternalName;
  final double pricePriceWithTax;
  final DateTime productCreatedDate;
  final String priceTermUomId;
  final String productPrimaryProductCategoryId;
  final String priceCurrencyUomId; // pk
  final DateTime productSupportDiscontinuationDate;
  final double productFixedAmount;
  final DateTime productReleaseDate;
  final double productProductDepth;
  final String productOriginalImageUrl;
  final String productLongDescription;
  final double pricePrice;
  final String productOriginGeoId;
  final String productDetailImageUrl;
  final double productProductWidth;
  final double productReservMaxPersons;
  final String productRequirementMethodEnumId;
  final String productFacilityId;
  final String productDiameterUomId;
  final String productHeightUomId;
  ProductCategoryMemberAndPrice({entityId,
    this.productProductWeight, this.productProductTypeId, this.sequenceNum, this.productPriceDetailText, this.productIsVariant, this.productReservNthPPPerc, @required this.priceProductPricePurposeId, this.productSmallImageUrl, @required this.priceProductPriceTypeId, this.pricePriceWithoutTax, this.productReserv2ndPPPerc, this.priceLastModifiedDate, this.productQuantityIncluded, this.productRatingTypeEnum, this.productLotIdFilledIn, this.priceCustomPriceCalcService, this.productReturnable, this.productAmountUomTypeId, this.productProductDiameter, this.productInShippingBox, this.productDescription, this.productQuantityUomId, @required this.productId, this.productLastModifiedDate, @required this.priceFromDate, this.productIsVirtual, @required this.priceProductStoreGroupId, this.productConfigId, this.productCreatedByUserLogin, this.productPiecesIncluded, this.productDefaultShipmentBoxTypeId, this.productDepthUomId, this.productWeightUomId, this.productInventoryMessage, this.thruDate, @required this.fromDate, this.productTaxable, this.productChargeShipping, this.productVirtualVariantMethodEnum, this.productOrderDecimalQuantity, this.productProductHeight, this.productAutoCreateKeywords, this.priceTaxAuthPartyId, this.productShippingWeight, this.productIntroductionDate, this.productMediumImageUrl, this.productSalesDiscWhenNotAvail, this.priceCreatedDate, this.productRequireAmount, this.productLargeImageUrl, this.priceTaxAuthGeoId, this.productBillOfMaterialLevel, this.productRequireInventory, this.priceThruDate, this.productBrandName, this.productShippingDepth, this.productShippingWidth, this.productLastModifiedByUserLogin, @required this.productCategoryId, this.productIncludeInPromotions, this.productComments, this.productShippingHeight, this.priceTaxInPrice, this.productDetailScreen, this.productProductName, this.productInventoryItemTypeId, this.priceCreatedByUserLogin, this.priceTaxPercentage, this.productWidthUomId, this.priceLastModifiedByUserLogin, this.priceTaxAmount, this.productProductRating, this.comments, this.quantity, this.productSalesDiscontinuationDate, this.productInternalName, this.pricePriceWithTax, this.productCreatedDate, this.priceTermUomId, this.productPrimaryProductCategoryId, @required this.priceCurrencyUomId, this.productSupportDiscontinuationDate, this.productFixedAmount, this.productReleaseDate, this.productProductDepth, this.productOriginalImageUrl, this.productLongDescription, this.pricePrice, this.productOriginGeoId, this.productDetailImageUrl, this.productProductWidth, this.productReservMaxPersons, this.productRequirementMethodEnumId, this.productFacilityId, this.productDiameterUomId, this.productHeightUomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryMemberAndPrice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productProductWeight':productProductWeight, 'productProductTypeId':productProductTypeId, 'sequenceNum':sequenceNum, 'productPriceDetailText':productPriceDetailText, 'productIsVariant':productIsVariant, 'productReservNthPPPerc':productReservNthPPPerc, 'priceProductPricePurposeId':priceProductPricePurposeId, 'productSmallImageUrl':productSmallImageUrl, 'priceProductPriceTypeId':priceProductPriceTypeId, 'pricePriceWithoutTax':pricePriceWithoutTax, 'productReserv2ndPPPerc':productReserv2ndPPPerc, 'priceLastModifiedDate':priceLastModifiedDate, 'productQuantityIncluded':productQuantityIncluded, 'productRatingTypeEnum':productRatingTypeEnum, 'productLotIdFilledIn':productLotIdFilledIn, 'priceCustomPriceCalcService':priceCustomPriceCalcService, 'productReturnable':productReturnable, 'productAmountUomTypeId':productAmountUomTypeId, 'productProductDiameter':productProductDiameter, 'productInShippingBox':productInShippingBox, 'productDescription':productDescription, 'productQuantityUomId':productQuantityUomId, 'productId':productId, 'productLastModifiedDate':productLastModifiedDate, 'priceFromDate':priceFromDate, 'productIsVirtual':productIsVirtual, 'priceProductStoreGroupId':priceProductStoreGroupId, 'productConfigId':productConfigId, 'productCreatedByUserLogin':productCreatedByUserLogin, 'productPiecesIncluded':productPiecesIncluded, 'productDefaultShipmentBoxTypeId':productDefaultShipmentBoxTypeId, 'productDepthUomId':productDepthUomId, 'productWeightUomId':productWeightUomId, 'productInventoryMessage':productInventoryMessage, 'thruDate':thruDate, 'fromDate':fromDate, 'productTaxable':productTaxable, 'productChargeShipping':productChargeShipping, 'productVirtualVariantMethodEnum':productVirtualVariantMethodEnum, 'productOrderDecimalQuantity':productOrderDecimalQuantity, 'productProductHeight':productProductHeight, 'productAutoCreateKeywords':productAutoCreateKeywords, 'priceTaxAuthPartyId':priceTaxAuthPartyId, 'productShippingWeight':productShippingWeight, 'productIntroductionDate':productIntroductionDate, 'productMediumImageUrl':productMediumImageUrl, 'productSalesDiscWhenNotAvail':productSalesDiscWhenNotAvail, 'priceCreatedDate':priceCreatedDate, 'productRequireAmount':productRequireAmount, 'productLargeImageUrl':productLargeImageUrl, 'priceTaxAuthGeoId':priceTaxAuthGeoId, 'productBillOfMaterialLevel':productBillOfMaterialLevel, 'productRequireInventory':productRequireInventory, 'priceThruDate':priceThruDate, 'productBrandName':productBrandName, 'productShippingDepth':productShippingDepth, 'productShippingWidth':productShippingWidth, 'productLastModifiedByUserLogin':productLastModifiedByUserLogin, 'productCategoryId':productCategoryId, 'productIncludeInPromotions':productIncludeInPromotions, 'productComments':productComments, 'productShippingHeight':productShippingHeight, 'priceTaxInPrice':priceTaxInPrice, 'productDetailScreen':productDetailScreen, 'productProductName':productProductName, 'productInventoryItemTypeId':productInventoryItemTypeId, 'priceCreatedByUserLogin':priceCreatedByUserLogin, 'priceTaxPercentage':priceTaxPercentage, 'productWidthUomId':productWidthUomId, 'priceLastModifiedByUserLogin':priceLastModifiedByUserLogin, 'priceTaxAmount':priceTaxAmount, 'productProductRating':productProductRating, 'comments':comments, 'quantity':quantity, 'productSalesDiscontinuationDate':productSalesDiscontinuationDate, 'productInternalName':productInternalName, 'pricePriceWithTax':pricePriceWithTax, 'productCreatedDate':productCreatedDate, 'priceTermUomId':priceTermUomId, 'productPrimaryProductCategoryId':productPrimaryProductCategoryId, 'priceCurrencyUomId':priceCurrencyUomId, 'productSupportDiscontinuationDate':productSupportDiscontinuationDate, 'productFixedAmount':productFixedAmount, 'productReleaseDate':productReleaseDate, 'productProductDepth':productProductDepth, 'productOriginalImageUrl':productOriginalImageUrl, 'productLongDescription':productLongDescription, 'pricePrice':pricePrice, 'productOriginGeoId':productOriginGeoId, 'productDetailImageUrl':productDetailImageUrl, 'productProductWidth':productProductWidth, 'productReservMaxPersons':productReservMaxPersons, 'productRequirementMethodEnumId':productRequirementMethodEnumId, 'productFacilityId':productFacilityId, 'productDiameterUomId':productDiameterUomId, 'productHeightUomId':productHeightUomId};
  }

}

/// Entity ProductCategoryMemberAndRole, ProductCategoryMember And ProductCategoryRole View
class ProductCategoryMemberAndRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String productCategoryId; // pk
  final String comments;
  final double quantity;
  final String productId; // pk
  final int sequenceNum;
  final String roleComments;
  final String partyId; // pk
  final DateTime roleFromDate; // pk
  final DateTime roleThruDate;
  final DateTime thruDate;
  ProductCategoryMemberAndRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.productCategoryId, this.comments, this.quantity, @required this.productId, this.sequenceNum, this.roleComments, @required this.partyId, @required this.roleFromDate, this.roleThruDate, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryMemberAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'productCategoryId':productCategoryId, 'comments':comments, 'quantity':quantity, 'productId':productId, 'sequenceNum':sequenceNum, 'roleComments':roleComments, 'partyId':partyId, 'roleFromDate':roleFromDate, 'roleThruDate':roleThruDate, 'thruDate':thruDate};
  }

}

/// Entity ProductCategoryRole, Product Category Role
class ProductCategoryRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String productCategoryId; // pk
  final String comments;
  final String partyId; // pk
  final DateTime thruDate;
  ProductCategoryRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.productCategoryId, this.comments, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'productCategoryId':productCategoryId, 'comments':comments, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ProductCategoryRollup, Product Category Rollup
class ProductCategoryRollup extends EntityBase {

  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final int sequenceNum;
  final String parentProductCategoryId; // pk
  final DateTime thruDate;
  ProductCategoryRollup({entityId,
    @required this.fromDate, @required this.productCategoryId, this.sequenceNum, @required this.parentProductCategoryId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryRollup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productCategoryId':productCategoryId, 'sequenceNum':sequenceNum, 'parentProductCategoryId':parentProductCategoryId, 'thruDate':thruDate};
  }

}

/// Entity ProductCategoryRollupAndChild, ProductCategoryRollupAndChild
class ProductCategoryRollupAndChild extends EntityBase {

  final String longDescription;
  final String productCategoryTypeId;
  final int sequenceNum;
  final String detailScreen;
  final String description;
  final String linkTwoImageUrl;
  final String categoryName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String productCategoryId; // pk
  final String linkOneImageUrl;
  final String primaryParentCategoryId;
  final String categoryImageUrl;
  final String showInSelect;
  final String parentProductCategoryId; // pk
  ProductCategoryRollupAndChild({entityId,
    this.longDescription, this.productCategoryTypeId, this.sequenceNum, this.detailScreen, this.description, this.linkTwoImageUrl, this.categoryName, this.thruDate, @required this.fromDate, @required this.productCategoryId, this.linkOneImageUrl, this.primaryParentCategoryId, this.categoryImageUrl, this.showInSelect, @required this.parentProductCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryRollupAndChild { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'productCategoryTypeId':productCategoryTypeId, 'sequenceNum':sequenceNum, 'detailScreen':detailScreen, 'description':description, 'linkTwoImageUrl':linkTwoImageUrl, 'categoryName':categoryName, 'thruDate':thruDate, 'fromDate':fromDate, 'productCategoryId':productCategoryId, 'linkOneImageUrl':linkOneImageUrl, 'primaryParentCategoryId':primaryParentCategoryId, 'categoryImageUrl':categoryImageUrl, 'showInSelect':showInSelect, 'parentProductCategoryId':parentProductCategoryId};
  }

}

/// Entity ProductCategoryRollupAndRole, ProductCategoryRollup And ProductCategoryRole View
class ProductCategoryRollupAndRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String productCategoryId; // pk
  final int sequenceNum;
  final String roleComments;
  final String parentProductCategoryId; // pk
  final String partyId; // pk
  final DateTime roleFromDate; // pk
  final DateTime roleThruDate;
  final DateTime thruDate;
  ProductCategoryRollupAndRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.productCategoryId, this.sequenceNum, this.roleComments, @required this.parentProductCategoryId, @required this.partyId, @required this.roleFromDate, this.roleThruDate, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryRollupAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'productCategoryId':productCategoryId, 'sequenceNum':sequenceNum, 'roleComments':roleComments, 'parentProductCategoryId':parentProductCategoryId, 'partyId':partyId, 'roleFromDate':roleFromDate, 'roleThruDate':roleThruDate, 'thruDate':thruDate};
  }

}

/// Entity ProductCategoryType, Product Category Type
class ProductCategoryType extends EntityBase {

  /// this entity has only one pk
  final String productCategoryTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  ProductCategoryType({entityId,
    @required this.productCategoryTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productCategoryTypeId':productCategoryTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity ProductCategoryTypeAttr, Product Category Type Attribute
class ProductCategoryTypeAttr extends EntityBase {

  final String productCategoryTypeId; // pk
  final String description;
  final String attrName; // pk
  ProductCategoryTypeAttr({entityId,
    @required this.productCategoryTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCategoryTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productCategoryTypeId':productCategoryTypeId, 'description':description, 'attrName':attrName};
  }

}