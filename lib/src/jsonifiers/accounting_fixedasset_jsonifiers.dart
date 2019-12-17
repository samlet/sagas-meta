import 'package:sagas_meta/src/models/accounting_fixedasset.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingFixedassetJsonifier{
  static AccommodationClass extractAccommodationClass(dynamic json) {
    return AccommodationClass(
        entityId: create_id_from('AccommodationClass', ['accommodationClassId'], json),
        parentClassId: json['parentClassId'] as String,
        description: json['description'] as String,
        accommodationClassId: json['accommodationClassId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AccommodationClass overridesAccommodationClass(Map<String, dynamic> map) {
    return AccommodationClass(
        entityId: create_id_from('AccommodationClass', ['accommodationClassId'], map),
        parentClassId: map['parentClassId'],
        description: map['description'],
        accommodationClassId: map['accommodationClassId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AccommodationMap extractAccommodationMap(dynamic json) {
    return AccommodationMap(
        entityId: create_id_from('AccommodationMap', ['accommodationMapId'], json),
        accommodationMapId: json['accommodationMapId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        numberOfSpaces: json['numberOfSpaces'] as int,
        accommodationClassId: json['accommodationClassId'] as String,
        accommodationMapTypeId: json['accommodationMapTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AccommodationMap overridesAccommodationMap(Map<String, dynamic> map) {
    return AccommodationMap(
        entityId: create_id_from('AccommodationMap', ['accommodationMapId'], map),
        accommodationMapId: map['accommodationMapId'],
        fixedAssetId: map['fixedAssetId'],
        numberOfSpaces: map['numberOfSpaces'],
        accommodationClassId: map['accommodationClassId'],
        accommodationMapTypeId: map['accommodationMapTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AccommodationMapType extractAccommodationMapType(dynamic json) {
    return AccommodationMapType(
        entityId: create_id_from('AccommodationMapType', ['accommodationMapTypeId'], json),
        description: json['description'] as String,
        accommodationMapTypeId: json['accommodationMapTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AccommodationMapType overridesAccommodationMapType(Map<String, dynamic> map) {
    return AccommodationMapType(
        entityId: create_id_from('AccommodationMapType', ['accommodationMapTypeId'], map),
        description: map['description'],
        accommodationMapTypeId: map['accommodationMapTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAsset extractFixedAsset(dynamic json) {
    return FixedAsset(
        entityId: create_id_from('FixedAsset', ['fixedAssetId'], json),
        dateNextService: check_dt(json['dateNextService']),
        purchaseCostUomId: json['purchaseCostUomId'] as String,
        productionCapacity: json['productionCapacity'] as double,
        acquireOrderId: json['acquireOrderId'] as String,
        locatedAtLocationSeqId: json['locatedAtLocationSeqId'] as String,
        actualEndOfLife: check_dt(json['actualEndOfLife']),
        dateLastServiced: check_dt(json['dateLastServiced']),
        acquireOrderItemSeqId: json['acquireOrderItemSeqId'] as String,
        partyId: json['partyId'] as String,
        locatedAtFacilityId: json['locatedAtFacilityId'] as String,
        depreciation: json['depreciation'] as double,
        roleTypeId: json['roleTypeId'] as String,
        dateAcquired: check_dt(json['dateAcquired']),
        purchaseCost: json['purchaseCost'] as double,
        serialNumber: json['serialNumber'] as String,
        fixedAssetTypeId: json['fixedAssetTypeId'] as String,
        classEnumId: json['classEnumId'] as String,
        fixedAssetName: json['fixedAssetName'] as String,
        uomId: json['uomId'] as String,
        calendarId: json['calendarId'] as String,
        salvageValue: json['salvageValue'] as double,
        fixedAssetId: json['fixedAssetId'] as String,
        parentFixedAssetId: json['parentFixedAssetId'] as String,
        expectedEndOfLife: check_dt(json['expectedEndOfLife']),
        instanceOfProductId: json['instanceOfProductId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAsset overridesFixedAsset(Map<String, dynamic> map) {
    return FixedAsset(
        entityId: create_id_from('FixedAsset', ['fixedAssetId'], map),
        dateNextService: map['dateNextService'],
        purchaseCostUomId: map['purchaseCostUomId'],
        productionCapacity: map['productionCapacity'],
        acquireOrderId: map['acquireOrderId'],
        locatedAtLocationSeqId: map['locatedAtLocationSeqId'],
        actualEndOfLife: map['actualEndOfLife'],
        dateLastServiced: map['dateLastServiced'],
        acquireOrderItemSeqId: map['acquireOrderItemSeqId'],
        partyId: map['partyId'],
        locatedAtFacilityId: map['locatedAtFacilityId'],
        depreciation: map['depreciation'],
        roleTypeId: map['roleTypeId'],
        dateAcquired: map['dateAcquired'],
        purchaseCost: map['purchaseCost'],
        serialNumber: map['serialNumber'],
        fixedAssetTypeId: map['fixedAssetTypeId'],
        classEnumId: map['classEnumId'],
        fixedAssetName: map['fixedAssetName'],
        uomId: map['uomId'],
        calendarId: map['calendarId'],
        salvageValue: map['salvageValue'],
        fixedAssetId: map['fixedAssetId'],
        parentFixedAssetId: map['parentFixedAssetId'],
        expectedEndOfLife: map['expectedEndOfLife'],
        instanceOfProductId: map['instanceOfProductId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetAndGeoPoint extractFixedAssetAndGeoPoint(dynamic json) {
    return FixedAssetAndGeoPoint(
        entityId: create_id_from('FixedAssetAndGeoPoint', ['fixedAssetId', 'fromDate', 'geoPointId'], json),
        fromDate: check_dt(json['fromDate']),
        elevation: json['elevation'] as double,
        dataSourceId: json['dataSourceId'] as String,
        elevationUomId: json['elevationUomId'] as String,
        geoPointTypeEnumId: json['geoPointTypeEnumId'] as String,
        latitude: json['latitude'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        description: json['description'] as String,
        information: json['information'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        longitude: json['longitude'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetAndGeoPoint overridesFixedAssetAndGeoPoint(Map<String, dynamic> map) {
    return FixedAssetAndGeoPoint(
        entityId: create_id_from('FixedAssetAndGeoPoint', ['fixedAssetId', 'fromDate', 'geoPointId'], map),
        fromDate: map['fromDate'],
        elevation: map['elevation'],
        dataSourceId: map['dataSourceId'],
        elevationUomId: map['elevationUomId'],
        geoPointTypeEnumId: map['geoPointTypeEnumId'],
        latitude: map['latitude'],
        fixedAssetId: map['fixedAssetId'],
        description: map['description'],
        information: map['information'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        longitude: map['longitude'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetAttribute extractFixedAssetAttribute(dynamic json) {
    return FixedAssetAttribute(
        entityId: create_id_from('FixedAssetAttribute', ['fixedAssetId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetAttribute overridesFixedAssetAttribute(Map<String, dynamic> map) {
    return FixedAssetAttribute(
        entityId: create_id_from('FixedAssetAttribute', ['fixedAssetId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        fixedAssetId: map['fixedAssetId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetDepMethod extractFixedAssetDepMethod(dynamic json) {
    return FixedAssetDepMethod(
        entityId: create_id_from('FixedAssetDepMethod', ['depreciationCustomMethodId', 'fixedAssetId'], json),
        fromDate: check_dt(json['fromDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        depreciationCustomMethodId: json['depreciationCustomMethodId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetDepMethod overridesFixedAssetDepMethod(Map<String, dynamic> map) {
    return FixedAssetDepMethod(
        entityId: create_id_from('FixedAssetDepMethod', ['depreciationCustomMethodId', 'fixedAssetId'], map),
        fromDate: map['fromDate'],
        fixedAssetId: map['fixedAssetId'],
        depreciationCustomMethodId: map['depreciationCustomMethodId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetGeoPoint extractFixedAssetGeoPoint(dynamic json) {
    return FixedAssetGeoPoint(
        entityId: create_id_from('FixedAssetGeoPoint', ['fixedAssetId', 'geoPointId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        geoPointId: json['geoPointId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetGeoPoint overridesFixedAssetGeoPoint(Map<String, dynamic> map) {
    return FixedAssetGeoPoint(
        entityId: create_id_from('FixedAssetGeoPoint', ['fixedAssetId', 'geoPointId', 'fromDate'], map),
        fromDate: map['fromDate'],
        fixedAssetId: map['fixedAssetId'],
        geoPointId: map['geoPointId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetIdent extractFixedAssetIdent(dynamic json) {
    return FixedAssetIdent(
        entityId: create_id_from('FixedAssetIdent', ['fixedAssetId', 'fixedAssetIdentTypeId'], json),
        fixedAssetId: json['fixedAssetId'] as String,
        idValue: json['idValue'] as String,
        fixedAssetIdentTypeId: json['fixedAssetIdentTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetIdent overridesFixedAssetIdent(Map<String, dynamic> map) {
    return FixedAssetIdent(
        entityId: create_id_from('FixedAssetIdent', ['fixedAssetId', 'fixedAssetIdentTypeId'], map),
        fixedAssetId: map['fixedAssetId'],
        idValue: map['idValue'],
        fixedAssetIdentTypeId: map['fixedAssetIdentTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetIdentType extractFixedAssetIdentType(dynamic json) {
    return FixedAssetIdentType(
        entityId: create_id_from('FixedAssetIdentType', ['fixedAssetIdentTypeId'], json),
        description: json['description'] as String,
        fixedAssetIdentTypeId: json['fixedAssetIdentTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetIdentType overridesFixedAssetIdentType(Map<String, dynamic> map) {
    return FixedAssetIdentType(
        entityId: create_id_from('FixedAssetIdentType', ['fixedAssetIdentTypeId'], map),
        description: map['description'],
        fixedAssetIdentTypeId: map['fixedAssetIdentTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetMaint extractFixedAssetMaint(dynamic json) {
    return FixedAssetMaint(
        entityId: create_id_from('FixedAssetMaint', ['fixedAssetId', 'maintHistSeqId'], json),
        scheduleWorkEffortId: json['scheduleWorkEffortId'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        productMaintTypeId: json['productMaintTypeId'] as String,
        intervalMeterTypeId: json['intervalMeterTypeId'] as String,
        productMaintSeqId: json['productMaintSeqId'] as String,
        intervalUomId: json['intervalUomId'] as String,
        statusId: json['statusId'] as String,
        purchaseOrderId: json['purchaseOrderId'] as String,
        intervalQuantity: json['intervalQuantity'] as double,
        fixedAssetId: json['fixedAssetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetMaint overridesFixedAssetMaint(Map<String, dynamic> map) {
    return FixedAssetMaint(
        entityId: create_id_from('FixedAssetMaint', ['fixedAssetId', 'maintHistSeqId'], map),
        scheduleWorkEffortId: map['scheduleWorkEffortId'],
        maintHistSeqId: map['maintHistSeqId'],
        productMaintTypeId: map['productMaintTypeId'],
        intervalMeterTypeId: map['intervalMeterTypeId'],
        productMaintSeqId: map['productMaintSeqId'],
        intervalUomId: map['intervalUomId'],
        statusId: map['statusId'],
        purchaseOrderId: map['purchaseOrderId'],
        intervalQuantity: map['intervalQuantity'],
        fixedAssetId: map['fixedAssetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetMaintOrder extractFixedAssetMaintOrder(dynamic json) {
    return FixedAssetMaintOrder(
        entityId: create_id_from('FixedAssetMaintOrder', ['fixedAssetId', 'maintHistSeqId', 'orderId', 'orderItemSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        orderId: json['orderId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetMaintOrder overridesFixedAssetMaintOrder(Map<String, dynamic> map) {
    return FixedAssetMaintOrder(
        entityId: create_id_from('FixedAssetMaintOrder', ['fixedAssetId', 'maintHistSeqId', 'orderId', 'orderItemSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        orderId: map['orderId'],
        fixedAssetId: map['fixedAssetId'],
        maintHistSeqId: map['maintHistSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetMaintWorkEffort extractFixedAssetMaintWorkEffort(dynamic json) {
    return FixedAssetMaintWorkEffort(
        entityId: create_id_from('FixedAssetMaintWorkEffort', ['fixedAssetId', 'maintHistSeqId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        workEffortTypeId: json['workEffortTypeId'] as String,
        reservPersons: json['reservPersons'] as double,
        revisionNumber: json['revisionNumber'] as int,
        scheduleWorkEffortId: json['scheduleWorkEffortId'] as String,
        acquireOrderId: json['acquireOrderId'] as String,
        locatedAtLocationSeqId: json['locatedAtLocationSeqId'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        tempExprId: json['tempExprId'] as String,
        actualEndOfLife: check_dt(json['actualEndOfLife']),
        dateLastServiced: check_dt(json['dateLastServiced']),
        acquireOrderItemSeqId: json['acquireOrderItemSeqId'] as String,
        intervalUomId: json['intervalUomId'] as String,
        showAsEnumId: json['showAsEnumId'] as String,
        infoUrl: json['infoUrl'] as String,
        universalId: json['universalId'] as String,
        locationDesc: json['locationDesc'] as String,
        partyId: json['partyId'] as String,
        locatedAtFacilityId: json['locatedAtFacilityId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        actualMilliSeconds: json['actualMilliSeconds'] as double,
        quantityToProduce: json['quantityToProduce'] as double,
        serialNumber: json['serialNumber'] as String,
        fixedAssetTypeId: json['fixedAssetTypeId'] as String,
        workEffortPurposeTypeId: json['workEffortPurposeTypeId'] as String,
        serviceLoaderName: json['serviceLoaderName'] as String,
        accommodationSpotId: json['accommodationSpotId'] as String,
        fixedAssetName: json['fixedAssetName'] as String,
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        uomId: json['uomId'] as String,
        productMaintTypeId: json['productMaintTypeId'] as String,
        sendNotificationEmail: json['sendNotificationEmail'] as String,
        noteId: json['noteId'] as String,
        quantityRejected: json['quantityRejected'] as double,
        intervalMeterTypeId: json['intervalMeterTypeId'] as String,
        priority: json['priority'] as int,
        currentStatusId: json['currentStatusId'] as String,
        runtimeDataId: json['runtimeDataId'] as String,
        estimatedMilliSeconds: json['estimatedMilliSeconds'] as double,
        specialTerms: json['specialTerms'] as String,
        statusId: json['statusId'] as String,
        purchaseOrderId: json['purchaseOrderId'] as String,
        timeTransparency: json['timeTransparency'] as int,
        salvageValue: json['salvageValue'] as double,
        intervalQuantity: json['intervalQuantity'] as double,
        actualCompletionDate: check_dt(json['actualCompletionDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        parentFixedAssetId: json['parentFixedAssetId'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        instanceOfProductId: json['instanceOfProductId'] as String,
        dateNextService: check_dt(json['dateNextService']),
        purchaseCostUomId: json['purchaseCostUomId'] as String,
        productionCapacity: json['productionCapacity'] as double,
        totalMoneyAllowed: json['totalMoneyAllowed'] as double,
        estimateCalcMethod: json['estimateCalcMethod'] as String,
        workEffortParentId: json['workEffortParentId'] as String,
        description: json['description'] as String,
        moneyUomId: json['moneyUomId'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        productMaintSeqId: json['productMaintSeqId'] as String,
        workEffortName: json['workEffortName'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        accommodationMapId: json['accommodationMapId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        scopeEnumId: json['scopeEnumId'] as String,
        quantityProduced: json['quantityProduced'] as double,
        depreciation: json['depreciation'] as double,
        roleTypeId: json['roleTypeId'] as String,
        dateAcquired: check_dt(json['dateAcquired']),
        purchaseCost: json['purchaseCost'] as double,
        facilityId: json['facilityId'] as String,
        estimatedSetupMillis: json['estimatedSetupMillis'] as double,
        classEnumId: json['classEnumId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        sourceReferenceId: json['sourceReferenceId'] as String,
        lastStatusUpdate: check_dt(json['lastStatusUpdate']),
        percentComplete: json['percentComplete'] as int,
        totalMilliSecondsAllowed: json['totalMilliSecondsAllowed'] as double,
        createdDate: check_dt(json['createdDate']),
        calendarId: json['calendarId'] as String,
        expectedEndOfLife: check_dt(json['expectedEndOfLife']),
        actualSetupMillis: json['actualSetupMillis'] as double,
        estimatedCompletionDate: check_dt(json['estimatedCompletionDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetMaintWorkEffort overridesFixedAssetMaintWorkEffort(Map<String, dynamic> map) {
    return FixedAssetMaintWorkEffort(
        entityId: create_id_from('FixedAssetMaintWorkEffort', ['fixedAssetId', 'maintHistSeqId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        workEffortTypeId: map['workEffortTypeId'],
        reservPersons: map['reservPersons'],
        revisionNumber: map['revisionNumber'],
        scheduleWorkEffortId: map['scheduleWorkEffortId'],
        acquireOrderId: map['acquireOrderId'],
        locatedAtLocationSeqId: map['locatedAtLocationSeqId'],
        maintHistSeqId: map['maintHistSeqId'],
        tempExprId: map['tempExprId'],
        actualEndOfLife: map['actualEndOfLife'],
        dateLastServiced: map['dateLastServiced'],
        acquireOrderItemSeqId: map['acquireOrderItemSeqId'],
        intervalUomId: map['intervalUomId'],
        showAsEnumId: map['showAsEnumId'],
        infoUrl: map['infoUrl'],
        universalId: map['universalId'],
        locationDesc: map['locationDesc'],
        partyId: map['partyId'],
        locatedAtFacilityId: map['locatedAtFacilityId'],
        createdByUserLogin: map['createdByUserLogin'],
        actualMilliSeconds: map['actualMilliSeconds'],
        quantityToProduce: map['quantityToProduce'],
        serialNumber: map['serialNumber'],
        fixedAssetTypeId: map['fixedAssetTypeId'],
        workEffortPurposeTypeId: map['workEffortPurposeTypeId'],
        serviceLoaderName: map['serviceLoaderName'],
        accommodationSpotId: map['accommodationSpotId'],
        fixedAssetName: map['fixedAssetName'],
        estimatedStartDate: map['estimatedStartDate'],
        uomId: map['uomId'],
        productMaintTypeId: map['productMaintTypeId'],
        sendNotificationEmail: map['sendNotificationEmail'],
        noteId: map['noteId'],
        quantityRejected: map['quantityRejected'],
        intervalMeterTypeId: map['intervalMeterTypeId'],
        priority: map['priority'],
        currentStatusId: map['currentStatusId'],
        runtimeDataId: map['runtimeDataId'],
        estimatedMilliSeconds: map['estimatedMilliSeconds'],
        specialTerms: map['specialTerms'],
        statusId: map['statusId'],
        purchaseOrderId: map['purchaseOrderId'],
        timeTransparency: map['timeTransparency'],
        salvageValue: map['salvageValue'],
        intervalQuantity: map['intervalQuantity'],
        actualCompletionDate: map['actualCompletionDate'],
        fixedAssetId: map['fixedAssetId'],
        parentFixedAssetId: map['parentFixedAssetId'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        instanceOfProductId: map['instanceOfProductId'],
        dateNextService: map['dateNextService'],
        purchaseCostUomId: map['purchaseCostUomId'],
        productionCapacity: map['productionCapacity'],
        totalMoneyAllowed: map['totalMoneyAllowed'],
        estimateCalcMethod: map['estimateCalcMethod'],
        workEffortParentId: map['workEffortParentId'],
        description: map['description'],
        moneyUomId: map['moneyUomId'],
        reservNthPPPerc: map['reservNthPPPerc'],
        productMaintSeqId: map['productMaintSeqId'],
        workEffortName: map['workEffortName'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        accommodationMapId: map['accommodationMapId'],
        actualStartDate: map['actualStartDate'],
        scopeEnumId: map['scopeEnumId'],
        quantityProduced: map['quantityProduced'],
        depreciation: map['depreciation'],
        roleTypeId: map['roleTypeId'],
        dateAcquired: map['dateAcquired'],
        purchaseCost: map['purchaseCost'],
        facilityId: map['facilityId'],
        estimatedSetupMillis: map['estimatedSetupMillis'],
        classEnumId: map['classEnumId'],
        lastModifiedDate: map['lastModifiedDate'],
        sourceReferenceId: map['sourceReferenceId'],
        lastStatusUpdate: map['lastStatusUpdate'],
        percentComplete: map['percentComplete'],
        totalMilliSecondsAllowed: map['totalMilliSecondsAllowed'],
        createdDate: map['createdDate'],
        calendarId: map['calendarId'],
        expectedEndOfLife: map['expectedEndOfLife'],
        actualSetupMillis: map['actualSetupMillis'],
        estimatedCompletionDate: map['estimatedCompletionDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetMeter extractFixedAssetMeter(dynamic json) {
    return FixedAssetMeter(
        entityId: create_id_from('FixedAssetMeter', ['fixedAssetId', 'productMeterTypeId', 'readingDate'], json),
        workEffortId: json['workEffortId'] as String,
        readingReasonEnumId: json['readingReasonEnumId'] as String,
        productMeterTypeId: json['productMeterTypeId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        maintHistSeqId: json['maintHistSeqId'] as String,
        meterValue: json['meterValue'] as double,
        readingDate: check_dt(json['readingDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetMeter overridesFixedAssetMeter(Map<String, dynamic> map) {
    return FixedAssetMeter(
        entityId: create_id_from('FixedAssetMeter', ['fixedAssetId', 'productMeterTypeId', 'readingDate'], map),
        workEffortId: map['workEffortId'],
        readingReasonEnumId: map['readingReasonEnumId'],
        productMeterTypeId: map['productMeterTypeId'],
        fixedAssetId: map['fixedAssetId'],
        maintHistSeqId: map['maintHistSeqId'],
        meterValue: map['meterValue'],
        readingDate: map['readingDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetProduct extractFixedAssetProduct(dynamic json) {
    return FixedAssetProduct(
        entityId: create_id_from('FixedAssetProduct', ['fixedAssetId', 'productId', 'fixedAssetProductTypeId', 'fromDate'], json),
        comments: json['comments'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        quantityUomId: json['quantityUomId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        fixedAssetProductTypeId: json['fixedAssetProductTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetProduct overridesFixedAssetProduct(Map<String, dynamic> map) {
    return FixedAssetProduct(
        entityId: create_id_from('FixedAssetProduct', ['fixedAssetId', 'productId', 'fixedAssetProductTypeId', 'fromDate'], map),
        comments: map['comments'],
        quantity: map['quantity'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        quantityUomId: map['quantityUomId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        fixedAssetId: map['fixedAssetId'],
        fixedAssetProductTypeId: map['fixedAssetProductTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetProductType extractFixedAssetProductType(dynamic json) {
    return FixedAssetProductType(
        entityId: create_id_from('FixedAssetProductType', ['fixedAssetProductTypeId'], json),
        fixedAssetProductTypeId: json['fixedAssetProductTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetProductType overridesFixedAssetProductType(Map<String, dynamic> map) {
    return FixedAssetProductType(
        entityId: create_id_from('FixedAssetProductType', ['fixedAssetProductTypeId'], map),
        fixedAssetProductTypeId: map['fixedAssetProductTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetRegistration extractFixedAssetRegistration(dynamic json) {
    return FixedAssetRegistration(
        entityId: create_id_from('FixedAssetRegistration', ['fixedAssetId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        registrationNumber: json['registrationNumber'] as String,
        registrationDate: check_dt(json['registrationDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        licenseNumber: json['licenseNumber'] as String,
        govAgencyPartyId: json['govAgencyPartyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetRegistration overridesFixedAssetRegistration(Map<String, dynamic> map) {
    return FixedAssetRegistration(
        entityId: create_id_from('FixedAssetRegistration', ['fixedAssetId', 'fromDate'], map),
        fromDate: map['fromDate'],
        registrationNumber: map['registrationNumber'],
        registrationDate: map['registrationDate'],
        fixedAssetId: map['fixedAssetId'],
        licenseNumber: map['licenseNumber'],
        govAgencyPartyId: map['govAgencyPartyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetStdCost extractFixedAssetStdCost(dynamic json) {
    return FixedAssetStdCost(
        entityId: create_id_from('FixedAssetStdCost', ['fixedAssetId', 'fixedAssetStdCostTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        amountUomId: json['amountUomId'] as String,
        amount: json['amount'] as double,
        fixedAssetStdCostTypeId: json['fixedAssetStdCostTypeId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetStdCost overridesFixedAssetStdCost(Map<String, dynamic> map) {
    return FixedAssetStdCost(
        entityId: create_id_from('FixedAssetStdCost', ['fixedAssetId', 'fixedAssetStdCostTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        amountUomId: map['amountUomId'],
        amount: map['amount'],
        fixedAssetStdCostTypeId: map['fixedAssetStdCostTypeId'],
        fixedAssetId: map['fixedAssetId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetStdCostType extractFixedAssetStdCostType(dynamic json) {
    return FixedAssetStdCostType(
        entityId: create_id_from('FixedAssetStdCostType', ['fixedAssetStdCostTypeId'], json),
        fixedAssetStdCostTypeId: json['fixedAssetStdCostTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetStdCostType overridesFixedAssetStdCostType(Map<String, dynamic> map) {
    return FixedAssetStdCostType(
        entityId: create_id_from('FixedAssetStdCostType', ['fixedAssetStdCostTypeId'], map),
        fixedAssetStdCostTypeId: map['fixedAssetStdCostTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetType extractFixedAssetType(dynamic json) {
    return FixedAssetType(
        entityId: create_id_from('FixedAssetType', ['fixedAssetTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        fixedAssetTypeId: json['fixedAssetTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetType overridesFixedAssetType(Map<String, dynamic> map) {
    return FixedAssetType(
        entityId: create_id_from('FixedAssetType', ['fixedAssetTypeId'], map),
        parentTypeId: map['parentTypeId'],
        fixedAssetTypeId: map['fixedAssetTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetTypeAttr extractFixedAssetTypeAttr(dynamic json) {
    return FixedAssetTypeAttr(
        entityId: create_id_from('FixedAssetTypeAttr', ['fixedAssetTypeId', 'attrName'], json),
        fixedAssetTypeId: json['fixedAssetTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetTypeAttr overridesFixedAssetTypeAttr(Map<String, dynamic> map) {
    return FixedAssetTypeAttr(
        entityId: create_id_from('FixedAssetTypeAttr', ['fixedAssetTypeId', 'attrName'], map),
        fixedAssetTypeId: map['fixedAssetTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FixedAssetTypeGlAccount extractFixedAssetTypeGlAccount(dynamic json) {
    return FixedAssetTypeGlAccount(
        entityId: create_id_from('FixedAssetTypeGlAccount', ['fixedAssetTypeId', 'fixedAssetId', 'organizationPartyId'], json),
        fixedAssetTypeId: json['fixedAssetTypeId'] as String,
        depGlAccountId: json['depGlAccountId'] as String,
        profitGlAccountId: json['profitGlAccountId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lossGlAccountId: json['lossGlAccountId'] as String,
        accDepGlAccountId: json['accDepGlAccountId'] as String,
        assetGlAccountId: json['assetGlAccountId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FixedAssetTypeGlAccount overridesFixedAssetTypeGlAccount(Map<String, dynamic> map) {
    return FixedAssetTypeGlAccount(
        entityId: create_id_from('FixedAssetTypeGlAccount', ['fixedAssetTypeId', 'fixedAssetId', 'organizationPartyId'], map),
        fixedAssetTypeId: map['fixedAssetTypeId'],
        depGlAccountId: map['depGlAccountId'],
        profitGlAccountId: map['profitGlAccountId'],
        fixedAssetId: map['fixedAssetId'],
        organizationPartyId: map['organizationPartyId'],
        lossGlAccountId: map['lossGlAccountId'],
        accDepGlAccountId: map['accDepGlAccountId'],
        assetGlAccountId: map['assetGlAccountId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyFixedAssetAssignAndRole extractPartyFixedAssetAssignAndRole(dynamic json) {
    return PartyFixedAssetAssignAndRole(
        entityId: create_id_from('PartyFixedAssetAssignAndRole', ['fromDate', 'roleTypeId', 'fixedAssetId', 'partyId'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        parentTypeId: json['parentTypeId'] as String,
        allocatedDate: check_dt(json['allocatedDate']),
        statusId: json['statusId'] as String,
        hasTable: json['hasTable'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        description: json['description'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyFixedAssetAssignAndRole overridesPartyFixedAssetAssignAndRole(Map<String, dynamic> map) {
    return PartyFixedAssetAssignAndRole(
        entityId: create_id_from('PartyFixedAssetAssignAndRole', ['fromDate', 'roleTypeId', 'fixedAssetId', 'partyId'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        parentTypeId: map['parentTypeId'],
        allocatedDate: map['allocatedDate'],
        statusId: map['statusId'],
        hasTable: map['hasTable'],
        fixedAssetId: map['fixedAssetId'],
        description: map['description'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyFixedAssetAssignment extractPartyFixedAssetAssignment(dynamic json) {
    return PartyFixedAssetAssignment(
        entityId: create_id_from('PartyFixedAssetAssignment', ['partyId', 'roleTypeId', 'fixedAssetId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        allocatedDate: check_dt(json['allocatedDate']),
        statusId: json['statusId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyFixedAssetAssignment overridesPartyFixedAssetAssignment(Map<String, dynamic> map) {
    return PartyFixedAssetAssignment(
        entityId: create_id_from('PartyFixedAssetAssignment', ['partyId', 'roleTypeId', 'fixedAssetId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        allocatedDate: map['allocatedDate'],
        statusId: map['statusId'],
        fixedAssetId: map['fixedAssetId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}