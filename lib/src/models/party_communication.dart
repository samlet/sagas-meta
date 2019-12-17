import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CommContentAssocType, CommunicationEvent Content Association Type
class CommContentAssocType extends EntityBase {

  /// this entity has only one pk
  final String commContentAssocTypeId; // pk
  final String description;
  CommContentAssocType({entityId,
    @required this.commContentAssocTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommContentAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'commContentAssocTypeId':commContentAssocTypeId, 'description':description};
  }

}

/// Entity CommEventContentAssoc, CommunicationEvent Content Association
class CommEventContentAssoc extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String contentId; // pk
  final String commContentAssocTypeId;
  final String communicationEventId; // pk
  final DateTime thruDate;
  CommEventContentAssoc({entityId,
    @required this.fromDate, this.sequenceNum, @required this.contentId, this.commContentAssocTypeId, @required this.communicationEventId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommEventContentAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'contentId':contentId, 'commContentAssocTypeId':commContentAssocTypeId, 'communicationEventId':communicationEventId, 'thruDate':thruDate};
  }

}

/// Entity CommEventContentDataResource, CommEvent and Content and DataResource View
class CommEventContentDataResource extends EntityBase {

  final String drDataResourceId; // pk
  final int sequenceNum;
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
  final String commContentAssocTypeId;
  final String communicationEventId; // pk
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  CommEventContentDataResource({entityId,
    @required this.drDataResourceId, this.sequenceNum, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.commContentAssocTypeId, @required this.communicationEventId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommEventContentDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'sequenceNum':sequenceNum, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'commContentAssocTypeId':commContentAssocTypeId, 'communicationEventId':communicationEventId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity CommunicationEvent, Communication Event
class CommunicationEvent extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String note;
  final String subject;
  final String ccString;
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
  CommunicationEvent({entityId,
    this.partyIdFrom, this.note, this.subject, this.ccString, this.contactMechTypeId, this.communicationEventTypeId, this.content, this.contentMimeTypeId, this.datetimeStarted, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, this.roleTypeIdTo, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'roleTypeIdTo':roleTypeIdTo, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString};
  }

}

/// Entity CommunicationEventAndProduct, Communication Event And Product View
class CommunicationEventAndProduct extends EntityBase {

  final String partyIdFrom;
  final String note;
  final String subject;
  final String ccString;
  final String contactMechTypeId;
  final String communicationEventTypeId;
  final String content;
  final String contentMimeTypeId;
  final DateTime datetimeStarted;
  final String contactListId;
  final String contactMechIdFrom;
  final String reasonEnumId;
  final String roleTypeIdTo;
  final String productId; // pk
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
  CommunicationEventAndProduct({entityId,
    this.partyIdFrom, this.note, this.subject, this.ccString, this.contactMechTypeId, this.communicationEventTypeId, this.content, this.contentMimeTypeId, this.datetimeStarted, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, this.roleTypeIdTo, @required this.productId, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventAndProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'roleTypeIdTo':roleTypeIdTo, 'productId':productId, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString};
  }

}

/// Entity CommunicationEventAndRole, Communication Event And Role View
class CommunicationEventAndRole extends EntityBase {

  final String partyIdFrom;
  final String note;
  final String subject;
  final String ccString;
  final String contactMechTypeId;
  final String communicationEventTypeId;
  final String contactMechId;
  final String content;
  final String contentMimeTypeId;
  final DateTime datetimeStarted;
  final String contactListId;
  final String contactMechIdFrom;
  final String reasonEnumId;
  final String partyId; // pk
  final String roleTypeIdTo;
  final String roleTypeId; // pk
  final String parentCommEventId;
  final DateTime entryDate;
  final DateTime datetimeEnded;
  final String origCommEventId;
  final String messageId;
  final String roleTypeIdFrom;
  final String contactMechIdTo;
  final String headerString;
  final String statusId;
  final String roleStatusId;
  final String communicationEventId; // pk
  final String bccString;
  final String partyIdTo;
  final String toStr;
  final String fromString;
  CommunicationEventAndRole({entityId,
    this.partyIdFrom, this.note, this.subject, this.ccString, this.contactMechTypeId, this.communicationEventTypeId, this.contactMechId, this.content, this.contentMimeTypeId, this.datetimeStarted, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, @required this.partyId, this.roleTypeIdTo, @required this.roleTypeId, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, this.roleStatusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'contactMechId':contactMechId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'partyId':partyId, 'roleTypeIdTo':roleTypeIdTo, 'roleTypeId':roleTypeId, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'roleStatusId':roleStatusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString};
  }

}

/// Entity CommunicationEventAndSubscr, Communication Event And Role View
class CommunicationEventAndSubscr extends EntityBase {

  /// this entity has only one pk
  final String maxLifeTimeUomId;
  final String useTimeUomId;
  final String orderId;
  final String subscriptionResourceId;
  final String description;
  final String subscriptionTypeId;
  final String canclAutmExtTimeUomId;
  final String contactMechId;
  final String gracePeriodOnExpiryUomId;
  final int availableTime;
  final String productCategoryId;
  final String partyNeedId;
  final int useTime;
  final String partyId;
  final String orderItemSeqId;
  final String roleTypeId;
  final DateTime purchaseFromDate;
  final String needTypeId;
  final String productId;
  final int useCountLimit;
  final DateTime expirationCompletedDate;
  final String availableTimeUomId;
  final DateTime thruDate;
  final String inventoryItemId;
  final DateTime fromDate;
  final int canclAutmExtTime;
  final String originatedFromRoleTypeId;
  final String automaticExtend;
  final String originatedFromPartyId;
  final String communicationEventId;
  final int maxLifeTime;
  final DateTime purchaseThruDate;
  final String externalSubscriptionId;
  final int gracePeriodOnExpiry;
  final String subscriptionId; // pk
  CommunicationEventAndSubscr({entityId,
    this.maxLifeTimeUomId, this.useTimeUomId, this.orderId, this.subscriptionResourceId, this.description, this.subscriptionTypeId, this.canclAutmExtTimeUomId, this.contactMechId, this.gracePeriodOnExpiryUomId, this.availableTime, this.productCategoryId, this.partyNeedId, this.useTime, this.partyId, this.orderItemSeqId, this.roleTypeId, this.purchaseFromDate, this.needTypeId, this.productId, this.useCountLimit, this.expirationCompletedDate, this.availableTimeUomId, this.thruDate, this.inventoryItemId, this.fromDate, this.canclAutmExtTime, this.originatedFromRoleTypeId, this.automaticExtend, this.originatedFromPartyId, this.communicationEventId, this.maxLifeTime, this.purchaseThruDate, this.externalSubscriptionId, this.gracePeriodOnExpiry, @required this.subscriptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventAndSubscr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'maxLifeTimeUomId':maxLifeTimeUomId, 'useTimeUomId':useTimeUomId, 'orderId':orderId, 'subscriptionResourceId':subscriptionResourceId, 'description':description, 'subscriptionTypeId':subscriptionTypeId, 'canclAutmExtTimeUomId':canclAutmExtTimeUomId, 'contactMechId':contactMechId, 'gracePeriodOnExpiryUomId':gracePeriodOnExpiryUomId, 'availableTime':availableTime, 'productCategoryId':productCategoryId, 'partyNeedId':partyNeedId, 'useTime':useTime, 'partyId':partyId, 'orderItemSeqId':orderItemSeqId, 'roleTypeId':roleTypeId, 'purchaseFromDate':purchaseFromDate, 'needTypeId':needTypeId, 'productId':productId, 'useCountLimit':useCountLimit, 'expirationCompletedDate':expirationCompletedDate, 'availableTimeUomId':availableTimeUomId, 'thruDate':thruDate, 'inventoryItemId':inventoryItemId, 'fromDate':fromDate, 'canclAutmExtTime':canclAutmExtTime, 'originatedFromRoleTypeId':originatedFromRoleTypeId, 'automaticExtend':automaticExtend, 'originatedFromPartyId':originatedFromPartyId, 'communicationEventId':communicationEventId, 'maxLifeTime':maxLifeTime, 'purchaseThruDate':purchaseThruDate, 'externalSubscriptionId':externalSubscriptionId, 'gracePeriodOnExpiry':gracePeriodOnExpiry, 'subscriptionId':subscriptionId};
  }

}

/// Entity CommunicationEventProduct, Communication Event Product
class CommunicationEventProduct extends EntityBase {

  final String productId; // pk
  final String communicationEventId; // pk
  CommunicationEventProduct({entityId,
    @required this.productId, @required this.communicationEventId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'communicationEventId':communicationEventId};
  }

}

/// Entity CommunicationEventPrpTyp, Communication Event Purpose Type
class CommunicationEventPrpTyp extends EntityBase {

  /// this entity has only one pk
  final String communicationEventPrpTypId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  CommunicationEventPrpTyp({entityId,
    @required this.communicationEventPrpTypId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventPrpTyp { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'communicationEventPrpTypId':communicationEventPrpTypId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity CommunicationEventPurpose, Communication Event Purpose
class CommunicationEventPurpose extends EntityBase {

  final String communicationEventPrpTypId; // pk
  final String communicationEventId; // pk
  final String description;
  CommunicationEventPurpose({entityId,
    @required this.communicationEventPrpTypId, @required this.communicationEventId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'communicationEventPrpTypId':communicationEventPrpTypId, 'communicationEventId':communicationEventId, 'description':description};
  }

}

/// Entity CommunicationEventRole, Communication Event Role Entity showing all participants of the communication event.
class CommunicationEventRole extends EntityBase {

  final String roleTypeId; // pk
  final String statusId;
  final String communicationEventId; // pk
  final String partyId; // pk
  final String contactMechId;
  CommunicationEventRole({entityId,
    @required this.roleTypeId, this.statusId, @required this.communicationEventId, @required this.partyId, this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'statusId':statusId, 'communicationEventId':communicationEventId, 'partyId':partyId, 'contactMechId':contactMechId};
  }

}

/// Entity CommunicationEventSum, Sum of communication events over status
class CommunicationEventSum extends EntityBase {

  /// this entity has only one pk
  final String statusId;
  final int communicationEventId; // pk
  final String partyIdTo;
  CommunicationEventSum({entityId,
    this.statusId, @required this.communicationEventId, this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventSum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusId':statusId, 'communicationEventId':communicationEventId, 'partyIdTo':partyIdTo};
  }

}

/// Entity CommunicationEventType, Communication Event Type
class CommunicationEventType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String contactMechTypeId;
  final String communicationEventTypeId; // pk
  CommunicationEventType({entityId,
    this.parentTypeId, this.hasTable, this.description, this.contactMechTypeId, @required this.communicationEventTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId};
  }

}