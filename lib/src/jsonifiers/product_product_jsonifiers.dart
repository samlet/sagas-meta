import 'package:sagas_meta/src/models/product_product.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductProductJsonifier{
  static GoodIdentification extractGoodIdentification(dynamic json) {
    return GoodIdentification(
        entityId: create_id_from('GoodIdentification', ['goodIdentificationTypeId', 'productId'], json),
        productId: json['productId'] as String,
        goodIdentificationTypeId: json['goodIdentificationTypeId'] as String,
        idValue: json['idValue'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GoodIdentification overridesGoodIdentification(Map<String, dynamic> map) {
    return GoodIdentification(
        entityId: create_id_from('GoodIdentification', ['goodIdentificationTypeId', 'productId'], map),
        productId: map['productId'],
        goodIdentificationTypeId: map['goodIdentificationTypeId'],
        idValue: map['idValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GoodIdentificationAndProduct extractGoodIdentificationAndProduct(dynamic json) {
    return GoodIdentificationAndProduct(
        entityId: create_id_from('GoodIdentificationAndProduct', ['productId', 'goodIdentificationTypeId'], json),
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
        brandName: json['brandName'] as String,
        requireAmount: json['requireAmount'] as String,
        productId: json['productId'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        goodIdentificationTypeId: json['goodIdentificationTypeId'] as String,
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        returnable: json['returnable'] as String,
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
        idValue: json['idValue'] as String,
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

  static GoodIdentificationAndProduct overridesGoodIdentificationAndProduct(Map<String, dynamic> map) {
    return GoodIdentificationAndProduct(
        entityId: create_id_from('GoodIdentificationAndProduct', ['productId', 'goodIdentificationTypeId'], map),
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
        brandName: map['brandName'],
        requireAmount: map['requireAmount'],
        productId: map['productId'],
        smallImageUrl: map['smallImageUrl'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        goodIdentificationTypeId: map['goodIdentificationTypeId'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        returnable: map['returnable'],
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
        idValue: map['idValue'],
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

  static GoodIdentificationType extractGoodIdentificationType(dynamic json) {
    return GoodIdentificationType(
        entityId: create_id_from('GoodIdentificationType', ['goodIdentificationTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        goodIdentificationTypeId: json['goodIdentificationTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GoodIdentificationType overridesGoodIdentificationType(Map<String, dynamic> map) {
    return GoodIdentificationType(
        entityId: create_id_from('GoodIdentificationType', ['goodIdentificationTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        goodIdentificationTypeId: map['goodIdentificationTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Product extractProduct(dynamic json) {
    return Product(
        entityId: create_id_from('Product', ['productId'], json),
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
        brandName: json['brandName'] as String,
        requireAmount: json['requireAmount'] as String,
        productId: json['productId'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        returnable: json['returnable'] as String,
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

  static Product overridesProduct(Map<String, dynamic> map) {
    return Product(
        entityId: create_id_from('Product', ['productId'], map),
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
        brandName: map['brandName'],
        requireAmount: map['requireAmount'],
        productId: map['productId'],
        smallImageUrl: map['smallImageUrl'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        returnable: map['returnable'],
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

  static ProductAndAssoc extractProductAndAssoc(dynamic json) {
    return ProductAndAssoc(
        entityId: create_id_from('ProductAndAssoc', ['productId', 'productIdTo', 'productAssocTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        internalName: json['internalName'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        productIdTo: json['productIdTo'] as String,
        productAssocTypeId: json['productAssocTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAndAssoc overridesProductAndAssoc(Map<String, dynamic> map) {
    return ProductAndAssoc(
        entityId: create_id_from('ProductAndAssoc', ['productId', 'productIdTo', 'productAssocTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        internalName: map['internalName'],
        quantity: map['quantity'],
        productId: map['productId'],
        productIdTo: map['productIdTo'],
        productAssocTypeId: map['productAssocTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAndPriceView extractProductAndPriceView(dynamic json) {
    return ProductAndPriceView(
        entityId: create_id_from('ProductAndPriceView', ['productId', 'productPriceTypeId', 'productPricePurposeId', 'currencyUomId', 'fromDate'], json),
        productId: json['productId'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        description: json['description'] as String,
        productTypeId: json['productTypeId'] as String,
        productName: json['productName'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        internalName: json['internalName'] as String,
        currencyUomId: json['currencyUomId'] as String,
        price: json['price'] as double,
        isVirtual: json['isVirtual'] as String,
        productPricePurposeId: json['productPricePurposeId'] as String,
        productPriceTypeId: json['productPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAndPriceView overridesProductAndPriceView(Map<String, dynamic> map) {
    return ProductAndPriceView(
        entityId: create_id_from('ProductAndPriceView', ['productId', 'productPriceTypeId', 'productPricePurposeId', 'currencyUomId', 'fromDate'], map),
        productId: map['productId'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        description: map['description'],
        productTypeId: map['productTypeId'],
        productName: map['productName'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        internalName: map['internalName'],
        currencyUomId: map['currencyUomId'],
        price: map['price'],
        isVirtual: map['isVirtual'],
        productPricePurposeId: map['productPricePurposeId'],
        productPriceTypeId: map['productPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAssoc extractProductAssoc(dynamic json) {
    return ProductAssoc(
        entityId: create_id_from('ProductAssoc', ['productId', 'productIdTo', 'productAssocTypeId', 'fromDate'], json),
        reason: json['reason'] as String,
        scrapFactor: json['scrapFactor'] as double,
        quantity: json['quantity'] as double,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        estimateCalcMethod: json['estimateCalcMethod'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        instruction: json['instruction'] as String,
        productIdTo: json['productIdTo'] as String,
        productAssocTypeId: json['productAssocTypeId'] as String,
        routingWorkEffortId: json['routingWorkEffortId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAssoc overridesProductAssoc(Map<String, dynamic> map) {
    return ProductAssoc(
        entityId: create_id_from('ProductAssoc', ['productId', 'productIdTo', 'productAssocTypeId', 'fromDate'], map),
        reason: map['reason'],
        scrapFactor: map['scrapFactor'],
        quantity: map['quantity'],
        recurrenceInfoId: map['recurrenceInfoId'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        estimateCalcMethod: map['estimateCalcMethod'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        instruction: map['instruction'],
        productIdTo: map['productIdTo'],
        productAssocTypeId: map['productAssocTypeId'],
        routingWorkEffortId: map['routingWorkEffortId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAssocType extractProductAssocType(dynamic json) {
    return ProductAssocType(
        entityId: create_id_from('ProductAssocType', ['productAssocTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        productAssocTypeId: json['productAssocTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAssocType overridesProductAssocType(Map<String, dynamic> map) {
    return ProductAssocType(
        entityId: create_id_from('ProductAssocType', ['productAssocTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        productAssocTypeId: map['productAssocTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAttribute extractProductAttribute(dynamic json) {
    return ProductAttribute(
        entityId: create_id_from('ProductAttribute', ['productId', 'attrName'], json),
        productId: json['productId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        attrType: json['attrType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAttribute overridesProductAttribute(Map<String, dynamic> map) {
    return ProductAttribute(
        entityId: create_id_from('ProductAttribute', ['productId', 'attrName'], map),
        productId: map['productId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        attrType: map['attrType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductCalculatedInfo extractProductCalculatedInfo(dynamic json) {
    return ProductCalculatedInfo(
        entityId: create_id_from('ProductCalculatedInfo', ['productId'], json),
        averageCustomerRating: json['averageCustomerRating'] as double,
        productId: json['productId'] as String,
        totalTimesViewed: json['totalTimesViewed'] as int,
        totalQuantityOrdered: json['totalQuantityOrdered'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductCalculatedInfo overridesProductCalculatedInfo(Map<String, dynamic> map) {
    return ProductCalculatedInfo(
        entityId: create_id_from('ProductCalculatedInfo', ['productId'], map),
        averageCustomerRating: map['averageCustomerRating'],
        productId: map['productId'],
        totalTimesViewed: map['totalTimesViewed'],
        totalQuantityOrdered: map['totalQuantityOrdered'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductContent extractProductContent(dynamic json) {
    return ProductContent(
        entityId: create_id_from('ProductContent', ['productId', 'contentId', 'productContentTypeId', 'fromDate'], json),
        purchaseFromDate: check_dt(json['purchaseFromDate']),
        useTimeUomId: json['useTimeUomId'] as String,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        contentId: json['contentId'] as String,
        useCountLimit: json['useCountLimit'] as int,
        productContentTypeId: json['productContentTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        useRoleTypeId: json['useRoleTypeId'] as String,
        useTime: json['useTime'] as int,
        purchaseThruDate: check_dt(json['purchaseThruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductContent overridesProductContent(Map<String, dynamic> map) {
    return ProductContent(
        entityId: create_id_from('ProductContent', ['productId', 'contentId', 'productContentTypeId', 'fromDate'], map),
        purchaseFromDate: map['purchaseFromDate'],
        useTimeUomId: map['useTimeUomId'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        contentId: map['contentId'],
        useCountLimit: map['useCountLimit'],
        productContentTypeId: map['productContentTypeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        useRoleTypeId: map['useRoleTypeId'],
        useTime: map['useTime'],
        purchaseThruDate: map['purchaseThruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductContentAndInfo extractProductContentAndInfo(dynamic json) {
    return ProductContentAndInfo(
        entityId: create_id_from('ProductContentAndInfo', ['productId', 'contentId', 'productContentTypeId', 'fromDate', 'drDataResourceId'], json),
        useTimeUomId: json['useTimeUomId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        ownerContentId: json['ownerContentId'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        drRelatedDetailId: json['drRelatedDetailId'] as String,
        drIsPublic: json['drIsPublic'] as String,
        drCreatedByUserLogin: json['drCreatedByUserLogin'] as String,
        privilegeEnumId: json['privilegeEnumId'] as String,
        drDataTemplateTypeId: json['drDataTemplateTypeId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        productId: json['productId'] as String,
        drObjectInfo: json['drObjectInfo'] as String,
        instanceOfContentId: json['instanceOfContentId'] as String,
        useCountLimit: json['useCountLimit'] as int,
        drCharacterSetId: json['drCharacterSetId'] as String,
        drLastModifiedByUserLogin: json['drLastModifiedByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        drCreatedDate: check_dt(json['drCreatedDate']),
        statusId: json['statusId'] as String,
        drDataResourceName: json['drDataResourceName'] as String,
        drMimeTypeId: json['drMimeTypeId'] as String,
        childBranchCount: json['childBranchCount'] as int,
        drDataResourceId: json['drDataResourceId'] as String,
        drSurveyResponseId: json['drSurveyResponseId'] as String,
        drStatusId: json['drStatusId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        childLeafCount: json['childLeafCount'] as int,
        drDataCategoryId: json['drDataCategoryId'] as String,
        drDataResourceTypeId: json['drDataResourceTypeId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        useRoleTypeId: json['useRoleTypeId'] as String,
        drSurveyId: json['drSurveyId'] as String,
        useTime: json['useTime'] as int,
        purchaseFromDate: check_dt(json['purchaseFromDate']),
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        serviceName: json['serviceName'] as String,
        productContentTypeId: json['productContentTypeId'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        contentName: json['contentName'] as String,
        createdDate: check_dt(json['createdDate']),
        localeString: json['localeString'] as String,
        drLastModifiedDate: check_dt(json['drLastModifiedDate']),
        drDataSourceId: json['drDataSourceId'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        purchaseThruDate: check_dt(json['purchaseThruDate']),
        drLocaleString: json['drLocaleString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductContentAndInfo overridesProductContentAndInfo(Map<String, dynamic> map) {
    return ProductContentAndInfo(
        entityId: create_id_from('ProductContentAndInfo', ['productId', 'contentId', 'productContentTypeId', 'fromDate', 'drDataResourceId'], map),
        useTimeUomId: map['useTimeUomId'],
        sequenceNum: map['sequenceNum'],
        ownerContentId: map['ownerContentId'],
        mimeTypeId: map['mimeTypeId'],
        drRelatedDetailId: map['drRelatedDetailId'],
        drIsPublic: map['drIsPublic'],
        drCreatedByUserLogin: map['drCreatedByUserLogin'],
        privilegeEnumId: map['privilegeEnumId'],
        drDataTemplateTypeId: map['drDataTemplateTypeId'],
        dataResourceId: map['dataResourceId'],
        createdByUserLogin: map['createdByUserLogin'],
        productId: map['productId'],
        drObjectInfo: map['drObjectInfo'],
        instanceOfContentId: map['instanceOfContentId'],
        useCountLimit: map['useCountLimit'],
        drCharacterSetId: map['drCharacterSetId'],
        drLastModifiedByUserLogin: map['drLastModifiedByUserLogin'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        drCreatedDate: map['drCreatedDate'],
        statusId: map['statusId'],
        drDataResourceName: map['drDataResourceName'],
        drMimeTypeId: map['drMimeTypeId'],
        childBranchCount: map['childBranchCount'],
        drDataResourceId: map['drDataResourceId'],
        drSurveyResponseId: map['drSurveyResponseId'],
        drStatusId: map['drStatusId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        childLeafCount: map['childLeafCount'],
        drDataCategoryId: map['drDataCategoryId'],
        drDataResourceTypeId: map['drDataResourceTypeId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        useRoleTypeId: map['useRoleTypeId'],
        drSurveyId: map['drSurveyId'],
        useTime: map['useTime'],
        purchaseFromDate: map['purchaseFromDate'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        serviceName: map['serviceName'],
        productContentTypeId: map['productContentTypeId'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        contentName: map['contentName'],
        createdDate: map['createdDate'],
        localeString: map['localeString'],
        drLastModifiedDate: map['drLastModifiedDate'],
        drDataSourceId: map['drDataSourceId'],
        decoratorContentId: map['decoratorContentId'],
        purchaseThruDate: map['purchaseThruDate'],
        drLocaleString: map['drLocaleString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductContentType extractProductContentType(dynamic json) {
    return ProductContentType(
        entityId: create_id_from('ProductContentType', ['productContentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        productContentTypeId: json['productContentTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductContentType overridesProductContentType(Map<String, dynamic> map) {
    return ProductContentType(
        entityId: create_id_from('ProductContentType', ['productContentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        productContentTypeId: map['productContentTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductGeo extractProductGeo(dynamic json) {
    return ProductGeo(
        entityId: create_id_from('ProductGeo', ['productId', 'geoId'], json),
        productId: json['productId'] as String,
        geoId: json['geoId'] as String,
        description: json['description'] as String,
        productGeoEnumId: json['productGeoEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductGeo overridesProductGeo(Map<String, dynamic> map) {
    return ProductGeo(
        entityId: create_id_from('ProductGeo', ['productId', 'geoId'], map),
        productId: map['productId'],
        geoId: map['geoId'],
        description: map['description'],
        productGeoEnumId: map['productGeoEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductGlAccount extractProductGlAccount(dynamic json) {
    return ProductGlAccount(
        entityId: create_id_from('ProductGlAccount', ['productId', 'organizationPartyId', 'glAccountTypeId'], json),
        productId: json['productId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductGlAccount overridesProductGlAccount(Map<String, dynamic> map) {
    return ProductGlAccount(
        entityId: create_id_from('ProductGlAccount', ['productId', 'organizationPartyId', 'glAccountTypeId'], map),
        productId: map['productId'],
        glAccountTypeId: map['glAccountTypeId'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductGroupOrder extractProductGroupOrder(dynamic json) {
    return ProductGroupOrder(
        entityId: create_id_from('ProductGroupOrder', ['groupOrderId'], json),
        fromDate: check_dt(json['fromDate']),
        jobId: json['jobId'] as String,
        groupOrderId: json['groupOrderId'] as String,
        productId: json['productId'] as String,
        statusId: json['statusId'] as String,
        reqOrderQty: json['reqOrderQty'] as double,
        soldOrderQty: json['soldOrderQty'] as double,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductGroupOrder overridesProductGroupOrder(Map<String, dynamic> map) {
    return ProductGroupOrder(
        entityId: create_id_from('ProductGroupOrder', ['groupOrderId'], map),
        fromDate: map['fromDate'],
        jobId: map['jobId'],
        groupOrderId: map['groupOrderId'],
        productId: map['productId'],
        statusId: map['statusId'],
        reqOrderQty: map['reqOrderQty'],
        soldOrderQty: map['soldOrderQty'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductInventoryItem extractProductInventoryItem(dynamic json) {
    return ProductInventoryItem(
        entityId: create_id_from('ProductInventoryItem', ['productId', 'inventoryItemId'], json),
        inventoryComments: json['inventoryComments'] as String,
        originGeoId: json['originGeoId'] as String,
        detailScreen: json['detailScreen'] as String,
        binNumber: json['binNumber'] as String,
        requireInventory: json['requireInventory'] as String,
        quantityUomId: json['quantityUomId'] as String,
        mediumImageUrl: json['mediumImageUrl'] as String,
        productName: json['productName'] as String,
        introductionDate: check_dt(json['introductionDate']),
        shippingHeight: json['shippingHeight'] as double,
        originalImageUrl: json['originalImageUrl'] as String,
        inShippingBox: json['inShippingBox'] as String,
        oldAvailableToPromise: json['oldAvailableToPromise'] as double,
        detailImageUrl: json['detailImageUrl'] as String,
        supportDiscontinuationDate: check_dt(json['supportDiscontinuationDate']),
        productWidth: json['productWidth'] as double,
        includeInPromotions: json['includeInPromotions'] as String,
        configId: json['configId'] as String,
        billOfMaterialLevel: json['billOfMaterialLevel'] as int,
        lotIdFilledIn: json['lotIdFilledIn'] as String,
        productRating: json['productRating'] as double,
        partyId: json['partyId'] as String,
        containerId: json['containerId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        locationSeqId: json['locationSeqId'] as String,
        brandName: json['brandName'] as String,
        requireAmount: json['requireAmount'] as String,
        serialNumber: json['serialNumber'] as String,
        productId: json['productId'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        uomId: json['uomId'] as String,
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        returnable: json['returnable'] as String,
        statusId: json['statusId'] as String,
        weightUomId: json['weightUomId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        isVirtual: json['isVirtual'] as String,
        priceDetailText: json['priceDetailText'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        widthUomId: json['widthUomId'] as String,
        longDescription: json['longDescription'] as String,
        diameterUomId: json['diameterUomId'] as String,
        autoCreateKeywords: json['autoCreateKeywords'] as String,
        amountUomTypeId: json['amountUomTypeId'] as String,
        productDiameter: json['productDiameter'] as double,
        softIdentifier: json['softIdentifier'] as String,
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
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        datetimeManufactured: check_dt(json['datetimeManufactured']),
        reservMaxPersons: json['reservMaxPersons'] as double,
        expireDate: check_dt(json['expireDate']),
        fixedAmount: json['fixedAmount'] as double,
        oldQuantityOnHand: json['oldQuantityOnHand'] as double,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        piecesIncluded: json['piecesIncluded'] as int,
        productDepth: json['productDepth'] as double,
        comments: json['comments'] as String,
        facilityId: json['facilityId'] as String,
        releaseDate: check_dt(json['releaseDate']),
        productHeight: json['productHeight'] as double,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        defaultShipmentBoxTypeId: json['defaultShipmentBoxTypeId'] as String,
        orderDecimalQuantity: json['orderDecimalQuantity'] as String,
        inventoryMessage: json['inventoryMessage'] as String,
        lotId: json['lotId'] as String,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        productWeight: json['productWeight'] as double,
        depthUomId: json['depthUomId'] as String,
        productTypeId: json['productTypeId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        activationValidThru: check_dt(json['activationValidThru']),
        createdDate: check_dt(json['createdDate']),
        activationNumber: json['activationNumber'] as String,
        currencyUomId: json['currencyUomId'] as String,
        isVariant: json['isVariant'] as String,
        largeImageUrl: json['largeImageUrl'] as String,
        unitCost: json['unitCost'] as double,
        datetimeReceived: check_dt(json['datetimeReceived']),
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        productFacilityId: json['productFacilityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductInventoryItem overridesProductInventoryItem(Map<String, dynamic> map) {
    return ProductInventoryItem(
        entityId: create_id_from('ProductInventoryItem', ['productId', 'inventoryItemId'], map),
        inventoryComments: map['inventoryComments'],
        originGeoId: map['originGeoId'],
        detailScreen: map['detailScreen'],
        binNumber: map['binNumber'],
        requireInventory: map['requireInventory'],
        quantityUomId: map['quantityUomId'],
        mediumImageUrl: map['mediumImageUrl'],
        productName: map['productName'],
        introductionDate: map['introductionDate'],
        shippingHeight: map['shippingHeight'],
        originalImageUrl: map['originalImageUrl'],
        inShippingBox: map['inShippingBox'],
        oldAvailableToPromise: map['oldAvailableToPromise'],
        detailImageUrl: map['detailImageUrl'],
        supportDiscontinuationDate: map['supportDiscontinuationDate'],
        productWidth: map['productWidth'],
        includeInPromotions: map['includeInPromotions'],
        configId: map['configId'],
        billOfMaterialLevel: map['billOfMaterialLevel'],
        lotIdFilledIn: map['lotIdFilledIn'],
        productRating: map['productRating'],
        partyId: map['partyId'],
        containerId: map['containerId'],
        createdByUserLogin: map['createdByUserLogin'],
        locationSeqId: map['locationSeqId'],
        brandName: map['brandName'],
        requireAmount: map['requireAmount'],
        serialNumber: map['serialNumber'],
        productId: map['productId'],
        smallImageUrl: map['smallImageUrl'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        uomId: map['uomId'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        inventoryItemId: map['inventoryItemId'],
        returnable: map['returnable'],
        statusId: map['statusId'],
        weightUomId: map['weightUomId'],
        fixedAssetId: map['fixedAssetId'],
        isVirtual: map['isVirtual'],
        priceDetailText: map['priceDetailText'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        widthUomId: map['widthUomId'],
        longDescription: map['longDescription'],
        diameterUomId: map['diameterUomId'],
        autoCreateKeywords: map['autoCreateKeywords'],
        amountUomTypeId: map['amountUomTypeId'],
        productDiameter: map['productDiameter'],
        softIdentifier: map['softIdentifier'],
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
        quantityOnHandTotal: map['quantityOnHandTotal'],
        datetimeManufactured: map['datetimeManufactured'],
        reservMaxPersons: map['reservMaxPersons'],
        expireDate: map['expireDate'],
        fixedAmount: map['fixedAmount'],
        oldQuantityOnHand: map['oldQuantityOnHand'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        piecesIncluded: map['piecesIncluded'],
        productDepth: map['productDepth'],
        comments: map['comments'],
        facilityId: map['facilityId'],
        releaseDate: map['releaseDate'],
        productHeight: map['productHeight'],
        lastModifiedDate: map['lastModifiedDate'],
        defaultShipmentBoxTypeId: map['defaultShipmentBoxTypeId'],
        orderDecimalQuantity: map['orderDecimalQuantity'],
        inventoryMessage: map['inventoryMessage'],
        lotId: map['lotId'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        productWeight: map['productWeight'],
        depthUomId: map['depthUomId'],
        productTypeId: map['productTypeId'],
        ownerPartyId: map['ownerPartyId'],
        activationValidThru: map['activationValidThru'],
        createdDate: map['createdDate'],
        activationNumber: map['activationNumber'],
        currencyUomId: map['currencyUomId'],
        isVariant: map['isVariant'],
        largeImageUrl: map['largeImageUrl'],
        unitCost: map['unitCost'],
        datetimeReceived: map['datetimeReceived'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        productFacilityId: map['productFacilityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductKeyword extractProductKeyword(dynamic json) {
    return ProductKeyword(
        entityId: create_id_from('ProductKeyword', ['productId', 'keyword', 'keywordTypeId'], json),
        relevancyWeight: json['relevancyWeight'] as int,
        productId: json['productId'] as String,
        statusId: json['statusId'] as String,
        keywordTypeId: json['keywordTypeId'] as String,
        keyword: json['keyword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductKeyword overridesProductKeyword(Map<String, dynamic> map) {
    return ProductKeyword(
        entityId: create_id_from('ProductKeyword', ['productId', 'keyword', 'keywordTypeId'], map),
        relevancyWeight: map['relevancyWeight'],
        productId: map['productId'],
        statusId: map['statusId'],
        keywordTypeId: map['keywordTypeId'],
        keyword: map['keyword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductMaint extractProductMaint(dynamic json) {
    return ProductMaint(
        entityId: create_id_from('ProductMaint', ['productId', 'productMaintSeqId'], json),
        productId: json['productId'] as String,
        maintTemplateWorkEffortId: json['maintTemplateWorkEffortId'] as String,
        maintName: json['maintName'] as String,
        productMaintTypeId: json['productMaintTypeId'] as String,
        intervalMeterTypeId: json['intervalMeterTypeId'] as String,
        productMaintSeqId: json['productMaintSeqId'] as String,
        intervalUomId: json['intervalUomId'] as String,
        intervalQuantity: json['intervalQuantity'] as double,
        repeatCount: json['repeatCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductMaint overridesProductMaint(Map<String, dynamic> map) {
    return ProductMaint(
        entityId: create_id_from('ProductMaint', ['productId', 'productMaintSeqId'], map),
        productId: map['productId'],
        maintTemplateWorkEffortId: map['maintTemplateWorkEffortId'],
        maintName: map['maintName'],
        productMaintTypeId: map['productMaintTypeId'],
        intervalMeterTypeId: map['intervalMeterTypeId'],
        productMaintSeqId: map['productMaintSeqId'],
        intervalUomId: map['intervalUomId'],
        intervalQuantity: map['intervalQuantity'],
        repeatCount: map['repeatCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductMaintType extractProductMaintType(dynamic json) {
    return ProductMaintType(
        entityId: create_id_from('ProductMaintType', ['productMaintTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        productMaintTypeId: json['productMaintTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductMaintType overridesProductMaintType(Map<String, dynamic> map) {
    return ProductMaintType(
        entityId: create_id_from('ProductMaintType', ['productMaintTypeId'], map),
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        productMaintTypeId: map['productMaintTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductMeter extractProductMeter(dynamic json) {
    return ProductMeter(
        entityId: create_id_from('ProductMeter', ['productId', 'productMeterTypeId'], json),
        productId: json['productId'] as String,
        productMeterTypeId: json['productMeterTypeId'] as String,
        meterName: json['meterName'] as String,
        meterUomId: json['meterUomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductMeter overridesProductMeter(Map<String, dynamic> map) {
    return ProductMeter(
        entityId: create_id_from('ProductMeter', ['productId', 'productMeterTypeId'], map),
        productId: map['productId'],
        productMeterTypeId: map['productMeterTypeId'],
        meterName: map['meterName'],
        meterUomId: map['meterUomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductMeterType extractProductMeterType(dynamic json) {
    return ProductMeterType(
        entityId: create_id_from('ProductMeterType', ['productMeterTypeId'], json),
        defaultUomId: json['defaultUomId'] as String,
        productMeterTypeId: json['productMeterTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductMeterType overridesProductMeterType(Map<String, dynamic> map) {
    return ProductMeterType(
        entityId: create_id_from('ProductMeterType', ['productMeterTypeId'], map),
        defaultUomId: map['defaultUomId'],
        productMeterTypeId: map['productMeterTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductReview extractProductReview(dynamic json) {
    return ProductReview(
        entityId: create_id_from('ProductReview', ['productReviewId'], json),
        productId: json['productId'] as String,
        postedDateTime: check_dt(json['postedDateTime']),
        productReviewId: json['productReviewId'] as String,
        productReview: json['productReview'] as String,
        userLoginId: json['userLoginId'] as String,
        statusId: json['statusId'] as String,
        productStoreId: json['productStoreId'] as String,
        postedAnonymous: json['postedAnonymous'] as String,
        productRating: json['productRating'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductReview overridesProductReview(Map<String, dynamic> map) {
    return ProductReview(
        entityId: create_id_from('ProductReview', ['productReviewId'], map),
        productId: map['productId'],
        postedDateTime: map['postedDateTime'],
        productReviewId: map['productReviewId'],
        productReview: map['productReview'],
        userLoginId: map['userLoginId'],
        statusId: map['statusId'],
        productStoreId: map['productStoreId'],
        postedAnonymous: map['postedAnonymous'],
        productRating: map['productRating'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductRole extractProductRole(dynamic json) {
    return ProductRole(
        entityId: create_id_from('ProductRole', ['productId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductRole overridesProductRole(Map<String, dynamic> map) {
    return ProductRole(
        entityId: create_id_from('ProductRole', ['productId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductSearchConstraint extractProductSearchConstraint(dynamic json) {
    return ProductSearchConstraint(
        entityId: create_id_from('ProductSearchConstraint', ['productSearchResultId', 'constraintSeqId'], json),
        constraintSeqId: json['constraintSeqId'] as String,
        anyPrefix: json['anyPrefix'] as String,
        highValue: json['highValue'] as String,
        includeSubCategories: json['includeSubCategories'] as String,
        constraintName: json['constraintName'] as String,
        isAnd: json['isAnd'] as String,
        removeStems: json['removeStems'] as String,
        lowValue: json['lowValue'] as String,
        productSearchResultId: json['productSearchResultId'] as String,
        infoString: json['infoString'] as String,
        anySuffix: json['anySuffix'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductSearchConstraint overridesProductSearchConstraint(Map<String, dynamic> map) {
    return ProductSearchConstraint(
        entityId: create_id_from('ProductSearchConstraint', ['productSearchResultId', 'constraintSeqId'], map),
        constraintSeqId: map['constraintSeqId'],
        anyPrefix: map['anyPrefix'],
        highValue: map['highValue'],
        includeSubCategories: map['includeSubCategories'],
        constraintName: map['constraintName'],
        isAnd: map['isAnd'],
        removeStems: map['removeStems'],
        lowValue: map['lowValue'],
        productSearchResultId: map['productSearchResultId'],
        infoString: map['infoString'],
        anySuffix: map['anySuffix'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductSearchResult extractProductSearchResult(dynamic json) {
    return ProductSearchResult(
        entityId: create_id_from('ProductSearchResult', ['productSearchResultId'], json),
        productSearchResultId: json['productSearchResultId'] as String,
        visitId: json['visitId'] as String,
        orderByName: json['orderByName'] as String,
        numResults: json['numResults'] as int,
        secondsTotal: json['secondsTotal'] as double,
        searchDate: check_dt(json['searchDate']),
        isAscending: json['isAscending'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductSearchResult overridesProductSearchResult(Map<String, dynamic> map) {
    return ProductSearchResult(
        entityId: create_id_from('ProductSearchResult', ['productSearchResultId'], map),
        productSearchResultId: map['productSearchResultId'],
        visitId: map['visitId'],
        orderByName: map['orderByName'],
        numResults: map['numResults'],
        secondsTotal: map['secondsTotal'],
        searchDate: map['searchDate'],
        isAscending: map['isAscending'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductType extractProductType(dynamic json) {
    return ProductType(
        entityId: create_id_from('ProductType', ['productTypeId'], json),
        isPhysical: json['isPhysical'] as String,
        parentTypeId: json['parentTypeId'] as String,
        isDigital: json['isDigital'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        productTypeId: json['productTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductType overridesProductType(Map<String, dynamic> map) {
    return ProductType(
        entityId: create_id_from('ProductType', ['productTypeId'], map),
        isPhysical: map['isPhysical'],
        parentTypeId: map['parentTypeId'],
        isDigital: map['isDigital'],
        hasTable: map['hasTable'],
        description: map['description'],
        productTypeId: map['productTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductTypeAttr extractProductTypeAttr(dynamic json) {
    return ProductTypeAttr(
        entityId: create_id_from('ProductTypeAttr', ['productTypeId', 'attrName'], json),
        description: json['description'] as String,
        productTypeId: json['productTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductTypeAttr overridesProductTypeAttr(Map<String, dynamic> map) {
    return ProductTypeAttr(
        entityId: create_id_from('ProductTypeAttr', ['productTypeId', 'attrName'], map),
        description: map['description'],
        productTypeId: map['productTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductVirtualAndAssocPrices extractProductVirtualAndAssocPrices(dynamic json) {
    return ProductVirtualAndAssocPrices(
        entityId: create_id_from('ProductVirtualAndAssocPrices', ['productId', 'productAssocTypeId', 'fromDate', 'assocProductId', 'assocProductCount', 'assocPriceTypeId', 'assocCurrencyUomId', 'assocProductStoreGroupId', 'assocPriceFromDate'], json),
        productId: json['productId'] as String,
        assocPriceFromDate: check_dt(json['assocPriceFromDate']),
        assocProductStoreGroupId: json['assocProductStoreGroupId'] as String,
        assocMaxPrice: json['assocMaxPrice'] as double,
        productName: json['productName'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        internalName: json['internalName'] as String,
        assocPriceThruDate: check_dt(json['assocPriceThruDate']),
        assocMinPrice: json['assocMinPrice'] as double,
        assocProductId: json['assocProductId'] as String,
        assocProductCount: json['assocProductCount'] as int,
        assocCurrencyUomId: json['assocCurrencyUomId'] as String,
        productAssocTypeId: json['productAssocTypeId'] as String,
        assocPriceTypeId: json['assocPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductVirtualAndAssocPrices overridesProductVirtualAndAssocPrices(Map<String, dynamic> map) {
    return ProductVirtualAndAssocPrices(
        entityId: create_id_from('ProductVirtualAndAssocPrices', ['productId', 'productAssocTypeId', 'fromDate', 'assocProductId', 'assocProductCount', 'assocPriceTypeId', 'assocCurrencyUomId', 'assocProductStoreGroupId', 'assocPriceFromDate'], map),
        productId: map['productId'],
        assocPriceFromDate: map['assocPriceFromDate'],
        assocProductStoreGroupId: map['assocProductStoreGroupId'],
        assocMaxPrice: map['assocMaxPrice'],
        productName: map['productName'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        internalName: map['internalName'],
        assocPriceThruDate: map['assocPriceThruDate'],
        assocMinPrice: map['assocMinPrice'],
        assocProductId: map['assocProductId'],
        assocProductCount: map['assocProductCount'],
        assocCurrencyUomId: map['assocCurrencyUomId'],
        productAssocTypeId: map['productAssocTypeId'],
        assocPriceTypeId: map['assocPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductVirtualAndVariantInfo extractProductVirtualAndVariantInfo(dynamic json) {
    return ProductVirtualAndVariantInfo(
        entityId: create_id_from('ProductVirtualAndVariantInfo', ['productId', 'productAssocTypeId', 'fromDate', 'variantProductId', 'variantFeatureApplFromDate', 'productFeatureId', 'variantPriceTypeId', 'variantCurrencyUomId', 'variantProductStoreGroupId', 'variantPriceFromDate'], json),
        productFeatureTypeId: json['productFeatureTypeId'] as String,
        variantFeatureApplThruDate: check_dt(json['variantFeatureApplThruDate']),
        productId: json['productId'] as String,
        variantPriceTypeId: json['variantPriceTypeId'] as String,
        variantPriceFromDate: check_dt(json['variantPriceFromDate']),
        productFeatureId: json['productFeatureId'] as String,
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        description: json['description'] as String,
        productName: json['productName'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        internalName: json['internalName'] as String,
        variantProductStoreGroupId: json['variantProductStoreGroupId'] as String,
        variantFeatureApplFromDate: check_dt(json['variantFeatureApplFromDate']),
        variantPriceThruDate: check_dt(json['variantPriceThruDate']),
        variantProductId: json['variantProductId'] as String,
        productFeatureApplTypeId: json['productFeatureApplTypeId'] as String,
        productAssocTypeId: json['productAssocTypeId'] as String,
        variantPrice: json['variantPrice'] as double,
        variantCurrencyUomId: json['variantCurrencyUomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductVirtualAndVariantInfo overridesProductVirtualAndVariantInfo(Map<String, dynamic> map) {
    return ProductVirtualAndVariantInfo(
        entityId: create_id_from('ProductVirtualAndVariantInfo', ['productId', 'productAssocTypeId', 'fromDate', 'variantProductId', 'variantFeatureApplFromDate', 'productFeatureId', 'variantPriceTypeId', 'variantCurrencyUomId', 'variantProductStoreGroupId', 'variantPriceFromDate'], map),
        productFeatureTypeId: map['productFeatureTypeId'],
        variantFeatureApplThruDate: map['variantFeatureApplThruDate'],
        productId: map['productId'],
        variantPriceTypeId: map['variantPriceTypeId'],
        variantPriceFromDate: map['variantPriceFromDate'],
        productFeatureId: map['productFeatureId'],
        productFeatureCategoryId: map['productFeatureCategoryId'],
        description: map['description'],
        productName: map['productName'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        internalName: map['internalName'],
        variantProductStoreGroupId: map['variantProductStoreGroupId'],
        variantFeatureApplFromDate: map['variantFeatureApplFromDate'],
        variantPriceThruDate: map['variantPriceThruDate'],
        variantProductId: map['variantProductId'],
        productFeatureApplTypeId: map['productFeatureApplTypeId'],
        productAssocTypeId: map['productAssocTypeId'],
        variantPrice: map['variantPrice'],
        variantCurrencyUomId: map['variantCurrencyUomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VendorProduct extractVendorProduct(dynamic json) {
    return VendorProduct(
        entityId: create_id_from('VendorProduct', ['productId', 'vendorPartyId', 'productStoreGroupId'], json),
        productId: json['productId'] as String,
        vendorPartyId: json['vendorPartyId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VendorProduct overridesVendorProduct(Map<String, dynamic> map) {
    return VendorProduct(
        entityId: create_id_from('VendorProduct', ['productId', 'vendorPartyId', 'productStoreGroupId'], map),
        productId: map['productId'],
        vendorPartyId: map['vendorPartyId'],
        productStoreGroupId: map['productStoreGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}