import 'package:sagas_meta/src/models/product_promo.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductPromoJsonifier{
  static ProductPromo extractProductPromo(dynamic json) {
    return ProductPromo(
        entityId: create_id_from('ProductPromo', ['productPromoId'], json),
        showToCustomer: json['showToCustomer'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        requireCode: json['requireCode'] as String,
        overrideOrgPartyId: json['overrideOrgPartyId'] as String,
        productPromoId: json['productPromoId'] as String,
        useLimitPerCustomer: json['useLimitPerCustomer'] as int,
        useLimitPerOrder: json['useLimitPerOrder'] as int,
        useLimitPerPromotion: json['useLimitPerPromotion'] as int,
        promoName: json['promoName'] as String,
        promoText: json['promoText'] as String,
        userEntered: json['userEntered'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        billbackFactor: json['billbackFactor'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromo overridesProductPromo(Map<String, dynamic> map) {
    return ProductPromo(
        entityId: create_id_from('ProductPromo', ['productPromoId'], map),
        showToCustomer: map['showToCustomer'],
        lastModifiedDate: map['lastModifiedDate'],
        requireCode: map['requireCode'],
        overrideOrgPartyId: map['overrideOrgPartyId'],
        productPromoId: map['productPromoId'],
        useLimitPerCustomer: map['useLimitPerCustomer'],
        useLimitPerOrder: map['useLimitPerOrder'],
        useLimitPerPromotion: map['useLimitPerPromotion'],
        promoName: map['promoName'],
        promoText: map['promoText'],
        userEntered: map['userEntered'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        billbackFactor: map['billbackFactor'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoAction extractProductPromoAction(dynamic json) {
    return ProductPromoAction(
        entityId: create_id_from('ProductPromoAction', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId'], json),
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        productPromoRuleId: json['productPromoRuleId'] as String,
        orderAdjustmentTypeId: json['orderAdjustmentTypeId'] as String,
        useCartQuantity: json['useCartQuantity'] as String,
        productPromoActionEnumId: json['productPromoActionEnumId'] as String,
        productPromoId: json['productPromoId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        productPromoActionSeqId: json['productPromoActionSeqId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoAction overridesProductPromoAction(Map<String, dynamic> map) {
    return ProductPromoAction(
        entityId: create_id_from('ProductPromoAction', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId'], map),
        amount: map['amount'],
        quantity: map['quantity'],
        productId: map['productId'],
        productPromoRuleId: map['productPromoRuleId'],
        orderAdjustmentTypeId: map['orderAdjustmentTypeId'],
        useCartQuantity: map['useCartQuantity'],
        productPromoActionEnumId: map['productPromoActionEnumId'],
        productPromoId: map['productPromoId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        productPromoActionSeqId: map['productPromoActionSeqId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCategory extractProductPromoCategory(dynamic json) {
    return ProductPromoCategory(
        entityId: create_id_from('ProductPromoCategory', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId', 'productPromoCondSeqId', 'productCategoryId', 'andGroupId'], json),
        productCategoryId: json['productCategoryId'] as String,
        andGroupId: json['andGroupId'] as String,
        productPromoActionSeqId: json['productPromoActionSeqId'] as String,
        productPromoRuleId: json['productPromoRuleId'] as String,
        includeSubCategories: json['includeSubCategories'] as String,
        productPromoApplEnumId: json['productPromoApplEnumId'] as String,
        productPromoId: json['productPromoId'] as String,
        productPromoCondSeqId: json['productPromoCondSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCategory overridesProductPromoCategory(Map<String, dynamic> map) {
    return ProductPromoCategory(
        entityId: create_id_from('ProductPromoCategory', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId', 'productPromoCondSeqId', 'productCategoryId', 'andGroupId'], map),
        productCategoryId: map['productCategoryId'],
        andGroupId: map['andGroupId'],
        productPromoActionSeqId: map['productPromoActionSeqId'],
        productPromoRuleId: map['productPromoRuleId'],
        includeSubCategories: map['includeSubCategories'],
        productPromoApplEnumId: map['productPromoApplEnumId'],
        productPromoId: map['productPromoId'],
        productPromoCondSeqId: map['productPromoCondSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCode extractProductPromoCode(dynamic json) {
    return ProductPromoCode(
        entityId: create_id_from('ProductPromoCode', ['productPromoCodeId'], json),
        useLimitPerCode: json['useLimitPerCode'] as int,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        productPromoCodeId: json['productPromoCodeId'] as String,
        productPromoId: json['productPromoId'] as String,
        useLimitPerCustomer: json['useLimitPerCustomer'] as int,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        userEntered: json['userEntered'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        requireEmailOrParty: json['requireEmailOrParty'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCode overridesProductPromoCode(Map<String, dynamic> map) {
    return ProductPromoCode(
        entityId: create_id_from('ProductPromoCode', ['productPromoCodeId'], map),
        useLimitPerCode: map['useLimitPerCode'],
        lastModifiedDate: map['lastModifiedDate'],
        productPromoCodeId: map['productPromoCodeId'],
        productPromoId: map['productPromoId'],
        useLimitPerCustomer: map['useLimitPerCustomer'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        userEntered: map['userEntered'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        requireEmailOrParty: map['requireEmailOrParty'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCodeEmail extractProductPromoCodeEmail(dynamic json) {
    return ProductPromoCodeEmail(
        entityId: create_id_from('ProductPromoCodeEmail', ['productPromoCodeId', 'emailAddress'], json),
        emailAddress: json['emailAddress'] as String,
        productPromoCodeId: json['productPromoCodeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCodeEmail overridesProductPromoCodeEmail(Map<String, dynamic> map) {
    return ProductPromoCodeEmail(
        entityId: create_id_from('ProductPromoCodeEmail', ['productPromoCodeId', 'emailAddress'], map),
        emailAddress: map['emailAddress'],
        productPromoCodeId: map['productPromoCodeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCodeEmailParty extractProductPromoCodeEmailParty(dynamic json) {
    return ProductPromoCodeEmailParty(
        entityId: create_id_from('ProductPromoCodeEmailParty', ['productPromoCodeId', 'partyId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        infoString: json['infoString'] as String,
        productPromoCodeId: json['productPromoCodeId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCodeEmailParty overridesProductPromoCodeEmailParty(Map<String, dynamic> map) {
    return ProductPromoCodeEmailParty(
        entityId: create_id_from('ProductPromoCodeEmailParty', ['productPromoCodeId', 'partyId', 'fromDate'], map),
        fromDate: map['fromDate'],
        infoString: map['infoString'],
        productPromoCodeId: map['productPromoCodeId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCodeParty extractProductPromoCodeParty(dynamic json) {
    return ProductPromoCodeParty(
        entityId: create_id_from('ProductPromoCodeParty', ['productPromoCodeId', 'partyId'], json),
        productPromoCodeId: json['productPromoCodeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCodeParty overridesProductPromoCodeParty(Map<String, dynamic> map) {
    return ProductPromoCodeParty(
        entityId: create_id_from('ProductPromoCodeParty', ['productPromoCodeId', 'partyId'], map),
        productPromoCodeId: map['productPromoCodeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoCond extractProductPromoCond(dynamic json) {
    return ProductPromoCond(
        entityId: create_id_from('ProductPromoCond', ['productPromoId', 'productPromoRuleId', 'productPromoCondSeqId'], json),
        productPromoRuleId: json['productPromoRuleId'] as String,
        inputParamEnumId: json['inputParamEnumId'] as String,
        condValue: json['condValue'] as String,
        productPromoId: json['productPromoId'] as String,
        customMethodId: json['customMethodId'] as String,
        operatorEnumId: json['operatorEnumId'] as String,
        otherValue: json['otherValue'] as String,
        productPromoCondSeqId: json['productPromoCondSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoCond overridesProductPromoCond(Map<String, dynamic> map) {
    return ProductPromoCond(
        entityId: create_id_from('ProductPromoCond', ['productPromoId', 'productPromoRuleId', 'productPromoCondSeqId'], map),
        productPromoRuleId: map['productPromoRuleId'],
        inputParamEnumId: map['inputParamEnumId'],
        condValue: map['condValue'],
        productPromoId: map['productPromoId'],
        customMethodId: map['customMethodId'],
        operatorEnumId: map['operatorEnumId'],
        otherValue: map['otherValue'],
        productPromoCondSeqId: map['productPromoCondSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoContent extractProductPromoContent(dynamic json) {
    return ProductPromoContent(
        entityId: create_id_from('ProductPromoContent', ['productPromoId', 'contentId', 'productPromoContentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productPromoContentTypeId: json['productPromoContentTypeId'] as String,
        contentId: json['contentId'] as String,
        productPromoId: json['productPromoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoContent overridesProductPromoContent(Map<String, dynamic> map) {
    return ProductPromoContent(
        entityId: create_id_from('ProductPromoContent', ['productPromoId', 'contentId', 'productPromoContentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        productPromoContentTypeId: map['productPromoContentTypeId'],
        contentId: map['contentId'],
        productPromoId: map['productPromoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoProduct extractProductPromoProduct(dynamic json) {
    return ProductPromoProduct(
        entityId: create_id_from('ProductPromoProduct', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId', 'productPromoCondSeqId', 'productId'], json),
        productId: json['productId'] as String,
        productPromoActionSeqId: json['productPromoActionSeqId'] as String,
        productPromoRuleId: json['productPromoRuleId'] as String,
        productPromoApplEnumId: json['productPromoApplEnumId'] as String,
        productPromoId: json['productPromoId'] as String,
        productPromoCondSeqId: json['productPromoCondSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoProduct overridesProductPromoProduct(Map<String, dynamic> map) {
    return ProductPromoProduct(
        entityId: create_id_from('ProductPromoProduct', ['productPromoId', 'productPromoRuleId', 'productPromoActionSeqId', 'productPromoCondSeqId', 'productId'], map),
        productId: map['productId'],
        productPromoActionSeqId: map['productPromoActionSeqId'],
        productPromoRuleId: map['productPromoRuleId'],
        productPromoApplEnumId: map['productPromoApplEnumId'],
        productPromoId: map['productPromoId'],
        productPromoCondSeqId: map['productPromoCondSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoRule extractProductPromoRule(dynamic json) {
    return ProductPromoRule(
        entityId: create_id_from('ProductPromoRule', ['productPromoId', 'productPromoRuleId'], json),
        productPromoRuleId: json['productPromoRuleId'] as String,
        ruleName: json['ruleName'] as String,
        productPromoId: json['productPromoId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoRule overridesProductPromoRule(Map<String, dynamic> map) {
    return ProductPromoRule(
        entityId: create_id_from('ProductPromoRule', ['productPromoId', 'productPromoRuleId'], map),
        productPromoRuleId: map['productPromoRuleId'],
        ruleName: map['ruleName'],
        productPromoId: map['productPromoId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoUse extractProductPromoUse(dynamic json) {
    return ProductPromoUse(
        entityId: create_id_from('ProductPromoUse', ['orderId', 'promoSequenceId'], json),
        quantityLeftInActions: json['quantityLeftInActions'] as double,
        orderId: json['orderId'] as String,
        totalDiscountAmount: json['totalDiscountAmount'] as double,
        productPromoCodeId: json['productPromoCodeId'] as String,
        promoSequenceId: json['promoSequenceId'] as String,
        productPromoId: json['productPromoId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoUse overridesProductPromoUse(Map<String, dynamic> map) {
    return ProductPromoUse(
        entityId: create_id_from('ProductPromoUse', ['orderId', 'promoSequenceId'], map),
        quantityLeftInActions: map['quantityLeftInActions'],
        orderId: map['orderId'],
        totalDiscountAmount: map['totalDiscountAmount'],
        productPromoCodeId: map['productPromoCodeId'],
        promoSequenceId: map['promoSequenceId'],
        productPromoId: map['productPromoId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPromoUseCheck extractProductPromoUseCheck(dynamic json) {
    return ProductPromoUseCheck(
        entityId: create_id_from('ProductPromoUseCheck', ['orderId', 'promoSequenceId'], json),
        quantityLeftInActions: json['quantityLeftInActions'] as double,
        statusId: json['statusId'] as String,
        orderId: json['orderId'] as String,
        totalDiscountAmount: json['totalDiscountAmount'] as double,
        productPromoCodeId: json['productPromoCodeId'] as String,
        promoSequenceId: json['promoSequenceId'] as String,
        productPromoId: json['productPromoId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPromoUseCheck overridesProductPromoUseCheck(Map<String, dynamic> map) {
    return ProductPromoUseCheck(
        entityId: create_id_from('ProductPromoUseCheck', ['orderId', 'promoSequenceId'], map),
        quantityLeftInActions: map['quantityLeftInActions'],
        statusId: map['statusId'],
        orderId: map['orderId'],
        totalDiscountAmount: map['totalDiscountAmount'],
        productPromoCodeId: map['productPromoCodeId'],
        promoSequenceId: map['promoSequenceId'],
        productPromoId: map['productPromoId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}