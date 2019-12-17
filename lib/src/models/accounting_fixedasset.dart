import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AccommodationClass, Accommodation Class
class AccommodationClass extends EntityBase {

  /// this entity has only one pk
  final String parentClassId;
  final String description;
  final String accommodationClassId; // pk
  AccommodationClass({entityId,
    this.parentClassId, this.description, @required this.accommodationClassId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AccommodationClass { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentClassId':parentClassId, 'description':description, 'accommodationClassId':accommodationClassId};
  }

}

/// Entity AccommodationMap, Accommodation Map
class AccommodationMap extends EntityBase {

  /// this entity has only one pk
  final String accommodationMapId; // pk
  final String fixedAssetId;
  final int numberOfSpaces;
  final String accommodationClassId;
  final String accommodationMapTypeId;
  AccommodationMap({entityId,
    @required this.accommodationMapId, this.fixedAssetId, this.numberOfSpaces, this.accommodationClassId, this.accommodationMapTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AccommodationMap { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'accommodationMapId':accommodationMapId, 'fixedAssetId':fixedAssetId, 'numberOfSpaces':numberOfSpaces, 'accommodationClassId':accommodationClassId, 'accommodationMapTypeId':accommodationMapTypeId};
  }

}

/// Entity AccommodationMapType, Accommodation Map Type
class AccommodationMapType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String accommodationMapTypeId; // pk
  AccommodationMapType({entityId,
    this.description, @required this.accommodationMapTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AccommodationMapType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'accommodationMapTypeId':accommodationMapTypeId};
  }

}

/// Entity FixedAsset, Fixed Asset
class FixedAsset extends EntityBase {

  /// this entity has only one pk
  final DateTime dateNextService;
  final String purchaseCostUomId;
  final double productionCapacity;
  final String acquireOrderId;
  final String locatedAtLocationSeqId;
  final DateTime actualEndOfLife;
  final DateTime dateLastServiced;
  final String acquireOrderItemSeqId;
  final String partyId;
  final String locatedAtFacilityId;
  final double depreciation;
  final String roleTypeId;
  final DateTime dateAcquired;
  final double purchaseCost;
  final String serialNumber;
  final String fixedAssetTypeId;
  final String classEnumId;
  final String fixedAssetName;
  final String uomId;
  final String calendarId;
  final double salvageValue;
  final String fixedAssetId; // pk
  final String parentFixedAssetId;
  final DateTime expectedEndOfLife;
  final String instanceOfProductId;
  FixedAsset({entityId,
    this.dateNextService, this.purchaseCostUomId, this.productionCapacity, this.acquireOrderId, this.locatedAtLocationSeqId, this.actualEndOfLife, this.dateLastServiced, this.acquireOrderItemSeqId, this.partyId, this.locatedAtFacilityId, this.depreciation, this.roleTypeId, this.dateAcquired, this.purchaseCost, this.serialNumber, this.fixedAssetTypeId, this.classEnumId, this.fixedAssetName, this.uomId, this.calendarId, this.salvageValue, @required this.fixedAssetId, this.parentFixedAssetId, this.expectedEndOfLife, this.instanceOfProductId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAsset { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dateNextService':dateNextService, 'purchaseCostUomId':purchaseCostUomId, 'productionCapacity':productionCapacity, 'acquireOrderId':acquireOrderId, 'locatedAtLocationSeqId':locatedAtLocationSeqId, 'actualEndOfLife':actualEndOfLife, 'dateLastServiced':dateLastServiced, 'acquireOrderItemSeqId':acquireOrderItemSeqId, 'partyId':partyId, 'locatedAtFacilityId':locatedAtFacilityId, 'depreciation':depreciation, 'roleTypeId':roleTypeId, 'dateAcquired':dateAcquired, 'purchaseCost':purchaseCost, 'serialNumber':serialNumber, 'fixedAssetTypeId':fixedAssetTypeId, 'classEnumId':classEnumId, 'fixedAssetName':fixedAssetName, 'uomId':uomId, 'calendarId':calendarId, 'salvageValue':salvageValue, 'fixedAssetId':fixedAssetId, 'parentFixedAssetId':parentFixedAssetId, 'expectedEndOfLife':expectedEndOfLife, 'instanceOfProductId':instanceOfProductId};
  }

}

/// Entity FixedAssetAndGeoPoint, Fixed Asset and Geo Point View
class FixedAssetAndGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final double elevation;
  final String dataSourceId;
  final String elevationUomId;
  final String geoPointTypeEnumId;
  final String latitude;
  final String fixedAssetId; // pk
  final String description;
  final String information;
  final String geoPointId; // pk
  final DateTime thruDate;
  final String longitude;
  FixedAssetAndGeoPoint({entityId,
    @required this.fromDate, this.elevation, this.dataSourceId, this.elevationUomId, this.geoPointTypeEnumId, this.latitude, @required this.fixedAssetId, this.description, this.information, @required this.geoPointId, this.thruDate, this.longitude,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetAndGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'elevation':elevation, 'dataSourceId':dataSourceId, 'elevationUomId':elevationUomId, 'geoPointTypeEnumId':geoPointTypeEnumId, 'latitude':latitude, 'fixedAssetId':fixedAssetId, 'description':description, 'information':information, 'geoPointId':geoPointId, 'thruDate':thruDate, 'longitude':longitude};
  }

}

/// Entity FixedAssetAttribute, Fixed Asset Attribute
class FixedAssetAttribute extends EntityBase {

  final String attrDescription;
  final String fixedAssetId; // pk
  final String attrValue;
  final String attrName; // pk
  FixedAssetAttribute({entityId,
    this.attrDescription, @required this.fixedAssetId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'fixedAssetId':fixedAssetId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity FixedAssetDepMethod, Fixed Asset Depreciation Method
class FixedAssetDepMethod extends EntityBase {

  final DateTime fromDate;
  final String fixedAssetId; // pk
  final String depreciationCustomMethodId; // pk
  final DateTime thruDate;
  FixedAssetDepMethod({entityId,
    this.fromDate, @required this.fixedAssetId, @required this.depreciationCustomMethodId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetDepMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'fixedAssetId':fixedAssetId, 'depreciationCustomMethodId':depreciationCustomMethodId, 'thruDate':thruDate};
  }

}

/// Entity FixedAssetGeoPoint, Fixed Asset Geo Location with history
class FixedAssetGeoPoint extends EntityBase {

  final DateTime fromDate; // pk
  final String fixedAssetId; // pk
  final String geoPointId; // pk
  final DateTime thruDate;
  FixedAssetGeoPoint({entityId,
    @required this.fromDate, @required this.fixedAssetId, @required this.geoPointId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetGeoPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'fixedAssetId':fixedAssetId, 'geoPointId':geoPointId, 'thruDate':thruDate};
  }

}

/// Entity FixedAssetIdent, Fixed Asset Identification
class FixedAssetIdent extends EntityBase {

  final String fixedAssetId; // pk
  final String idValue;
  final String fixedAssetIdentTypeId; // pk
  FixedAssetIdent({entityId,
    @required this.fixedAssetId, this.idValue, @required this.fixedAssetIdentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetIdent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedAssetId':fixedAssetId, 'idValue':idValue, 'fixedAssetIdentTypeId':fixedAssetIdentTypeId};
  }

}

/// Entity FixedAssetIdentType, Fixed Asset Identification Type
class FixedAssetIdentType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String fixedAssetIdentTypeId; // pk
  FixedAssetIdentType({entityId,
    this.description, @required this.fixedAssetIdentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetIdentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'fixedAssetIdentTypeId':fixedAssetIdentTypeId};
  }

}

/// Entity FixedAssetMaint, Fixed Asset Maintenance
class FixedAssetMaint extends EntityBase {

  final String scheduleWorkEffortId;
  final String maintHistSeqId; // pk
  final String productMaintTypeId;
  final String intervalMeterTypeId;
  final String productMaintSeqId;
  final String intervalUomId;
  final String statusId;
  final String purchaseOrderId;
  final double intervalQuantity;
  final String fixedAssetId; // pk
  FixedAssetMaint({entityId,
    this.scheduleWorkEffortId, @required this.maintHistSeqId, this.productMaintTypeId, this.intervalMeterTypeId, this.productMaintSeqId, this.intervalUomId, this.statusId, this.purchaseOrderId, this.intervalQuantity, @required this.fixedAssetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetMaint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'scheduleWorkEffortId':scheduleWorkEffortId, 'maintHistSeqId':maintHistSeqId, 'productMaintTypeId':productMaintTypeId, 'intervalMeterTypeId':intervalMeterTypeId, 'productMaintSeqId':productMaintSeqId, 'intervalUomId':intervalUomId, 'statusId':statusId, 'purchaseOrderId':purchaseOrderId, 'intervalQuantity':intervalQuantity, 'fixedAssetId':fixedAssetId};
  }

}

/// Entity FixedAssetMaintOrder, Fixed Asset Maintance And Order
class FixedAssetMaintOrder extends EntityBase {

  final String orderItemSeqId; // pk
  final String orderId; // pk
  final String fixedAssetId; // pk
  final String maintHistSeqId; // pk
  FixedAssetMaintOrder({entityId,
    @required this.orderItemSeqId, @required this.orderId, @required this.fixedAssetId, @required this.maintHistSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetMaintOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderId':orderId, 'fixedAssetId':fixedAssetId, 'maintHistSeqId':maintHistSeqId};
  }

}

/// Entity FixedAssetMaintWorkEffort, FixedAssetMaint and WorkEffort View
class FixedAssetMaintWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String scheduleWorkEffortId;
  final String acquireOrderId;
  final String locatedAtLocationSeqId;
  final String maintHistSeqId; // pk
  final String tempExprId;
  final DateTime actualEndOfLife;
  final DateTime dateLastServiced;
  final String acquireOrderItemSeqId;
  final String intervalUomId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId;
  final String locatedAtFacilityId;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String serialNumber;
  final String fixedAssetTypeId;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final String fixedAssetName;
  final DateTime estimatedStartDate;
  final String uomId;
  final String productMaintTypeId;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final String intervalMeterTypeId;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final String statusId;
  final String purchaseOrderId;
  final int timeTransparency;
  final double salvageValue;
  final double intervalQuantity;
  final DateTime actualCompletionDate;
  final String fixedAssetId; // pk
  final String parentFixedAssetId;
  final double reserv2ndPPPerc;
  final String instanceOfProductId;
  final DateTime dateNextService;
  final String purchaseCostUomId;
  final double productionCapacity;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String productMaintSeqId;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final double depreciation;
  final String roleTypeId;
  final DateTime dateAcquired;
  final double purchaseCost;
  final String facilityId;
  final double estimatedSetupMillis;
  final String classEnumId;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String calendarId;
  final DateTime expectedEndOfLife;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  FixedAssetMaintWorkEffort({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.scheduleWorkEffortId, this.acquireOrderId, this.locatedAtLocationSeqId, @required this.maintHistSeqId, this.tempExprId, this.actualEndOfLife, this.dateLastServiced, this.acquireOrderItemSeqId, this.intervalUomId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.partyId, this.locatedAtFacilityId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.serialNumber, this.fixedAssetTypeId, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.fixedAssetName, this.estimatedStartDate, this.uomId, this.productMaintTypeId, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.intervalMeterTypeId, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.statusId, this.purchaseOrderId, this.timeTransparency, this.salvageValue, this.intervalQuantity, this.actualCompletionDate, @required this.fixedAssetId, this.parentFixedAssetId, this.reserv2ndPPPerc, this.instanceOfProductId, this.dateNextService, this.purchaseCostUomId, this.productionCapacity, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.productMaintSeqId, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.depreciation, this.roleTypeId, this.dateAcquired, this.purchaseCost, this.facilityId, this.estimatedSetupMillis, this.classEnumId, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.calendarId, this.expectedEndOfLife, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetMaintWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'scheduleWorkEffortId':scheduleWorkEffortId, 'acquireOrderId':acquireOrderId, 'locatedAtLocationSeqId':locatedAtLocationSeqId, 'maintHistSeqId':maintHistSeqId, 'tempExprId':tempExprId, 'actualEndOfLife':actualEndOfLife, 'dateLastServiced':dateLastServiced, 'acquireOrderItemSeqId':acquireOrderItemSeqId, 'intervalUomId':intervalUomId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'locatedAtFacilityId':locatedAtFacilityId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'serialNumber':serialNumber, 'fixedAssetTypeId':fixedAssetTypeId, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'fixedAssetName':fixedAssetName, 'estimatedStartDate':estimatedStartDate, 'uomId':uomId, 'productMaintTypeId':productMaintTypeId, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'intervalMeterTypeId':intervalMeterTypeId, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'statusId':statusId, 'purchaseOrderId':purchaseOrderId, 'timeTransparency':timeTransparency, 'salvageValue':salvageValue, 'intervalQuantity':intervalQuantity, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'parentFixedAssetId':parentFixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'instanceOfProductId':instanceOfProductId, 'dateNextService':dateNextService, 'purchaseCostUomId':purchaseCostUomId, 'productionCapacity':productionCapacity, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'productMaintSeqId':productMaintSeqId, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'depreciation':depreciation, 'roleTypeId':roleTypeId, 'dateAcquired':dateAcquired, 'purchaseCost':purchaseCost, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'classEnumId':classEnumId, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'calendarId':calendarId, 'expectedEndOfLife':expectedEndOfLife, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity FixedAssetMeter, Fixed Asset Meter
class FixedAssetMeter extends EntityBase {

  final String workEffortId;
  final String readingReasonEnumId;
  final String productMeterTypeId; // pk
  final String fixedAssetId; // pk
  final String maintHistSeqId;
  final double meterValue;
  final DateTime readingDate; // pk
  FixedAssetMeter({entityId,
    this.workEffortId, this.readingReasonEnumId, @required this.productMeterTypeId, @required this.fixedAssetId, this.maintHistSeqId, this.meterValue, @required this.readingDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetMeter { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'readingReasonEnumId':readingReasonEnumId, 'productMeterTypeId':productMeterTypeId, 'fixedAssetId':fixedAssetId, 'maintHistSeqId':maintHistSeqId, 'meterValue':meterValue, 'readingDate':readingDate};
  }

}

/// Entity FixedAssetProduct, Fixed Asset Product Representation
class FixedAssetProduct extends EntityBase {

  final String comments;
  final double quantity;
  final String productId; // pk
  final int sequenceNum;
  final String quantityUomId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String fixedAssetId; // pk
  final String fixedAssetProductTypeId; // pk
  FixedAssetProduct({entityId,
    this.comments, this.quantity, @required this.productId, this.sequenceNum, this.quantityUomId, this.thruDate, @required this.fromDate, @required this.fixedAssetId, @required this.fixedAssetProductTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'quantity':quantity, 'productId':productId, 'sequenceNum':sequenceNum, 'quantityUomId':quantityUomId, 'thruDate':thruDate, 'fromDate':fromDate, 'fixedAssetId':fixedAssetId, 'fixedAssetProductTypeId':fixedAssetProductTypeId};
  }

}

/// Entity FixedAssetProductType, Fixed Asset Product Type
class FixedAssetProductType extends EntityBase {

  /// this entity has only one pk
  final String fixedAssetProductTypeId; // pk
  final String description;
  FixedAssetProductType({entityId,
    @required this.fixedAssetProductTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetProductType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedAssetProductTypeId':fixedAssetProductTypeId, 'description':description};
  }

}

/// Entity FixedAssetRegistration, Fixed Asset Registration
class FixedAssetRegistration extends EntityBase {

  final DateTime fromDate; // pk
  final String registrationNumber;
  final DateTime registrationDate;
  final String fixedAssetId; // pk
  final String licenseNumber;
  final String govAgencyPartyId;
  final DateTime thruDate;
  FixedAssetRegistration({entityId,
    @required this.fromDate, this.registrationNumber, this.registrationDate, @required this.fixedAssetId, this.licenseNumber, this.govAgencyPartyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetRegistration { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'registrationNumber':registrationNumber, 'registrationDate':registrationDate, 'fixedAssetId':fixedAssetId, 'licenseNumber':licenseNumber, 'govAgencyPartyId':govAgencyPartyId, 'thruDate':thruDate};
  }

}

/// Entity FixedAssetStdCost, Fixed Asset Standard Cost
class FixedAssetStdCost extends EntityBase {

  final DateTime fromDate; // pk
  final String amountUomId;
  final double amount;
  final String fixedAssetStdCostTypeId; // pk
  final String fixedAssetId; // pk
  final DateTime thruDate;
  FixedAssetStdCost({entityId,
    @required this.fromDate, this.amountUomId, this.amount, @required this.fixedAssetStdCostTypeId, @required this.fixedAssetId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetStdCost { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'amountUomId':amountUomId, 'amount':amount, 'fixedAssetStdCostTypeId':fixedAssetStdCostTypeId, 'fixedAssetId':fixedAssetId, 'thruDate':thruDate};
  }

}

/// Entity FixedAssetStdCostType, Fixed Asset Standard Cost Type
class FixedAssetStdCostType extends EntityBase {

  /// this entity has only one pk
  final String fixedAssetStdCostTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  FixedAssetStdCostType({entityId,
    @required this.fixedAssetStdCostTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetStdCostType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedAssetStdCostTypeId':fixedAssetStdCostTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity FixedAssetType, Fixed Asset Type
class FixedAssetType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String fixedAssetTypeId; // pk
  final String hasTable;
  final String description;
  FixedAssetType({entityId,
    this.parentTypeId, @required this.fixedAssetTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'fixedAssetTypeId':fixedAssetTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity FixedAssetTypeAttr, Fixed Asset Type Attribute
class FixedAssetTypeAttr extends EntityBase {

  final String fixedAssetTypeId; // pk
  final String description;
  final String attrName; // pk
  FixedAssetTypeAttr({entityId,
    @required this.fixedAssetTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedAssetTypeId':fixedAssetTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity FixedAssetTypeGlAccount, Gl Account Mapping For Fixed Asset Or Fixed Asset Types
class FixedAssetTypeGlAccount extends EntityBase {

  final String fixedAssetTypeId; // pk
  final String depGlAccountId;
  final String profitGlAccountId;
  final String fixedAssetId; // pk
  final String organizationPartyId; // pk
  final String lossGlAccountId;
  final String accDepGlAccountId;
  final String assetGlAccountId;
  FixedAssetTypeGlAccount({entityId,
    @required this.fixedAssetTypeId, this.depGlAccountId, this.profitGlAccountId, @required this.fixedAssetId, @required this.organizationPartyId, this.lossGlAccountId, this.accDepGlAccountId, this.assetGlAccountId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FixedAssetTypeGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedAssetTypeId':fixedAssetTypeId, 'depGlAccountId':depGlAccountId, 'profitGlAccountId':profitGlAccountId, 'fixedAssetId':fixedAssetId, 'organizationPartyId':organizationPartyId, 'lossGlAccountId':lossGlAccountId, 'accDepGlAccountId':accDepGlAccountId, 'assetGlAccountId':assetGlAccountId};
  }

}

/// Entity PartyFixedAssetAssignAndRole, PartyFixedAssetAssignment and RoleType View
class PartyFixedAssetAssignAndRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String comments;
  final String parentTypeId;
  final DateTime allocatedDate;
  final String statusId;
  final String hasTable;
  final String fixedAssetId; // pk
  final String description;
  final String partyId; // pk
  final DateTime thruDate;
  PartyFixedAssetAssignAndRole({entityId,
    @required this.fromDate, @required this.roleTypeId, this.comments, this.parentTypeId, this.allocatedDate, this.statusId, this.hasTable, @required this.fixedAssetId, this.description, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyFixedAssetAssignAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'comments':comments, 'parentTypeId':parentTypeId, 'allocatedDate':allocatedDate, 'statusId':statusId, 'hasTable':hasTable, 'fixedAssetId':fixedAssetId, 'description':description, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PartyFixedAssetAssignment, Party Fixed Asset Assignment
class PartyFixedAssetAssignment extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String comments;
  final DateTime allocatedDate;
  final String statusId;
  final String fixedAssetId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  PartyFixedAssetAssignment({entityId,
    @required this.fromDate, @required this.roleTypeId, this.comments, this.allocatedDate, this.statusId, @required this.fixedAssetId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyFixedAssetAssignment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'comments':comments, 'allocatedDate':allocatedDate, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'partyId':partyId, 'thruDate':thruDate};
  }

}