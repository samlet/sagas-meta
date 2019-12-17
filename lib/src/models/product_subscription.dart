import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductSubscriptionResource, Product Subscription Resource
class ProductSubscriptionResource extends EntityBase {

  final DateTime purchaseFromDate;
  final String maxLifeTimeUomId;
  final String useTimeUomId;
  final String productId; // pk
  final String subscriptionResourceId; // pk
  final String canclAutmExtTimeUomId;
  final int useCountLimit;
  final String availableTimeUomId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final int canclAutmExtTime;
  final String gracePeriodOnExpiryUomId;
  final int availableTime;
  final String automaticExtend;
  final String useRoleTypeId;
  final int maxLifeTime;
  final int useTime;
  final DateTime purchaseThruDate;
  final int gracePeriodOnExpiry;
  ProductSubscriptionResource({entityId,
    this.purchaseFromDate, this.maxLifeTimeUomId, this.useTimeUomId, @required this.productId, @required this.subscriptionResourceId, this.canclAutmExtTimeUomId, this.useCountLimit, this.availableTimeUomId, this.thruDate, @required this.fromDate, this.canclAutmExtTime, this.gracePeriodOnExpiryUomId, this.availableTime, this.automaticExtend, this.useRoleTypeId, this.maxLifeTime, this.useTime, this.purchaseThruDate, this.gracePeriodOnExpiry,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductSubscriptionResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'purchaseFromDate':purchaseFromDate, 'maxLifeTimeUomId':maxLifeTimeUomId, 'useTimeUomId':useTimeUomId, 'productId':productId, 'subscriptionResourceId':subscriptionResourceId, 'canclAutmExtTimeUomId':canclAutmExtTimeUomId, 'useCountLimit':useCountLimit, 'availableTimeUomId':availableTimeUomId, 'thruDate':thruDate, 'fromDate':fromDate, 'canclAutmExtTime':canclAutmExtTime, 'gracePeriodOnExpiryUomId':gracePeriodOnExpiryUomId, 'availableTime':availableTime, 'automaticExtend':automaticExtend, 'useRoleTypeId':useRoleTypeId, 'maxLifeTime':maxLifeTime, 'useTime':useTime, 'purchaseThruDate':purchaseThruDate, 'gracePeriodOnExpiry':gracePeriodOnExpiry};
  }

}

/// Entity Subscription, Subscription
class Subscription extends EntityBase {

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
  Subscription({entityId,
    this.maxLifeTimeUomId, this.useTimeUomId, this.orderId, this.subscriptionResourceId, this.description, this.subscriptionTypeId, this.canclAutmExtTimeUomId, this.contactMechId, this.gracePeriodOnExpiryUomId, this.availableTime, this.productCategoryId, this.partyNeedId, this.useTime, this.partyId, this.orderItemSeqId, this.roleTypeId, this.purchaseFromDate, this.needTypeId, this.productId, this.useCountLimit, this.expirationCompletedDate, this.availableTimeUomId, this.thruDate, this.inventoryItemId, this.fromDate, this.canclAutmExtTime, this.originatedFromRoleTypeId, this.automaticExtend, this.originatedFromPartyId, this.communicationEventId, this.maxLifeTime, this.purchaseThruDate, this.externalSubscriptionId, this.gracePeriodOnExpiry, @required this.subscriptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Subscription { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'maxLifeTimeUomId':maxLifeTimeUomId, 'useTimeUomId':useTimeUomId, 'orderId':orderId, 'subscriptionResourceId':subscriptionResourceId, 'description':description, 'subscriptionTypeId':subscriptionTypeId, 'canclAutmExtTimeUomId':canclAutmExtTimeUomId, 'contactMechId':contactMechId, 'gracePeriodOnExpiryUomId':gracePeriodOnExpiryUomId, 'availableTime':availableTime, 'productCategoryId':productCategoryId, 'partyNeedId':partyNeedId, 'useTime':useTime, 'partyId':partyId, 'orderItemSeqId':orderItemSeqId, 'roleTypeId':roleTypeId, 'purchaseFromDate':purchaseFromDate, 'needTypeId':needTypeId, 'productId':productId, 'useCountLimit':useCountLimit, 'expirationCompletedDate':expirationCompletedDate, 'availableTimeUomId':availableTimeUomId, 'thruDate':thruDate, 'inventoryItemId':inventoryItemId, 'fromDate':fromDate, 'canclAutmExtTime':canclAutmExtTime, 'originatedFromRoleTypeId':originatedFromRoleTypeId, 'automaticExtend':automaticExtend, 'originatedFromPartyId':originatedFromPartyId, 'communicationEventId':communicationEventId, 'maxLifeTime':maxLifeTime, 'purchaseThruDate':purchaseThruDate, 'externalSubscriptionId':externalSubscriptionId, 'gracePeriodOnExpiry':gracePeriodOnExpiry, 'subscriptionId':subscriptionId};
  }

}

/// Entity SubscriptionActivity, Subscription Activity
class SubscriptionActivity extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String subscriptionActivityId; // pk
  final DateTime dateSent;
  SubscriptionActivity({entityId,
    this.comments, @required this.subscriptionActivityId, this.dateSent,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionActivity { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'subscriptionActivityId':subscriptionActivityId, 'dateSent':dateSent};
  }

}

/// Entity SubscriptionAndCommEvent, Subscription And Communication Event View
class SubscriptionAndCommEvent extends EntityBase {

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
  final String subscriptionId; // pk
  SubscriptionAndCommEvent({entityId,
    this.partyIdFrom, this.note, this.subject, this.ccString, this.contactMechTypeId, this.communicationEventTypeId, this.content, this.contentMimeTypeId, this.datetimeStarted, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, this.roleTypeIdTo, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString, @required this.subscriptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionAndCommEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'roleTypeIdTo':roleTypeIdTo, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString, 'subscriptionId':subscriptionId};
  }

}

/// Entity SubscriptionAttribute, Subscription Attribute
class SubscriptionAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String subscriptionId; // pk
  final String attrName; // pk
  SubscriptionAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.subscriptionId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'subscriptionId':subscriptionId, 'attrName':attrName};
  }

}

/// Entity SubscriptionCommEvent, Subscription Communication Event 
class SubscriptionCommEvent extends EntityBase {

  final String communicationEventId; // pk
  final String subscriptionId; // pk
  SubscriptionCommEvent({entityId,
    @required this.communicationEventId, @required this.subscriptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionCommEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'communicationEventId':communicationEventId, 'subscriptionId':subscriptionId};
  }

}

/// Entity SubscriptionFulfillmentPiece, Subscription Fulfillment Piece
class SubscriptionFulfillmentPiece extends EntityBase {

  final String subscriptionActivityId; // pk
  final String subscriptionId; // pk
  SubscriptionFulfillmentPiece({entityId,
    @required this.subscriptionActivityId, @required this.subscriptionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionFulfillmentPiece { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'subscriptionActivityId':subscriptionActivityId, 'subscriptionId':subscriptionId};
  }

}

/// Entity SubscriptionResource, Subscription Resource
class SubscriptionResource extends EntityBase {

  /// this entity has only one pk
  final String serviceNameOnExpiry;
  final String subscriptionResourceId; // pk
  final String contentId;
  final String description;
  final String parentResourceId;
  final String webSiteId;
  SubscriptionResource({entityId,
    this.serviceNameOnExpiry, @required this.subscriptionResourceId, this.contentId, this.description, this.parentResourceId, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'serviceNameOnExpiry':serviceNameOnExpiry, 'subscriptionResourceId':subscriptionResourceId, 'contentId':contentId, 'description':description, 'parentResourceId':parentResourceId, 'webSiteId':webSiteId};
  }

}

/// Entity SubscriptionType, Subscription Type
class SubscriptionType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String subscriptionTypeId; // pk
  SubscriptionType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.subscriptionTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'subscriptionTypeId':subscriptionTypeId};
  }

}

/// Entity SubscriptionTypeAttr, Subscription Type Attribute
class SubscriptionTypeAttr extends EntityBase {

  final String description;
  final String subscriptionTypeId; // pk
  final String attrName; // pk
  SubscriptionTypeAttr({entityId,
    this.description, @required this.subscriptionTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubscriptionTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'subscriptionTypeId':subscriptionTypeId, 'attrName':attrName};
  }

}