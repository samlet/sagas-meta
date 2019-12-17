import 'package:sagas_meta/src/models/order_request.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderRequestJsonifier{
  static CustReqAndTypeAndPartyRel extractCustReqAndTypeAndPartyRel(dynamic json) {
    return CustReqAndTypeAndPartyRel(
        entityId: create_id_from('CustReqAndTypeAndPartyRel', ['partyIdFrom', 'roleTypeIdFrom', 'partyIdTo', 'roleTypeIdTo', 'fromDate', 'custRequestId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        reason: json['reason'] as String,
        relStatusId: json['relStatusId'] as String,
        fromPartyId: json['fromPartyId'] as String,
        salesChannelEnumId: json['salesChannelEnumId'] as String,
        fulfillContactMechId: json['fulfillContactMechId'] as String,
        description: json['description'] as String,
        custRequestDate: check_dt(json['custRequestDate']),
        internalComment: json['internalComment'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        custRequestId: json['custRequestId'] as String,
        productStoreId: json['productStoreId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        closedDateTime: check_dt(json['closedDateTime']),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        custRequestName: json['custRequestName'] as String,
        responseRequiredDate: check_dt(json['responseRequiredDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        typeDescription: json['typeDescription'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        priority: json['priority'] as int,
        maximumAmountUomId: json['maximumAmountUomId'] as String,
        openDateTime: check_dt(json['openDateTime']),
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyRelationshipTypeId: json['partyRelationshipTypeId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        custRequestCategoryId: json['custRequestCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustReqAndTypeAndPartyRel overridesCustReqAndTypeAndPartyRel(Map<String, dynamic> map) {
    return CustReqAndTypeAndPartyRel(
        entityId: create_id_from('CustReqAndTypeAndPartyRel', ['partyIdFrom', 'roleTypeIdFrom', 'partyIdTo', 'roleTypeIdTo', 'fromDate', 'custRequestId'], map),
        partyIdFrom: map['partyIdFrom'],
        reason: map['reason'],
        relStatusId: map['relStatusId'],
        fromPartyId: map['fromPartyId'],
        salesChannelEnumId: map['salesChannelEnumId'],
        fulfillContactMechId: map['fulfillContactMechId'],
        description: map['description'],
        custRequestDate: map['custRequestDate'],
        internalComment: map['internalComment'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        custRequestId: map['custRequestId'],
        productStoreId: map['productStoreId'],
        createdByUserLogin: map['createdByUserLogin'],
        closedDateTime: map['closedDateTime'],
        roleTypeIdTo: map['roleTypeIdTo'],
        custRequestName: map['custRequestName'],
        responseRequiredDate: map['responseRequiredDate'],
        lastModifiedDate: map['lastModifiedDate'],
        typeDescription: map['typeDescription'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        priority: map['priority'],
        maximumAmountUomId: map['maximumAmountUomId'],
        openDateTime: map['openDateTime'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyRelationshipTypeId: map['partyRelationshipTypeId'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        custRequestTypeId: map['custRequestTypeId'],
        custRequestCategoryId: map['custRequestCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequest extractCustRequest(dynamic json) {
    return CustRequest(
        entityId: create_id_from('CustRequest', ['custRequestId'], json),
        reason: json['reason'] as String,
        fromPartyId: json['fromPartyId'] as String,
        salesChannelEnumId: json['salesChannelEnumId'] as String,
        fulfillContactMechId: json['fulfillContactMechId'] as String,
        description: json['description'] as String,
        custRequestDate: check_dt(json['custRequestDate']),
        internalComment: json['internalComment'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        custRequestId: json['custRequestId'] as String,
        productStoreId: json['productStoreId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        closedDateTime: check_dt(json['closedDateTime']),
        custRequestName: json['custRequestName'] as String,
        responseRequiredDate: check_dt(json['responseRequiredDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        priority: json['priority'] as int,
        maximumAmountUomId: json['maximumAmountUomId'] as String,
        openDateTime: check_dt(json['openDateTime']),
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        custRequestCategoryId: json['custRequestCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequest overridesCustRequest(Map<String, dynamic> map) {
    return CustRequest(
        entityId: create_id_from('CustRequest', ['custRequestId'], map),
        reason: map['reason'],
        fromPartyId: map['fromPartyId'],
        salesChannelEnumId: map['salesChannelEnumId'],
        fulfillContactMechId: map['fulfillContactMechId'],
        description: map['description'],
        custRequestDate: map['custRequestDate'],
        internalComment: map['internalComment'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        custRequestId: map['custRequestId'],
        productStoreId: map['productStoreId'],
        createdByUserLogin: map['createdByUserLogin'],
        closedDateTime: map['closedDateTime'],
        custRequestName: map['custRequestName'],
        responseRequiredDate: map['responseRequiredDate'],
        lastModifiedDate: map['lastModifiedDate'],
        priority: map['priority'],
        maximumAmountUomId: map['maximumAmountUomId'],
        openDateTime: map['openDateTime'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        custRequestTypeId: map['custRequestTypeId'],
        custRequestCategoryId: map['custRequestCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAndCommEvent extractCustRequestAndCommEvent(dynamic json) {
    return CustRequestAndCommEvent(
        entityId: create_id_from('CustRequestAndCommEvent', ['communicationEventId', 'custRequestId'], json),
        reason: json['reason'] as String,
        fromPartyId: json['fromPartyId'] as String,
        custRequestName: json['custRequestName'] as String,
        salesChannelEnumId: json['salesChannelEnumId'] as String,
        responseRequiredDate: check_dt(json['responseRequiredDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        fulfillContactMechId: json['fulfillContactMechId'] as String,
        description: json['description'] as String,
        custRequestDate: check_dt(json['custRequestDate']),
        priority: json['priority'] as int,
        maximumAmountUomId: json['maximumAmountUomId'] as String,
        openDateTime: check_dt(json['openDateTime']),
        internalComment: json['internalComment'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        custRequestId: json['custRequestId'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        productStoreId: json['productStoreId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        custRequestCategoryId: json['custRequestCategoryId'] as String,
        closedDateTime: check_dt(json['closedDateTime']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAndCommEvent overridesCustRequestAndCommEvent(Map<String, dynamic> map) {
    return CustRequestAndCommEvent(
        entityId: create_id_from('CustRequestAndCommEvent', ['communicationEventId', 'custRequestId'], map),
        reason: map['reason'],
        fromPartyId: map['fromPartyId'],
        custRequestName: map['custRequestName'],
        salesChannelEnumId: map['salesChannelEnumId'],
        responseRequiredDate: map['responseRequiredDate'],
        lastModifiedDate: map['lastModifiedDate'],
        fulfillContactMechId: map['fulfillContactMechId'],
        description: map['description'],
        custRequestDate: map['custRequestDate'],
        priority: map['priority'],
        maximumAmountUomId: map['maximumAmountUomId'],
        openDateTime: map['openDateTime'],
        internalComment: map['internalComment'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        custRequestId: map['custRequestId'],
        custRequestTypeId: map['custRequestTypeId'],
        productStoreId: map['productStoreId'],
        createdByUserLogin: map['createdByUserLogin'],
        custRequestCategoryId: map['custRequestCategoryId'],
        closedDateTime: map['closedDateTime'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAndContent extractCustRequestAndContent(dynamic json) {
    return CustRequestAndContent(
        entityId: create_id_from('CustRequestAndContent', ['fromDate', 'custRequestId', 'contentId'], json),
        ownerContentId: json['ownerContentId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        dataResourceId: json['dataResourceId'] as String,
        custRequestId: json['custRequestId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        fromDate: check_dt(json['fromDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAndContent overridesCustRequestAndContent(Map<String, dynamic> map) {
    return CustRequestAndContent(
        entityId: create_id_from('CustRequestAndContent', ['fromDate', 'custRequestId', 'contentId'], map),
        ownerContentId: map['ownerContentId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        dataResourceId: map['dataResourceId'],
        custRequestId: map['custRequestId'],
        createdByUserLogin: map['createdByUserLogin'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        fromDate: map['fromDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        decoratorContentId: map['decoratorContentId'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAndNote extractCustRequestAndNote(dynamic json) {
    return CustRequestAndNote(
        entityId: create_id_from('CustRequestAndNote', ['custRequestId', 'noteId'], json),
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        moreInfoItemName: json['moreInfoItemName'] as String,
        custRequestId: json['custRequestId'] as String,
        noteInfo: json['noteInfo'] as String,
        moreInfoUrl: json['moreInfoUrl'] as String,
        noteId: json['noteId'] as String,
        moreInfoItemId: json['moreInfoItemId'] as String,
        noteParty: json['noteParty'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAndNote overridesCustRequestAndNote(Map<String, dynamic> map) {
    return CustRequestAndNote(
        entityId: create_id_from('CustRequestAndNote', ['custRequestId', 'noteId'], map),
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        moreInfoItemName: map['moreInfoItemName'],
        custRequestId: map['custRequestId'],
        noteInfo: map['noteInfo'],
        moreInfoUrl: map['moreInfoUrl'],
        noteId: map['noteId'],
        moreInfoItemId: map['moreInfoItemId'],
        noteParty: map['noteParty'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAndRole extractCustRequestAndRole(dynamic json) {
    return CustRequestAndRole(
        entityId: create_id_from('CustRequestAndRole', ['custRequestId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromPartyId: json['fromPartyId'] as String,
        custRequestName: json['custRequestName'] as String,
        roleTypeId: json['roleTypeId'] as String,
        responseRequiredDate: check_dt(json['responseRequiredDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        description: json['description'] as String,
        custRequestDate: check_dt(json['custRequestDate']),
        priority: json['priority'] as int,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        custRequestId: json['custRequestId'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAndRole overridesCustRequestAndRole(Map<String, dynamic> map) {
    return CustRequestAndRole(
        entityId: create_id_from('CustRequestAndRole', ['custRequestId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromPartyId: map['fromPartyId'],
        custRequestName: map['custRequestName'],
        roleTypeId: map['roleTypeId'],
        responseRequiredDate: map['responseRequiredDate'],
        lastModifiedDate: map['lastModifiedDate'],
        description: map['description'],
        custRequestDate: map['custRequestDate'],
        priority: map['priority'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        custRequestId: map['custRequestId'],
        custRequestTypeId: map['custRequestTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAndWorkEffort extractCustRequestAndWorkEffort(dynamic json) {
    return CustRequestAndWorkEffort(
        entityId: create_id_from('CustRequestAndWorkEffort', ['custRequestId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        workEffortTypeId: json['workEffortTypeId'] as String,
        reservPersons: json['reservPersons'] as double,
        revisionNumber: json['revisionNumber'] as int,
        tempExprId: json['tempExprId'] as String,
        showAsEnumId: json['showAsEnumId'] as String,
        infoUrl: json['infoUrl'] as String,
        universalId: json['universalId'] as String,
        locationDesc: json['locationDesc'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        actualMilliSeconds: json['actualMilliSeconds'] as double,
        quantityToProduce: json['quantityToProduce'] as double,
        workEffortPurposeTypeId: json['workEffortPurposeTypeId'] as String,
        serviceLoaderName: json['serviceLoaderName'] as String,
        accommodationSpotId: json['accommodationSpotId'] as String,
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        sendNotificationEmail: json['sendNotificationEmail'] as String,
        noteId: json['noteId'] as String,
        quantityRejected: json['quantityRejected'] as double,
        priority: json['priority'] as int,
        currentStatusId: json['currentStatusId'] as String,
        runtimeDataId: json['runtimeDataId'] as String,
        estimatedMilliSeconds: json['estimatedMilliSeconds'] as double,
        specialTerms: json['specialTerms'] as String,
        timeTransparency: json['timeTransparency'] as int,
        actualCompletionDate: check_dt(json['actualCompletionDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        reserv2ndPPPerc: json['reserv2ndPPPerc'] as double,
        totalMoneyAllowed: json['totalMoneyAllowed'] as double,
        estimateCalcMethod: json['estimateCalcMethod'] as String,
        workEffortParentId: json['workEffortParentId'] as String,
        description: json['description'] as String,
        moneyUomId: json['moneyUomId'] as String,
        reservNthPPPerc: json['reservNthPPPerc'] as double,
        workEffortName: json['workEffortName'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        accommodationMapId: json['accommodationMapId'] as String,
        custRequestId: json['custRequestId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        scopeEnumId: json['scopeEnumId'] as String,
        quantityProduced: json['quantityProduced'] as double,
        facilityId: json['facilityId'] as String,
        estimatedSetupMillis: json['estimatedSetupMillis'] as double,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        sourceReferenceId: json['sourceReferenceId'] as String,
        lastStatusUpdate: check_dt(json['lastStatusUpdate']),
        percentComplete: json['percentComplete'] as int,
        totalMilliSecondsAllowed: json['totalMilliSecondsAllowed'] as double,
        createdDate: check_dt(json['createdDate']),
        actualSetupMillis: json['actualSetupMillis'] as double,
        estimatedCompletionDate: check_dt(json['estimatedCompletionDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAndWorkEffort overridesCustRequestAndWorkEffort(Map<String, dynamic> map) {
    return CustRequestAndWorkEffort(
        entityId: create_id_from('CustRequestAndWorkEffort', ['custRequestId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        recurrenceInfoId: map['recurrenceInfoId'],
        workEffortTypeId: map['workEffortTypeId'],
        reservPersons: map['reservPersons'],
        revisionNumber: map['revisionNumber'],
        tempExprId: map['tempExprId'],
        showAsEnumId: map['showAsEnumId'],
        infoUrl: map['infoUrl'],
        universalId: map['universalId'],
        locationDesc: map['locationDesc'],
        createdByUserLogin: map['createdByUserLogin'],
        actualMilliSeconds: map['actualMilliSeconds'],
        quantityToProduce: map['quantityToProduce'],
        workEffortPurposeTypeId: map['workEffortPurposeTypeId'],
        serviceLoaderName: map['serviceLoaderName'],
        accommodationSpotId: map['accommodationSpotId'],
        estimatedStartDate: map['estimatedStartDate'],
        sendNotificationEmail: map['sendNotificationEmail'],
        noteId: map['noteId'],
        quantityRejected: map['quantityRejected'],
        priority: map['priority'],
        currentStatusId: map['currentStatusId'],
        runtimeDataId: map['runtimeDataId'],
        estimatedMilliSeconds: map['estimatedMilliSeconds'],
        specialTerms: map['specialTerms'],
        timeTransparency: map['timeTransparency'],
        actualCompletionDate: map['actualCompletionDate'],
        fixedAssetId: map['fixedAssetId'],
        reserv2ndPPPerc: map['reserv2ndPPPerc'],
        totalMoneyAllowed: map['totalMoneyAllowed'],
        estimateCalcMethod: map['estimateCalcMethod'],
        workEffortParentId: map['workEffortParentId'],
        description: map['description'],
        moneyUomId: map['moneyUomId'],
        reservNthPPPerc: map['reservNthPPPerc'],
        workEffortName: map['workEffortName'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        accommodationMapId: map['accommodationMapId'],
        custRequestId: map['custRequestId'],
        actualStartDate: map['actualStartDate'],
        scopeEnumId: map['scopeEnumId'],
        quantityProduced: map['quantityProduced'],
        facilityId: map['facilityId'],
        estimatedSetupMillis: map['estimatedSetupMillis'],
        lastModifiedDate: map['lastModifiedDate'],
        sourceReferenceId: map['sourceReferenceId'],
        lastStatusUpdate: map['lastStatusUpdate'],
        percentComplete: map['percentComplete'],
        totalMilliSecondsAllowed: map['totalMilliSecondsAllowed'],
        createdDate: map['createdDate'],
        actualSetupMillis: map['actualSetupMillis'],
        estimatedCompletionDate: map['estimatedCompletionDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestAttribute extractCustRequestAttribute(dynamic json) {
    return CustRequestAttribute(
        entityId: create_id_from('CustRequestAttribute', ['custRequestId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        custRequestId: json['custRequestId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestAttribute overridesCustRequestAttribute(Map<String, dynamic> map) {
    return CustRequestAttribute(
        entityId: create_id_from('CustRequestAttribute', ['custRequestId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        custRequestId: map['custRequestId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestCategory extractCustRequestCategory(dynamic json) {
    return CustRequestCategory(
        entityId: create_id_from('CustRequestCategory', ['custRequestCategoryId'], json),
        description: json['description'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        custRequestCategoryId: json['custRequestCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestCategory overridesCustRequestCategory(Map<String, dynamic> map) {
    return CustRequestCategory(
        entityId: create_id_from('CustRequestCategory', ['custRequestCategoryId'], map),
        description: map['description'],
        custRequestTypeId: map['custRequestTypeId'],
        custRequestCategoryId: map['custRequestCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestCommEvent extractCustRequestCommEvent(dynamic json) {
    return CustRequestCommEvent(
        entityId: create_id_from('CustRequestCommEvent', ['custRequestId', 'communicationEventId'], json),
        custRequestId: json['custRequestId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestCommEvent overridesCustRequestCommEvent(Map<String, dynamic> map) {
    return CustRequestCommEvent(
        entityId: create_id_from('CustRequestCommEvent', ['custRequestId', 'communicationEventId'], map),
        custRequestId: map['custRequestId'],
        communicationEventId: map['communicationEventId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestContent extractCustRequestContent(dynamic json) {
    return CustRequestContent(
        entityId: create_id_from('CustRequestContent', ['custRequestId', 'contentId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        contentId: json['contentId'] as String,
        custRequestId: json['custRequestId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestContent overridesCustRequestContent(Map<String, dynamic> map) {
    return CustRequestContent(
        entityId: create_id_from('CustRequestContent', ['custRequestId', 'contentId', 'fromDate'], map),
        fromDate: map['fromDate'],
        contentId: map['contentId'],
        custRequestId: map['custRequestId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestInfoAndWorkEffortAndPartyRel extractCustRequestInfoAndWorkEffortAndPartyRel(dynamic json) {
    return CustRequestInfoAndWorkEffortAndPartyRel(
        entityId: create_id_from('CustRequestInfoAndWorkEffortAndPartyRel', ['partyIdFrom', 'roleTypeIdFrom', 'partyIdTo', 'roleTypeIdTo', 'custRequestId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        reason: json['reason'] as String,
        fromPartyId: json['fromPartyId'] as String,
        salesChannelEnumId: json['salesChannelEnumId'] as String,
        fulfillContactMechId: json['fulfillContactMechId'] as String,
        description: json['description'] as String,
        custRequestDate: check_dt(json['custRequestDate']),
        internalComment: json['internalComment'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        custRequestId: json['custRequestId'] as String,
        productStoreId: json['productStoreId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        closedDateTime: check_dt(json['closedDateTime']),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        custRequestName: json['custRequestName'] as String,
        responseRequiredDate: check_dt(json['responseRequiredDate']),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        priority: json['priority'] as int,
        maximumAmountUomId: json['maximumAmountUomId'] as String,
        openDateTime: check_dt(json['openDateTime']),
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        custRequestCategoryId: json['custRequestCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestInfoAndWorkEffortAndPartyRel overridesCustRequestInfoAndWorkEffortAndPartyRel(Map<String, dynamic> map) {
    return CustRequestInfoAndWorkEffortAndPartyRel(
        entityId: create_id_from('CustRequestInfoAndWorkEffortAndPartyRel', ['partyIdFrom', 'roleTypeIdFrom', 'partyIdTo', 'roleTypeIdTo', 'custRequestId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        partyIdFrom: map['partyIdFrom'],
        reason: map['reason'],
        fromPartyId: map['fromPartyId'],
        salesChannelEnumId: map['salesChannelEnumId'],
        fulfillContactMechId: map['fulfillContactMechId'],
        description: map['description'],
        custRequestDate: map['custRequestDate'],
        internalComment: map['internalComment'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        custRequestId: map['custRequestId'],
        productStoreId: map['productStoreId'],
        createdByUserLogin: map['createdByUserLogin'],
        closedDateTime: map['closedDateTime'],
        roleTypeIdTo: map['roleTypeIdTo'],
        custRequestName: map['custRequestName'],
        responseRequiredDate: map['responseRequiredDate'],
        lastModifiedDate: map['lastModifiedDate'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        priority: map['priority'],
        maximumAmountUomId: map['maximumAmountUomId'],
        openDateTime: map['openDateTime'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        custRequestTypeId: map['custRequestTypeId'],
        custRequestCategoryId: map['custRequestCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestItem extractCustRequestItem(dynamic json) {
    return CustRequestItem(
        entityId: create_id_from('CustRequestItem', ['custRequestId', 'custRequestItemSeqId'], json),
        custRequestResolutionId: json['custRequestResolutionId'] as String,
        quantity: json['quantity'] as double,
        reservLength: json['reservLength'] as double,
        sequenceNum: json['sequenceNum'] as int,
        productId: json['productId'] as String,
        reservPersons: json['reservPersons'] as double,
        maximumAmount: json['maximumAmount'] as double,
        requiredByDate: check_dt(json['requiredByDate']),
        description: json['description'] as String,
        priority: json['priority'] as int,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        statusId: json['statusId'] as String,
        reservStart: check_dt(json['reservStart']),
        configId: json['configId'] as String,
        custRequestId: json['custRequestId'] as String,
        selectedAmount: json['selectedAmount'] as double,
        story: json['story'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestItem overridesCustRequestItem(Map<String, dynamic> map) {
    return CustRequestItem(
        entityId: create_id_from('CustRequestItem', ['custRequestId', 'custRequestItemSeqId'], map),
        custRequestResolutionId: map['custRequestResolutionId'],
        quantity: map['quantity'],
        reservLength: map['reservLength'],
        sequenceNum: map['sequenceNum'],
        productId: map['productId'],
        reservPersons: map['reservPersons'],
        maximumAmount: map['maximumAmount'],
        requiredByDate: map['requiredByDate'],
        description: map['description'],
        priority: map['priority'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        statusId: map['statusId'],
        reservStart: map['reservStart'],
        configId: map['configId'],
        custRequestId: map['custRequestId'],
        selectedAmount: map['selectedAmount'],
        story: map['story'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestItemNote extractCustRequestItemNote(dynamic json) {
    return CustRequestItemNote(
        entityId: create_id_from('CustRequestItemNote', ['custRequestId', 'custRequestItemSeqId', 'noteId'], json),
        custRequestId: json['custRequestId'] as String,
        noteId: json['noteId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestItemNote overridesCustRequestItemNote(Map<String, dynamic> map) {
    return CustRequestItemNote(
        entityId: create_id_from('CustRequestItemNote', ['custRequestId', 'custRequestItemSeqId', 'noteId'], map),
        custRequestId: map['custRequestId'],
        noteId: map['noteId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestItemNoteView extractCustRequestItemNoteView(dynamic json) {
    return CustRequestItemNoteView(
        entityId: create_id_from('CustRequestItemNoteView', ['custRequestId', 'custRequestItemSeqId', 'noteId', 'partyId'], json),
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        custRequestId: json['custRequestId'] as String,
        noteInfo: json['noteInfo'] as String,
        noteId: json['noteId'] as String,
        partyId: json['partyId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestItemNoteView overridesCustRequestItemNoteView(Map<String, dynamic> map) {
    return CustRequestItemNoteView(
        entityId: create_id_from('CustRequestItemNoteView', ['custRequestId', 'custRequestItemSeqId', 'noteId', 'partyId'], map),
        firstName: map['firstName'],
        lastName: map['lastName'],
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        custRequestId: map['custRequestId'],
        noteInfo: map['noteInfo'],
        noteId: map['noteId'],
        partyId: map['partyId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestItemWorkEffort extractCustRequestItemWorkEffort(dynamic json) {
    return CustRequestItemWorkEffort(
        entityId: create_id_from('CustRequestItemWorkEffort', ['custRequestId', 'custRequestItemSeqId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        custRequestId: json['custRequestId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestItemWorkEffort overridesCustRequestItemWorkEffort(Map<String, dynamic> map) {
    return CustRequestItemWorkEffort(
        entityId: create_id_from('CustRequestItemWorkEffort', ['custRequestId', 'custRequestItemSeqId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        custRequestId: map['custRequestId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestNote extractCustRequestNote(dynamic json) {
    return CustRequestNote(
        entityId: create_id_from('CustRequestNote', ['custRequestId', 'noteId'], json),
        custRequestId: json['custRequestId'] as String,
        noteId: json['noteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestNote overridesCustRequestNote(Map<String, dynamic> map) {
    return CustRequestNote(
        entityId: create_id_from('CustRequestNote', ['custRequestId', 'noteId'], map),
        custRequestId: map['custRequestId'],
        noteId: map['noteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestNoteView extractCustRequestNoteView(dynamic json) {
    return CustRequestNoteView(
        entityId: create_id_from('CustRequestNoteView', ['custRequestId', 'noteId', 'noteParty'], json),
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        custRequestId: json['custRequestId'] as String,
        noteInfo: json['noteInfo'] as String,
        noteId: json['noteId'] as String,
        noteParty: json['noteParty'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestNoteView overridesCustRequestNoteView(Map<String, dynamic> map) {
    return CustRequestNoteView(
        entityId: create_id_from('CustRequestNoteView', ['custRequestId', 'noteId', 'noteParty'], map),
        firstName: map['firstName'],
        lastName: map['lastName'],
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        custRequestId: map['custRequestId'],
        noteInfo: map['noteInfo'],
        noteId: map['noteId'],
        noteParty: map['noteParty'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestParty extractCustRequestParty(dynamic json) {
    return CustRequestParty(
        entityId: create_id_from('CustRequestParty', ['custRequestId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        custRequestId: json['custRequestId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestParty overridesCustRequestParty(Map<String, dynamic> map) {
    return CustRequestParty(
        entityId: create_id_from('CustRequestParty', ['custRequestId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        custRequestId: map['custRequestId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestResolution extractCustRequestResolution(dynamic json) {
    return CustRequestResolution(
        entityId: create_id_from('CustRequestResolution', ['custRequestResolutionId'], json),
        custRequestResolutionId: json['custRequestResolutionId'] as String,
        description: json['description'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestResolution overridesCustRequestResolution(Map<String, dynamic> map) {
    return CustRequestResolution(
        entityId: create_id_from('CustRequestResolution', ['custRequestResolutionId'], map),
        custRequestResolutionId: map['custRequestResolutionId'],
        description: map['description'],
        custRequestTypeId: map['custRequestTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestStatus extractCustRequestStatus(dynamic json) {
    return CustRequestStatus(
        entityId: create_id_from('CustRequestStatus', ['custRequestStatusId'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        custRequestId: json['custRequestId'] as String,
        custRequestStatusId: json['custRequestStatusId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestStatus overridesCustRequestStatus(Map<String, dynamic> map) {
    return CustRequestStatus(
        entityId: create_id_from('CustRequestStatus', ['custRequestStatusId'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        custRequestId: map['custRequestId'],
        custRequestStatusId: map['custRequestStatusId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestType extractCustRequestType(dynamic json) {
    return CustRequestType(
        entityId: create_id_from('CustRequestType', ['custRequestTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestType overridesCustRequestType(Map<String, dynamic> map) {
    return CustRequestType(
        entityId: create_id_from('CustRequestType', ['custRequestTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        custRequestTypeId: map['custRequestTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestTypeAttr extractCustRequestTypeAttr(dynamic json) {
    return CustRequestTypeAttr(
        entityId: create_id_from('CustRequestTypeAttr', ['custRequestTypeId', 'attrName'], json),
        description: json['description'] as String,
        custRequestTypeId: json['custRequestTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestTypeAttr overridesCustRequestTypeAttr(Map<String, dynamic> map) {
    return CustRequestTypeAttr(
        entityId: create_id_from('CustRequestTypeAttr', ['custRequestTypeId', 'attrName'], map),
        description: map['description'],
        custRequestTypeId: map['custRequestTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CustRequestWorkEffort extractCustRequestWorkEffort(dynamic json) {
    return CustRequestWorkEffort(
        entityId: create_id_from('CustRequestWorkEffort', ['custRequestId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        custRequestId: json['custRequestId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CustRequestWorkEffort overridesCustRequestWorkEffort(Map<String, dynamic> map) {
    return CustRequestWorkEffort(
        entityId: create_id_from('CustRequestWorkEffort', ['custRequestId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        custRequestId: map['custRequestId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementAndRole extractRequirementAndRole(dynamic json) {
    return RequirementAndRole(
        entityId: create_id_from('RequirementAndRole', ['requirementId', 'partyId', 'roleTypeId', 'fromDate'], json),
        reason: json['reason'] as String,
        roleTypeId: json['roleTypeId'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        estimatedBudget: json['estimatedBudget'] as double,
        description: json['description'] as String,
        requiredByDate: check_dt(json['requiredByDate']),
        requirementStartDate: check_dt(json['requirementStartDate']),
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        requirementTypeId: json['requirementTypeId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        statusId: json['statusId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        requirementId: json['requirementId'] as String,
        partyId: json['partyId'] as String,
        deliverableId: json['deliverableId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementAndRole overridesRequirementAndRole(Map<String, dynamic> map) {
    return RequirementAndRole(
        entityId: create_id_from('RequirementAndRole', ['requirementId', 'partyId', 'roleTypeId', 'fromDate'], map),
        reason: map['reason'],
        roleTypeId: map['roleTypeId'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        productId: map['productId'],
        lastModifiedDate: map['lastModifiedDate'],
        estimatedBudget: map['estimatedBudget'],
        description: map['description'],
        requiredByDate: map['requiredByDate'],
        requirementStartDate: map['requirementStartDate'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        requirementTypeId: map['requirementTypeId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        statusId: map['statusId'],
        fixedAssetId: map['fixedAssetId'],
        requirementId: map['requirementId'],
        partyId: map['partyId'],
        deliverableId: map['deliverableId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementByProductFacility extractRequirementByProductFacility(dynamic json) {
    return RequirementByProductFacility(
        entityId: create_id_from('RequirementByProductFacility', [], json),
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        statusId: json['statusId'] as String,
        productId: json['productId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementByProductFacility overridesRequirementByProductFacility(Map<String, dynamic> map) {
    return RequirementByProductFacility(
        entityId: create_id_from('RequirementByProductFacility', [], map),
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        statusId: map['statusId'],
        productId: map['productId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementCustRequestView extractRequirementCustRequestView(dynamic json) {
    return RequirementCustRequestView(
        entityId: create_id_from('RequirementCustRequestView', ['custRequestId', 'custRequestItemSeqId', 'requirementId'], json),
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        maximumAmount: json['maximumAmount'] as double,
        estimatedBudget: json['estimatedBudget'] as double,
        description: json['description'] as String,
        requiredByDate: check_dt(json['requiredByDate']),
        requirementStartDate: check_dt(json['requirementStartDate']),
        priority: json['priority'] as int,
        custRequestItemSeqId: json['custRequestItemSeqId'] as String,
        requirementTypeId: json['requirementTypeId'] as String,
        statusId: json['statusId'] as String,
        custRequestId: json['custRequestId'] as String,
        requirementId: json['requirementId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementCustRequestView overridesRequirementCustRequestView(Map<String, dynamic> map) {
    return RequirementCustRequestView(
        entityId: create_id_from('RequirementCustRequestView', ['custRequestId', 'custRequestItemSeqId', 'requirementId'], map),
        quantity: map['quantity'],
        productId: map['productId'],
        maximumAmount: map['maximumAmount'],
        estimatedBudget: map['estimatedBudget'],
        description: map['description'],
        requiredByDate: map['requiredByDate'],
        requirementStartDate: map['requirementStartDate'],
        priority: map['priority'],
        custRequestItemSeqId: map['custRequestItemSeqId'],
        requirementTypeId: map['requirementTypeId'],
        statusId: map['statusId'],
        custRequestId: map['custRequestId'],
        requirementId: map['requirementId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RequirementPartyProductCount extractRequirementPartyProductCount(dynamic json) {
    return RequirementPartyProductCount(
        entityId: create_id_from('RequirementPartyProductCount', ['partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        requirementTypeId: json['requirementTypeId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        statusId: json['statusId'] as String,
        productId: json['productId'] as int,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RequirementPartyProductCount overridesRequirementPartyProductCount(Map<String, dynamic> map) {
    return RequirementPartyProductCount(
        entityId: create_id_from('RequirementPartyProductCount', ['partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        requirementTypeId: map['requirementTypeId'],
        roleTypeId: map['roleTypeId'],
        statusId: map['statusId'],
        productId: map['productId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RespondingParty extractRespondingParty(dynamic json) {
    return RespondingParty(
        entityId: create_id_from('RespondingParty', ['respondingPartySeqId', 'custRequestId', 'partyId'], json),
        respondingPartySeqId: json['respondingPartySeqId'] as String,
        custRequestId: json['custRequestId'] as String,
        partyId: json['partyId'] as String,
        dateSent: check_dt(json['dateSent']),
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RespondingParty overridesRespondingParty(Map<String, dynamic> map) {
    return RespondingParty(
        entityId: create_id_from('RespondingParty', ['respondingPartySeqId', 'custRequestId', 'partyId'], map),
        respondingPartySeqId: map['respondingPartySeqId'],
        custRequestId: map['custRequestId'],
        partyId: map['partyId'],
        dateSent: map['dateSent'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}