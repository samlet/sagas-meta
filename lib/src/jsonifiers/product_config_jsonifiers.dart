import 'package:sagas_meta/src/models/product_config.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductConfigJsonifier{
  static ConfigOptionProductOption extractConfigOptionProductOption(dynamic json) {
    return ConfigOptionProductOption(
        entityId: create_id_from('ConfigOptionProductOption', ['configId', 'configItemId', 'configOptionId', 'sequenceNum', 'productId'], json),
        configItemId: json['configItemId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        productId: json['productId'] as String,
        productOptionId: json['productOptionId'] as String,
        configId: json['configId'] as String,
        configOptionId: json['configOptionId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ConfigOptionProductOption overridesConfigOptionProductOption(Map<String, dynamic> map) {
    return ConfigOptionProductOption(
        entityId: create_id_from('ConfigOptionProductOption', ['configId', 'configItemId', 'configOptionId', 'sequenceNum', 'productId'], map),
        configItemId: map['configItemId'],
        sequenceNum: map['sequenceNum'],
        productId: map['productId'],
        productOptionId: map['productOptionId'],
        configId: map['configId'],
        configOptionId: map['configOptionId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdConfItemContent extractProdConfItemContent(dynamic json) {
    return ProdConfItemContent(
        entityId: create_id_from('ProdConfItemContent', ['configItemId', 'contentId', 'confItemContentTypeId', 'fromDate'], json),
        configItemId: json['configItemId'] as String,
        confItemContentTypeId: json['confItemContentTypeId'] as String,
        fromDate: check_dt(json['fromDate']),
        contentId: json['contentId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdConfItemContent overridesProdConfItemContent(Map<String, dynamic> map) {
    return ProdConfItemContent(
        entityId: create_id_from('ProdConfItemContent', ['configItemId', 'contentId', 'confItemContentTypeId', 'fromDate'], map),
        configItemId: map['configItemId'],
        confItemContentTypeId: map['confItemContentTypeId'],
        fromDate: map['fromDate'],
        contentId: map['contentId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdConfItemContentType extractProdConfItemContentType(dynamic json) {
    return ProdConfItemContentType(
        entityId: create_id_from('ProdConfItemContentType', ['confItemContentTypeId'], json),
        confItemContentTypeId: json['confItemContentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdConfItemContentType overridesProdConfItemContentType(Map<String, dynamic> map) {
    return ProdConfItemContentType(
        entityId: create_id_from('ProdConfItemContentType', ['confItemContentTypeId'], map),
        confItemContentTypeId: map['confItemContentTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfig extractProductConfig(dynamic json) {
    return ProductConfig(
        entityId: create_id_from('ProductConfig', ['productId', 'configItemId', 'sequenceNum', 'fromDate'], json),
        configItemId: json['configItemId'] as String,
        longDescription: json['longDescription'] as String,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        defaultConfigOptionId: json['defaultConfigOptionId'] as String,
        description: json['description'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        configTypeId: json['configTypeId'] as String,
        isMandatory: json['isMandatory'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfig overridesProductConfig(Map<String, dynamic> map) {
    return ProductConfig(
        entityId: create_id_from('ProductConfig', ['productId', 'configItemId', 'sequenceNum', 'fromDate'], map),
        configItemId: map['configItemId'],
        longDescription: map['longDescription'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        defaultConfigOptionId: map['defaultConfigOptionId'],
        description: map['description'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        configTypeId: map['configTypeId'],
        isMandatory: map['isMandatory'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigAndProduct extractProductConfigAndProduct(dynamic json) {
    return ProductConfigAndProduct(
        entityId: create_id_from('ProductConfigAndProduct', ['configItemId', 'productId', 'sequenceNum', 'fromDate'], json),
        sequenceNum: json['sequenceNum'] as int,
        defaultConfigOptionId: json['defaultConfigOptionId'] as String,
        originGeoId: json['originGeoId'] as String,
        detailScreen: json['detailScreen'] as String,
        requireInventory: json['requireInventory'] as String,
        quantityUomId: json['quantityUomId'] as String,
        mediumImageUrl: json['mediumImageUrl'] as String,
        productName: json['productName'] as String,
        introductionDate: check_dt(json['introductionDate']),
        shippingHeight: json['shippingHeight'] as double,
        originalImageUrl: json['originalImageUrl'] as String,
        inShippingBox: json['inShippingBox'] as String,
        detailImageUrl: json['detailImageUrl'] as String,
        supportDiscontinuationDate: check_dt(json['supportDiscontinuationDate']),
        productWidth: json['productWidth'] as double,
        includeInPromotions: json['includeInPromotions'] as String,
        configId: json['configId'] as String,
        billOfMaterialLevel: json['billOfMaterialLevel'] as int,
        lotIdFilledIn: json['lotIdFilledIn'] as String,
        productRating: json['productRating'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        isMandatory: json['isMandatory'] as String,
        configItemId: json['configItemId'] as String,
        brandName: json['brandName'] as String,
        requireAmount: json['requireAmount'] as String,
        productId: json['productId'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        returnable: json['returnable'] as String,
        configTypeId: json['configTypeId'] as String,
        weightUomId: json['weightUomId'] as String,
        isVirtual: json['isVirtual'] as String,
        priceDetailText: json['priceDetailText'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        widthUomId: json['widthUomId'] as String,
        longDescription: json['longDescription'] as String,
        diameterUomId: json['diameterUomId'] as String,
        autoCreateKeywords: json['autoCreateKeywords'] as String,
        amountUomTypeId: json['amountUomTypeId'] as String,
        productDiameter: json['productDiameter'] as double,
        ratingTypeEnum: json['ratingTypeEnum'] as String,
        description: json['description'] as String,
        chargeShipping: json['chargeShipping'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        quantityIncluded: json['quantityIncluded'] as double,
        heightUomId: json['heightUomId'] as String,
        internalName: json['internalName'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        virtualVariantMethodEnum: json['virtualVariantMethodEnum'] as String,
        shippingWeight: json['shippingWeight'] as double,
        shippingWidth: json['shippingWidth'] as double,
        shippingDepth: json['shippingDepth'] as double,
        reservMaxPersons: json['reservMaxPersons'] as double,
        fixedAmount: json['fixedAmount'] as double,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        piecesIncluded: json['piecesIncluded'] as int,
        productDepth: json['productDepth'] as double,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        releaseDate: check_dt(json['releaseDate']),
        productHeight: json['productHeight'] as double,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        defaultShipmentBoxTypeId: json['defaultShipmentBoxTypeId'] as String,
        orderDecimalQuantity: json['orderDecimalQuantity'] as String,
        inventoryMessage: json['inventoryMessage'] as String,
        productWeight: json['productWeight'] as double,
        depthUomId: json['depthUomId'] as String,
        productTypeId: json['productTypeId'] as String,
        createdDate: check_dt(json['createdDate']),
        isVariant: json['isVariant'] as String,
        largeImageUrl: json['largeImageUrl'] as String,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigAndProduct overridesProductConfigAndProduct(Map<String, dynamic> map) {
    return ProductConfigAndProduct(
        entityId: create_id_from('ProductConfigAndProduct', ['configItemId', 'productId', 'sequenceNum', 'fromDate'], map),
        sequenceNum: map['sequenceNum'],
        defaultConfigOptionId: map['defaultConfigOptionId'],
        originGeoId: map['originGeoId'],
        detailScreen: map['detailScreen'],
        requireInventory: map['requireInventory'],
        quantityUomId: map['quantityUomId'],
        mediumImageUrl: map['mediumImageUrl'],
        productName: map['productName'],
        introductionDate: map['introductionDate'],
        shippingHeight: map['shippingHeight'],
        originalImageUrl: map['originalImageUrl'],
        inShippingBox: map['inShippingBox'],
        detailImageUrl: map['detailImageUrl'],
        supportDiscontinuationDate: map['supportDiscontinuationDate'],
        productWidth: map['productWidth'],
        includeInPromotions: map['includeInPromotions'],
        configId: map['configId'],
        billOfMaterialLevel: map['billOfMaterialLevel'],
        lotIdFilledIn: map['lotIdFilledIn'],
        productRating: map['productRating'],
        createdByUserLogin: map['createdByUserLogin'],
        isMandatory: map['isMandatory'],
        configItemId: map['configItemId'],
        brandName: map['brandName'],
        requireAmount: map['requireAmount'],
        productId: map['productId'],
        smallImageUrl: map['smallImageUrl'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        returnable: map['returnable'],
        configTypeId: map['configTypeId'],
        weightUomId: map['weightUomId'],
        isVirtual: map['isVirtual'],
        priceDetailText: map['priceDetailText'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        widthUomId: map['widthUomId'],
        longDescription: map['longDescription'],
        diameterUomId: map['diameterUomId'],
        autoCreateKeywords: map['autoCreateKeywords'],
        amountUomTypeId: map['amountUomTypeId'],
        productDiameter: map['productDiameter'],
        ratingTypeEnum: map['ratingTypeEnum'],
        description: map['description'],
        chargeShipping: map['chargeShipping'],
        reservNthPPPerc: map['reservNthPPPerc'],
        quantityIncluded: map['quantityIncluded'],
        heightUomId: map['heightUomId'],
        internalName: map['internalName'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        virtualVariantMethodEnum: map['virtualVariantMethodEnum'],
        shippingWeight: map['shippingWeight'],
        shippingWidth: map['shippingWidth'],
        shippingDepth: map['shippingDepth'],
        reservMaxPersons: map['reservMaxPersons'],
        fixedAmount: map['fixedAmount'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        piecesIncluded: map['piecesIncluded'],
        productDepth: map['productDepth'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        releaseDate: map['releaseDate'],
        productHeight: map['productHeight'],
        lastModifiedDate: map['lastModifiedDate'],
        defaultShipmentBoxTypeId: map['defaultShipmentBoxTypeId'],
        orderDecimalQuantity: map['orderDecimalQuantity'],
        inventoryMessage: map['inventoryMessage'],
        productWeight: map['productWeight'],
        depthUomId: map['depthUomId'],
        productTypeId: map['productTypeId'],
        createdDate: map['createdDate'],
        isVariant: map['isVariant'],
        largeImageUrl: map['largeImageUrl'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigConfig extractProductConfigConfig(dynamic json) {
    return ProductConfigConfig(
        entityId: create_id_from('ProductConfigConfig', ['configId', 'configItemId', 'configOptionId', 'sequenceNum'], json),
        configItemId: json['configItemId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        configId: json['configId'] as String,
        configOptionId: json['configOptionId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigConfig overridesProductConfigConfig(Map<String, dynamic> map) {
    return ProductConfigConfig(
        entityId: create_id_from('ProductConfigConfig', ['configId', 'configItemId', 'configOptionId', 'sequenceNum'], map),
        configItemId: map['configItemId'],
        sequenceNum: map['sequenceNum'],
        configId: map['configId'],
        configOptionId: map['configOptionId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigItem extractProductConfigItem(dynamic json) {
    return ProductConfigItem(
        entityId: create_id_from('ProductConfigItem', ['configItemId'], json),
        configItemId: json['configItemId'] as String,
        longDescription: json['longDescription'] as String,
        imageUrl: json['imageUrl'] as String,
        configItemName: json['configItemName'] as String,
        configItemTypeId: json['configItemTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigItem overridesProductConfigItem(Map<String, dynamic> map) {
    return ProductConfigItem(
        entityId: create_id_from('ProductConfigItem', ['configItemId'], map),
        configItemId: map['configItemId'],
        longDescription: map['longDescription'],
        imageUrl: map['imageUrl'],
        configItemName: map['configItemName'],
        configItemTypeId: map['configItemTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigOption extractProductConfigOption(dynamic json) {
    return ProductConfigOption(
        entityId: create_id_from('ProductConfigOption', ['configItemId', 'configOptionId'], json),
        configItemId: json['configItemId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        configOptionId: json['configOptionId'] as String,
        configOptionName: json['configOptionName'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigOption overridesProductConfigOption(Map<String, dynamic> map) {
    return ProductConfigOption(
        entityId: create_id_from('ProductConfigOption', ['configItemId', 'configOptionId'], map),
        configItemId: map['configItemId'],
        sequenceNum: map['sequenceNum'],
        configOptionId: map['configOptionId'],
        configOptionName: map['configOptionName'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigOptionIactn extractProductConfigOptionIactn(dynamic json) {
    return ProductConfigOptionIactn(
        entityId: create_id_from('ProductConfigOptionIactn', ['configItemId', 'configOptionId', 'configItemIdTo', 'configOptionIdTo', 'sequenceNum'], json),
        configItemId: json['configItemId'] as String,
        configIactnTypeId: json['configIactnTypeId'] as String,
        configOptionIdTo: json['configOptionIdTo'] as String,
        sequenceNum: json['sequenceNum'] as int,
        configOptionId: json['configOptionId'] as String,
        description: json['description'] as String,
        configItemIdTo: json['configItemIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigOptionIactn overridesProductConfigOptionIactn(Map<String, dynamic> map) {
    return ProductConfigOptionIactn(
        entityId: create_id_from('ProductConfigOptionIactn', ['configItemId', 'configOptionId', 'configItemIdTo', 'configOptionIdTo', 'sequenceNum'], map),
        configItemId: map['configItemId'],
        configIactnTypeId: map['configIactnTypeId'],
        configOptionIdTo: map['configOptionIdTo'],
        sequenceNum: map['sequenceNum'],
        configOptionId: map['configOptionId'],
        description: map['description'],
        configItemIdTo: map['configItemIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigProduct extractProductConfigProduct(dynamic json) {
    return ProductConfigProduct(
        entityId: create_id_from('ProductConfigProduct', ['configItemId', 'configOptionId', 'productId'], json),
        configItemId: json['configItemId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        configOptionId: json['configOptionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigProduct overridesProductConfigProduct(Map<String, dynamic> map) {
    return ProductConfigProduct(
        entityId: create_id_from('ProductConfigProduct', ['configItemId', 'configOptionId', 'productId'], map),
        configItemId: map['configItemId'],
        quantity: map['quantity'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        configOptionId: map['configOptionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductConfigStats extractProductConfigStats(dynamic json) {
    return ProductConfigStats(
        entityId: create_id_from('ProductConfigStats', ['configId', 'productId'], json),
        productId: json['productId'] as String,
        configId: json['configId'] as String,
        numOfConfs: json['numOfConfs'] as int,
        configTypeId: json['configTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductConfigStats overridesProductConfigStats(Map<String, dynamic> map) {
    return ProductConfigStats(
        entityId: create_id_from('ProductConfigStats', ['configId', 'productId'], map),
        productId: map['productId'],
        configId: map['configId'],
        numOfConfs: map['numOfConfs'],
        configTypeId: map['configTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}