import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class PartyCommunicationJsonifier{
  static CommContentAssocType extractCommContentAssocType(dynamic json) {
    return CommContentAssocType(
        entityId: create_id_from('CommContentAssocType', ['commContentAssocTypeId'], json),
        commContentAssocTypeId: json['commContentAssocTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommContentAssocType overridesCommContentAssocType(Map<String, dynamic> map) {
    return CommContentAssocType(
        entityId: create_id_from('CommContentAssocType', ['commContentAssocTypeId'], map),
        commContentAssocTypeId: map['commContentAssocTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommEventContentAssoc extractCommEventContentAssoc(dynamic json) {
    return CommEventContentAssoc(
        entityId: create_id_from('CommEventContentAssoc', ['contentId', 'communicationEventId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        contentId: json['contentId'] as String,
        commContentAssocTypeId: json['commContentAssocTypeId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommEventContentAssoc overridesCommEventContentAssoc(Map<String, dynamic> map) {
    return CommEventContentAssoc(
        entityId: create_id_from('CommEventContentAssoc', ['contentId', 'communicationEventId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        contentId: map['contentId'],
        commContentAssocTypeId: map['commContentAssocTypeId'],
        communicationEventId: map['communicationEventId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommEventContentDataResource extractCommEventContentDataResource(dynamic json) {
    return CommEventContentDataResource(
        entityId: create_id_from('CommEventContentDataResource', ['fromDate', 'contentId', 'communicationEventId', 'drDataResourceId'], json),
        drDataResourceId: json['drDataResourceId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        drSurveyResponseId: json['drSurveyResponseId'] as String,
        ownerContentId: json['ownerContentId'] as String,
        drStatusId: json['drStatusId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        drRelatedDetailId: json['drRelatedDetailId'] as String,
        drDataCategoryId: json['drDataCategoryId'] as String,
        drIsPublic: json['drIsPublic'] as String,
        drDataResourceTypeId: json['drDataResourceTypeId'] as String,
        drCreatedByUserLogin: json['drCreatedByUserLogin'] as String,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        drDataTemplateTypeId: json['drDataTemplateTypeId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        drSurveyId: json['drSurveyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        drObjectInfo: json['drObjectInfo'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        drCharacterSetId: json['drCharacterSetId'] as String,
        drLastModifiedByUserLogin: json['drLastModifiedByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        fromDate: check_dt(json['fromDate']),
        drCreatedDate: check_dt(json['drCreatedDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        drLastModifiedDate: check_dt(json['drLastModifiedDate']),
        drDataResourceName: json['drDataResourceName'] as String,
        drDataSourceId: json['drDataSourceId'] as String,
        commContentAssocTypeId: json['commContentAssocTypeId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        drMimeTypeId: json['drMimeTypeId'] as String,
        drLocaleString: json['drLocaleString'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommEventContentDataResource overridesCommEventContentDataResource(Map<String, dynamic> map) {
    return CommEventContentDataResource(
        entityId: create_id_from('CommEventContentDataResource', ['fromDate', 'contentId', 'communicationEventId', 'drDataResourceId'], map),
        drDataResourceId: map['drDataResourceId'],
        sequenceNum: map['sequenceNum'],
        drSurveyResponseId: map['drSurveyResponseId'],
        ownerContentId: map['ownerContentId'],
        drStatusId: map['drStatusId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        drRelatedDetailId: map['drRelatedDetailId'],
        drDataCategoryId: map['drDataCategoryId'],
        drIsPublic: map['drIsPublic'],
        drDataResourceTypeId: map['drDataResourceTypeId'],
        drCreatedByUserLogin: map['drCreatedByUserLogin'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        drDataTemplateTypeId: map['drDataTemplateTypeId'],
        dataResourceId: map['dataResourceId'],
        drSurveyId: map['drSurveyId'],
        createdByUserLogin: map['createdByUserLogin'],
        drObjectInfo: map['drObjectInfo'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        drCharacterSetId: map['drCharacterSetId'],
        drLastModifiedByUserLogin: map['drLastModifiedByUserLogin'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        fromDate: map['fromDate'],
        drCreatedDate: map['drCreatedDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        drLastModifiedDate: map['drLastModifiedDate'],
        drDataResourceName: map['drDataResourceName'],
        drDataSourceId: map['drDataSourceId'],
        commContentAssocTypeId: map['commContentAssocTypeId'],
        communicationEventId: map['communicationEventId'],
        decoratorContentId: map['decoratorContentId'],
        drMimeTypeId: map['drMimeTypeId'],
        drLocaleString: map['drLocaleString'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEvent extractCommunicationEvent(dynamic json) {
    return CommunicationEvent(
        entityId: create_id_from('CommunicationEvent', ['communicationEventId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        note: json['note'] as String,
        subject: json['subject'] as String,
        ccString: json['ccString'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        communicationEventTypeId: json['communicationEventTypeId'] as String,
        content: json['content'] as String,
        contentMimeTypeId: json['contentMimeTypeId'] as String,
        datetimeStarted: check_dt(json['datetimeStarted']),
        contactListId: json['contactListId'] as String,
        contactMechIdFrom: json['contactMechIdFrom'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        parentCommEventId: json['parentCommEventId'] as String,
        entryDate: check_dt(json['entryDate']),
        datetimeEnded: check_dt(json['datetimeEnded']),
        origCommEventId: json['origCommEventId'] as String,
        messageId: json['messageId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        contactMechIdTo: json['contactMechIdTo'] as String,
        headerString: json['headerString'] as String,
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        bccString: json['bccString'] as String,
        partyIdTo: json['partyIdTo'] as String,
        toStr: json['toString'] as String,
        fromString: json['fromString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEvent overridesCommunicationEvent(Map<String, dynamic> map) {
    return CommunicationEvent(
        entityId: create_id_from('CommunicationEvent', ['communicationEventId'], map),
        partyIdFrom: map['partyIdFrom'],
        note: map['note'],
        subject: map['subject'],
        ccString: map['ccString'],
        contactMechTypeId: map['contactMechTypeId'],
        communicationEventTypeId: map['communicationEventTypeId'],
        content: map['content'],
        contentMimeTypeId: map['contentMimeTypeId'],
        datetimeStarted: map['datetimeStarted'],
        contactListId: map['contactListId'],
        contactMechIdFrom: map['contactMechIdFrom'],
        reasonEnumId: map['reasonEnumId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        parentCommEventId: map['parentCommEventId'],
        entryDate: map['entryDate'],
        datetimeEnded: map['datetimeEnded'],
        origCommEventId: map['origCommEventId'],
        messageId: map['messageId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        contactMechIdTo: map['contactMechIdTo'],
        headerString: map['headerString'],
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        bccString: map['bccString'],
        partyIdTo: map['partyIdTo'],
        toStr: map['toString'],
        fromString: map['fromString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventAndProduct extractCommunicationEventAndProduct(dynamic json) {
    return CommunicationEventAndProduct(
        entityId: create_id_from('CommunicationEventAndProduct', ['productId', 'communicationEventId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        note: json['note'] as String,
        subject: json['subject'] as String,
        ccString: json['ccString'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        communicationEventTypeId: json['communicationEventTypeId'] as String,
        content: json['content'] as String,
        contentMimeTypeId: json['contentMimeTypeId'] as String,
        datetimeStarted: check_dt(json['datetimeStarted']),
        contactListId: json['contactListId'] as String,
        contactMechIdFrom: json['contactMechIdFrom'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        productId: json['productId'] as String,
        parentCommEventId: json['parentCommEventId'] as String,
        entryDate: check_dt(json['entryDate']),
        datetimeEnded: check_dt(json['datetimeEnded']),
        origCommEventId: json['origCommEventId'] as String,
        messageId: json['messageId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        contactMechIdTo: json['contactMechIdTo'] as String,
        headerString: json['headerString'] as String,
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        bccString: json['bccString'] as String,
        partyIdTo: json['partyIdTo'] as String,
        toStr: json['toString'] as String,
        fromString: json['fromString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventAndProduct overridesCommunicationEventAndProduct(Map<String, dynamic> map) {
    return CommunicationEventAndProduct(
        entityId: create_id_from('CommunicationEventAndProduct', ['productId', 'communicationEventId'], map),
        partyIdFrom: map['partyIdFrom'],
        note: map['note'],
        subject: map['subject'],
        ccString: map['ccString'],
        contactMechTypeId: map['contactMechTypeId'],
        communicationEventTypeId: map['communicationEventTypeId'],
        content: map['content'],
        contentMimeTypeId: map['contentMimeTypeId'],
        datetimeStarted: map['datetimeStarted'],
        contactListId: map['contactListId'],
        contactMechIdFrom: map['contactMechIdFrom'],
        reasonEnumId: map['reasonEnumId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        productId: map['productId'],
        parentCommEventId: map['parentCommEventId'],
        entryDate: map['entryDate'],
        datetimeEnded: map['datetimeEnded'],
        origCommEventId: map['origCommEventId'],
        messageId: map['messageId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        contactMechIdTo: map['contactMechIdTo'],
        headerString: map['headerString'],
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        bccString: map['bccString'],
        partyIdTo: map['partyIdTo'],
        toStr: map['toString'],
        fromString: map['fromString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventAndRole extractCommunicationEventAndRole(dynamic json) {
    return CommunicationEventAndRole(
        entityId: create_id_from('CommunicationEventAndRole', ['partyId', 'roleTypeId', 'communicationEventId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        note: json['note'] as String,
        subject: json['subject'] as String,
        ccString: json['ccString'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        communicationEventTypeId: json['communicationEventTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        content: json['content'] as String,
        contentMimeTypeId: json['contentMimeTypeId'] as String,
        datetimeStarted: check_dt(json['datetimeStarted']),
        contactListId: json['contactListId'] as String,
        contactMechIdFrom: json['contactMechIdFrom'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        partyId: json['partyId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        roleTypeId: json['roleTypeId'] as String,
        parentCommEventId: json['parentCommEventId'] as String,
        entryDate: check_dt(json['entryDate']),
        datetimeEnded: check_dt(json['datetimeEnded']),
        origCommEventId: json['origCommEventId'] as String,
        messageId: json['messageId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        contactMechIdTo: json['contactMechIdTo'] as String,
        headerString: json['headerString'] as String,
        statusId: json['statusId'] as String,
        roleStatusId: json['roleStatusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        bccString: json['bccString'] as String,
        partyIdTo: json['partyIdTo'] as String,
        toStr: json['toString'] as String,
        fromString: json['fromString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventAndRole overridesCommunicationEventAndRole(Map<String, dynamic> map) {
    return CommunicationEventAndRole(
        entityId: create_id_from('CommunicationEventAndRole', ['partyId', 'roleTypeId', 'communicationEventId'], map),
        partyIdFrom: map['partyIdFrom'],
        note: map['note'],
        subject: map['subject'],
        ccString: map['ccString'],
        contactMechTypeId: map['contactMechTypeId'],
        communicationEventTypeId: map['communicationEventTypeId'],
        contactMechId: map['contactMechId'],
        content: map['content'],
        contentMimeTypeId: map['contentMimeTypeId'],
        datetimeStarted: map['datetimeStarted'],
        contactListId: map['contactListId'],
        contactMechIdFrom: map['contactMechIdFrom'],
        reasonEnumId: map['reasonEnumId'],
        partyId: map['partyId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        roleTypeId: map['roleTypeId'],
        parentCommEventId: map['parentCommEventId'],
        entryDate: map['entryDate'],
        datetimeEnded: map['datetimeEnded'],
        origCommEventId: map['origCommEventId'],
        messageId: map['messageId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        contactMechIdTo: map['contactMechIdTo'],
        headerString: map['headerString'],
        statusId: map['statusId'],
        roleStatusId: map['roleStatusId'],
        communicationEventId: map['communicationEventId'],
        bccString: map['bccString'],
        partyIdTo: map['partyIdTo'],
        toStr: map['toString'],
        fromString: map['fromString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventAndSubscr extractCommunicationEventAndSubscr(dynamic json) {
    return CommunicationEventAndSubscr(
        entityId: create_id_from('CommunicationEventAndSubscr', ['subscriptionId'], json),
        maxLifeTimeUomId: json['maxLifeTimeUomId'] as String,
        useTimeUomId: json['useTimeUomId'] as String,
        orderId: json['orderId'] as String,
        subscriptionResourceId: json['subscriptionResourceId'] as String,
        description: json['description'] as String,
        subscriptionTypeId: json['subscriptionTypeId'] as String,
        canclAutmExtTimeUomId: json['canclAutmExtTimeUomId'] as String,
        contactMechId: json['contactMechId'] as String,
        gracePeriodOnExpiryUomId: json['gracePeriodOnExpiryUomId'] as String,
        availableTime: json['availableTime'] as int,
        productCategoryId: json['productCategoryId'] as String,
        partyNeedId: json['partyNeedId'] as String,
        useTime: json['useTime'] as int,
        partyId: json['partyId'] as String,
        orderItemSeqId: json['orderItemSeqId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        purchaseFromDate: check_dt(json['purchaseFromDate']),
        needTypeId: json['needTypeId'] as String,
        productId: json['productId'] as String,
        useCountLimit: json['useCountLimit'] as int,
        expirationCompletedDate: check_dt(json['expirationCompletedDate']),
        availableTimeUomId: json['availableTimeUomId'] as String,
        thruDate: check_dt(json['thruDate']),
        inventoryItemId: json['inventoryItemId'] as String,
        fromDate: check_dt(json['fromDate']),
        canclAutmExtTime: json['canclAutmExtTime'] as int,
        originatedFromRoleTypeId: json['originatedFromRoleTypeId'] as String,
        automaticExtend: json['automaticExtend'] as String,
        originatedFromPartyId: json['originatedFromPartyId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        maxLifeTime: json['maxLifeTime'] as int,
        purchaseThruDate: check_dt(json['purchaseThruDate']),
        externalSubscriptionId: json['externalSubscriptionId'] as String,
        gracePeriodOnExpiry: json['gracePeriodOnExpiry'] as int,
        subscriptionId: json['subscriptionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventAndSubscr overridesCommunicationEventAndSubscr(Map<String, dynamic> map) {
    return CommunicationEventAndSubscr(
        entityId: create_id_from('CommunicationEventAndSubscr', ['subscriptionId'], map),
        maxLifeTimeUomId: map['maxLifeTimeUomId'],
        useTimeUomId: map['useTimeUomId'],
        orderId: map['orderId'],
        subscriptionResourceId: map['subscriptionResourceId'],
        description: map['description'],
        subscriptionTypeId: map['subscriptionTypeId'],
        canclAutmExtTimeUomId: map['canclAutmExtTimeUomId'],
        contactMechId: map['contactMechId'],
        gracePeriodOnExpiryUomId: map['gracePeriodOnExpiryUomId'],
        availableTime: map['availableTime'],
        productCategoryId: map['productCategoryId'],
        partyNeedId: map['partyNeedId'],
        useTime: map['useTime'],
        partyId: map['partyId'],
        orderItemSeqId: map['orderItemSeqId'],
        roleTypeId: map['roleTypeId'],
        purchaseFromDate: map['purchaseFromDate'],
        needTypeId: map['needTypeId'],
        productId: map['productId'],
        useCountLimit: map['useCountLimit'],
        expirationCompletedDate: map['expirationCompletedDate'],
        availableTimeUomId: map['availableTimeUomId'],
        thruDate: map['thruDate'],
        inventoryItemId: map['inventoryItemId'],
        fromDate: map['fromDate'],
        canclAutmExtTime: map['canclAutmExtTime'],
        originatedFromRoleTypeId: map['originatedFromRoleTypeId'],
        automaticExtend: map['automaticExtend'],
        originatedFromPartyId: map['originatedFromPartyId'],
        communicationEventId: map['communicationEventId'],
        maxLifeTime: map['maxLifeTime'],
        purchaseThruDate: map['purchaseThruDate'],
        externalSubscriptionId: map['externalSubscriptionId'],
        gracePeriodOnExpiry: map['gracePeriodOnExpiry'],
        subscriptionId: map['subscriptionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventProduct extractCommunicationEventProduct(dynamic json) {
    return CommunicationEventProduct(
        entityId: create_id_from('CommunicationEventProduct', ['productId', 'communicationEventId'], json),
        productId: json['productId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventProduct overridesCommunicationEventProduct(Map<String, dynamic> map) {
    return CommunicationEventProduct(
        entityId: create_id_from('CommunicationEventProduct', ['productId', 'communicationEventId'], map),
        productId: map['productId'],
        communicationEventId: map['communicationEventId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventPrpTyp extractCommunicationEventPrpTyp(dynamic json) {
    return CommunicationEventPrpTyp(
        entityId: create_id_from('CommunicationEventPrpTyp', ['communicationEventPrpTypId'], json),
        communicationEventPrpTypId: json['communicationEventPrpTypId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventPrpTyp overridesCommunicationEventPrpTyp(Map<String, dynamic> map) {
    return CommunicationEventPrpTyp(
        entityId: create_id_from('CommunicationEventPrpTyp', ['communicationEventPrpTypId'], map),
        communicationEventPrpTypId: map['communicationEventPrpTypId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventPurpose extractCommunicationEventPurpose(dynamic json) {
    return CommunicationEventPurpose(
        entityId: create_id_from('CommunicationEventPurpose', ['communicationEventPrpTypId', 'communicationEventId'], json),
        communicationEventPrpTypId: json['communicationEventPrpTypId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventPurpose overridesCommunicationEventPurpose(Map<String, dynamic> map) {
    return CommunicationEventPurpose(
        entityId: create_id_from('CommunicationEventPurpose', ['communicationEventPrpTypId', 'communicationEventId'], map),
        communicationEventPrpTypId: map['communicationEventPrpTypId'],
        communicationEventId: map['communicationEventId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventRole extractCommunicationEventRole(dynamic json) {
    return CommunicationEventRole(
        entityId: create_id_from('CommunicationEventRole', ['communicationEventId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        partyId: json['partyId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventRole overridesCommunicationEventRole(Map<String, dynamic> map) {
    return CommunicationEventRole(
        entityId: create_id_from('CommunicationEventRole', ['communicationEventId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        partyId: map['partyId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventSum extractCommunicationEventSum(dynamic json) {
    return CommunicationEventSum(
        entityId: create_id_from('CommunicationEventSum', ['communicationEventId'], json),
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as int,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventSum overridesCommunicationEventSum(Map<String, dynamic> map) {
    return CommunicationEventSum(
        entityId: create_id_from('CommunicationEventSum', ['communicationEventId'], map),
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CommunicationEventType extractCommunicationEventType(dynamic json) {
    return CommunicationEventType(
        entityId: create_id_from('CommunicationEventType', ['communicationEventTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        communicationEventTypeId: json['communicationEventTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventType overridesCommunicationEventType(Map<String, dynamic> map) {
    return CommunicationEventType(
        entityId: create_id_from('CommunicationEventType', ['communicationEventTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        communicationEventTypeId: map['communicationEventTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}