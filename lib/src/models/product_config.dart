import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ConfigOptionProductOption, Config Option Product Options
class ConfigOptionProductOption extends EntityBase {

  final String configItemId; // pk
  final int sequenceNum; // pk
  final String productId; // pk
  final String productOptionId;
  final String configId; // pk
  final String configOptionId; // pk
  final String description;
  ConfigOptionProductOption({entityId,
    @required this.configItemId, @required this.sequenceNum, @required this.productId, this.productOptionId, @required this.configId, @required this.configOptionId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ConfigOptionProductOption { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'sequenceNum':sequenceNum, 'productId':productId, 'productOptionId':productOptionId, 'configId':configId, 'configOptionId':configOptionId, 'description':description};
  }

}

/// Entity ProdConfItemContent, Product Configuration Question Data Object
class ProdConfItemContent extends EntityBase {

  final String configItemId; // pk
  final String confItemContentTypeId; // pk
  final DateTime fromDate; // pk
  final String contentId; // pk
  final DateTime thruDate;
  ProdConfItemContent({entityId,
    @required this.configItemId, @required this.confItemContentTypeId, @required this.fromDate, @required this.contentId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdConfItemContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'confItemContentTypeId':confItemContentTypeId, 'fromDate':fromDate, 'contentId':contentId, 'thruDate':thruDate};
  }

}

/// Entity ProdConfItemContentType, Product Content Type
class ProdConfItemContentType extends EntityBase {

  /// this entity has only one pk
  final String confItemContentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  ProdConfItemContentType({entityId,
    @required this.confItemContentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProdConfItemContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'confItemContentTypeId':confItemContentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity ProductConfig, Product Configuration Templates
class ProductConfig extends EntityBase {

  final String configItemId; // pk
  final String longDescription;
  final String productId; // pk
  final int sequenceNum; // pk
  final String defaultConfigOptionId;
  final String description;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String configTypeId;
  final String isMandatory;
  ProductConfig({entityId,
    @required this.configItemId, this.longDescription, @required this.productId, @required this.sequenceNum, this.defaultConfigOptionId, this.description, this.thruDate, @required this.fromDate, this.configTypeId, this.isMandatory,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfig { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'longDescription':longDescription, 'productId':productId, 'sequenceNum':sequenceNum, 'defaultConfigOptionId':defaultConfigOptionId, 'description':description, 'thruDate':thruDate, 'fromDate':fromDate, 'configTypeId':configTypeId, 'isMandatory':isMandatory};
  }

}

/// Entity ProductConfigAndProduct, Product Config And Product  View Entity, to be able to see which products use a certain configuration item
class ProductConfigAndProduct extends EntityBase {

  final int sequenceNum; // pk
  final String defaultConfigOptionId;
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
  final String isMandatory;
  final String configItemId; // pk
  final String brandName;
  final String requireAmount;
  final String productId; // pk
  final String smallImageUrl;
  final String taxable;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String salesDiscWhenNotAvail;
  final String returnable;
  final String configTypeId;
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
  ProductConfigAndProduct({entityId,
    @required this.sequenceNum, this.defaultConfigOptionId, this.originGeoId, this.detailScreen, this.requireInventory, this.quantityUomId, this.mediumImageUrl, this.productName, this.introductionDate, this.shippingHeight, this.originalImageUrl, this.inShippingBox, this.detailImageUrl, this.supportDiscontinuationDate, this.productWidth, this.includeInPromotions, this.configId, this.billOfMaterialLevel, this.lotIdFilledIn, this.productRating, this.createdByUserLogin, this.isMandatory, @required this.configItemId, this.brandName, this.requireAmount, @required this.productId, this.smallImageUrl, this.taxable, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.thruDate, @required this.fromDate, this.salesDiscWhenNotAvail, this.returnable, this.configTypeId, this.weightUomId, this.isVirtual, this.priceDetailText, this.reserv2ndPPPerc, this.widthUomId, this.longDescription, this.diameterUomId, this.autoCreateKeywords, this.amountUomTypeId, this.productDiameter, this.ratingTypeEnum, this.description, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.internalName, this.lastModifiedByUserLogin, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.reservMaxPersons, this.fixedAmount, this.inventoryItemTypeId, this.piecesIncluded, this.productDepth, this.facilityId, this.comments, this.releaseDate, this.productHeight, this.lastModifiedDate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.inventoryMessage, this.productWeight, this.depthUomId, this.productTypeId, this.createdDate, this.isVariant, this.largeImageUrl, this.requirementMethodEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigAndProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'defaultConfigOptionId':defaultConfigOptionId, 'originGeoId':originGeoId, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'detailImageUrl':detailImageUrl, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'includeInPromotions':includeInPromotions, 'configId':configId, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'isMandatory':isMandatory, 'configItemId':configItemId, 'brandName':brandName, 'requireAmount':requireAmount, 'productId':productId, 'smallImageUrl':smallImageUrl, 'taxable':taxable, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'thruDate':thruDate, 'fromDate':fromDate, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'configTypeId':configTypeId, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'priceDetailText':priceDetailText, 'reserv2ndPPPerc':reserv2ndPPPerc, 'widthUomId':widthUomId, 'longDescription':longDescription, 'diameterUomId':diameterUomId, 'autoCreateKeywords':autoCreateKeywords, 'amountUomTypeId':amountUomTypeId, 'productDiameter':productDiameter, 'ratingTypeEnum':ratingTypeEnum, 'description':description, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'releaseDate':releaseDate, 'productHeight':productHeight, 'lastModifiedDate':lastModifiedDate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'inventoryMessage':inventoryMessage, 'productWeight':productWeight, 'depthUomId':depthUomId, 'productTypeId':productTypeId, 'createdDate':createdDate, 'isVariant':isVariant, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId};
  }

}

/// Entity ProductConfigConfig, Existing Product Configurations
class ProductConfigConfig extends EntityBase {

  final String configItemId; // pk
  final int sequenceNum; // pk
  final String configId; // pk
  final String configOptionId; // pk
  final String description;
  ProductConfigConfig({entityId,
    @required this.configItemId, @required this.sequenceNum, @required this.configId, @required this.configOptionId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigConfig { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'sequenceNum':sequenceNum, 'configId':configId, 'configOptionId':configOptionId, 'description':description};
  }

}

/// Entity ProductConfigItem, Product Configuration Question
class ProductConfigItem extends EntityBase {

  /// this entity has only one pk
  final String configItemId; // pk
  final String longDescription;
  final String imageUrl;
  final String configItemName;
  final String configItemTypeId;
  final String description;
  ProductConfigItem({entityId,
    @required this.configItemId, this.longDescription, this.imageUrl, this.configItemName, this.configItemTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'longDescription':longDescription, 'imageUrl':imageUrl, 'configItemName':configItemName, 'configItemTypeId':configItemTypeId, 'description':description};
  }

}

/// Entity ProductConfigOption, Product Configuration Options
class ProductConfigOption extends EntityBase {

  final String configItemId; // pk
  final int sequenceNum;
  final String configOptionId; // pk
  final String configOptionName;
  final String description;
  ProductConfigOption({entityId,
    @required this.configItemId, this.sequenceNum, @required this.configOptionId, this.configOptionName, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigOption { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'sequenceNum':sequenceNum, 'configOptionId':configOptionId, 'configOptionName':configOptionName, 'description':description};
  }

}

/// Entity ProductConfigOptionIactn, Product Configuration Options
class ProductConfigOptionIactn extends EntityBase {

  final String configItemId; // pk
  final String configIactnTypeId;
  final String configOptionIdTo; // pk
  final int sequenceNum; // pk
  final String configOptionId; // pk
  final String description;
  final String configItemIdTo; // pk
  ProductConfigOptionIactn({entityId,
    @required this.configItemId, this.configIactnTypeId, @required this.configOptionIdTo, @required this.sequenceNum, @required this.configOptionId, this.description, @required this.configItemIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigOptionIactn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'configIactnTypeId':configIactnTypeId, 'configOptionIdTo':configOptionIdTo, 'sequenceNum':sequenceNum, 'configOptionId':configOptionId, 'description':description, 'configItemIdTo':configItemIdTo};
  }

}

/// Entity ProductConfigProduct, Product Configuration Option to Products
class ProductConfigProduct extends EntityBase {

  final String configItemId; // pk
  final double quantity;
  final String productId; // pk
  final int sequenceNum;
  final String configOptionId; // pk
  ProductConfigProduct({entityId,
    @required this.configItemId, this.quantity, @required this.productId, this.sequenceNum, @required this.configOptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'configItemId':configItemId, 'quantity':quantity, 'productId':productId, 'sequenceNum':sequenceNum, 'configOptionId':configOptionId};
  }

}

/// Entity ProductConfigStats, Product Configurations Stats
class ProductConfigStats extends EntityBase {

  final String productId; // pk
  final String configId; // pk
  final int numOfConfs;
  final String configTypeId;
  ProductConfigStats({entityId,
    @required this.productId, @required this.configId, this.numOfConfs, this.configTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductConfigStats { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'configId':configId, 'numOfConfs':numOfConfs, 'configTypeId':configTypeId};
  }

}