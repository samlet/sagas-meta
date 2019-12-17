import 'package:sagas_meta/src/models/product_inventory.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductInventoryJsonifier{
  static BalanceInventoryItemsView extractBalanceInventoryItemsView(dynamic json) {
    return BalanceInventoryItemsView(
        entityId: create_id_from('BalanceInventoryItemsView', ['inventoryItemId', 'orderId', 'shipGroupSeqId', 'orderItemSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        sequenceId: json['sequenceId'] as int,
        inventoryItemId: json['inventoryItemId'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        quantityNotAvailable: json['quantityNotAvailable'] as double,
        reserveOrderEnumId: json['reserveOrderEnumId'] as String,
        reservedDatetime: check_dt(json['reservedDatetime']),
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BalanceInventoryItemsView overridesBalanceInventoryItemsView(Map<String, dynamic> map) {
    return BalanceInventoryItemsView(
        entityId: create_id_from('BalanceInventoryItemsView', ['inventoryItemId', 'orderId', 'shipGroupSeqId', 'orderItemSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        productId: map['productId'],
        orderId: map['orderId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        sequenceId: map['sequenceId'],
        inventoryItemId: map['inventoryItemId'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        quantityNotAvailable: map['quantityNotAvailable'],
        reserveOrderEnumId: map['reserveOrderEnumId'],
        reservedDatetime: map['reservedDatetime'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItem extractInventoryItem(dynamic json) {
    return InventoryItem(
        entityId: create_id_from('InventoryItem', ['inventoryItemId'], json),
        softIdentifier: json['softIdentifier'] as String,
        binNumber: json['binNumber'] as String,
        oldAvailableToPromise: json['oldAvailableToPromise'] as double,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        datetimeManufactured: check_dt(json['datetimeManufactured']),
        expireDate: check_dt(json['expireDate']),
        oldQuantityOnHand: json['oldQuantityOnHand'] as double,
        partyId: json['partyId'] as String,
        containerId: json['containerId'] as String,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        serialNumber: json['serialNumber'] as String,
        productId: json['productId'] as String,
        lotId: json['lotId'] as String,
        uomId: json['uomId'] as String,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        inventoryItemId: json['inventoryItemId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        activationValidThru: check_dt(json['activationValidThru']),
        activationNumber: json['activationNumber'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        unitCost: json['unitCost'] as double,
        fixedAssetId: json['fixedAssetId'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItem overridesInventoryItem(Map<String, dynamic> map) {
    return InventoryItem(
        entityId: create_id_from('InventoryItem', ['inventoryItemId'], map),
        softIdentifier: map['softIdentifier'],
        binNumber: map['binNumber'],
        oldAvailableToPromise: map['oldAvailableToPromise'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        datetimeManufactured: map['datetimeManufactured'],
        expireDate: map['expireDate'],
        oldQuantityOnHand: map['oldQuantityOnHand'],
        partyId: map['partyId'],
        containerId: map['containerId'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        locationSeqId: map['locationSeqId'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        serialNumber: map['serialNumber'],
        productId: map['productId'],
        lotId: map['lotId'],
        uomId: map['uomId'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        inventoryItemId: map['inventoryItemId'],
        ownerPartyId: map['ownerPartyId'],
        activationValidThru: map['activationValidThru'],
        activationNumber: map['activationNumber'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        unitCost: map['unitCost'],
        fixedAssetId: map['fixedAssetId'],
        datetimeReceived: map['datetimeReceived'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemAndDetail extractInventoryItemAndDetail(dynamic json) {
    return InventoryItemAndDetail(
        entityId: create_id_from('InventoryItemAndDetail', ['inventoryItemId', 'inventoryItemDetailSeqId'], json),
        workEffortId: json['workEffortId'] as String,
        orderId: json['orderId'] as String,
        softIdentifier: json['softIdentifier'] as String,
        binNumber: json['binNumber'] as String,
        description: json['description'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        inventoryItemDetailSeqId: json['inventoryItemDetailSeqId'] as String,
        oldAvailableToPromise: json['oldAvailableToPromise'] as double,
        accountingQuantityDiff: json['accountingQuantityDiff'] as double,
        physicalInventoryId: json['physicalInventoryId'] as String,
        inventoryItemFixedAssetId: json['inventoryItemFixedAssetId'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        itemIssuanceId: json['itemIssuanceId'] as String,
        datetimeManufactured: check_dt(json['datetimeManufactured']),
        returnId: json['returnId'] as String,
        expireDate: check_dt(json['expireDate']),
        oldQuantityOnHand: json['oldQuantityOnHand'] as double,
        reasonEnumId: json['reasonEnumId'] as String,
        partyId: json['partyId'] as String,
        containerId: json['containerId'] as String,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        receiptId: json['receiptId'] as String,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        quantityOnHandDiff: json['quantityOnHandDiff'] as double,
        orderItemSeqId: json['orderItemSeqId'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        serialNumber: json['serialNumber'] as String,
        productId: json['productId'] as String,
        lotId: json['lotId'] as String,
        uomId: json['uomId'] as String,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        activationValidThru: check_dt(json['activationValidThru']),
        activationNumber: json['activationNumber'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        availableToPromiseDiff: json['availableToPromiseDiff'] as double,
        shipmentId: json['shipmentId'] as String,
        unitCost: json['unitCost'] as double,
        returnItemSeqId: json['returnItemSeqId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemAndDetail overridesInventoryItemAndDetail(Map<String, dynamic> map) {
    return InventoryItemAndDetail(
        entityId: create_id_from('InventoryItemAndDetail', ['inventoryItemId', 'inventoryItemDetailSeqId'], map),
        workEffortId: map['workEffortId'],
        orderId: map['orderId'],
        softIdentifier: map['softIdentifier'],
        binNumber: map['binNumber'],
        description: map['description'],
        maintHistSeqId: map['maintHistSeqId'],
        inventoryItemDetailSeqId: map['inventoryItemDetailSeqId'],
        oldAvailableToPromise: map['oldAvailableToPromise'],
        accountingQuantityDiff: map['accountingQuantityDiff'],
        physicalInventoryId: map['physicalInventoryId'],
        inventoryItemFixedAssetId: map['inventoryItemFixedAssetId'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        itemIssuanceId: map['itemIssuanceId'],
        datetimeManufactured: map['datetimeManufactured'],
        returnId: map['returnId'],
        expireDate: map['expireDate'],
        oldQuantityOnHand: map['oldQuantityOnHand'],
        reasonEnumId: map['reasonEnumId'],
        partyId: map['partyId'],
        containerId: map['containerId'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        receiptId: map['receiptId'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        locationSeqId: map['locationSeqId'],
        quantityOnHandDiff: map['quantityOnHandDiff'],
        orderItemSeqId: map['orderItemSeqId'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        serialNumber: map['serialNumber'],
        productId: map['productId'],
        lotId: map['lotId'],
        uomId: map['uomId'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        inventoryItemId: map['inventoryItemId'],
        ownerPartyId: map['ownerPartyId'],
        activationValidThru: map['activationValidThru'],
        activationNumber: map['activationNumber'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        availableToPromiseDiff: map['availableToPromiseDiff'],
        shipmentId: map['shipmentId'],
        unitCost: map['unitCost'],
        returnItemSeqId: map['returnItemSeqId'],
        fixedAssetId: map['fixedAssetId'],
        datetimeReceived: map['datetimeReceived'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemAndLocation extractInventoryItemAndLocation(dynamic json) {
    return InventoryItemAndLocation(
        entityId: create_id_from('InventoryItemAndLocation', ['inventoryItemId'], json),
        originGeoId: json['originGeoId'] as String,
        binNumber: json['binNumber'] as String,
        mediumImageUrl: json['mediumImageUrl'] as String,
        productName: json['productName'] as String,
        originalImageUrl: json['originalImageUrl'] as String,
        inShippingBox: json['inShippingBox'] as String,
        supportDiscontinuationDate: check_dt(json['supportDiscontinuationDate']),
        productWidth: json['productWidth'] as double,
        partyId: json['partyId'] as String,
        containerId: json['containerId'] as String,
        productRating: json['productRating'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        locationSeqId: json['locationSeqId'] as String,
        requireAmount: json['requireAmount'] as String,
        productId: json['productId'] as String,
        taxable: json['taxable'] as String,
        primaryProductCategoryId: json['primaryProductCategoryId'] as String,
        salesDiscontinuationDate: check_dt(json['salesDiscontinuationDate']),
        uomId: json['uomId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        salesDiscWhenNotAvail: json['salesDiscWhenNotAvail'] as String,
        returnable: json['returnable'] as String,
        statusId: json['statusId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        priceDetailText: json['priceDetailText'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        diameterUomId: json['diameterUomId'] as String,
        productDiameter: json['productDiameter'] as double,
        softIdentifier: json['softIdentifier'] as String,
        ratingTypeEnum: json['ratingTypeEnum'] as String,
        chargeShipping: json['chargeShipping'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        quantityIncluded: json['quantityIncluded'] as double,
        heightUomId: json['heightUomId'] as String,
        virtualVariantMethodEnum: json['virtualVariantMethodEnum'] as String,
        shippingWeight: json['shippingWeight'] as double,
        shippingWidth: json['shippingWidth'] as double,
        shippingDepth: json['shippingDepth'] as double,
        datetimeManufactured: check_dt(json['datetimeManufactured']),
        expireDate: check_dt(json['expireDate']),
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        piecesIncluded: json['piecesIncluded'] as int,
        productHeight: json['productHeight'] as double,
        defaultShipmentBoxTypeId: json['defaultShipmentBoxTypeId'] as String,
        orderDecimalQuantity: json['orderDecimalQuantity'] as String,
        lotId: json['lotId'] as String,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        productWeight: json['productWeight'] as double,
        depthUomId: json['depthUomId'] as String,
        sectionId: json['sectionId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        activationValidThru: check_dt(json['activationValidThru']),
        activationNumber: json['activationNumber'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        areaId: json['areaId'] as String,
        positionId: json['positionId'] as String,
        isVariant: json['isVariant'] as String,
        locationTypeEnumId: json['locationTypeEnumId'] as String,
        detailScreen: json['detailScreen'] as String,
        requireInventory: json['requireInventory'] as String,
        quantityUomId: json['quantityUomId'] as String,
        introductionDate: check_dt(json['introductionDate']),
        shippingHeight: json['shippingHeight'] as double,
        oldAvailableToPromise: json['oldAvailableToPromise'] as double,
        detailImageUrl: json['detailImageUrl'] as String,
        includeInPromotions: json['includeInPromotions'] as String,
        configId: json['configId'] as String,
        levelId: json['levelId'] as String,
        billOfMaterialLevel: json['billOfMaterialLevel'] as int,
        lotIdFilledIn: json['lotIdFilledIn'] as String,
        brandName: json['brandName'] as String,
        serialNumber: json['serialNumber'] as String,
        smallImageUrl: json['smallImageUrl'] as String,
        weightUomId: json['weightUomId'] as String,
        isVirtual: json['isVirtual'] as String,
        geoPointId: json['geoPointId'] as String,
        widthUomId: json['widthUomId'] as String,
        longDescription: json['longDescription'] as String,
        autoCreateKeywords: json['autoCreateKeywords'] as String,
        amountUomTypeId: json['amountUomTypeId'] as String,
        description: json['description'] as String,
        aisleId: json['aisleId'] as String,
        internalName: json['internalName'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        reservMaxPersons: json['reservMaxPersons'] as double,
        oldQuantityOnHand: json['oldQuantityOnHand'] as double,
        fixedAmount: json['fixedAmount'] as double,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        productDepth: json['productDepth'] as double,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        releaseDate: check_dt(json['releaseDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        inventoryMessage: json['inventoryMessage'] as String,
        productTypeId: json['productTypeId'] as String,
        unitCost: json['unitCost'] as double,
        largeImageUrl: json['largeImageUrl'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        requirementMethodEnumId: json['requirementMethodEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemAndLocation overridesInventoryItemAndLocation(Map<String, dynamic> map) {
    return InventoryItemAndLocation(
        entityId: create_id_from('InventoryItemAndLocation', ['inventoryItemId'], map),
        originGeoId: map['originGeoId'],
        binNumber: map['binNumber'],
        mediumImageUrl: map['mediumImageUrl'],
        productName: map['productName'],
        originalImageUrl: map['originalImageUrl'],
        inShippingBox: map['inShippingBox'],
        supportDiscontinuationDate: map['supportDiscontinuationDate'],
        productWidth: map['productWidth'],
        partyId: map['partyId'],
        containerId: map['containerId'],
        productRating: map['productRating'],
        createdByUserLogin: map['createdByUserLogin'],
        locationSeqId: map['locationSeqId'],
        requireAmount: map['requireAmount'],
        productId: map['productId'],
        taxable: map['taxable'],
        primaryProductCategoryId: map['primaryProductCategoryId'],
        salesDiscontinuationDate: map['salesDiscontinuationDate'],
        uomId: map['uomId'],
        inventoryItemId: map['inventoryItemId'],
        salesDiscWhenNotAvail: map['salesDiscWhenNotAvail'],
        returnable: map['returnable'],
        statusId: map['statusId'],
        fixedAssetId: map['fixedAssetId'],
        priceDetailText: map['priceDetailText'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        diameterUomId: map['diameterUomId'],
        productDiameter: map['productDiameter'],
        softIdentifier: map['softIdentifier'],
        ratingTypeEnum: map['ratingTypeEnum'],
        chargeShipping: map['chargeShipping'],
        reservNthPPPerc: map['reservNthPPPerc'],
        quantityIncluded: map['quantityIncluded'],
        heightUomId: map['heightUomId'],
        virtualVariantMethodEnum: map['virtualVariantMethodEnum'],
        shippingWeight: map['shippingWeight'],
        shippingWidth: map['shippingWidth'],
        shippingDepth: map['shippingDepth'],
        datetimeManufactured: map['datetimeManufactured'],
        expireDate: map['expireDate'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        piecesIncluded: map['piecesIncluded'],
        productHeight: map['productHeight'],
        defaultShipmentBoxTypeId: map['defaultShipmentBoxTypeId'],
        orderDecimalQuantity: map['orderDecimalQuantity'],
        lotId: map['lotId'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        productWeight: map['productWeight'],
        depthUomId: map['depthUomId'],
        sectionId: map['sectionId'],
        ownerPartyId: map['ownerPartyId'],
        activationValidThru: map['activationValidThru'],
        activationNumber: map['activationNumber'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        areaId: map['areaId'],
        positionId: map['positionId'],
        isVariant: map['isVariant'],
        locationTypeEnumId: map['locationTypeEnumId'],
        detailScreen: map['detailScreen'],
        requireInventory: map['requireInventory'],
        quantityUomId: map['quantityUomId'],
        introductionDate: map['introductionDate'],
        shippingHeight: map['shippingHeight'],
        oldAvailableToPromise: map['oldAvailableToPromise'],
        detailImageUrl: map['detailImageUrl'],
        includeInPromotions: map['includeInPromotions'],
        configId: map['configId'],
        levelId: map['levelId'],
        billOfMaterialLevel: map['billOfMaterialLevel'],
        lotIdFilledIn: map['lotIdFilledIn'],
        brandName: map['brandName'],
        serialNumber: map['serialNumber'],
        smallImageUrl: map['smallImageUrl'],
        weightUomId: map['weightUomId'],
        isVirtual: map['isVirtual'],
        geoPointId: map['geoPointId'],
        widthUomId: map['widthUomId'],
        longDescription: map['longDescription'],
        autoCreateKeywords: map['autoCreateKeywords'],
        amountUomTypeId: map['amountUomTypeId'],
        description: map['description'],
        aisleId: map['aisleId'],
        internalName: map['internalName'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        reservMaxPersons: map['reservMaxPersons'],
        oldQuantityOnHand: map['oldQuantityOnHand'],
        fixedAmount: map['fixedAmount'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        productDepth: map['productDepth'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        releaseDate: map['releaseDate'],
        lastModifiedDate: map['lastModifiedDate'],
        inventoryMessage: map['inventoryMessage'],
        productTypeId: map['productTypeId'],
        unitCost: map['unitCost'],
        largeImageUrl: map['largeImageUrl'],
        datetimeReceived: map['datetimeReceived'],
        requirementMethodEnumId: map['requirementMethodEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemAttribute extractInventoryItemAttribute(dynamic json) {
    return InventoryItemAttribute(
        entityId: create_id_from('InventoryItemAttribute', ['inventoryItemId', 'attrName'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemAttribute overridesInventoryItemAttribute(Map<String, dynamic> map) {
    return InventoryItemAttribute(
        entityId: create_id_from('InventoryItemAttribute', ['inventoryItemId', 'attrName'], map),
        inventoryItemId: map['inventoryItemId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemDetail extractInventoryItemDetail(dynamic json) {
    return InventoryItemDetail(
        entityId: create_id_from('InventoryItemDetail', ['inventoryItemId', 'inventoryItemDetailSeqId'], json),
        workEffortId: json['workEffortId'] as String,
        orderId: json['orderId'] as String,
        description: json['description'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        inventoryItemDetailSeqId: json['inventoryItemDetailSeqId'] as String,
        accountingQuantityDiff: json['accountingQuantityDiff'] as double,
        physicalInventoryId: json['physicalInventoryId'] as String,
        itemIssuanceId: json['itemIssuanceId'] as String,
        returnId: json['returnId'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        receiptId: json['receiptId'] as String,
        quantityOnHandDiff: json['quantityOnHandDiff'] as double,
        orderItemSeqId: json['orderItemSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        availableToPromiseDiff: json['availableToPromiseDiff'] as double,
        shipmentId: json['shipmentId'] as String,
        unitCost: json['unitCost'] as double,
        returnItemSeqId: json['returnItemSeqId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemDetail overridesInventoryItemDetail(Map<String, dynamic> map) {
    return InventoryItemDetail(
        entityId: create_id_from('InventoryItemDetail', ['inventoryItemId', 'inventoryItemDetailSeqId'], map),
        workEffortId: map['workEffortId'],
        orderId: map['orderId'],
        description: map['description'],
        maintHistSeqId: map['maintHistSeqId'],
        inventoryItemDetailSeqId: map['inventoryItemDetailSeqId'],
        accountingQuantityDiff: map['accountingQuantityDiff'],
        physicalInventoryId: map['physicalInventoryId'],
        itemIssuanceId: map['itemIssuanceId'],
        returnId: map['returnId'],
        reasonEnumId: map['reasonEnumId'],
        receiptId: map['receiptId'],
        quantityOnHandDiff: map['quantityOnHandDiff'],
        orderItemSeqId: map['orderItemSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        shipGroupSeqId: map['shipGroupSeqId'],
        inventoryItemId: map['inventoryItemId'],
        availableToPromiseDiff: map['availableToPromiseDiff'],
        shipmentId: map['shipmentId'],
        unitCost: map['unitCost'],
        returnItemSeqId: map['returnItemSeqId'],
        fixedAssetId: map['fixedAssetId'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemDetailForSum extractInventoryItemDetailForSum(dynamic json) {
    return InventoryItemDetailForSum(
        entityId: create_id_from('InventoryItemDetailForSum', [], json),
        ownerPartyId: json['ownerPartyId'] as String,
        accountingQuantityDiff: json['accountingQuantityDiff'] as double,
        facilityId: json['facilityId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        unitCost: json['unitCost'] as double,
        quantityOnHandSum: json['quantityOnHandSum'] as double,
        accountingQuantitySum: json['accountingQuantitySum'] as double,
        effectiveDate: check_dt(json['effectiveDate']),
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        quantityOnHandDiff: json['quantityOnHandDiff'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemDetailForSum overridesInventoryItemDetailForSum(Map<String, dynamic> map) {
    return InventoryItemDetailForSum(
        entityId: create_id_from('InventoryItemDetailForSum', [], map),
        ownerPartyId: map['ownerPartyId'],
        accountingQuantityDiff: map['accountingQuantityDiff'],
        facilityId: map['facilityId'],
        currencyUomId: map['currencyUomId'],
        productId: map['productId'],
        orderId: map['orderId'],
        unitCost: map['unitCost'],
        quantityOnHandSum: map['quantityOnHandSum'],
        accountingQuantitySum: map['accountingQuantitySum'],
        effectiveDate: map['effectiveDate'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        quantityOnHandDiff: map['quantityOnHandDiff'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemDetailSummary extractInventoryItemDetailSummary(dynamic json) {
    return InventoryItemDetailSummary(
        entityId: create_id_from('InventoryItemDetailSummary', ['inventoryItemId'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        accountingQuantityTotal: json['accountingQuantityTotal'] as double,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemDetailSummary overridesInventoryItemDetailSummary(Map<String, dynamic> map) {
    return InventoryItemDetailSummary(
        entityId: create_id_from('InventoryItemDetailSummary', ['inventoryItemId'], map),
        inventoryItemId: map['inventoryItemId'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        accountingQuantityTotal: map['accountingQuantityTotal'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemLabel extractInventoryItemLabel(dynamic json) {
    return InventoryItemLabel(
        entityId: create_id_from('InventoryItemLabel', ['inventoryItemLabelId'], json),
        inventoryItemLabelId: json['inventoryItemLabelId'] as String,
        inventoryItemLabelTypeId: json['inventoryItemLabelTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemLabel overridesInventoryItemLabel(Map<String, dynamic> map) {
    return InventoryItemLabel(
        entityId: create_id_from('InventoryItemLabel', ['inventoryItemLabelId'], map),
        inventoryItemLabelId: map['inventoryItemLabelId'],
        inventoryItemLabelTypeId: map['inventoryItemLabelTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemLabelAppl extractInventoryItemLabelAppl(dynamic json) {
    return InventoryItemLabelAppl(
        entityId: create_id_from('InventoryItemLabelAppl', ['inventoryItemId', 'inventoryItemLabelTypeId'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        inventoryItemLabelId: json['inventoryItemLabelId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        inventoryItemLabelTypeId: json['inventoryItemLabelTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemLabelAppl overridesInventoryItemLabelAppl(Map<String, dynamic> map) {
    return InventoryItemLabelAppl(
        entityId: create_id_from('InventoryItemLabelAppl', ['inventoryItemId', 'inventoryItemLabelTypeId'], map),
        inventoryItemId: map['inventoryItemId'],
        inventoryItemLabelId: map['inventoryItemLabelId'],
        sequenceNum: map['sequenceNum'],
        inventoryItemLabelTypeId: map['inventoryItemLabelTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemLabelType extractInventoryItemLabelType(dynamic json) {
    return InventoryItemLabelType(
        entityId: create_id_from('InventoryItemLabelType', ['inventoryItemLabelTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        inventoryItemLabelTypeId: json['inventoryItemLabelTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemLabelType overridesInventoryItemLabelType(Map<String, dynamic> map) {
    return InventoryItemLabelType(
        entityId: create_id_from('InventoryItemLabelType', ['inventoryItemLabelTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        inventoryItemLabelTypeId: map['inventoryItemLabelTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemStatus extractInventoryItemStatus(dynamic json) {
    return InventoryItemStatus(
        entityId: create_id_from('InventoryItemStatus', ['inventoryItemId', 'statusId', 'statusDatetime'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        statusId: json['statusId'] as String,
        productId: json['productId'] as String,
        statusDatetime: check_dt(json['statusDatetime']),
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        statusEndDatetime: check_dt(json['statusEndDatetime']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemStatus overridesInventoryItemStatus(Map<String, dynamic> map) {
    return InventoryItemStatus(
        entityId: create_id_from('InventoryItemStatus', ['inventoryItemId', 'statusId', 'statusDatetime'], map),
        inventoryItemId: map['inventoryItemId'],
        ownerPartyId: map['ownerPartyId'],
        statusId: map['statusId'],
        productId: map['productId'],
        statusDatetime: map['statusDatetime'],
        changeByUserLoginId: map['changeByUserLoginId'],
        statusEndDatetime: map['statusEndDatetime'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemStatusForCount extractInventoryItemStatusForCount(dynamic json) {
    return InventoryItemStatusForCount(
        entityId: create_id_from('InventoryItemStatusForCount', ['inventoryItemId', 'statusId', 'statusDatetime'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        statusId: json['statusId'] as String,
        statusDatetime: check_dt(json['statusDatetime']),
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        statusEndDatetime: check_dt(json['statusEndDatetime']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemStatusForCount overridesInventoryItemStatusForCount(Map<String, dynamic> map) {
    return InventoryItemStatusForCount(
        entityId: create_id_from('InventoryItemStatusForCount', ['inventoryItemId', 'statusId', 'statusDatetime'], map),
        inventoryItemId: map['inventoryItemId'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        statusId: map['statusId'],
        statusDatetime: map['statusDatetime'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        statusEndDatetime: map['statusEndDatetime'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemTempRes extractInventoryItemTempRes(dynamic json) {
    return InventoryItemTempRes(
        entityId: create_id_from('InventoryItemTempRes', ['visitId', 'productId', 'productStoreId'], json),
        reservedDate: check_dt(json['reservedDate']),
        quantity: json['quantity'] as double,
        visitId: json['visitId'] as String,
        productId: json['productId'] as String,
        productStoreId: json['productStoreId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemTempRes overridesInventoryItemTempRes(Map<String, dynamic> map) {
    return InventoryItemTempRes(
        entityId: create_id_from('InventoryItemTempRes', ['visitId', 'productId', 'productStoreId'], map),
        reservedDate: map['reservedDate'],
        quantity: map['quantity'],
        visitId: map['visitId'],
        productId: map['productId'],
        productStoreId: map['productStoreId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemType extractInventoryItemType(dynamic json) {
    return InventoryItemType(
        entityId: create_id_from('InventoryItemType', ['inventoryItemTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemType overridesInventoryItemType(Map<String, dynamic> map) {
    return InventoryItemType(
        entityId: create_id_from('InventoryItemType', ['inventoryItemTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemTypeAttr extractInventoryItemTypeAttr(dynamic json) {
    return InventoryItemTypeAttr(
        entityId: create_id_from('InventoryItemTypeAttr', ['inventoryItemTypeId', 'attrName'], json),
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        inventoryItemTypeId: json['inventoryItemTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemTypeAttr overridesInventoryItemTypeAttr(Map<String, dynamic> map) {
    return InventoryItemTypeAttr(
        entityId: create_id_from('InventoryItemTypeAttr', ['inventoryItemTypeId', 'attrName'], map),
        description: map['description'],
        attrName: map['attrName'],
        inventoryItemTypeId: map['inventoryItemTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryItemVariance extractInventoryItemVariance(dynamic json) {
    return InventoryItemVariance(
        entityId: create_id_from('InventoryItemVariance', ['inventoryItemId', 'physicalInventoryId'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        varianceReasonId: json['varianceReasonId'] as String,
        physicalInventoryId: json['physicalInventoryId'] as String,
        comments: json['comments'] as String,
        quantityOnHandVar: json['quantityOnHandVar'] as double,
        availableToPromiseVar: json['availableToPromiseVar'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryItemVariance overridesInventoryItemVariance(Map<String, dynamic> map) {
    return InventoryItemVariance(
        entityId: create_id_from('InventoryItemVariance', ['inventoryItemId', 'physicalInventoryId'], map),
        inventoryItemId: map['inventoryItemId'],
        varianceReasonId: map['varianceReasonId'],
        physicalInventoryId: map['physicalInventoryId'],
        comments: map['comments'],
        quantityOnHandVar: map['quantityOnHandVar'],
        availableToPromiseVar: map['availableToPromiseVar'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static InventoryTransfer extractInventoryTransfer(dynamic json) {
    return InventoryTransfer(
        entityId: create_id_from('InventoryTransfer', ['inventoryTransferId'], json),
        containerIdTo: json['containerIdTo'] as String,
        facilityId: json['facilityId'] as String,
        comments: json['comments'] as String,
        sendDate: check_dt(json['sendDate']),
        receiveDate: check_dt(json['receiveDate']),
        facilityIdTo: json['facilityIdTo'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        inventoryTransferId: json['inventoryTransferId'] as String,
        statusId: json['statusId'] as String,
        itemIssuanceId: json['itemIssuanceId'] as String,
        containerId: json['containerId'] as String,
        locationSeqIdTo: json['locationSeqIdTo'] as String,
        locationSeqId: json['locationSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static InventoryTransfer overridesInventoryTransfer(Map<String, dynamic> map) {
    return InventoryTransfer(
        entityId: create_id_from('InventoryTransfer', ['inventoryTransferId'], map),
        containerIdTo: map['containerIdTo'],
        facilityId: map['facilityId'],
        comments: map['comments'],
        sendDate: map['sendDate'],
        receiveDate: map['receiveDate'],
        facilityIdTo: map['facilityIdTo'],
        inventoryItemId: map['inventoryItemId'],
        inventoryTransferId: map['inventoryTransferId'],
        statusId: map['statusId'],
        itemIssuanceId: map['itemIssuanceId'],
        containerId: map['containerId'],
        locationSeqIdTo: map['locationSeqIdTo'],
        locationSeqId: map['locationSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Lot extractLot(dynamic json) {
    return Lot(
        entityId: create_id_from('Lot', ['lotId'], json),
        quantity: json['quantity'] as double,
        lotId: json['lotId'] as String,
        creationDate: check_dt(json['creationDate']),
        expirationDate: check_dt(json['expirationDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Lot overridesLot(Map<String, dynamic> map) {
    return Lot(
        entityId: create_id_from('Lot', ['lotId'], map),
        quantity: map['quantity'],
        lotId: map['lotId'],
        creationDate: map['creationDate'],
        expirationDate: map['expirationDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PhysicalInventory extractPhysicalInventory(dynamic json) {
    return PhysicalInventory(
        entityId: create_id_from('PhysicalInventory', ['physicalInventoryId'], json),
        physicalInventoryId: json['physicalInventoryId'] as String,
        physicalInventoryDate: check_dt(json['physicalInventoryDate']),
        generalComments: json['generalComments'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PhysicalInventory overridesPhysicalInventory(Map<String, dynamic> map) {
    return PhysicalInventory(
        entityId: create_id_from('PhysicalInventory', ['physicalInventoryId'], map),
        physicalInventoryId: map['physicalInventoryId'],
        physicalInventoryDate: map['physicalInventoryDate'],
        generalComments: map['generalComments'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PhysicalInventoryAndVariance extractPhysicalInventoryAndVariance(dynamic json) {
    return PhysicalInventoryAndVariance(
        entityId: create_id_from('PhysicalInventoryAndVariance', ['physicalInventoryId', 'inventoryItemId'], json),
        inventoryItemId: json['inventoryItemId'] as String,
        varianceReasonId: json['varianceReasonId'] as String,
        physicalInventoryId: json['physicalInventoryId'] as String,
        physicalInventoryDate: check_dt(json['physicalInventoryDate']),
        comments: json['comments'] as String,
        quantityOnHandVar: json['quantityOnHandVar'] as double,
        generalComments: json['generalComments'] as String,
        partyId: json['partyId'] as String,
        availableToPromiseVar: json['availableToPromiseVar'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PhysicalInventoryAndVariance overridesPhysicalInventoryAndVariance(Map<String, dynamic> map) {
    return PhysicalInventoryAndVariance(
        entityId: create_id_from('PhysicalInventoryAndVariance', ['physicalInventoryId', 'inventoryItemId'], map),
        inventoryItemId: map['inventoryItemId'],
        varianceReasonId: map['varianceReasonId'],
        physicalInventoryId: map['physicalInventoryId'],
        physicalInventoryDate: map['physicalInventoryDate'],
        comments: map['comments'],
        quantityOnHandVar: map['quantityOnHandVar'],
        generalComments: map['generalComments'],
        partyId: map['partyId'],
        availableToPromiseVar: map['availableToPromiseVar'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VarianceReason extractVarianceReason(dynamic json) {
    return VarianceReason(
        entityId: create_id_from('VarianceReason', ['varianceReasonId'], json),
        varianceReasonId: json['varianceReasonId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VarianceReason overridesVarianceReason(Map<String, dynamic> map) {
    return VarianceReason(
        entityId: create_id_from('VarianceReason', ['varianceReasonId'], map),
        varianceReasonId: map['varianceReasonId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}