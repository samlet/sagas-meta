import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ApplicationSandbox, WorkEffort Application Sandbox
class ApplicationSandbox extends EntityBase {

  /// this entity has only one pk
  final String workEffortId;
  final DateTime fromDate;
  final String roleTypeId;
  final String applicationId; // pk
  final String partyId;
  final String runtimeDataId;
  ApplicationSandbox({entityId,
    this.workEffortId, this.fromDate, this.roleTypeId, @required this.applicationId, this.partyId, this.runtimeDataId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ApplicationSandbox { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'roleTypeId':roleTypeId, 'applicationId':applicationId, 'partyId':partyId, 'runtimeDataId':runtimeDataId};
  }

}

/// Entity CommunicationEventWorkEff, Communication Event Work Effort
class CommunicationEventWorkEff extends EntityBase {

  final String workEffortId; // pk
  final String communicationEventId; // pk
  final String description;
  CommunicationEventWorkEff({entityId,
    @required this.workEffortId, @required this.communicationEventId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventWorkEff { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'communicationEventId':communicationEventId, 'description':description};
  }

}

/// Entity Deliverable, Deliverable
class Deliverable extends EntityBase {

  /// this entity has only one pk
  final String deliverableName;
  final String deliverableTypeId;
  final String description;
  final String deliverableId; // pk
  Deliverable({entityId,
    this.deliverableName, this.deliverableTypeId, this.description, @required this.deliverableId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Deliverable { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'deliverableName':deliverableName, 'deliverableTypeId':deliverableTypeId, 'description':description, 'deliverableId':deliverableId};
  }

}

/// Entity DeliverableType, Deliverable Type
class DeliverableType extends EntityBase {

  /// this entity has only one pk
  final String deliverableTypeId; // pk
  final String description;
  DeliverableType({entityId,
    @required this.deliverableTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DeliverableType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'deliverableTypeId':deliverableTypeId, 'description':description};
  }

}

/// Entity WorkEffort, Work Effort
class WorkEffort extends EntityBase {

  /// this entity has only one pk
  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffort({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndChild, WorkEffort for use in tree relationships
class WorkEffortAndChild extends EntityBase {

  final String workEffortId; // pk
  final String childWorkEffortId; // pk
  final String workEffortTypeId;
  final String childWorkEffortTypeId;
  final String workEffortParentId;
  final String childWorkEffortName;
  final String currentStatusId;
  final String workEffortName;
  final String childCurrentStatusId;
  WorkEffortAndChild({entityId,
    @required this.workEffortId, @required this.childWorkEffortId, this.workEffortTypeId, this.childWorkEffortTypeId, this.workEffortParentId, this.childWorkEffortName, this.currentStatusId, this.workEffortName, this.childCurrentStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndChild { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'childWorkEffortId':childWorkEffortId, 'workEffortTypeId':workEffortTypeId, 'childWorkEffortTypeId':childWorkEffortTypeId, 'workEffortParentId':workEffortParentId, 'childWorkEffortName':childWorkEffortName, 'currentStatusId':currentStatusId, 'workEffortName':workEffortName, 'childCurrentStatusId':childCurrentStatusId};
  }

}

/// Entity WorkEffortAndContentDataResource, WorkEffort and Content and DataResource View Entity
class WorkEffortAndContentDataResource extends EntityBase {

  final String workEffortId; // pk
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String workEffortContentTypeId; // pk
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  WorkEffortAndContentDataResource({entityId,
    @required this.workEffortId, @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, @required this.workEffortContentTypeId, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndContentDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'workEffortContentTypeId':workEffortContentTypeId, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity WorkEffortAndFixedAssetAssign, Work Effort And Fixed Asset Assignment View Entity
class WorkEffortAndFixedAssetAssign extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String acquireOrderId;
  final String locatedAtLocationSeqId;
  final String tempExprId;
  final DateTime actualEndOfLife;
  final DateTime dateLastServiced;
  final String acquireOrderItemSeqId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId;
  final String createdByUserLogin;
  final String locatedAtFacilityId;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String serialNumber;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final String fixedAssetTypeId;
  final DateTime estimatedStartDate;
  final String fixedAssetName;
  final String sendNotificationEmail;
  final String noteId;
  final String uomId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final DateTime thruDate;
  final double estimatedMilliSeconds;
  final DateTime fromDate; // pk
  final String specialTerms;
  final String statusId;
  final double allocatedCost;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final double salvageValue;
  final String fixedAssetId; // pk
  final String parentFixedAssetId;
  final double reserv2ndPPPerc;
  final String instanceOfProductId;
  final DateTime dateNextService;
  final String purchaseCostUomId;
  final double totalMoneyAllowed;
  final double productionCapacity;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String availabilityStatusId;
  final String scopeEnumId;
  final double quantityProduced;
  final double depreciation;
  final String roleTypeId;
  final DateTime dateAcquired;
  final double purchaseCost;
  final String comments;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String classEnumId;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String calendarId;
  final DateTime expectedEndOfLife;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndFixedAssetAssign({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.acquireOrderId, this.locatedAtLocationSeqId, this.tempExprId, this.actualEndOfLife, this.dateLastServiced, this.acquireOrderItemSeqId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.partyId, this.createdByUserLogin, this.locatedAtFacilityId, this.actualMilliSeconds, this.quantityToProduce, this.serialNumber, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.fixedAssetTypeId, this.estimatedStartDate, this.fixedAssetName, this.sendNotificationEmail, this.noteId, this.uomId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.thruDate, this.estimatedMilliSeconds, @required this.fromDate, this.specialTerms, this.statusId, this.allocatedCost, this.timeTransparency, this.actualCompletionDate, this.salvageValue, @required this.fixedAssetId, this.parentFixedAssetId, this.reserv2ndPPPerc, this.instanceOfProductId, this.dateNextService, this.purchaseCostUomId, this.totalMoneyAllowed, this.productionCapacity, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.availabilityStatusId, this.scopeEnumId, this.quantityProduced, this.depreciation, this.roleTypeId, this.dateAcquired, this.purchaseCost, this.comments, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.classEnumId, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.calendarId, this.expectedEndOfLife, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndFixedAssetAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'acquireOrderId':acquireOrderId, 'locatedAtLocationSeqId':locatedAtLocationSeqId, 'tempExprId':tempExprId, 'actualEndOfLife':actualEndOfLife, 'dateLastServiced':dateLastServiced, 'acquireOrderItemSeqId':acquireOrderItemSeqId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'locatedAtFacilityId':locatedAtFacilityId, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'serialNumber':serialNumber, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'fixedAssetTypeId':fixedAssetTypeId, 'estimatedStartDate':estimatedStartDate, 'fixedAssetName':fixedAssetName, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'uomId':uomId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'thruDate':thruDate, 'estimatedMilliSeconds':estimatedMilliSeconds, 'fromDate':fromDate, 'specialTerms':specialTerms, 'statusId':statusId, 'allocatedCost':allocatedCost, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'salvageValue':salvageValue, 'fixedAssetId':fixedAssetId, 'parentFixedAssetId':parentFixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'instanceOfProductId':instanceOfProductId, 'dateNextService':dateNextService, 'purchaseCostUomId':purchaseCostUomId, 'totalMoneyAllowed':totalMoneyAllowed, 'productionCapacity':productionCapacity, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'availabilityStatusId':availabilityStatusId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'depreciation':depreciation, 'roleTypeId':roleTypeId, 'dateAcquired':dateAcquired, 'purchaseCost':purchaseCost, 'comments':comments, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'classEnumId':classEnumId, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'calendarId':calendarId, 'expectedEndOfLife':expectedEndOfLife, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndFulfillment, WorkEffort Requirement View Entity
class WorkEffortAndFulfillment extends EntityBase {

  final String workEffortId; // pk
  final String reason;
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final double estimatedBudget;
  final DateTime requiredByDate;
  final String tempExprId;
  final String requirementTypeId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String deliverableId;
  final String productId;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String requirementDescription;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String requirementFacilityId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final String statusId;
  final String workEffortFixedAssetId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final DateTime requirementCreationDate;
  final String workEffortParentId;
  final String moneyUomId;
  final String workEffortDescription;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String workEffortFacilityId;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final String requirementId; // pk
  final double quantityProduced;
  final String workReqFulfTypeId;
  final double quantity;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final DateTime requirementStartDate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final String useCase;
  final DateTime createdDate;
  final String requirementFixedAssetId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndFulfillment({entityId,
    @required this.workEffortId, this.reason, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.estimatedBudget, this.requiredByDate, this.tempExprId, this.requirementTypeId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.deliverableId, this.productId, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.requirementDescription, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.requirementFacilityId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.statusId, this.workEffortFixedAssetId, this.timeTransparency, this.actualCompletionDate, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.requirementCreationDate, this.workEffortParentId, this.moneyUomId, this.workEffortDescription, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.workEffortFacilityId, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, @required this.requirementId, this.quantityProduced, this.workReqFulfTypeId, this.quantity, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.requirementStartDate, this.percentComplete, this.totalMilliSecondsAllowed, this.useCase, this.createdDate, this.requirementFixedAssetId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'reason':reason, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'estimatedBudget':estimatedBudget, 'requiredByDate':requiredByDate, 'tempExprId':tempExprId, 'requirementTypeId':requirementTypeId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'deliverableId':deliverableId, 'productId':productId, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'requirementDescription':requirementDescription, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'requirementFacilityId':requirementFacilityId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'statusId':statusId, 'workEffortFixedAssetId':workEffortFixedAssetId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'requirementCreationDate':requirementCreationDate, 'workEffortParentId':workEffortParentId, 'moneyUomId':moneyUomId, 'workEffortDescription':workEffortDescription, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'workEffortFacilityId':workEffortFacilityId, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'requirementId':requirementId, 'quantityProduced':quantityProduced, 'workReqFulfTypeId':workReqFulfTypeId, 'quantity':quantity, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'requirementStartDate':requirementStartDate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'useCase':useCase, 'createdDate':createdDate, 'requirementFixedAssetId':requirementFixedAssetId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndGoods, WorkEffort and related WorkEffortGoodStandard
class WorkEffortAndGoods extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String productId; // pk
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final double estimatedQuantity;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String workEffortGoodStdTypeId; // pk
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndGoods({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, @required this.productId, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.estimatedQuantity, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, @required this.workEffortGoodStdTypeId, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndGoods { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'productId':productId, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'estimatedQuantity':estimatedQuantity, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'workEffortGoodStdTypeId':workEffortGoodStdTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndInventoryAssign, Inventory Item and Product assigned for WorkEffort
class WorkEffortAndInventoryAssign extends EntityBase {

  final String workEffortId; // pk
  final String inventoryItemId; // pk
  final String currencyUomId;
  final double quantity;
  final String productId;
  final String statusId;
  final double unitCost;
  final String uomId;
  WorkEffortAndInventoryAssign({entityId,
    @required this.workEffortId, @required this.inventoryItemId, this.currencyUomId, this.quantity, this.productId, this.statusId, this.unitCost, this.uomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndInventoryAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'inventoryItemId':inventoryItemId, 'currencyUomId':currencyUomId, 'quantity':quantity, 'productId':productId, 'statusId':statusId, 'unitCost':unitCost, 'uomId':uomId};
  }

}

/// Entity WorkEffortAndInventoryProduced, Inventory Item and Product produced by WorkEffort
class WorkEffortAndInventoryProduced extends EntityBase {

  final String workEffortId; // pk
  final String inventoryItemId; // pk
  final String currencyUomId;
  final String productId;
  final double quantityOnHandTotal;
  final double unitCost;
  final String lotId;
  WorkEffortAndInventoryProduced({entityId,
    @required this.workEffortId, @required this.inventoryItemId, this.currencyUomId, this.productId, this.quantityOnHandTotal, this.unitCost, this.lotId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndInventoryProduced { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'inventoryItemId':inventoryItemId, 'currencyUomId':currencyUomId, 'productId':productId, 'quantityOnHandTotal':quantityOnHandTotal, 'unitCost':unitCost, 'lotId':lotId};
  }

}

/// Entity WorkEffortAndPartyAssign, Work Effort And Party Assignment Entity
class WorkEffortAndPartyAssign extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final String mustRsvp;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId; // pk
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate; // pk
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String assignedByUserLoginId;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String delegateReasonEnumId;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime statusDateTime;
  final DateTime actualStartDate;
  final String availabilityStatusId;
  final String scopeEnumId;
  final double quantityProduced;
  final String roleTypeId; // pk
  final String facilityId;
  final String comments;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String expectationEnumId;
  final String partyAssignFacilityId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndPartyAssign({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.mustRsvp, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, @required this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, @required this.fromDate, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.assignedByUserLoginId, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.delegateReasonEnumId, this.lastModifiedByUserLogin, this.accommodationMapId, this.statusDateTime, this.actualStartDate, this.availabilityStatusId, this.scopeEnumId, this.quantityProduced, @required this.roleTypeId, this.facilityId, this.comments, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.expectationEnumId, this.partyAssignFacilityId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndPartyAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'mustRsvp':mustRsvp, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'assignedByUserLoginId':assignedByUserLoginId, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'delegateReasonEnumId':delegateReasonEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'statusDateTime':statusDateTime, 'actualStartDate':actualStartDate, 'availabilityStatusId':availabilityStatusId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'comments':comments, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'expectationEnumId':expectationEnumId, 'partyAssignFacilityId':partyAssignFacilityId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndPartyAssignAndType, Work Effort And Party Assignment Entity
class WorkEffortAndPartyAssignAndType extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final String mustRsvp;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId; // pk
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate; // pk
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String assignedByUserLoginId;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String delegateReasonEnumId;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime statusDateTime;
  final DateTime actualStartDate;
  final String availabilityStatusId;
  final String scopeEnumId;
  final double quantityProduced;
  final String roleTypeId; // pk
  final String parentTypeId;
  final String facilityId;
  final String comments;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String expectationEnumId;
  final String partyAssignFacilityId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndPartyAssignAndType({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.mustRsvp, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, @required this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, @required this.fromDate, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.assignedByUserLoginId, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.delegateReasonEnumId, this.lastModifiedByUserLogin, this.accommodationMapId, this.statusDateTime, this.actualStartDate, this.availabilityStatusId, this.scopeEnumId, this.quantityProduced, @required this.roleTypeId, this.parentTypeId, this.facilityId, this.comments, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.expectationEnumId, this.partyAssignFacilityId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndPartyAssignAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'mustRsvp':mustRsvp, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'assignedByUserLoginId':assignedByUserLoginId, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'delegateReasonEnumId':delegateReasonEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'statusDateTime':statusDateTime, 'actualStartDate':actualStartDate, 'availabilityStatusId':availabilityStatusId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'roleTypeId':roleTypeId, 'parentTypeId':parentTypeId, 'facilityId':facilityId, 'comments':comments, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'expectationEnumId':expectationEnumId, 'partyAssignFacilityId':partyAssignFacilityId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndSalesOpportunity, Sales opportunity and associated work effort
class WorkEffortAndSalesOpportunity extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final double estimatedProbability;
  final String opportunityName;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String opportunityStageId;
  final String typeEnumId;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String nextStep;
  final String fixedAssetId;
  final double estimatedAmount;
  final double reserv2ndPPPerc;
  final String salesOpportunityId; // pk
  final String workEffortCreatedByUserLogin;
  final double totalMoneyAllowed;
  final String marketingCampaignId;
  final String estimateCalcMethod;
  final String description;
  final String workEffortParentId;
  final String moneyUomId;
  final String workEffortDescription;
  final double reservNthPPPerc;
  final String workEffortName;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final DateTime nextStepDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime estimatedCloseDate;
  final String currencyUomId;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndSalesOpportunity({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.estimatedProbability, this.opportunityName, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.opportunityStageId, this.typeEnumId, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.nextStep, this.fixedAssetId, this.estimatedAmount, this.reserv2ndPPPerc, @required this.salesOpportunityId, this.workEffortCreatedByUserLogin, this.totalMoneyAllowed, this.marketingCampaignId, this.estimateCalcMethod, this.description, this.workEffortParentId, this.moneyUomId, this.workEffortDescription, this.reservNthPPPerc, this.workEffortName, this.dataSourceId, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.nextStepDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.estimatedCloseDate, this.currencyUomId, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndSalesOpportunity { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'estimatedProbability':estimatedProbability, 'opportunityName':opportunityName, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'opportunityStageId':opportunityStageId, 'typeEnumId':typeEnumId, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'nextStep':nextStep, 'fixedAssetId':fixedAssetId, 'estimatedAmount':estimatedAmount, 'reserv2ndPPPerc':reserv2ndPPPerc, 'salesOpportunityId':salesOpportunityId, 'workEffortCreatedByUserLogin':workEffortCreatedByUserLogin, 'totalMoneyAllowed':totalMoneyAllowed, 'marketingCampaignId':marketingCampaignId, 'estimateCalcMethod':estimateCalcMethod, 'description':description, 'workEffortParentId':workEffortParentId, 'moneyUomId':moneyUomId, 'workEffortDescription':workEffortDescription, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'nextStepDate':nextStepDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'estimatedCloseDate':estimatedCloseDate, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAndTimeEntry, WorkEffort and TimeEntry View Entity
class WorkEffortAndTimeEntry extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate;
  final String timesheetId;
  final String timeEntryId; // pk
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final String rateTypeId;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final String invoiceItemSeqId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final double hours;
  final String facilityId;
  final String comments;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String invoiceId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAndTimeEntry({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, this.fromDate, this.timesheetId, @required this.timeEntryId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.rateTypeId, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.invoiceItemSeqId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.hours, this.facilityId, this.comments, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.invoiceId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAndTimeEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'timesheetId':timesheetId, 'timeEntryId':timeEntryId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'rateTypeId':rateTypeId, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'invoiceItemSeqId':invoiceItemSeqId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'hours':hours, 'facilityId':facilityId, 'comments':comments, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'invoiceId':invoiceId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAssoc, Work Effort Association
class WorkEffortAssoc extends EntityBase {

  final String workEffortIdTo; // pk
  final DateTime fromDate; // pk
  final String workEffortIdFrom; // pk
  final int sequenceNum;
  final String workEffortAssocTypeId; // pk
  final DateTime thruDate;
  WorkEffortAssoc({entityId,
    @required this.workEffortIdTo, @required this.fromDate, @required this.workEffortIdFrom, this.sequenceNum, @required this.workEffortAssocTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortIdTo':workEffortIdTo, 'fromDate':fromDate, 'workEffortIdFrom':workEffortIdFrom, 'sequenceNum':sequenceNum, 'workEffortAssocTypeId':workEffortAssocTypeId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortAssocAttribute, Work Effort Association Attribute
class WorkEffortAssocAttribute extends EntityBase {

  final String workEffortIdTo; // pk
  final DateTime fromDate;
  final String workEffortIdFrom; // pk
  final String attrDescription;
  final String attrValue;
  final String workEffortAssocTypeId; // pk
  final String attrName; // pk
  WorkEffortAssocAttribute({entityId,
    @required this.workEffortIdTo, this.fromDate, @required this.workEffortIdFrom, this.attrDescription, this.attrValue, @required this.workEffortAssocTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortIdTo':workEffortIdTo, 'fromDate':fromDate, 'workEffortIdFrom':workEffortIdFrom, 'attrDescription':attrDescription, 'attrValue':attrValue, 'workEffortAssocTypeId':workEffortAssocTypeId, 'attrName':attrName};
  }

}

/// Entity WorkEffortAssocFromView, Work Effort Association From (Parent) View
class WorkEffortAssocFromView extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final int sequenceNum;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String workEffortIdFrom; // pk
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final DateTime thruDate;
  final double estimatedMilliSeconds;
  final String workEffortIdTo; // pk
  final DateTime fromDate; // pk
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final String workEffortAssocTypeId; // pk
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAssocFromView({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.sequenceNum, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, @required this.workEffortIdFrom, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.thruDate, this.estimatedMilliSeconds, @required this.workEffortIdTo, @required this.fromDate, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, @required this.workEffortAssocTypeId, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocFromView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'sequenceNum':sequenceNum, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'workEffortIdFrom':workEffortIdFrom, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'thruDate':thruDate, 'estimatedMilliSeconds':estimatedMilliSeconds, 'workEffortIdTo':workEffortIdTo, 'fromDate':fromDate, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'workEffortAssocTypeId':workEffortAssocTypeId, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAssocToView, Work Effort Association To (Child) View
class WorkEffortAssocToView extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final int sequenceNum;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String workEffortIdFrom; // pk
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final DateTime thruDate;
  final double estimatedMilliSeconds;
  final String workEffortIdTo; // pk
  final DateTime fromDate; // pk
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final String workEffortAssocTypeId; // pk
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortAssocToView({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.sequenceNum, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, @required this.workEffortIdFrom, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.thruDate, this.estimatedMilliSeconds, @required this.workEffortIdTo, @required this.fromDate, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, @required this.workEffortAssocTypeId, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocToView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'sequenceNum':sequenceNum, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'workEffortIdFrom':workEffortIdFrom, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'thruDate':thruDate, 'estimatedMilliSeconds':estimatedMilliSeconds, 'workEffortIdTo':workEffortIdTo, 'fromDate':fromDate, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'workEffortAssocTypeId':workEffortAssocTypeId, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortAssocType, Work Effort Association Type
class WorkEffortAssocType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String workEffortAssocTypeId; // pk
  WorkEffortAssocType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.workEffortAssocTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'workEffortAssocTypeId':workEffortAssocTypeId};
  }

}

/// Entity WorkEffortAssocTypeAttr, Work Effort Association Type Attribute
class WorkEffortAssocTypeAttr extends EntityBase {

  final String description;
  final String workEffortAssocTypeId; // pk
  final String attrName; // pk
  WorkEffortAssocTypeAttr({entityId,
    this.description, @required this.workEffortAssocTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'workEffortAssocTypeId':workEffortAssocTypeId, 'attrName':attrName};
  }

}

/// Entity WorkEffortAssocView, Work Effort Association Entity with Name
class WorkEffortAssocView extends EntityBase {

  final String workEffortToWorkEffortPurposeTypeId;
  final double workEffortToSetup;
  final int sequenceNum;
  final String workEffortToCurrentStatusId;
  final DateTime workEffortToActualCompletionDate;
  final double workEffortToRun;
  final DateTime workEffortToEstimatedCompletionDate;
  final String workEffortAssocTypeId; // pk
  final DateTime thruDate;
  final String workEffortIdTo; // pk
  final DateTime fromDate; // pk
  final DateTime workEffortToActualStartDate;
  final DateTime workEffortToEstimatedStartDate;
  final String workEffortIdFrom; // pk
  final String workEffortToParentId;
  final String workEffortToName;
  WorkEffortAssocView({entityId,
    this.workEffortToWorkEffortPurposeTypeId, this.workEffortToSetup, this.sequenceNum, this.workEffortToCurrentStatusId, this.workEffortToActualCompletionDate, this.workEffortToRun, this.workEffortToEstimatedCompletionDate, @required this.workEffortAssocTypeId, this.thruDate, @required this.workEffortIdTo, @required this.fromDate, this.workEffortToActualStartDate, this.workEffortToEstimatedStartDate, @required this.workEffortIdFrom, this.workEffortToParentId, this.workEffortToName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAssocView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortToWorkEffortPurposeTypeId':workEffortToWorkEffortPurposeTypeId, 'workEffortToSetup':workEffortToSetup, 'sequenceNum':sequenceNum, 'workEffortToCurrentStatusId':workEffortToCurrentStatusId, 'workEffortToActualCompletionDate':workEffortToActualCompletionDate, 'workEffortToRun':workEffortToRun, 'workEffortToEstimatedCompletionDate':workEffortToEstimatedCompletionDate, 'workEffortAssocTypeId':workEffortAssocTypeId, 'thruDate':thruDate, 'workEffortIdTo':workEffortIdTo, 'fromDate':fromDate, 'workEffortToActualStartDate':workEffortToActualStartDate, 'workEffortToEstimatedStartDate':workEffortToEstimatedStartDate, 'workEffortIdFrom':workEffortIdFrom, 'workEffortToParentId':workEffortToParentId, 'workEffortToName':workEffortToName};
  }

}

/// Entity WorkEffortAttribute, Work Effort Attribute
class WorkEffortAttribute extends EntityBase {

  final String workEffortId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  WorkEffortAttribute({entityId,
    @required this.workEffortId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity WorkEffortBilling, Work Effort Billing
class WorkEffortBilling extends EntityBase {

  final String workEffortId; // pk
  final double percentage;
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  WorkEffortBilling({entityId,
    @required this.workEffortId, this.percentage, @required this.invoiceId, @required this.invoiceItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortBilling { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'percentage':percentage, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId};
  }

}

/// Entity WorkEffortCommunicationEventView, Work Effort And CommunicationEvent
class WorkEffortCommunicationEventView extends EntityBase {

  final String workEffortId; // pk
  final String partyIdFrom;
  final String note;
  final String subject;
  final String ccString;
  final String description;
  final String contactMechTypeId;
  final String communicationEventTypeId;
  final String content;
  final String contentMimeTypeId;
  final DateTime datetimeStarted;
  final String contactListId;
  final String contactMechIdFrom;
  final String reasonEnumId;
  final String roleTypeIdTo;
  final String parentCommEventId;
  final DateTime entryDate;
  final DateTime datetimeEnded;
  final String origCommEventId;
  final String messageId;
  final String roleTypeIdFrom;
  final String contactMechIdTo;
  final String headerString;
  final String statusId;
  final String communicationEventId; // pk
  final String bccString;
  final String partyIdTo;
  final String toStr;
  final String fromString;
  WorkEffortCommunicationEventView({entityId,
    @required this.workEffortId, this.partyIdFrom, this.note, this.subject, this.ccString, this.description, this.contactMechTypeId, this.communicationEventTypeId, this.content, this.contentMimeTypeId, this.datetimeStarted, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, this.roleTypeIdTo, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortCommunicationEventView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'description':description, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'roleTypeIdTo':roleTypeIdTo, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString};
  }

}

/// Entity WorkEffortContactMech, WorkEffort Contact Mechanism
class WorkEffortContactMech extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String comments;
  final String contactMechId; // pk
  final DateTime thruDate;
  WorkEffortContactMech({entityId,
    @required this.workEffortId, @required this.fromDate, this.comments, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'comments':comments, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortContactMechView, Work Effort Contact Mech View Entity
class WorkEffortContactMechView extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String comments;
  final String infoString;
  final String contactMechTypeId;
  final String contactMechId; // pk
  final DateTime thruDate;
  WorkEffortContactMechView({entityId,
    @required this.workEffortId, @required this.fromDate, this.comments, this.infoString, this.contactMechTypeId, @required this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortContactMechView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'comments':comments, 'infoString':infoString, 'contactMechTypeId':contactMechTypeId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortContent, WorkEffort Content
class WorkEffortContent extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String workEffortContentTypeId; // pk
  final String contentId; // pk
  final DateTime thruDate;
  WorkEffortContent({entityId,
    @required this.workEffortId, @required this.fromDate, @required this.workEffortContentTypeId, @required this.contentId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'workEffortContentTypeId':workEffortContentTypeId, 'contentId':contentId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortContentAndInfo, WorkEffortContent, Content and DataResource View Entity
class WorkEffortContentAndInfo extends EntityBase {

  final String workEffortId; // pk
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String workEffortContentTypeId; // pk
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  WorkEffortContentAndInfo({entityId,
    @required this.workEffortId, @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, @required this.workEffortContentTypeId, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'workEffortContentTypeId':workEffortContentTypeId, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity WorkEffortContentType, WorkEffort Content Type
class WorkEffortContentType extends EntityBase {

  /// this entity has only one pk
  final String workEffortContentTypeId; // pk
  final String parentTypeId;
  final String description;
  WorkEffortContentType({entityId,
    @required this.workEffortContentTypeId, this.parentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortContentTypeId':workEffortContentTypeId, 'parentTypeId':parentTypeId, 'description':description};
  }

}

/// Entity WorkEffortCostCalc, Work Effort Cost Calculation
class WorkEffortCostCalc extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String costComponentTypeId; // pk
  final String costComponentCalcId;
  final DateTime thruDate;
  WorkEffortCostCalc({entityId,
    @required this.workEffortId, @required this.fromDate, @required this.costComponentTypeId, this.costComponentCalcId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortCostCalc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'costComponentTypeId':costComponentTypeId, 'costComponentCalcId':costComponentCalcId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortCustRequestItemView, Work Effort And CustRequest
class WorkEffortCustRequestItemView extends EntityBase {

  final String workEffortId; // pk
  final String custRequestResolutionId;
  final double quantity;
  final double reservLength;
  final int sequenceNum;
  final String productId;
  final double reservPersons;
  final double maximumAmount;
  final DateTime requiredByDate;
  final String description;
  final int priority;
  final String custRequestItemSeqId; // pk
  final String statusId;
  final String statusItemDescription;
  final DateTime reservStart;
  final String configId;
  final String custRequestId; // pk
  final double selectedAmount;
  final String story;
  WorkEffortCustRequestItemView({entityId,
    @required this.workEffortId, this.custRequestResolutionId, this.quantity, this.reservLength, this.sequenceNum, this.productId, this.reservPersons, this.maximumAmount, this.requiredByDate, this.description, this.priority, @required this.custRequestItemSeqId, this.statusId, this.statusItemDescription, this.reservStart, this.configId, @required this.custRequestId, this.selectedAmount, this.story,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortCustRequestItemView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'custRequestResolutionId':custRequestResolutionId, 'quantity':quantity, 'reservLength':reservLength, 'sequenceNum':sequenceNum, 'productId':productId, 'reservPersons':reservPersons, 'maximumAmount':maximumAmount, 'requiredByDate':requiredByDate, 'description':description, 'priority':priority, 'custRequestItemSeqId':custRequestItemSeqId, 'statusId':statusId, 'statusItemDescription':statusItemDescription, 'reservStart':reservStart, 'configId':configId, 'custRequestId':custRequestId, 'selectedAmount':selectedAmount, 'story':story};
  }

}

/// Entity WorkEffortCustRequestView, Work Effort And CustRequest
class WorkEffortCustRequestView extends EntityBase {

  final String workEffortId; // pk
  final String reason;
  final String salesChannelEnumId;
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final int workEffortPriority;
  final DateTime custRequestDate;
  final String tempExprId;
  final String internalComment;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String createdByUserLogin;
  final String custRequestTypeDescription;
  final DateTime closedDateTime;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String maximumAmountUomId;
  final String currentStatusId;
  final DateTime openDateTime;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final DateTime workEffortCreatedDate;
  final String custRequestCategoryId;
  final double reserv2ndPPPerc;
  final String workEffortCreatedByUserLogin;
  final String fromPartyId;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String fulfillContactMechId;
  final String description;
  final String workEffortParentId;
  final String moneyUomId;
  final String workEffortDescription;
  final double reservNthPPPerc;
  final String workEffortName;
  final DateTime workEffortLastModifiedDate;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final String custRequestId; // pk
  final DateTime actualStartDate;
  final String productStoreId;
  final String scopeEnumId;
  final double quantityProduced;
  final String custRequestName;
  final DateTime responseRequiredDate;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusItemDescription;
  final String workEffortLastModByUserLogin;
  final String custRequestTypeId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortCustRequestView({entityId,
    @required this.workEffortId, this.reason, this.salesChannelEnumId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.workEffortPriority, this.custRequestDate, this.tempExprId, this.internalComment, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.custRequestTypeDescription, this.closedDateTime, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.maximumAmountUomId, this.currentStatusId, this.openDateTime, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.workEffortCreatedDate, this.custRequestCategoryId, this.reserv2ndPPPerc, this.workEffortCreatedByUserLogin, this.fromPartyId, this.totalMoneyAllowed, this.estimateCalcMethod, this.fulfillContactMechId, this.description, this.workEffortParentId, this.moneyUomId, this.workEffortDescription, this.reservNthPPPerc, this.workEffortName, this.workEffortLastModifiedDate, this.lastModifiedByUserLogin, this.accommodationMapId, @required this.custRequestId, this.actualStartDate, this.productStoreId, this.scopeEnumId, this.quantityProduced, this.custRequestName, this.responseRequiredDate, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.currencyUomId, this.createdDate, this.statusItemDescription, this.workEffortLastModByUserLogin, this.custRequestTypeId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortCustRequestView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'reason':reason, 'salesChannelEnumId':salesChannelEnumId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'workEffortPriority':workEffortPriority, 'custRequestDate':custRequestDate, 'tempExprId':tempExprId, 'internalComment':internalComment, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'custRequestTypeDescription':custRequestTypeDescription, 'closedDateTime':closedDateTime, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'maximumAmountUomId':maximumAmountUomId, 'currentStatusId':currentStatusId, 'openDateTime':openDateTime, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'workEffortCreatedDate':workEffortCreatedDate, 'custRequestCategoryId':custRequestCategoryId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'workEffortCreatedByUserLogin':workEffortCreatedByUserLogin, 'fromPartyId':fromPartyId, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'fulfillContactMechId':fulfillContactMechId, 'description':description, 'workEffortParentId':workEffortParentId, 'moneyUomId':moneyUomId, 'workEffortDescription':workEffortDescription, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'workEffortLastModifiedDate':workEffortLastModifiedDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'custRequestId':custRequestId, 'actualStartDate':actualStartDate, 'productStoreId':productStoreId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'custRequestName':custRequestName, 'responseRequiredDate':responseRequiredDate, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusItemDescription':statusItemDescription, 'workEffortLastModByUserLogin':workEffortLastModByUserLogin, 'custRequestTypeId':custRequestTypeId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortDeliverableProd, Work Effort Deliverable Produced
class WorkEffortDeliverableProd extends EntityBase {

  final String workEffortId; // pk
  final String deliverableId; // pk
  WorkEffortDeliverableProd({entityId,
    @required this.workEffortId, @required this.deliverableId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortDeliverableProd { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'deliverableId':deliverableId};
  }

}

/// Entity WorkEffortEventReminder, Work Effort Event Reminder
class WorkEffortEventReminder extends EntityBase {

  final String workEffortId; // pk
  final String timeZoneId;
  final DateTime reminderDateTime;
  final int reminderOffset;
  final String sequenceId; // pk
  final String contactMechId;
  final int currentCount;
  final int repeatInterval;
  final String partyId;
  final String localeId;
  final int repeatCount;
  WorkEffortEventReminder({entityId,
    @required this.workEffortId, this.timeZoneId, this.reminderDateTime, this.reminderOffset, @required this.sequenceId, this.contactMechId, this.currentCount, this.repeatInterval, this.partyId, this.localeId, this.repeatCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortEventReminder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'timeZoneId':timeZoneId, 'reminderDateTime':reminderDateTime, 'reminderOffset':reminderOffset, 'sequenceId':sequenceId, 'contactMechId':contactMechId, 'currentCount':currentCount, 'repeatInterval':repeatInterval, 'partyId':partyId, 'localeId':localeId, 'repeatCount':repeatCount};
  }

}

/// Entity WorkEffortFindView, Find Work Efforts View
class WorkEffortFindView extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId; // pk
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final String specialTerms;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId; // pk
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String workEffortParentId; // pk
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime actualStartDate;
  final String scopeEnumId;
  final double quantityProduced;
  final String facilityId;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortFindView({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, @required this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, @required this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, @required this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortFindView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortFixedAssetAssign, Work Effort Fixed Asset Assignment
class WorkEffortFixedAssetAssign extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String comments;
  final String statusId;
  final double allocatedCost;
  final String fixedAssetId; // pk
  final String availabilityStatusId;
  final DateTime thruDate;
  WorkEffortFixedAssetAssign({entityId,
    @required this.workEffortId, @required this.fromDate, this.comments, this.statusId, this.allocatedCost, @required this.fixedAssetId, this.availabilityStatusId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortFixedAssetAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'comments':comments, 'statusId':statusId, 'allocatedCost':allocatedCost, 'fixedAssetId':fixedAssetId, 'availabilityStatusId':availabilityStatusId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortFixedAssetStd, Work Effort Fixed Asset Standard
class WorkEffortFixedAssetStd extends EntityBase {

  final String workEffortId; // pk
  final String fixedAssetTypeId; // pk
  final double estimatedQuantity;
  final double estimatedCost;
  final double estimatedDuration;
  WorkEffortFixedAssetStd({entityId,
    @required this.workEffortId, @required this.fixedAssetTypeId, this.estimatedQuantity, this.estimatedCost, this.estimatedDuration,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortFixedAssetStd { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fixedAssetTypeId':fixedAssetTypeId, 'estimatedQuantity':estimatedQuantity, 'estimatedCost':estimatedCost, 'estimatedDuration':estimatedDuration};
  }

}

/// Entity WorkEffortGoodStandard, Work Effort Good Standard
class WorkEffortGoodStandard extends EntityBase {

  final String workEffortId; // pk
  final String workEffortGoodStdTypeId; // pk
  final DateTime fromDate; // pk
  final String productId; // pk
  final String statusId;
  final double estimatedQuantity;
  final double estimatedCost;
  final DateTime thruDate;
  WorkEffortGoodStandard({entityId,
    @required this.workEffortId, @required this.workEffortGoodStdTypeId, @required this.fromDate, @required this.productId, this.statusId, this.estimatedQuantity, this.estimatedCost, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortGoodStandard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'workEffortGoodStdTypeId':workEffortGoodStdTypeId, 'fromDate':fromDate, 'productId':productId, 'statusId':statusId, 'estimatedQuantity':estimatedQuantity, 'estimatedCost':estimatedCost, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortGoodStandardType, Work Effort Good Standard Type
class WorkEffortGoodStandardType extends EntityBase {

  /// this entity has only one pk
  final String workEffortGoodStdTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  WorkEffortGoodStandardType({entityId,
    @required this.workEffortGoodStdTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortGoodStandardType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortGoodStdTypeId':workEffortGoodStdTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity WorkEffortIcalData, Work Effort iCalendar Data
class WorkEffortIcalData extends EntityBase {

  /// this entity has only one pk
  final String workEffortId; // pk
  final String icalData;
  WorkEffortIcalData({entityId,
    @required this.workEffortId, this.icalData,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortIcalData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'icalData':icalData};
  }

}

/// Entity WorkEffortInventoryAssign, Work Effort Inventory Assignment
class WorkEffortInventoryAssign extends EntityBase {

  final String workEffortId; // pk
  final String inventoryItemId; // pk
  final double quantity;
  final String statusId;
  WorkEffortInventoryAssign({entityId,
    @required this.workEffortId, @required this.inventoryItemId, this.quantity, this.statusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortInventoryAssign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'inventoryItemId':inventoryItemId, 'quantity':quantity, 'statusId':statusId};
  }

}

/// Entity WorkEffortInventoryProduced, Work Effort Inventory Produced
class WorkEffortInventoryProduced extends EntityBase {

  final String workEffortId; // pk
  final String inventoryItemId; // pk
  WorkEffortInventoryProduced({entityId,
    @required this.workEffortId, @required this.inventoryItemId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortInventoryProduced { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'inventoryItemId':inventoryItemId};
  }

}

/// Entity WorkEffortKeyword, WorkEffort Keyword
class WorkEffortKeyword extends EntityBase {

  final String workEffortId; // pk
  final int relevancyWeight;
  final String keyword; // pk
  WorkEffortKeyword({entityId,
    @required this.workEffortId, this.relevancyWeight, @required this.keyword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortKeyword { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'relevancyWeight':relevancyWeight, 'keyword':keyword};
  }

}

/// Entity WorkEffortNote, Work Effort Note
class WorkEffortNote extends EntityBase {

  final String workEffortId; // pk
  final String internalNote;
  final String noteId; // pk
  WorkEffortNote({entityId,
    @required this.workEffortId, this.internalNote, @required this.noteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'internalNote':internalNote, 'noteId':noteId};
  }

}

/// Entity WorkEffortNoteAndData, Work Effort Note And Note Data Entity
class WorkEffortNoteAndData extends EntityBase {

  final String workEffortId; // pk
  final String internalNote;
  final String noteName;
  final DateTime noteDateTime;
  final String noteInfo;
  final String noteId; // pk
  final String noteParty;
  WorkEffortNoteAndData({entityId,
    @required this.workEffortId, this.internalNote, this.noteName, this.noteDateTime, this.noteInfo, @required this.noteId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortNoteAndData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'internalNote':internalNote, 'noteName':noteName, 'noteDateTime':noteDateTime, 'noteInfo':noteInfo, 'noteId':noteId, 'noteParty':noteParty};
  }

}

/// Entity WorkEffortOrderHeaderView, Work Effort And OrderHeader
class WorkEffortOrderHeaderView extends EntityBase {

  final String workEffortId; // pk
  final String invoicePerShipment;
  final String salesChannelEnumId;
  final String orderId; // pk
  final String orderTypeId;
  final String billingAccountId;
  final String terminalId;
  final String isViewed;
  final String visitId;
  final String agreementId;
  final String productStoreId;
  final double remainingSubTotal;
  final String orderName;
  final String webSiteId;
  final String isRushOrder;
  final DateTime entryDate;
  final double grandTotal;
  final String orderTypeDescription;
  final String autoOrderShoppingListId;
  final String externalId;
  final String priority;
  final String transactionId;
  final String firstAttemptOrderId;
  final String originFacilityId;
  final String statusId;
  final String statusItemDescription;
  final String createdBy;
  final String currencyUom;
  final String syncStatusId;
  final DateTime pickSheetPrintedDate;
  final String needsInventoryIssuance;
  final DateTime orderDate;
  final String internalCode;
  WorkEffortOrderHeaderView({entityId,
    @required this.workEffortId, this.invoicePerShipment, this.salesChannelEnumId, @required this.orderId, this.orderTypeId, this.billingAccountId, this.terminalId, this.isViewed, this.visitId, this.agreementId, this.productStoreId, this.remainingSubTotal, this.orderName, this.webSiteId, this.isRushOrder, this.entryDate, this.grandTotal, this.orderTypeDescription, this.autoOrderShoppingListId, this.externalId, this.priority, this.transactionId, this.firstAttemptOrderId, this.originFacilityId, this.statusId, this.statusItemDescription, this.createdBy, this.currencyUom, this.syncStatusId, this.pickSheetPrintedDate, this.needsInventoryIssuance, this.orderDate, this.internalCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortOrderHeaderView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'invoicePerShipment':invoicePerShipment, 'salesChannelEnumId':salesChannelEnumId, 'orderId':orderId, 'orderTypeId':orderTypeId, 'billingAccountId':billingAccountId, 'terminalId':terminalId, 'isViewed':isViewed, 'visitId':visitId, 'agreementId':agreementId, 'productStoreId':productStoreId, 'remainingSubTotal':remainingSubTotal, 'orderName':orderName, 'webSiteId':webSiteId, 'isRushOrder':isRushOrder, 'entryDate':entryDate, 'grandTotal':grandTotal, 'orderTypeDescription':orderTypeDescription, 'autoOrderShoppingListId':autoOrderShoppingListId, 'externalId':externalId, 'priority':priority, 'transactionId':transactionId, 'firstAttemptOrderId':firstAttemptOrderId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'statusItemDescription':statusItemDescription, 'createdBy':createdBy, 'currencyUom':currencyUom, 'syncStatusId':syncStatusId, 'pickSheetPrintedDate':pickSheetPrintedDate, 'needsInventoryIssuance':needsInventoryIssuance, 'orderDate':orderDate, 'internalCode':internalCode};
  }

}

/// Entity WorkEffortPartyAssignAndRoleType, Work Effort Party Assignment And Roletype
class WorkEffortPartyAssignAndRoleType extends EntityBase {

  final String workEffortId; // pk
  final String roleTypeId; // pk
  final String facilityId;
  final String comments;
  final String parentTypeId;
  final String mustRsvp;
  final String assignedByUserLoginId;
  final String description;
  final String delegateReasonEnumId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String statusId;
  final String hasTable;
  final DateTime statusDateTime;
  final String expectationEnumId;
  final String availabilityStatusId;
  final String partyId; // pk
  WorkEffortPartyAssignAndRoleType({entityId,
    @required this.workEffortId, @required this.roleTypeId, this.facilityId, this.comments, this.parentTypeId, this.mustRsvp, this.assignedByUserLoginId, this.description, this.delegateReasonEnumId, this.thruDate, @required this.fromDate, this.statusId, this.hasTable, this.statusDateTime, this.expectationEnumId, this.availabilityStatusId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPartyAssignAndRoleType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'comments':comments, 'parentTypeId':parentTypeId, 'mustRsvp':mustRsvp, 'assignedByUserLoginId':assignedByUserLoginId, 'description':description, 'delegateReasonEnumId':delegateReasonEnumId, 'thruDate':thruDate, 'fromDate':fromDate, 'statusId':statusId, 'hasTable':hasTable, 'statusDateTime':statusDateTime, 'expectationEnumId':expectationEnumId, 'availabilityStatusId':availabilityStatusId, 'partyId':partyId};
  }

}

/// Entity WorkEffortPartyAssignByGroup, Work Effort And Party Assignment By Group Entity
class WorkEffortPartyAssignByGroup extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final String mustRsvp;
  final int revisionNumber;
  final String priorityTypeId;
  final String tempExprId;
  final String relationshipName;
  final String securityGroupId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId; // pk
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String roleTypeIdTo; // pk
  final DateTime prelThruDate;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String prelStatusId;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate; // pk
  final String partyRelationshipTypeId;
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String positionTitle;
  final String estimateCalcMethod;
  final String assignedByUserLoginId;
  final String workEffortParentId;
  final String description;
  final DateTime prelFromDate; // pk
  final String moneyUomId;
  final String groupPartyId; // pk
  final double reservNthPPPerc;
  final String workEffortName;
  final String delegateReasonEnumId;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime statusDateTime;
  final DateTime actualStartDate;
  final String availabilityStatusId;
  final String scopeEnumId;
  final double quantityProduced;
  final String roleTypeId; // pk
  final String facilityId;
  final String comments;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String permissionsEnumId;
  final String sourceReferenceId;
  final String prelComments;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final String roleTypeIdFrom; // pk
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String expectationEnumId;
  final String partyAssignFacilityId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortPartyAssignByGroup({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.mustRsvp, this.revisionNumber, this.priorityTypeId, this.tempExprId, this.relationshipName, this.securityGroupId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, @required this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, @required this.roleTypeIdTo, this.prelThruDate, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.prelStatusId, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, @required this.fromDate, this.partyRelationshipTypeId, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.positionTitle, this.estimateCalcMethod, this.assignedByUserLoginId, this.workEffortParentId, this.description, @required this.prelFromDate, this.moneyUomId, @required this.groupPartyId, this.reservNthPPPerc, this.workEffortName, this.delegateReasonEnumId, this.lastModifiedByUserLogin, this.accommodationMapId, this.statusDateTime, this.actualStartDate, this.availabilityStatusId, this.scopeEnumId, this.quantityProduced, @required this.roleTypeId, this.facilityId, this.comments, this.estimatedSetupMillis, this.lastModifiedDate, this.permissionsEnumId, this.sourceReferenceId, this.prelComments, this.lastStatusUpdate, this.percentComplete, @required this.roleTypeIdFrom, this.totalMilliSecondsAllowed, this.createdDate, this.expectationEnumId, this.partyAssignFacilityId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPartyAssignByGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'mustRsvp':mustRsvp, 'revisionNumber':revisionNumber, 'priorityTypeId':priorityTypeId, 'tempExprId':tempExprId, 'relationshipName':relationshipName, 'securityGroupId':securityGroupId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'roleTypeIdTo':roleTypeIdTo, 'prelThruDate':prelThruDate, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'prelStatusId':prelStatusId, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'partyRelationshipTypeId':partyRelationshipTypeId, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'positionTitle':positionTitle, 'estimateCalcMethod':estimateCalcMethod, 'assignedByUserLoginId':assignedByUserLoginId, 'workEffortParentId':workEffortParentId, 'description':description, 'prelFromDate':prelFromDate, 'moneyUomId':moneyUomId, 'groupPartyId':groupPartyId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'delegateReasonEnumId':delegateReasonEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'statusDateTime':statusDateTime, 'actualStartDate':actualStartDate, 'availabilityStatusId':availabilityStatusId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'comments':comments, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'permissionsEnumId':permissionsEnumId, 'sourceReferenceId':sourceReferenceId, 'prelComments':prelComments, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'roleTypeIdFrom':roleTypeIdFrom, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'expectationEnumId':expectationEnumId, 'partyAssignFacilityId':partyAssignFacilityId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortPartyAssignByRole, Work Effort And Party Assignment By Role Entity
class WorkEffortPartyAssignByRole extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final String mustRsvp;
  final int revisionNumber;
  final String tempExprId;
  final String showAsEnumId;
  final String infoUrl;
  final String universalId;
  final String locationDesc;
  final String partyId; // pk
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String workEffortPurposeTypeId;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final int priority;
  final String currentStatusId;
  final String runtimeDataId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate; // pk
  final String statusId;
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final double totalMoneyAllowed;
  final String estimateCalcMethod;
  final String assignedByUserLoginId;
  final String workEffortParentId;
  final String description;
  final String moneyUomId;
  final double reservNthPPPerc;
  final String workEffortName;
  final String delegateReasonEnumId;
  final String lastModifiedByUserLogin;
  final String accommodationMapId;
  final DateTime statusDateTime;
  final DateTime actualStartDate;
  final String availabilityStatusId;
  final String scopeEnumId;
  final double quantityProduced;
  final String wepaPartyId; // pk
  final String roleTypeId; // pk
  final String facilityId;
  final String comments;
  final double estimatedSetupMillis;
  final DateTime lastModifiedDate;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final int percentComplete;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String expectationEnumId;
  final String partyAssignFacilityId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortPartyAssignByRole({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.mustRsvp, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, @required this.partyId, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, @required this.fromDate, this.statusId, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.assignedByUserLoginId, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.delegateReasonEnumId, this.lastModifiedByUserLogin, this.accommodationMapId, this.statusDateTime, this.actualStartDate, this.availabilityStatusId, this.scopeEnumId, this.quantityProduced, @required this.wepaPartyId, @required this.roleTypeId, this.facilityId, this.comments, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.expectationEnumId, this.partyAssignFacilityId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPartyAssignByRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'mustRsvp':mustRsvp, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'statusId':statusId, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'assignedByUserLoginId':assignedByUserLoginId, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'delegateReasonEnumId':delegateReasonEnumId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'statusDateTime':statusDateTime, 'actualStartDate':actualStartDate, 'availabilityStatusId':availabilityStatusId, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'wepaPartyId':wepaPartyId, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'comments':comments, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'expectationEnumId':expectationEnumId, 'partyAssignFacilityId':partyAssignFacilityId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortPartyAssignView, Work Effort And Party Assignment and PartyNameView
class WorkEffortPartyAssignView extends EntityBase {

  final String workEffortId; // pk
  final String lastName;
  final String mustRsvp;
  final String assignedByUserLoginId;
  final String description;
  final String suffix;
  final String delegateReasonEnumId;
  final String partyTypeId;
  final String groupNameLocal;
  final DateTime statusDateTime;
  final String availabilityStatusId;
  final String assignmentStatusId;
  final String partyId; // pk
  final String roleTypeId; // pk
  final String lastNameLocal;
  final String facilityId;
  final String comments;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String firstName;
  final String groupName;
  final String statusId;
  final String expectationEnumId;
  final String middleName;
  final String firstNameLocal;
  final String personalTitle;
  WorkEffortPartyAssignView({entityId,
    @required this.workEffortId, this.lastName, this.mustRsvp, this.assignedByUserLoginId, this.description, this.suffix, this.delegateReasonEnumId, this.partyTypeId, this.groupNameLocal, this.statusDateTime, this.availabilityStatusId, this.assignmentStatusId, @required this.partyId, @required this.roleTypeId, this.lastNameLocal, this.facilityId, this.comments, this.thruDate, @required this.fromDate, this.firstName, this.groupName, this.statusId, this.expectationEnumId, this.middleName, this.firstNameLocal, this.personalTitle,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPartyAssignView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'lastName':lastName, 'mustRsvp':mustRsvp, 'assignedByUserLoginId':assignedByUserLoginId, 'description':description, 'suffix':suffix, 'delegateReasonEnumId':delegateReasonEnumId, 'partyTypeId':partyTypeId, 'groupNameLocal':groupNameLocal, 'statusDateTime':statusDateTime, 'availabilityStatusId':availabilityStatusId, 'assignmentStatusId':assignmentStatusId, 'partyId':partyId, 'roleTypeId':roleTypeId, 'lastNameLocal':lastNameLocal, 'facilityId':facilityId, 'comments':comments, 'thruDate':thruDate, 'fromDate':fromDate, 'firstName':firstName, 'groupName':groupName, 'statusId':statusId, 'expectationEnumId':expectationEnumId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'personalTitle':personalTitle};
  }

}

/// Entity WorkEffortPartyAssignment, Work Effort Party Assignment
class WorkEffortPartyAssignment extends EntityBase {

  final String workEffortId; // pk
  final String roleTypeId; // pk
  final String facilityId;
  final String comments;
  final String mustRsvp;
  final String assignedByUserLoginId;
  final String delegateReasonEnumId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String statusId;
  final DateTime statusDateTime;
  final String expectationEnumId;
  final String availabilityStatusId;
  final String partyId; // pk
  WorkEffortPartyAssignment({entityId,
    @required this.workEffortId, @required this.roleTypeId, this.facilityId, this.comments, this.mustRsvp, this.assignedByUserLoginId, this.delegateReasonEnumId, this.thruDate, @required this.fromDate, this.statusId, this.statusDateTime, this.expectationEnumId, this.availabilityStatusId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPartyAssignment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'comments':comments, 'mustRsvp':mustRsvp, 'assignedByUserLoginId':assignedByUserLoginId, 'delegateReasonEnumId':delegateReasonEnumId, 'thruDate':thruDate, 'fromDate':fromDate, 'statusId':statusId, 'statusDateTime':statusDateTime, 'expectationEnumId':expectationEnumId, 'availabilityStatusId':availabilityStatusId, 'partyId':partyId};
  }

}

/// Entity WorkEffortProductGoods, WorkEffort and related WorkEffortGoodStandard with Product
class WorkEffortProductGoods extends EntityBase {

  final String originGeoId;
  final String mediumImageUrl;
  final String productName;
  final String originalImageUrl;
  final String inShippingBox;
  final String showAsEnumId;
  final DateTime supportDiscontinuationDate;
  final double productWidth;
  final String infoUrl;
  final String universalId;
  final double productRating;
  final String createdByUserLogin;
  final double actualMilliSeconds;
  final double quantityToProduce;
  final String requireAmount;
  final String productId; // pk
  final String taxable;
  final String serviceLoaderName;
  final String accommodationSpotId;
  final String primaryProductCategoryId;
  final DateTime salesDiscontinuationDate;
  final double estimatedCost;
  final int priority;
  final String runtimeDataId;
  final String salesDiscWhenNotAvail;
  final String returnable;
  final String statusId;
  final String fixedAssetId;
  final double reserv2ndPPPerc;
  final String priceDetailText;
  final String diameterUomId;
  final double totalMoneyAllowed;
  final double productDiameter;
  final double estimatedQuantity;
  final String ratingTypeEnum;
  final String workEffortParentId;
  final String moneyUomId;
  final String chargeShipping;
  final double reservNthPPPerc;
  final double quantityIncluded;
  final String heightUomId;
  final String virtualVariantMethodEnum;
  final double shippingWeight;
  final double shippingWidth;
  final double shippingDepth;
  final String accommodationMapId;
  final String scopeEnumId;
  final String inventoryItemTypeId;
  final int piecesIncluded;
  final double estimatedSetupMillis;
  final double productHeight;
  final String sourceReferenceId;
  final DateTime lastStatusUpdate;
  final String defaultShipmentBoxTypeId;
  final String orderDecimalQuantity;
  final double productWeight;
  final String depthUomId;
  final double totalMilliSecondsAllowed;
  final DateTime createdDate;
  final String isVariant;
  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String workEffortTypeId;
  final double reservPersons;
  final int revisionNumber;
  final String detailScreen;
  final String requireInventory;
  final String quantityUomId;
  final String tempExprId;
  final DateTime introductionDate;
  final double shippingHeight;
  final String detailImageUrl;
  final String includeInPromotions;
  final String configId;
  final String locationDesc;
  final int billOfMaterialLevel;
  final String lotIdFilledIn;
  final String brandName;
  final String smallImageUrl;
  final String workEffortPurposeTypeId;
  final DateTime estimatedStartDate;
  final String sendNotificationEmail;
  final String noteId;
  final double quantityRejected;
  final String currentStatusId;
  final double estimatedMilliSeconds;
  final DateTime thruDate;
  final String specialTerms;
  final DateTime fromDate; // pk
  final int timeTransparency;
  final DateTime actualCompletionDate;
  final String weightUomId;
  final String isVirtual;
  final String widthUomId;
  final String longDescription;
  final String autoCreateKeywords;
  final String estimateCalcMethod;
  final String amountUomTypeId;
  final String description;
  final String workEffortName;
  final String workEffortGoodStdTypeId; // pk
  final String internalName;
  final String lastModifiedByUserLogin;
  final DateTime actualStartDate;
  final double reservMaxPersons;
  final double fixedAmount;
  final double quantityProduced;
  final double productDepth;
  final String facilityId;
  final String comments;
  final DateTime lastModifiedDate;
  final DateTime releaseDate;
  final String inventoryMessage;
  final int percentComplete;
  final String productTypeId;
  final String largeImageUrl;
  final String requirementMethodEnumId;
  final double actualSetupMillis;
  final DateTime estimatedCompletionDate;
  WorkEffortProductGoods({entityId,
    this.originGeoId, this.mediumImageUrl, this.productName, this.originalImageUrl, this.inShippingBox, this.showAsEnumId, this.supportDiscontinuationDate, this.productWidth, this.infoUrl, this.universalId, this.productRating, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.requireAmount, @required this.productId, this.taxable, this.serviceLoaderName, this.accommodationSpotId, this.primaryProductCategoryId, this.salesDiscontinuationDate, this.estimatedCost, this.priority, this.runtimeDataId, this.salesDiscWhenNotAvail, this.returnable, this.statusId, this.fixedAssetId, this.reserv2ndPPPerc, this.priceDetailText, this.diameterUomId, this.totalMoneyAllowed, this.productDiameter, this.estimatedQuantity, this.ratingTypeEnum, this.workEffortParentId, this.moneyUomId, this.chargeShipping, this.reservNthPPPerc, this.quantityIncluded, this.heightUomId, this.virtualVariantMethodEnum, this.shippingWeight, this.shippingWidth, this.shippingDepth, this.accommodationMapId, this.scopeEnumId, this.inventoryItemTypeId, this.piecesIncluded, this.estimatedSetupMillis, this.productHeight, this.sourceReferenceId, this.lastStatusUpdate, this.defaultShipmentBoxTypeId, this.orderDecimalQuantity, this.productWeight, this.depthUomId, this.totalMilliSecondsAllowed, this.createdDate, this.isVariant, @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.detailScreen, this.requireInventory, this.quantityUomId, this.tempExprId, this.introductionDate, this.shippingHeight, this.detailImageUrl, this.includeInPromotions, this.configId, this.locationDesc, this.billOfMaterialLevel, this.lotIdFilledIn, this.brandName, this.smallImageUrl, this.workEffortPurposeTypeId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.currentStatusId, this.estimatedMilliSeconds, this.thruDate, this.specialTerms, @required this.fromDate, this.timeTransparency, this.actualCompletionDate, this.weightUomId, this.isVirtual, this.widthUomId, this.longDescription, this.autoCreateKeywords, this.estimateCalcMethod, this.amountUomTypeId, this.description, this.workEffortName, @required this.workEffortGoodStdTypeId, this.internalName, this.lastModifiedByUserLogin, this.actualStartDate, this.reservMaxPersons, this.fixedAmount, this.quantityProduced, this.productDepth, this.facilityId, this.comments, this.lastModifiedDate, this.releaseDate, this.inventoryMessage, this.percentComplete, this.productTypeId, this.largeImageUrl, this.requirementMethodEnumId, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortProductGoods { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originGeoId':originGeoId, 'mediumImageUrl':mediumImageUrl, 'productName':productName, 'originalImageUrl':originalImageUrl, 'inShippingBox':inShippingBox, 'showAsEnumId':showAsEnumId, 'supportDiscontinuationDate':supportDiscontinuationDate, 'productWidth':productWidth, 'infoUrl':infoUrl, 'universalId':universalId, 'productRating':productRating, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'requireAmount':requireAmount, 'productId':productId, 'taxable':taxable, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'primaryProductCategoryId':primaryProductCategoryId, 'salesDiscontinuationDate':salesDiscontinuationDate, 'estimatedCost':estimatedCost, 'priority':priority, 'runtimeDataId':runtimeDataId, 'salesDiscWhenNotAvail':salesDiscWhenNotAvail, 'returnable':returnable, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'priceDetailText':priceDetailText, 'diameterUomId':diameterUomId, 'totalMoneyAllowed':totalMoneyAllowed, 'productDiameter':productDiameter, 'estimatedQuantity':estimatedQuantity, 'ratingTypeEnum':ratingTypeEnum, 'workEffortParentId':workEffortParentId, 'moneyUomId':moneyUomId, 'chargeShipping':chargeShipping, 'reservNthPPPerc':reservNthPPPerc, 'quantityIncluded':quantityIncluded, 'heightUomId':heightUomId, 'virtualVariantMethodEnum':virtualVariantMethodEnum, 'shippingWeight':shippingWeight, 'shippingWidth':shippingWidth, 'shippingDepth':shippingDepth, 'accommodationMapId':accommodationMapId, 'scopeEnumId':scopeEnumId, 'inventoryItemTypeId':inventoryItemTypeId, 'piecesIncluded':piecesIncluded, 'estimatedSetupMillis':estimatedSetupMillis, 'productHeight':productHeight, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'defaultShipmentBoxTypeId':defaultShipmentBoxTypeId, 'orderDecimalQuantity':orderDecimalQuantity, 'productWeight':productWeight, 'depthUomId':depthUomId, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'isVariant':isVariant, 'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'detailScreen':detailScreen, 'requireInventory':requireInventory, 'quantityUomId':quantityUomId, 'tempExprId':tempExprId, 'introductionDate':introductionDate, 'shippingHeight':shippingHeight, 'detailImageUrl':detailImageUrl, 'includeInPromotions':includeInPromotions, 'configId':configId, 'locationDesc':locationDesc, 'billOfMaterialLevel':billOfMaterialLevel, 'lotIdFilledIn':lotIdFilledIn, 'brandName':brandName, 'smallImageUrl':smallImageUrl, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'currentStatusId':currentStatusId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'thruDate':thruDate, 'specialTerms':specialTerms, 'fromDate':fromDate, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'weightUomId':weightUomId, 'isVirtual':isVirtual, 'widthUomId':widthUomId, 'longDescription':longDescription, 'autoCreateKeywords':autoCreateKeywords, 'estimateCalcMethod':estimateCalcMethod, 'amountUomTypeId':amountUomTypeId, 'description':description, 'workEffortName':workEffortName, 'workEffortGoodStdTypeId':workEffortGoodStdTypeId, 'internalName':internalName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'actualStartDate':actualStartDate, 'reservMaxPersons':reservMaxPersons, 'fixedAmount':fixedAmount, 'quantityProduced':quantityProduced, 'productDepth':productDepth, 'facilityId':facilityId, 'comments':comments, 'lastModifiedDate':lastModifiedDate, 'releaseDate':releaseDate, 'inventoryMessage':inventoryMessage, 'percentComplete':percentComplete, 'productTypeId':productTypeId, 'largeImageUrl':largeImageUrl, 'requirementMethodEnumId':requirementMethodEnumId, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity WorkEffortPurposeType, Work Effort Purpose Type
class WorkEffortPurposeType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String workEffortPurposeTypeId; // pk
  final String description;
  WorkEffortPurposeType({entityId,
    this.parentTypeId, @required this.workEffortPurposeTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortPurposeType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'description':description};
  }

}

/// Entity WorkEffortQuoteView, Work Effort And Quote
class WorkEffortQuoteView extends EntityBase {

  final String workEffortId; // pk
  final String salesChannelEnumId;
  final String description;
  final String quoteId; // pk
  final DateTime validThruDate;
  final String quoteTypeId;
  final String currencyUomId;
  final String statusId;
  final String statusItemDescription;
  final DateTime validFromDate;
  final String productStoreId;
  final String partyId;
  final DateTime issueDate;
  final String quoteName;
  WorkEffortQuoteView({entityId,
    @required this.workEffortId, this.salesChannelEnumId, this.description, @required this.quoteId, this.validThruDate, this.quoteTypeId, this.currencyUomId, this.statusId, this.statusItemDescription, this.validFromDate, this.productStoreId, this.partyId, this.issueDate, this.quoteName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortQuoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'salesChannelEnumId':salesChannelEnumId, 'description':description, 'quoteId':quoteId, 'validThruDate':validThruDate, 'quoteTypeId':quoteTypeId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'statusItemDescription':statusItemDescription, 'validFromDate':validFromDate, 'productStoreId':productStoreId, 'partyId':partyId, 'issueDate':issueDate, 'quoteName':quoteName};
  }

}

/// Entity WorkEffortRequirementView, WorkRequirementFulfillment And Requirement
class WorkEffortRequirementView extends EntityBase {

  final String workEffortId; // pk
  final String workReqFulfTypeId;
  final String reason;
  final String facilityId;
  final double quantity;
  final String workReqFulfTypeDescription;
  final String productId;
  final DateTime lastModifiedDate;
  final double estimatedBudget;
  final String description;
  final DateTime requiredByDate;
  final String requirementDescription;
  final DateTime requirementStartDate;
  final String requirementTypeId;
  final String useCase;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String statusId;
  final String statusItemDescription;
  final String fixedAssetId;
  final String requirementId; // pk
  final String createdByUserLogin;
  final String deliverableId;
  WorkEffortRequirementView({entityId,
    @required this.workEffortId, this.workReqFulfTypeId, this.reason, this.facilityId, this.quantity, this.workReqFulfTypeDescription, this.productId, this.lastModifiedDate, this.estimatedBudget, this.description, this.requiredByDate, this.requirementDescription, this.requirementStartDate, this.requirementTypeId, this.useCase, this.lastModifiedByUserLogin, this.createdDate, this.statusId, this.statusItemDescription, this.fixedAssetId, @required this.requirementId, this.createdByUserLogin, this.deliverableId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortRequirementView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'workReqFulfTypeId':workReqFulfTypeId, 'reason':reason, 'facilityId':facilityId, 'quantity':quantity, 'workReqFulfTypeDescription':workReqFulfTypeDescription, 'productId':productId, 'lastModifiedDate':lastModifiedDate, 'estimatedBudget':estimatedBudget, 'description':description, 'requiredByDate':requiredByDate, 'requirementDescription':requirementDescription, 'requirementStartDate':requirementStartDate, 'requirementTypeId':requirementTypeId, 'useCase':useCase, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'statusId':statusId, 'statusItemDescription':statusItemDescription, 'fixedAssetId':fixedAssetId, 'requirementId':requirementId, 'createdByUserLogin':createdByUserLogin, 'deliverableId':deliverableId};
  }

}

/// Entity WorkEffortReview, WorkEffort Review
class WorkEffortReview extends EntityBase {

  final String workEffortId; // pk
  final String userLoginId; // pk
  final String statusId;
  final DateTime reviewDate; // pk
  final double rating;
  final String postedAnonymous;
  final String reviewText;
  WorkEffortReview({entityId,
    @required this.workEffortId, @required this.userLoginId, this.statusId, @required this.reviewDate, this.rating, this.postedAnonymous, this.reviewText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortReview { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'userLoginId':userLoginId, 'statusId':statusId, 'reviewDate':reviewDate, 'rating':rating, 'postedAnonymous':postedAnonymous, 'reviewText':reviewText};
  }

}

/// Entity WorkEffortSearchConstraint, WorkEffort Search Result Constraint
class WorkEffortSearchConstraint extends EntityBase {

  final String constraintSeqId; // pk
  final String anyPrefix;
  final String highValue;
  final String constraintName;
  final String workEffortSearchResultId; // pk
  final String isAnd;
  final String removeStems;
  final String lowValue;
  final String infoString;
  final String anySuffix;
  final String includeSubWorkEfforts;
  WorkEffortSearchConstraint({entityId,
    @required this.constraintSeqId, this.anyPrefix, this.highValue, this.constraintName, @required this.workEffortSearchResultId, this.isAnd, this.removeStems, this.lowValue, this.infoString, this.anySuffix, this.includeSubWorkEfforts,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortSearchConstraint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'constraintSeqId':constraintSeqId, 'anyPrefix':anyPrefix, 'highValue':highValue, 'constraintName':constraintName, 'workEffortSearchResultId':workEffortSearchResultId, 'isAnd':isAnd, 'removeStems':removeStems, 'lowValue':lowValue, 'infoString':infoString, 'anySuffix':anySuffix, 'includeSubWorkEfforts':includeSubWorkEfforts};
  }

}

/// Entity WorkEffortSearchResult, WorkEffort Search Result
class WorkEffortSearchResult extends EntityBase {

  /// this entity has only one pk
  final String workEffortSearchResultId; // pk
  final String visitId;
  final String orderByName;
  final int numResults;
  final double secondsTotal;
  final DateTime searchDate;
  final String isAscending;
  WorkEffortSearchResult({entityId,
    @required this.workEffortSearchResultId, this.visitId, this.orderByName, this.numResults, this.secondsTotal, this.searchDate, this.isAscending,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortSearchResult { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortSearchResultId':workEffortSearchResultId, 'visitId':visitId, 'orderByName':orderByName, 'numResults':numResults, 'secondsTotal':secondsTotal, 'searchDate':searchDate, 'isAscending':isAscending};
  }

}

/// Entity WorkEffortShoppingListView, Work Effort And ShoppingList
class WorkEffortShoppingListView extends EntityBase {

  final String workEffortId; // pk
  final String recurrenceInfoId;
  final String parentShoppingListId;
  final String productPromoCodeId;
  final String description;
  final String isActive;
  final String shoppingListTypeId;
  final String contactMechId;
  final String carrierPartyId;
  final String shoppingListId; // pk
  final String currencyUom;
  final DateTime lastOrderedDate;
  final String carrierRoleTypeId;
  final String paymentMethodId;
  final String shoppingListTypeDescription;
  final String isPublic;
  final String productStoreId;
  final String listName;
  final DateTime lastAdminModified;
  final String partyId;
  final String shipmentMethodTypeId;
  final String visitorId;
  WorkEffortShoppingListView({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.parentShoppingListId, this.productPromoCodeId, this.description, this.isActive, this.shoppingListTypeId, this.contactMechId, this.carrierPartyId, @required this.shoppingListId, this.currencyUom, this.lastOrderedDate, this.carrierRoleTypeId, this.paymentMethodId, this.shoppingListTypeDescription, this.isPublic, this.productStoreId, this.listName, this.lastAdminModified, this.partyId, this.shipmentMethodTypeId, this.visitorId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortShoppingListView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'parentShoppingListId':parentShoppingListId, 'productPromoCodeId':productPromoCodeId, 'description':description, 'isActive':isActive, 'shoppingListTypeId':shoppingListTypeId, 'contactMechId':contactMechId, 'carrierPartyId':carrierPartyId, 'shoppingListId':shoppingListId, 'currencyUom':currencyUom, 'lastOrderedDate':lastOrderedDate, 'carrierRoleTypeId':carrierRoleTypeId, 'paymentMethodId':paymentMethodId, 'shoppingListTypeDescription':shoppingListTypeDescription, 'isPublic':isPublic, 'productStoreId':productStoreId, 'listName':listName, 'lastAdminModified':lastAdminModified, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'visitorId':visitorId};
  }

}

/// Entity WorkEffortSkillStandard, Work Effort Skill Standard
class WorkEffortSkillStandard extends EntityBase {

  final String workEffortId; // pk
  final String skillTypeId; // pk
  final double estimatedNumPeople;
  final double estimatedCost;
  final double estimatedDuration;
  WorkEffortSkillStandard({entityId,
    @required this.workEffortId, @required this.skillTypeId, this.estimatedNumPeople, this.estimatedCost, this.estimatedDuration,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortSkillStandard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'skillTypeId':skillTypeId, 'estimatedNumPeople':estimatedNumPeople, 'estimatedCost':estimatedCost, 'estimatedDuration':estimatedDuration};
  }

}

/// Entity WorkEffortStatus, Work Effort Status
class WorkEffortStatus extends EntityBase {

  final String workEffortId; // pk
  final String reason;
  final String statusId; // pk
  final String setByUserLogin;
  final DateTime statusDatetime; // pk
  WorkEffortStatus({entityId,
    @required this.workEffortId, this.reason, @required this.statusId, this.setByUserLogin, @required this.statusDatetime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'reason':reason, 'statusId':statusId, 'setByUserLogin':setByUserLogin, 'statusDatetime':statusDatetime};
  }

}

/// Entity WorkEffortSurveyAppl, Work Effort Survey Appl
class WorkEffortSurveyAppl extends EntityBase {

  final String workEffortId; // pk
  final DateTime fromDate; // pk
  final String surveyId; // pk
  final DateTime thruDate;
  WorkEffortSurveyAppl({entityId,
    @required this.workEffortId, @required this.fromDate, @required this.surveyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortSurveyAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'fromDate':fromDate, 'surveyId':surveyId, 'thruDate':thruDate};
  }

}

/// Entity WorkEffortTransBox, Work Effort Transition Box
class WorkEffortTransBox extends EntityBase {

  final String toActivityId; // pk
  final String processWorkEffortId; // pk
  final String transitionId; // pk
  WorkEffortTransBox({entityId,
    @required this.toActivityId, @required this.processWorkEffortId, @required this.transitionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortTransBox { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'toActivityId':toActivityId, 'processWorkEffortId':processWorkEffortId, 'transitionId':transitionId};
  }

}

/// Entity WorkEffortType, Work Effort Type
class WorkEffortType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String workEffortTypeId; // pk
  final String hasTable;
  final String description;
  WorkEffortType({entityId,
    this.parentTypeId, @required this.workEffortTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'workEffortTypeId':workEffortTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity WorkEffortTypeAttr, Work Effort Type Attribute
class WorkEffortTypeAttr extends EntityBase {

  final String workEffortTypeId; // pk
  final String description;
  final String attrName; // pk
  WorkEffortTypeAttr({entityId,
    @required this.workEffortTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WorkEffortTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortTypeId':workEffortTypeId, 'description':description, 'attrName':attrName};
  }

}