import 'package:sagas_meta/src/models/order_shoppinglist.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderShoppinglistJsonifier{
  static ShoppingList extractShoppingList(dynamic json) {
    return ShoppingList(
        entityId: create_id_from('ShoppingList', ['shoppingListId'], json),
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        parentShoppingListId: json['parentShoppingListId'] as String,
        productPromoCodeId: json['productPromoCodeId'] as String,
        description: json['description'] as String,
        isActive: json['isActive'] as String,
        shoppingListTypeId: json['shoppingListTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        shoppingListId: json['shoppingListId'] as String,
        currencyUom: json['currencyUom'] as String,
        lastOrderedDate: check_dt(json['lastOrderedDate']),
        carrierRoleTypeId: json['carrierRoleTypeId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        isPublic: json['isPublic'] as String,
        productStoreId: json['productStoreId'] as String,
        listName: json['listName'] as String,
        lastAdminModified: check_dt(json['lastAdminModified']),
        partyId: json['partyId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        visitorId: json['visitorId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShoppingList overridesShoppingList(Map<String, dynamic> map) {
    return ShoppingList(
        entityId: create_id_from('ShoppingList', ['shoppingListId'], map),
        recurrenceInfoId: map['recurrenceInfoId'],
        parentShoppingListId: map['parentShoppingListId'],
        productPromoCodeId: map['productPromoCodeId'],
        description: map['description'],
        isActive: map['isActive'],
        shoppingListTypeId: map['shoppingListTypeId'],
        contactMechId: map['contactMechId'],
        carrierPartyId: map['carrierPartyId'],
        shoppingListId: map['shoppingListId'],
        currencyUom: map['currencyUom'],
        lastOrderedDate: map['lastOrderedDate'],
        carrierRoleTypeId: map['carrierRoleTypeId'],
        paymentMethodId: map['paymentMethodId'],
        isPublic: map['isPublic'],
        productStoreId: map['productStoreId'],
        listName: map['listName'],
        lastAdminModified: map['lastAdminModified'],
        partyId: map['partyId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        visitorId: map['visitorId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShoppingListItem extractShoppingListItem(dynamic json) {
    return ShoppingListItem(
        entityId: create_id_from('ShoppingListItem', ['shoppingListId', 'shoppingListItemSeqId'], json),
        quantity: json['quantity'] as double,
        reservLength: json['reservLength'] as double,
        productId: json['productId'] as String,
        reservPersons: json['reservPersons'] as double,
        quantityPurchased: json['quantityPurchased'] as double,
        shoppingListId: json['shoppingListId'] as String,
        reservStart: check_dt(json['reservStart']),
        configId: json['configId'] as String,
        shoppingListItemSeqId: json['shoppingListItemSeqId'] as String,
        modifiedPrice: json['modifiedPrice'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShoppingListItem overridesShoppingListItem(Map<String, dynamic> map) {
    return ShoppingListItem(
        entityId: create_id_from('ShoppingListItem', ['shoppingListId', 'shoppingListItemSeqId'], map),
        quantity: map['quantity'],
        reservLength: map['reservLength'],
        productId: map['productId'],
        reservPersons: map['reservPersons'],
        quantityPurchased: map['quantityPurchased'],
        shoppingListId: map['shoppingListId'],
        reservStart: map['reservStart'],
        configId: map['configId'],
        shoppingListItemSeqId: map['shoppingListItemSeqId'],
        modifiedPrice: map['modifiedPrice'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShoppingListItemSurvey extractShoppingListItemSurvey(dynamic json) {
    return ShoppingListItemSurvey(
        entityId: create_id_from('ShoppingListItemSurvey', ['shoppingListId', 'shoppingListItemSeqId', 'surveyResponseId'], json),
        shoppingListId: json['shoppingListId'] as String,
        shoppingListItemSeqId: json['shoppingListItemSeqId'] as String,
        surveyResponseId: json['surveyResponseId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShoppingListItemSurvey overridesShoppingListItemSurvey(Map<String, dynamic> map) {
    return ShoppingListItemSurvey(
        entityId: create_id_from('ShoppingListItemSurvey', ['shoppingListId', 'shoppingListItemSeqId', 'surveyResponseId'], map),
        shoppingListId: map['shoppingListId'],
        shoppingListItemSeqId: map['shoppingListItemSeqId'],
        surveyResponseId: map['surveyResponseId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShoppingListType extractShoppingListType(dynamic json) {
    return ShoppingListType(
        entityId: create_id_from('ShoppingListType', ['shoppingListTypeId'], json),
        description: json['description'] as String,
        shoppingListTypeId: json['shoppingListTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShoppingListType overridesShoppingListType(Map<String, dynamic> map) {
    return ShoppingListType(
        entityId: create_id_from('ShoppingListType', ['shoppingListTypeId'], map),
        description: map['description'],
        shoppingListTypeId: map['shoppingListTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShoppingListWorkEffort extractShoppingListWorkEffort(dynamic json) {
    return ShoppingListWorkEffort(
        entityId: create_id_from('ShoppingListWorkEffort', ['shoppingListId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        shoppingListId: json['shoppingListId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShoppingListWorkEffort overridesShoppingListWorkEffort(Map<String, dynamic> map) {
    return ShoppingListWorkEffort(
        entityId: create_id_from('ShoppingListWorkEffort', ['shoppingListId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        shoppingListId: map['shoppingListId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}