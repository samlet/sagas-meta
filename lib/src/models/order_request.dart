import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CustReqAndTypeAndPartyRel, Customer Request And Role View Entity
class CustReqAndTypeAndPartyRel extends EntityBase {

  final String partyIdFrom; // pk
  final String reason;
  final String relStatusId;
  final String fromPartyId;
  final String salesChannelEnumId;
  final String fulfillContactMechId;
  final String description;
  final DateTime custRequestDate;
  final String internalComment;
  final String lastModifiedByUserLogin;
  final String custRequestId; // pk
  final String productStoreId;
  final String createdByUserLogin;
  final DateTime closedDateTime;
  final String roleTypeIdTo; // pk
  final String custRequestName;
  final DateTime responseRequiredDate;
  final DateTime lastModifiedDate;
  final String typeDescription;
  final String roleTypeIdFrom; // pk
  final int priority;
  final String maximumAmountUomId;
  final DateTime openDateTime;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyRelationshipTypeId;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusId;
  final String partyIdTo; // pk
  final String custRequestTypeId;
  final String custRequestCategoryId;
  CustReqAndTypeAndPartyRel({entityId,
    @required this.partyIdFrom, this.reason, this.relStatusId, this.fromPartyId, this.salesChannelEnumId, this.fulfillContactMechId, this.description, this.custRequestDate, this.internalComment, this.lastModifiedByUserLogin, @required this.custRequestId, this.productStoreId, this.createdByUserLogin, this.closedDateTime, @required this.roleTypeIdTo, this.custRequestName, this.responseRequiredDate, this.lastModifiedDate, this.typeDescription, @required this.roleTypeIdFrom, this.priority, this.maximumAmountUomId, this.openDateTime, this.thruDate, @required this.fromDate, this.partyRelationshipTypeId, this.currencyUomId, this.createdDate, this.statusId, @required this.partyIdTo, this.custRequestTypeId, this.custRequestCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustReqAndTypeAndPartyRel { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'reason':reason, 'relStatusId':relStatusId, 'fromPartyId':fromPartyId, 'salesChannelEnumId':salesChannelEnumId, 'fulfillContactMechId':fulfillContactMechId, 'description':description, 'custRequestDate':custRequestDate, 'internalComment':internalComment, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'custRequestId':custRequestId, 'productStoreId':productStoreId, 'createdByUserLogin':createdByUserLogin, 'closedDateTime':closedDateTime, 'roleTypeIdTo':roleTypeIdTo, 'custRequestName':custRequestName, 'responseRequiredDate':responseRequiredDate, 'lastModifiedDate':lastModifiedDate, 'typeDescription':typeDescription, 'roleTypeIdFrom':roleTypeIdFrom, 'priority':priority, 'maximumAmountUomId':maximumAmountUomId, 'openDateTime':openDateTime, 'thruDate':thruDate, 'fromDate':fromDate, 'partyRelationshipTypeId':partyRelationshipTypeId, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusId':statusId, 'partyIdTo':partyIdTo, 'custRequestTypeId':custRequestTypeId, 'custRequestCategoryId':custRequestCategoryId};
  }

}

/// Entity CustRequest, Customer Request
class CustRequest extends EntityBase {

  /// this entity has only one pk
  final String reason;
  final String fromPartyId;
  final String salesChannelEnumId;
  final String fulfillContactMechId;
  final String description;
  final DateTime custRequestDate;
  final String internalComment;
  final String lastModifiedByUserLogin;
  final String custRequestId; // pk
  final String productStoreId;
  final String createdByUserLogin;
  final DateTime closedDateTime;
  final String custRequestName;
  final DateTime responseRequiredDate;
  final DateTime lastModifiedDate;
  final int priority;
  final String maximumAmountUomId;
  final DateTime openDateTime;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusId;
  final String custRequestTypeId;
  final String custRequestCategoryId;
  CustRequest({entityId,
    this.reason, this.fromPartyId, this.salesChannelEnumId, this.fulfillContactMechId, this.description, this.custRequestDate, this.internalComment, this.lastModifiedByUserLogin, @required this.custRequestId, this.productStoreId, this.createdByUserLogin, this.closedDateTime, this.custRequestName, this.responseRequiredDate, this.lastModifiedDate, this.priority, this.maximumAmountUomId, this.openDateTime, this.currencyUomId, this.createdDate, this.statusId, this.custRequestTypeId, this.custRequestCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequest { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reason':reason, 'fromPartyId':fromPartyId, 'salesChannelEnumId':salesChannelEnumId, 'fulfillContactMechId':fulfillContactMechId, 'description':description, 'custRequestDate':custRequestDate, 'internalComment':internalComment, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'custRequestId':custRequestId, 'productStoreId':productStoreId, 'createdByUserLogin':createdByUserLogin, 'closedDateTime':closedDateTime, 'custRequestName':custRequestName, 'responseRequiredDate':responseRequiredDate, 'lastModifiedDate':lastModifiedDate, 'priority':priority, 'maximumAmountUomId':maximumAmountUomId, 'openDateTime':openDateTime, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusId':statusId, 'custRequestTypeId':custRequestTypeId, 'custRequestCategoryId':custRequestCategoryId};
  }

}

/// Entity CustRequestAndCommEvent, Customer Request And CommunicationEvent
class CustRequestAndCommEvent extends EntityBase {

  final String reason;
  final String fromPartyId;
  final String custRequestName;
  final String salesChannelEnumId;
  final DateTime responseRequiredDate;
  final DateTime lastModifiedDate;
  final String fulfillContactMechId;
  final String description;
  final DateTime custRequestDate;
  final int priority;
  final String maximumAmountUomId;
  final DateTime openDateTime;
  final String internalComment;
  final String lastModifiedByUserLogin;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusId;
  final String communicationEventId; // pk
  final String custRequestId; // pk
  final String custRequestTypeId;
  final String productStoreId;
  final String createdByUserLogin;
  final String custRequestCategoryId;
  final DateTime closedDateTime;
  CustRequestAndCommEvent({entityId,
    this.reason, this.fromPartyId, this.custRequestName, this.salesChannelEnumId, this.responseRequiredDate, this.lastModifiedDate, this.fulfillContactMechId, this.description, this.custRequestDate, this.priority, this.maximumAmountUomId, this.openDateTime, this.internalComment, this.lastModifiedByUserLogin, this.currencyUomId, this.createdDate, this.statusId, @required this.communicationEventId, @required this.custRequestId, this.custRequestTypeId, this.productStoreId, this.createdByUserLogin, this.custRequestCategoryId, this.closedDateTime,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAndCommEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reason':reason, 'fromPartyId':fromPartyId, 'custRequestName':custRequestName, 'salesChannelEnumId':salesChannelEnumId, 'responseRequiredDate':responseRequiredDate, 'lastModifiedDate':lastModifiedDate, 'fulfillContactMechId':fulfillContactMechId, 'description':description, 'custRequestDate':custRequestDate, 'priority':priority, 'maximumAmountUomId':maximumAmountUomId, 'openDateTime':openDateTime, 'internalComment':internalComment, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusId':statusId, 'communicationEventId':communicationEventId, 'custRequestId':custRequestId, 'custRequestTypeId':custRequestTypeId, 'productStoreId':productStoreId, 'createdByUserLogin':createdByUserLogin, 'custRequestCategoryId':custRequestCategoryId, 'closedDateTime':closedDateTime};
  }

}

/// Entity CustRequestAndContent, Customer Request And Content View Entity
class CustRequestAndContent extends EntityBase {

  final String ownerContentId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String dataResourceId;
  final String custRequestId; // pk
  final String createdByUserLogin;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String decoratorContentId;
  final int childBranchCount;
  CustRequestAndContent({entityId,
    this.ownerContentId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.dataResourceId, @required this.custRequestId, this.createdByUserLogin, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.thruDate, this.contentName, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.decoratorContentId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAndContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerContentId':ownerContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataResourceId':dataResourceId, 'custRequestId':custRequestId, 'createdByUserLogin':createdByUserLogin, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'childBranchCount':childBranchCount};
  }

}

/// Entity CustRequestAndNote, Customer Request And Note
class CustRequestAndNote extends EntityBase {

  final String noteName;
  final DateTime noteDateTime;
  final String moreInfoItemName;
  final String custRequestId; // pk
  final String noteInfo;
  final String moreInfoUrl;
  final String noteId; // pk
  final String moreInfoItemId;
  final String noteParty;
  CustRequestAndNote({entityId,
    this.noteName, this.noteDateTime, this.moreInfoItemName, @required this.custRequestId, this.noteInfo, this.moreInfoUrl, @required this.noteId, this.moreInfoItemId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAndNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'noteName':noteName, 'noteDateTime':noteDateTime, 'moreInfoItemName':moreInfoItemName, 'custRequestId':custRequestId, 'noteInfo':noteInfo, 'moreInfoUrl':moreInfoUrl, 'noteId':noteId, 'moreInfoItemId':moreInfoItemId, 'noteParty':noteParty};
  }

}

/// Entity CustRequestAndRole, Customer Request And Role View Entity
class CustRequestAndRole extends EntityBase {

  final String fromPartyId;
  final String custRequestName;
  final String roleTypeId; // pk
  final DateTime responseRequiredDate;
  final DateTime lastModifiedDate;
  final String description;
  final DateTime custRequestDate;
  final int priority;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String statusId;
  final String custRequestId; // pk
  final String custRequestTypeId;
  final String partyId; // pk
  CustRequestAndRole({entityId,
    this.fromPartyId, this.custRequestName, @required this.roleTypeId, this.responseRequiredDate, this.lastModifiedDate, this.description, this.custRequestDate, this.priority, this.thruDate, @required this.fromDate, this.lastModifiedByUserLogin, this.createdDate, this.statusId, @required this.custRequestId, this.custRequestTypeId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromPartyId':fromPartyId, 'custRequestName':custRequestName, 'roleTypeId':roleTypeId, 'responseRequiredDate':responseRequiredDate, 'lastModifiedDate':lastModifiedDate, 'description':description, 'custRequestDate':custRequestDate, 'priority':priority, 'thruDate':thruDate, 'fromDate':fromDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'statusId':statusId, 'custRequestId':custRequestId, 'custRequestTypeId':custRequestTypeId, 'partyId':partyId};
  }

}

/// Entity CustRequestAndWorkEffort, Customer Request And WorkEffort
class CustRequestAndWorkEffort extends EntityBase {

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
  final String custRequestId; // pk
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
  CustRequestAndWorkEffort({entityId,
    @required this.workEffortId, this.recurrenceInfoId, this.workEffortTypeId, this.reservPersons, this.revisionNumber, this.tempExprId, this.showAsEnumId, this.infoUrl, this.universalId, this.locationDesc, this.createdByUserLogin, this.actualMilliSeconds, this.quantityToProduce, this.workEffortPurposeTypeId, this.serviceLoaderName, this.accommodationSpotId, this.estimatedStartDate, this.sendNotificationEmail, this.noteId, this.quantityRejected, this.priority, this.currentStatusId, this.runtimeDataId, this.estimatedMilliSeconds, this.specialTerms, this.timeTransparency, this.actualCompletionDate, this.fixedAssetId, this.reserv2ndPPPerc, this.totalMoneyAllowed, this.estimateCalcMethod, this.workEffortParentId, this.description, this.moneyUomId, this.reservNthPPPerc, this.workEffortName, this.lastModifiedByUserLogin, this.accommodationMapId, @required this.custRequestId, this.actualStartDate, this.scopeEnumId, this.quantityProduced, this.facilityId, this.estimatedSetupMillis, this.lastModifiedDate, this.sourceReferenceId, this.lastStatusUpdate, this.percentComplete, this.totalMilliSecondsAllowed, this.createdDate, this.actualSetupMillis, this.estimatedCompletionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAndWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'recurrenceInfoId':recurrenceInfoId, 'workEffortTypeId':workEffortTypeId, 'reservPersons':reservPersons, 'revisionNumber':revisionNumber, 'tempExprId':tempExprId, 'showAsEnumId':showAsEnumId, 'infoUrl':infoUrl, 'universalId':universalId, 'locationDesc':locationDesc, 'createdByUserLogin':createdByUserLogin, 'actualMilliSeconds':actualMilliSeconds, 'quantityToProduce':quantityToProduce, 'workEffortPurposeTypeId':workEffortPurposeTypeId, 'serviceLoaderName':serviceLoaderName, 'accommodationSpotId':accommodationSpotId, 'estimatedStartDate':estimatedStartDate, 'sendNotificationEmail':sendNotificationEmail, 'noteId':noteId, 'quantityRejected':quantityRejected, 'priority':priority, 'currentStatusId':currentStatusId, 'runtimeDataId':runtimeDataId, 'estimatedMilliSeconds':estimatedMilliSeconds, 'specialTerms':specialTerms, 'timeTransparency':timeTransparency, 'actualCompletionDate':actualCompletionDate, 'fixedAssetId':fixedAssetId, 'reserv2ndPPPerc':reserv2ndPPPerc, 'totalMoneyAllowed':totalMoneyAllowed, 'estimateCalcMethod':estimateCalcMethod, 'workEffortParentId':workEffortParentId, 'description':description, 'moneyUomId':moneyUomId, 'reservNthPPPerc':reservNthPPPerc, 'workEffortName':workEffortName, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'accommodationMapId':accommodationMapId, 'custRequestId':custRequestId, 'actualStartDate':actualStartDate, 'scopeEnumId':scopeEnumId, 'quantityProduced':quantityProduced, 'facilityId':facilityId, 'estimatedSetupMillis':estimatedSetupMillis, 'lastModifiedDate':lastModifiedDate, 'sourceReferenceId':sourceReferenceId, 'lastStatusUpdate':lastStatusUpdate, 'percentComplete':percentComplete, 'totalMilliSecondsAllowed':totalMilliSecondsAllowed, 'createdDate':createdDate, 'actualSetupMillis':actualSetupMillis, 'estimatedCompletionDate':estimatedCompletionDate};
  }

}

/// Entity CustRequestAttribute, Customer Request Attribute
class CustRequestAttribute extends EntityBase {

  final String attrDescription;
  final String custRequestId; // pk
  final String attrValue;
  final String attrName; // pk
  CustRequestAttribute({entityId,
    this.attrDescription, @required this.custRequestId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'custRequestId':custRequestId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity CustRequestCategory, Customer Category Type
class CustRequestCategory extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String custRequestTypeId;
  final String custRequestCategoryId; // pk
  CustRequestCategory({entityId,
    this.description, this.custRequestTypeId, @required this.custRequestCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'custRequestTypeId':custRequestTypeId, 'custRequestCategoryId':custRequestCategoryId};
  }

}

/// Entity CustRequestCommEvent, Customer Request Communication Event
class CustRequestCommEvent extends EntityBase {

  final String custRequestId; // pk
  final String communicationEventId; // pk
  CustRequestCommEvent({entityId,
    @required this.custRequestId, @required this.communicationEventId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestCommEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestId':custRequestId, 'communicationEventId':communicationEventId};
  }

}

/// Entity CustRequestContent, Customer Request Content
class CustRequestContent extends EntityBase {

  final DateTime fromDate; // pk
  final String contentId; // pk
  final String custRequestId; // pk
  final DateTime thruDate;
  CustRequestContent({entityId,
    @required this.fromDate, @required this.contentId, @required this.custRequestId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'contentId':contentId, 'custRequestId':custRequestId, 'thruDate':thruDate};
  }

}

/// Entity CustRequestInfoAndWorkEffortAndPartyRel, Customer Request And WorkEffort
class CustRequestInfoAndWorkEffortAndPartyRel extends EntityBase {

  final String workEffortId; // pk
  final String partyIdFrom; // pk
  final String reason;
  final String fromPartyId;
  final String salesChannelEnumId;
  final String fulfillContactMechId;
  final String description;
  final DateTime custRequestDate;
  final String internalComment;
  final String lastModifiedByUserLogin;
  final String custRequestId; // pk
  final String productStoreId;
  final String createdByUserLogin;
  final DateTime closedDateTime;
  final String roleTypeIdTo; // pk
  final String custRequestName;
  final DateTime responseRequiredDate;
  final DateTime lastModifiedDate;
  final String roleTypeIdFrom; // pk
  final int priority;
  final String maximumAmountUomId;
  final DateTime openDateTime;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusId;
  final String partyIdTo; // pk
  final String custRequestTypeId;
  final String custRequestCategoryId;
  CustRequestInfoAndWorkEffortAndPartyRel({entityId,
    @required this.workEffortId, @required this.partyIdFrom, this.reason, this.fromPartyId, this.salesChannelEnumId, this.fulfillContactMechId, this.description, this.custRequestDate, this.internalComment, this.lastModifiedByUserLogin, @required this.custRequestId, this.productStoreId, this.createdByUserLogin, this.closedDateTime, @required this.roleTypeIdTo, this.custRequestName, this.responseRequiredDate, this.lastModifiedDate, @required this.roleTypeIdFrom, this.priority, this.maximumAmountUomId, this.openDateTime, this.currencyUomId, this.createdDate, this.statusId, @required this.partyIdTo, this.custRequestTypeId, this.custRequestCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestInfoAndWorkEffortAndPartyRel { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'partyIdFrom':partyIdFrom, 'reason':reason, 'fromPartyId':fromPartyId, 'salesChannelEnumId':salesChannelEnumId, 'fulfillContactMechId':fulfillContactMechId, 'description':description, 'custRequestDate':custRequestDate, 'internalComment':internalComment, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'custRequestId':custRequestId, 'productStoreId':productStoreId, 'createdByUserLogin':createdByUserLogin, 'closedDateTime':closedDateTime, 'roleTypeIdTo':roleTypeIdTo, 'custRequestName':custRequestName, 'responseRequiredDate':responseRequiredDate, 'lastModifiedDate':lastModifiedDate, 'roleTypeIdFrom':roleTypeIdFrom, 'priority':priority, 'maximumAmountUomId':maximumAmountUomId, 'openDateTime':openDateTime, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusId':statusId, 'partyIdTo':partyIdTo, 'custRequestTypeId':custRequestTypeId, 'custRequestCategoryId':custRequestCategoryId};
  }

}

/// Entity CustRequestItem, Customer Request Item
class CustRequestItem extends EntityBase {

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
  final DateTime reservStart;
  final String configId;
  final String custRequestId; // pk
  final double selectedAmount;
  final String story;
  CustRequestItem({entityId,
    this.custRequestResolutionId, this.quantity, this.reservLength, this.sequenceNum, this.productId, this.reservPersons, this.maximumAmount, this.requiredByDate, this.description, this.priority, @required this.custRequestItemSeqId, this.statusId, this.reservStart, this.configId, @required this.custRequestId, this.selectedAmount, this.story,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestResolutionId':custRequestResolutionId, 'quantity':quantity, 'reservLength':reservLength, 'sequenceNum':sequenceNum, 'productId':productId, 'reservPersons':reservPersons, 'maximumAmount':maximumAmount, 'requiredByDate':requiredByDate, 'description':description, 'priority':priority, 'custRequestItemSeqId':custRequestItemSeqId, 'statusId':statusId, 'reservStart':reservStart, 'configId':configId, 'custRequestId':custRequestId, 'selectedAmount':selectedAmount, 'story':story};
  }

}

/// Entity CustRequestItemNote, Customer Request Item Note
class CustRequestItemNote extends EntityBase {

  final String custRequestId; // pk
  final String noteId; // pk
  final String custRequestItemSeqId; // pk
  CustRequestItemNote({entityId,
    @required this.custRequestId, @required this.noteId, @required this.custRequestItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestItemNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestId':custRequestId, 'noteId':noteId, 'custRequestItemSeqId':custRequestItemSeqId};
  }

}

/// Entity CustRequestItemNoteView, Customer Request Item and Note View Entity
class CustRequestItemNoteView extends EntityBase {

  final String firstName;
  final String lastName;
  final String noteName;
  final DateTime noteDateTime;
  final String custRequestId; // pk
  final String noteInfo;
  final String noteId; // pk
  final String partyId; // pk
  final String custRequestItemSeqId; // pk
  CustRequestItemNoteView({entityId,
    this.firstName, this.lastName, this.noteName, this.noteDateTime, @required this.custRequestId, this.noteInfo, @required this.noteId, @required this.partyId, @required this.custRequestItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestItemNoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstName':firstName, 'lastName':lastName, 'noteName':noteName, 'noteDateTime':noteDateTime, 'custRequestId':custRequestId, 'noteInfo':noteInfo, 'noteId':noteId, 'partyId':partyId, 'custRequestItemSeqId':custRequestItemSeqId};
  }

}

/// Entity CustRequestItemWorkEffort, Cust Request Item Work Effort
class CustRequestItemWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String custRequestId; // pk
  final String custRequestItemSeqId; // pk
  CustRequestItemWorkEffort({entityId,
    @required this.workEffortId, @required this.custRequestId, @required this.custRequestItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestItemWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'custRequestId':custRequestId, 'custRequestItemSeqId':custRequestItemSeqId};
  }

}

/// Entity CustRequestNote, Customer Request Note
class CustRequestNote extends EntityBase {

  final String custRequestId; // pk
  final String noteId; // pk
  CustRequestNote({entityId,
    @required this.custRequestId, @required this.noteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestId':custRequestId, 'noteId':noteId};
  }

}

/// Entity CustRequestNoteView, Customer Request and Note View Entity
class CustRequestNoteView extends EntityBase {

  final String firstName;
  final String lastName;
  final String noteName;
  final DateTime noteDateTime;
  final String custRequestId; // pk
  final String noteInfo;
  final String noteId; // pk
  final String noteParty; // pk
  CustRequestNoteView({entityId,
    this.firstName, this.lastName, this.noteName, this.noteDateTime, @required this.custRequestId, this.noteInfo, @required this.noteId, @required this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestNoteView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstName':firstName, 'lastName':lastName, 'noteName':noteName, 'noteDateTime':noteDateTime, 'custRequestId':custRequestId, 'noteInfo':noteInfo, 'noteId':noteId, 'noteParty':noteParty};
  }

}

/// Entity CustRequestParty, Customer Request Role
class CustRequestParty extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String custRequestId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  CustRequestParty({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.custRequestId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'custRequestId':custRequestId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity CustRequestResolution, Customer Request Resolution
class CustRequestResolution extends EntityBase {

  /// this entity has only one pk
  final String custRequestResolutionId; // pk
  final String description;
  final String custRequestTypeId;
  CustRequestResolution({entityId,
    @required this.custRequestResolutionId, this.description, this.custRequestTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestResolution { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'custRequestResolutionId':custRequestResolutionId, 'description':description, 'custRequestTypeId':custRequestTypeId};
  }

}

/// Entity CustRequestStatus, Customer Request Status
class CustRequestStatus extends EntityBase {

  /// this entity has only one pk
  final DateTime statusDate;
  final String statusId;
  final String custRequestId;
  final String custRequestStatusId; // pk
  final String changeByUserLoginId;
  final String custRequestItemSeqId;
  CustRequestStatus({entityId,
    this.statusDate, this.statusId, this.custRequestId, @required this.custRequestStatusId, this.changeByUserLoginId, this.custRequestItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'custRequestId':custRequestId, 'custRequestStatusId':custRequestStatusId, 'changeByUserLoginId':changeByUserLoginId, 'custRequestItemSeqId':custRequestItemSeqId};
  }

}

/// Entity CustRequestType, Customer Request Type
class CustRequestType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String custRequestTypeId; // pk
  final String partyId;
  CustRequestType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.custRequestTypeId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'custRequestTypeId':custRequestTypeId, 'partyId':partyId};
  }

}

/// Entity CustRequestTypeAttr, Customer Request Type Attribute
class CustRequestTypeAttr extends EntityBase {

  final String description;
  final String custRequestTypeId; // pk
  final String attrName; // pk
  CustRequestTypeAttr({entityId,
    this.description, @required this.custRequestTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'custRequestTypeId':custRequestTypeId, 'attrName':attrName};
  }

}

/// Entity CustRequestWorkEffort, Cust Request Work Effort
class CustRequestWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String custRequestId; // pk
  CustRequestWorkEffort({entityId,
    @required this.workEffortId, @required this.custRequestId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustRequestWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'custRequestId':custRequestId};
  }

}

/// Entity RequirementAndRole, Requirement And Role View Entity
class RequirementAndRole extends EntityBase {

  final String reason;
  final String roleTypeId; // pk
  final String facilityId;
  final double quantity;
  final String productId;
  final DateTime lastModifiedDate;
  final double estimatedBudget;
  final String description;
  final DateTime requiredByDate;
  final DateTime requirementStartDate;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String requirementTypeId;
  final String lastModifiedByUserLogin;
  final String statusId;
  final String fixedAssetId;
  final String requirementId; // pk
  final String partyId; // pk
  final String deliverableId;
  RequirementAndRole({entityId,
    this.reason, @required this.roleTypeId, this.facilityId, this.quantity, this.productId, this.lastModifiedDate, this.estimatedBudget, this.description, this.requiredByDate, this.requirementStartDate, this.thruDate, @required this.fromDate, this.requirementTypeId, this.lastModifiedByUserLogin, this.statusId, this.fixedAssetId, @required this.requirementId, @required this.partyId, this.deliverableId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'reason':reason, 'roleTypeId':roleTypeId, 'facilityId':facilityId, 'quantity':quantity, 'productId':productId, 'lastModifiedDate':lastModifiedDate, 'estimatedBudget':estimatedBudget, 'description':description, 'requiredByDate':requiredByDate, 'requirementStartDate':requirementStartDate, 'thruDate':thruDate, 'fromDate':fromDate, 'requirementTypeId':requirementTypeId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'statusId':statusId, 'fixedAssetId':fixedAssetId, 'requirementId':requirementId, 'partyId':partyId, 'deliverableId':deliverableId};
  }

}

/// Entity RequirementByProductFacility, Sum of Requirement entity quantities, grouped by productId, facilityId, statusId
class RequirementByProductFacility extends EntityBase {

  final String facilityId;
  final double quantity;
  final String statusId;
  final String productId;
  RequirementByProductFacility({entityId,
    this.facilityId, this.quantity, this.statusId, this.productId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementByProductFacility { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'facilityId':facilityId, 'quantity':quantity, 'statusId':statusId, 'productId':productId};
  }

}

/// Entity RequirementCustRequestView, Requirement Customer Request View Entity
class RequirementCustRequestView extends EntityBase {

  final double quantity;
  final String productId;
  final double maximumAmount;
  final double estimatedBudget;
  final String description;
  final DateTime requiredByDate;
  final DateTime requirementStartDate;
  final int priority;
  final String custRequestItemSeqId; // pk
  final String requirementTypeId;
  final String statusId;
  final String custRequestId; // pk
  final String requirementId; // pk
  RequirementCustRequestView({entityId,
    this.quantity, this.productId, this.maximumAmount, this.estimatedBudget, this.description, this.requiredByDate, this.requirementStartDate, this.priority, @required this.custRequestItemSeqId, this.requirementTypeId, this.statusId, @required this.custRequestId, @required this.requirementId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementCustRequestView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'productId':productId, 'maximumAmount':maximumAmount, 'estimatedBudget':estimatedBudget, 'description':description, 'requiredByDate':requiredByDate, 'requirementStartDate':requirementStartDate, 'priority':priority, 'custRequestItemSeqId':custRequestItemSeqId, 'requirementTypeId':requirementTypeId, 'statusId':statusId, 'custRequestId':custRequestId, 'requirementId':requirementId};
  }

}

/// Entity RequirementPartyProductCount, A join on Requirement and RequirementRole to count number of distinct products required from a supplier party
class RequirementPartyProductCount extends EntityBase {

  final DateTime fromDate; // pk
  final String requirementTypeId;
  final String roleTypeId; // pk
  final String statusId;
  final int productId;
  final String partyId; // pk
  final DateTime thruDate;
  RequirementPartyProductCount({entityId,
    @required this.fromDate, this.requirementTypeId, @required this.roleTypeId, this.statusId, this.productId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RequirementPartyProductCount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'requirementTypeId':requirementTypeId, 'roleTypeId':roleTypeId, 'statusId':statusId, 'productId':productId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity RespondingParty, Responding Party
class RespondingParty extends EntityBase {

  final String respondingPartySeqId; // pk
  final String custRequestId; // pk
  final String partyId; // pk
  final DateTime dateSent;
  final String contactMechId;
  RespondingParty({entityId,
    @required this.respondingPartySeqId, @required this.custRequestId, @required this.partyId, this.dateSent, this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RespondingParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'respondingPartySeqId':respondingPartySeqId, 'custRequestId':custRequestId, 'partyId':partyId, 'dateSent':dateSent, 'contactMechId':contactMechId};
  }

}