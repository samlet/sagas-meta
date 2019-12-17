import 'package:sagas_meta/src/models/product_supplier.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductSupplierJsonifier{
  static MarketInterest extractMarketInterest(dynamic json) {
    return MarketInterest(
        entityId: create_id_from('MarketInterest', ['productCategoryId', 'partyClassificationGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productCategoryId: json['productCategoryId'] as String,
        partyClassificationGroupId: json['partyClassificationGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketInterest overridesMarketInterest(Map<String, dynamic> map) {
    return MarketInterest(
        entityId: create_id_from('MarketInterest', ['productCategoryId', 'partyClassificationGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        productCategoryId: map['productCategoryId'],
        partyClassificationGroupId: map['partyClassificationGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ReorderGuideline extractReorderGuideline(dynamic json) {
    return ReorderGuideline(
        entityId: create_id_from('ReorderGuideline', ['reorderGuidelineId'], json),
        roleTypeId: json['roleTypeId'] as String,
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        reorderQuantity: json['reorderQuantity'] as double,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        reorderLevel: json['reorderLevel'] as double,
        reorderGuidelineId: json['reorderGuidelineId'] as String,
        geoId: json['geoId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ReorderGuideline overridesReorderGuideline(Map<String, dynamic> map) {
    return ReorderGuideline(
        entityId: create_id_from('ReorderGuideline', ['reorderGuidelineId'], map),
        roleTypeId: map['roleTypeId'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        reorderQuantity: map['reorderQuantity'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        reorderLevel: map['reorderLevel'],
        reorderGuidelineId: map['reorderGuidelineId'],
        geoId: map['geoId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SupplierPrefOrder extractSupplierPrefOrder(dynamic json) {
    return SupplierPrefOrder(
        entityId: create_id_from('SupplierPrefOrder', ['supplierPrefOrderId'], json),
        description: json['description'] as String,
        supplierPrefOrderId: json['supplierPrefOrderId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SupplierPrefOrder overridesSupplierPrefOrder(Map<String, dynamic> map) {
    return SupplierPrefOrder(
        entityId: create_id_from('SupplierPrefOrder', ['supplierPrefOrderId'], map),
        description: map['description'],
        supplierPrefOrderId: map['supplierPrefOrderId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SupplierProduct extractSupplierProduct(dynamic json) {
    return SupplierProduct(
        entityId: create_id_from('SupplierProduct', ['productId', 'partyId', 'currencyUomId', 'minimumOrderQuantity', 'availableFromDate'], json),
        supplierProductName: json['supplierProductName'] as String,
        comments: json['comments'] as String,
        productId: json['productId'] as String,
        canDropShip: json['canDropShip'] as String,
        minimumOrderQuantity: json['minimumOrderQuantity'] as double,
        supplierRatingTypeId: json['supplierRatingTypeId'] as String,
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        quantityUomId: json['quantityUomId'] as String,
        supplierProductId: json['supplierProductId'] as String,
        supplierPrefOrderId: json['supplierPrefOrderId'] as String,
        unitsIncluded: json['unitsIncluded'] as double,
        orderQtyIncrements: json['orderQtyIncrements'] as double,
        currencyUomId: json['currencyUomId'] as String,
        availableFromDate: check_dt(json['availableFromDate']),
        shippingPrice: json['shippingPrice'] as double,
        agreementId: json['agreementId'] as String,
        availableThruDate: check_dt(json['availableThruDate']),
        partyId: json['partyId'] as String,
        standardLeadTimeDays: json['standardLeadTimeDays'] as double,
        lastPrice: json['lastPrice'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SupplierProduct overridesSupplierProduct(Map<String, dynamic> map) {
    return SupplierProduct(
        entityId: create_id_from('SupplierProduct', ['productId', 'partyId', 'currencyUomId', 'minimumOrderQuantity', 'availableFromDate'], map),
        supplierProductName: map['supplierProductName'],
        comments: map['comments'],
        productId: map['productId'],
        canDropShip: map['canDropShip'],
        minimumOrderQuantity: map['minimumOrderQuantity'],
        supplierRatingTypeId: map['supplierRatingTypeId'],
        agreementItemSeqId: map['agreementItemSeqId'],
        quantityUomId: map['quantityUomId'],
        supplierProductId: map['supplierProductId'],
        supplierPrefOrderId: map['supplierPrefOrderId'],
        unitsIncluded: map['unitsIncluded'],
        orderQtyIncrements: map['orderQtyIncrements'],
        currencyUomId: map['currencyUomId'],
        availableFromDate: map['availableFromDate'],
        shippingPrice: map['shippingPrice'],
        agreementId: map['agreementId'],
        availableThruDate: map['availableThruDate'],
        partyId: map['partyId'],
        standardLeadTimeDays: map['standardLeadTimeDays'],
        lastPrice: map['lastPrice'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SupplierProductAndProduct extractSupplierProductAndProduct(dynamic json) {
    return SupplierProductAndProduct(
        entityId: create_id_from('SupplierProductAndProduct', ['productId', 'minimumOrderQuantity', 'currencyUomId', 'availableFromDate', 'partyId'], json),
        supplierProductName: json['supplierProductName'] as String,
        canDropShip: json['canDropShip'] as String,
        originGeoId: json['originGeoId'] as String,
        minimumOrderQuantity: json['minimumOrderQuantity'] as double,
        detailScreen: json['detailScreen'] as String,
        quantityUomId: json['quantityUomId'] as String,
        requireInventory: json['requireInventory'] as String,
        mediumImageUrl: json['mediumImageUrl'] as String,
        unitsIncluded: json['unitsIncluded'] as double,
        productName: json['productName'] as String,
        introductionDate: check_dt(json['introductionDate']),
        shippingHeight: json['shippingHeight'] as double,
        originalImageUrl: json['originalImageUrl'] as String,
        inShippingBox: json['inShippingBox'] as String,
        detailImageUrl: json['detailImageUrl'] as String,
        availableFromDate: check_dt(json['availableFromDate']),
        supportDiscontinuationDate: check_dt(json['supportDiscontinuationDate']),
        productWidth: json['productWidth'] as double,
        includeInPromotions: json['includeInPromotions'] as String,
        configId: json['configId'] as String,
        billOfMaterialLevel: json['billOfMaterialLevel'] as int,
        lotIdFilledIn: json['lotIdFilledIn'] as String,
        partyId: json['partyId'] as String,
        productRating: json['productRating'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        brandName: json['brandName'] as String,
        requireAmount: json['requireAmount'] as String,
        productId: json['productId'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        agreementItemSeqId: json['agreementItemSeqId'] as String,
        supplierProductId: json['supplierProductId'] as String,
        supplierPrefOrderId: json['supplierPrefOrderId'] as String,
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        orderQtyIncrements: json['orderQtyIncrements'] as double,
        returnable: json['returnable'] as String,
        shippingPrice: json['shippingPrice'] as double,
        availableThruDate: check_dt(json['availableThruDate']),
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
        supplierRatingTypeId: json['supplierRatingTypeId'] as String,
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
        agreementId: json['agreementId'] as String,
        reservMaxPersons: json['reservMaxPersons'] as double,
        fixedAmount: json['fixedAmount'] as double,
        standardLeadTimeDays: json['standardLeadTimeDays'] as double,
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
        productWeight: json['productWeight'] as double,
        depthUomId: json['depthUomId'] as String,
        productTypeId: json['productTypeId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        isVariant: json['isVariant'] as String,
        largeImageUrl: json['largeImageUrl'] as String,
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        lastPrice: json['lastPrice'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SupplierProductAndProduct overridesSupplierProductAndProduct(Map<String, dynamic> map) {
    return SupplierProductAndProduct(
        entityId: create_id_from('SupplierProductAndProduct', ['productId', 'minimumOrderQuantity', 'currencyUomId', 'availableFromDate', 'partyId'], map),
        supplierProductName: map['supplierProductName'],
        canDropShip: map['canDropShip'],
        originGeoId: map['originGeoId'],
        minimumOrderQuantity: map['minimumOrderQuantity'],
        detailScreen: map['detailScreen'],
        quantityUomId: map['quantityUomId'],
        requireInventory: map['requireInventory'],
        mediumImageUrl: map['mediumImageUrl'],
        unitsIncluded: map['unitsIncluded'],
        productName: map['productName'],
        introductionDate: map['introductionDate'],
        shippingHeight: map['shippingHeight'],
        originalImageUrl: map['originalImageUrl'],
        inShippingBox: map['inShippingBox'],
        detailImageUrl: map['detailImageUrl'],
        availableFromDate: map['availableFromDate'],
        supportDiscontinuationDate: map['supportDiscontinuationDate'],
        productWidth: map['productWidth'],
        includeInPromotions: map['includeInPromotions'],
        configId: map['configId'],
        billOfMaterialLevel: map['billOfMaterialLevel'],
        lotIdFilledIn: map['lotIdFilledIn'],
        partyId: map['partyId'],
        productRating: map['productRating'],
        createdByUserLogin: map['createdByUserLogin'],
        brandName: map['brandName'],
        requireAmount: map['requireAmount'],
        productId: map['productId'],
        smallImageUrl: map['smallImageUrl'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        agreementItemSeqId: map['agreementItemSeqId'],
        supplierProductId: map['supplierProductId'],
        supplierPrefOrderId: map['supplierPrefOrderId'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        orderQtyIncrements: map['orderQtyIncrements'],
        returnable: map['returnable'],
        shippingPrice: map['shippingPrice'],
        availableThruDate: map['availableThruDate'],
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
        supplierRatingTypeId: map['supplierRatingTypeId'],
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
        agreementId: map['agreementId'],
        reservMaxPersons: map['reservMaxPersons'],
        fixedAmount: map['fixedAmount'],
        standardLeadTimeDays: map['standardLeadTimeDays'],
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
        productWeight: map['productWeight'],
        depthUomId: map['depthUomId'],
        productTypeId: map['productTypeId'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        isVariant: map['isVariant'],
        largeImageUrl: map['largeImageUrl'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        lastPrice: map['lastPrice'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SupplierProductFeature extractSupplierProductFeature(dynamic json) {
    return SupplierProductFeature(
        entityId: create_id_from('SupplierProductFeature', ['partyId', 'productFeatureId'], json),
        idCode: json['idCode'] as String,
        productFeatureId: json['productFeatureId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SupplierProductFeature overridesSupplierProductFeature(Map<String, dynamic> map) {
    return SupplierProductFeature(
        entityId: create_id_from('SupplierProductFeature', ['partyId', 'productFeatureId'], map),
        idCode: map['idCode'],
        productFeatureId: map['productFeatureId'],
        description: map['description'],
        uomId: map['uomId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SupplierRatingType extractSupplierRatingType(dynamic json) {
    return SupplierRatingType(
        entityId: create_id_from('SupplierRatingType', ['supplierRatingTypeId'], json),
        supplierRatingTypeId: json['supplierRatingTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SupplierRatingType overridesSupplierRatingType(Map<String, dynamic> map) {
    return SupplierRatingType(
        entityId: create_id_from('SupplierRatingType', ['supplierRatingTypeId'], map),
        supplierRatingTypeId: map['supplierRatingTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}