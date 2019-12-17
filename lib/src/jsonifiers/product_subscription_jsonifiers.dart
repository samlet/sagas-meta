import 'package:sagas_meta/src/models/product_subscription.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductSubscriptionJsonifier{
  static ProductSubscriptionResource extractProductSubscriptionResource(dynamic json) {
    return ProductSubscriptionResource(
        entityId: create_id_from('ProductSubscriptionResource', ['productId', 'subscriptionResourceId', 'fromDate'], json),
        purchaseFromDate: check_dt(json['purchaseFromDate']),
        maxLifeTimeUomId: json['maxLifeTimeUomId'] as String,
        useTimeUomId: json['useTimeUomId'] as String,
        productId: json['productId'] as String,
        subscriptionResourceId: json['subscriptionResourceId'] as String,
        canclAutmExtTimeUomId: json['canclAutmExtTimeUomId'] as String,
        useCountLimit: json['useCountLimit'] as int,
        availableTimeUomId: json['availableTimeUomId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        canclAutmExtTime: json['canclAutmExtTime'] as int,
        gracePeriodOnExpiryUomId: json['gracePeriodOnExpiryUomId'] as String,
        availableTime: json['availableTime'] as int,
        automaticExtend: json['automaticExtend'] as String,
        useRoleTypeId: json['useRoleTypeId'] as String,
        maxLifeTime: json['maxLifeTime'] as int,
        useTime: json['useTime'] as int,
        purchaseThruDate: check_dt(json['purchaseThruDate']),
        gracePeriodOnExpiry: json['gracePeriodOnExpiry'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductSubscriptionResource overridesProductSubscriptionResource(Map<String, dynamic> map) {
    return ProductSubscriptionResource(
        entityId: create_id_from('ProductSubscriptionResource', ['productId', 'subscriptionResourceId', 'fromDate'], map),
        purchaseFromDate: map['purchaseFromDate'],
        maxLifeTimeUomId: map['maxLifeTimeUomId'],
        useTimeUomId: map['useTimeUomId'],
        productId: map['productId'],
        subscriptionResourceId: map['subscriptionResourceId'],
        canclAutmExtTimeUomId: map['canclAutmExtTimeUomId'],
        useCountLimit: map['useCountLimit'],
        availableTimeUomId: map['availableTimeUomId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        canclAutmExtTime: map['canclAutmExtTime'],
        gracePeriodOnExpiryUomId: map['gracePeriodOnExpiryUomId'],
        availableTime: map['availableTime'],
        automaticExtend: map['automaticExtend'],
        useRoleTypeId: map['useRoleTypeId'],
        maxLifeTime: map['maxLifeTime'],
        useTime: map['useTime'],
        purchaseThruDate: map['purchaseThruDate'],
        gracePeriodOnExpiry: map['gracePeriodOnExpiry'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Subscription extractSubscription(dynamic json) {
    return Subscription(
        entityId: create_id_from('Subscription', ['subscriptionId'], json),
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

  static Subscription overridesSubscription(Map<String, dynamic> map) {
    return Subscription(
        entityId: create_id_from('Subscription', ['subscriptionId'], map),
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

  static SubscriptionActivity extractSubscriptionActivity(dynamic json) {
    return SubscriptionActivity(
        entityId: create_id_from('SubscriptionActivity', ['subscriptionActivityId'], json),
        comments: json['comments'] as String,
        subscriptionActivityId: json['subscriptionActivityId'] as String,
        dateSent: check_dt(json['dateSent']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionActivity overridesSubscriptionActivity(Map<String, dynamic> map) {
    return SubscriptionActivity(
        entityId: create_id_from('SubscriptionActivity', ['subscriptionActivityId'], map),
        comments: map['comments'],
        subscriptionActivityId: map['subscriptionActivityId'],
        dateSent: map['dateSent'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionAndCommEvent extractSubscriptionAndCommEvent(dynamic json) {
    return SubscriptionAndCommEvent(
        entityId: create_id_from('SubscriptionAndCommEvent', ['communicationEventId', 'subscriptionId'], json),
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
        subscriptionId: json['subscriptionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionAndCommEvent overridesSubscriptionAndCommEvent(Map<String, dynamic> map) {
    return SubscriptionAndCommEvent(
        entityId: create_id_from('SubscriptionAndCommEvent', ['communicationEventId', 'subscriptionId'], map),
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
        subscriptionId: map['subscriptionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionAttribute extractSubscriptionAttribute(dynamic json) {
    return SubscriptionAttribute(
        entityId: create_id_from('SubscriptionAttribute', ['subscriptionId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        subscriptionId: json['subscriptionId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionAttribute overridesSubscriptionAttribute(Map<String, dynamic> map) {
    return SubscriptionAttribute(
        entityId: create_id_from('SubscriptionAttribute', ['subscriptionId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        subscriptionId: map['subscriptionId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionCommEvent extractSubscriptionCommEvent(dynamic json) {
    return SubscriptionCommEvent(
        entityId: create_id_from('SubscriptionCommEvent', ['subscriptionId', 'communicationEventId'], json),
        communicationEventId: json['communicationEventId'] as String,
        subscriptionId: json['subscriptionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionCommEvent overridesSubscriptionCommEvent(Map<String, dynamic> map) {
    return SubscriptionCommEvent(
        entityId: create_id_from('SubscriptionCommEvent', ['subscriptionId', 'communicationEventId'], map),
        communicationEventId: map['communicationEventId'],
        subscriptionId: map['subscriptionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionFulfillmentPiece extractSubscriptionFulfillmentPiece(dynamic json) {
    return SubscriptionFulfillmentPiece(
        entityId: create_id_from('SubscriptionFulfillmentPiece', ['subscriptionActivityId', 'subscriptionId'], json),
        subscriptionActivityId: json['subscriptionActivityId'] as String,
        subscriptionId: json['subscriptionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionFulfillmentPiece overridesSubscriptionFulfillmentPiece(Map<String, dynamic> map) {
    return SubscriptionFulfillmentPiece(
        entityId: create_id_from('SubscriptionFulfillmentPiece', ['subscriptionActivityId', 'subscriptionId'], map),
        subscriptionActivityId: map['subscriptionActivityId'],
        subscriptionId: map['subscriptionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionResource extractSubscriptionResource(dynamic json) {
    return SubscriptionResource(
        entityId: create_id_from('SubscriptionResource', ['subscriptionResourceId'], json),
        serviceNameOnExpiry: json['serviceNameOnExpiry'] as String,
        subscriptionResourceId: json['subscriptionResourceId'] as String,
        contentId: json['contentId'] as String,
        description: json['description'] as String,
        parentResourceId: json['parentResourceId'] as String,
        webSiteId: json['webSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionResource overridesSubscriptionResource(Map<String, dynamic> map) {
    return SubscriptionResource(
        entityId: create_id_from('SubscriptionResource', ['subscriptionResourceId'], map),
        serviceNameOnExpiry: map['serviceNameOnExpiry'],
        subscriptionResourceId: map['subscriptionResourceId'],
        contentId: map['contentId'],
        description: map['description'],
        parentResourceId: map['parentResourceId'],
        webSiteId: map['webSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionType extractSubscriptionType(dynamic json) {
    return SubscriptionType(
        entityId: create_id_from('SubscriptionType', ['subscriptionTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        subscriptionTypeId: json['subscriptionTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionType overridesSubscriptionType(Map<String, dynamic> map) {
    return SubscriptionType(
        entityId: create_id_from('SubscriptionType', ['subscriptionTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        subscriptionTypeId: map['subscriptionTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SubscriptionTypeAttr extractSubscriptionTypeAttr(dynamic json) {
    return SubscriptionTypeAttr(
        entityId: create_id_from('SubscriptionTypeAttr', ['subscriptionTypeId', 'attrName'], json),
        description: json['description'] as String,
        subscriptionTypeId: json['subscriptionTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SubscriptionTypeAttr overridesSubscriptionTypeAttr(Map<String, dynamic> map) {
    return SubscriptionTypeAttr(
        entityId: create_id_from('SubscriptionTypeAttr', ['subscriptionTypeId', 'attrName'], map),
        description: map['description'],
        subscriptionTypeId: map['subscriptionTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}