import 'package:sagas_meta/src/models/product_price.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductPriceJsonifier{
  static ProductFeaturePrice extractProductFeaturePrice(dynamic json) {
    return ProductFeaturePrice(
        entityId: create_id_from('ProductFeaturePrice', ['productFeatureId', 'productPriceTypeId', 'currencyUomId', 'fromDate'], json),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        productFeatureId: json['productFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        price: json['price'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        productPriceTypeId: json['productPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeaturePrice overridesProductFeaturePrice(Map<String, dynamic> map) {
    return ProductFeaturePrice(
        entityId: create_id_from('ProductFeaturePrice', ['productFeatureId', 'productPriceTypeId', 'currencyUomId', 'fromDate'], map),
        lastModifiedDate: map['lastModifiedDate'],
        productFeatureId: map['productFeatureId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        price: map['price'],
        createdByUserLogin: map['createdByUserLogin'],
        productPriceTypeId: map['productPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPaymentMethodType extractProductPaymentMethodType(dynamic json) {
    return ProductPaymentMethodType(
        entityId: create_id_from('ProductPaymentMethodType', ['productId', 'paymentMethodTypeId', 'productPricePurposeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        productPricePurposeId: json['productPricePurposeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPaymentMethodType overridesProductPaymentMethodType(Map<String, dynamic> map) {
    return ProductPaymentMethodType(
        entityId: create_id_from('ProductPaymentMethodType', ['productId', 'paymentMethodTypeId', 'productPricePurposeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        productPricePurposeId: map['productPricePurposeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPrice extractProductPrice(dynamic json) {
    return ProductPrice(
        entityId: create_id_from('ProductPrice', ['productId', 'productPriceTypeId', 'productPricePurposeId', 'currencyUomId', 'productStoreGroupId', 'fromDate'], json),
        taxInPrice: json['taxInPrice'] as String,
        termUomId: json['termUomId'] as String,
        priceWithTax: json['priceWithTax'] as double,
        productStoreGroupId: json['productStoreGroupId'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        customPriceCalcService: json['customPriceCalcService'] as String,
        price: json['price'] as double,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        productPricePurposeId: json['productPricePurposeId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        productId: json['productId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        taxPercentage: json['taxPercentage'] as double,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        priceWithoutTax: json['priceWithoutTax'] as double,
        taxAmount: json['taxAmount'] as double,
        productPriceTypeId: json['productPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPrice overridesProductPrice(Map<String, dynamic> map) {
    return ProductPrice(
        entityId: create_id_from('ProductPrice', ['productId', 'productPriceTypeId', 'productPricePurposeId', 'currencyUomId', 'productStoreGroupId', 'fromDate'], map),
        taxInPrice: map['taxInPrice'],
        termUomId: map['termUomId'],
        priceWithTax: map['priceWithTax'],
        productStoreGroupId: map['productStoreGroupId'],
        taxAuthPartyId: map['taxAuthPartyId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        customPriceCalcService: map['customPriceCalcService'],
        price: map['price'],
        taxAuthGeoId: map['taxAuthGeoId'],
        productPricePurposeId: map['productPricePurposeId'],
        createdByUserLogin: map['createdByUserLogin'],
        productId: map['productId'],
        lastModifiedDate: map['lastModifiedDate'],
        taxPercentage: map['taxPercentage'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        priceWithoutTax: map['priceWithoutTax'],
        taxAmount: map['taxAmount'],
        productPriceTypeId: map['productPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceAction extractProductPriceAction(dynamic json) {
    return ProductPriceAction(
        entityId: create_id_from('ProductPriceAction', ['productPriceRuleId', 'productPriceActionSeqId'], json),
        amount: json['amount'] as double,
        productPriceActionSeqId: json['productPriceActionSeqId'] as String,
        productPriceActionTypeId: json['productPriceActionTypeId'] as String,
        productPriceRuleId: json['productPriceRuleId'] as String,
        rateCode: json['rateCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceAction overridesProductPriceAction(Map<String, dynamic> map) {
    return ProductPriceAction(
        entityId: create_id_from('ProductPriceAction', ['productPriceRuleId', 'productPriceActionSeqId'], map),
        amount: map['amount'],
        productPriceActionSeqId: map['productPriceActionSeqId'],
        productPriceActionTypeId: map['productPriceActionTypeId'],
        productPriceRuleId: map['productPriceRuleId'],
        rateCode: map['rateCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceActionType extractProductPriceActionType(dynamic json) {
    return ProductPriceActionType(
        entityId: create_id_from('ProductPriceActionType', ['productPriceActionTypeId'], json),
        description: json['description'] as String,
        productPriceActionTypeId: json['productPriceActionTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceActionType overridesProductPriceActionType(Map<String, dynamic> map) {
    return ProductPriceActionType(
        entityId: create_id_from('ProductPriceActionType', ['productPriceActionTypeId'], map),
        description: map['description'],
        productPriceActionTypeId: map['productPriceActionTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceAutoNotice extractProductPriceAutoNotice(dynamic json) {
    return ProductPriceAutoNotice(
        entityId: create_id_from('ProductPriceAutoNotice', ['productPriceNoticeId'], json),
        fromDate: check_dt(json['fromDate']),
        runDate: check_dt(json['runDate']),
        facilityId: json['facilityId'] as String,
        productPriceNoticeId: json['productPriceNoticeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceAutoNotice overridesProductPriceAutoNotice(Map<String, dynamic> map) {
    return ProductPriceAutoNotice(
        entityId: create_id_from('ProductPriceAutoNotice', ['productPriceNoticeId'], map),
        fromDate: map['fromDate'],
        runDate: map['runDate'],
        facilityId: map['facilityId'],
        productPriceNoticeId: map['productPriceNoticeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceChange extractProductPriceChange(dynamic json) {
    return ProductPriceChange(
        entityId: create_id_from('ProductPriceChange', ['productPriceChangeId'], json),
        productId: json['productId'] as String,
        oldPrice: json['oldPrice'] as double,
        changedByUserLogin: json['changedByUserLogin'] as String,
        productPriceChangeId: json['productPriceChangeId'] as String,
        productStoreGroupId: json['productStoreGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        changedDate: check_dt(json['changedDate']),
        currencyUomId: json['currencyUomId'] as String,
        price: json['price'] as double,
        productPricePurposeId: json['productPricePurposeId'] as String,
        productPriceTypeId: json['productPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceChange overridesProductPriceChange(Map<String, dynamic> map) {
    return ProductPriceChange(
        entityId: create_id_from('ProductPriceChange', ['productPriceChangeId'], map),
        productId: map['productId'],
        oldPrice: map['oldPrice'],
        changedByUserLogin: map['changedByUserLogin'],
        productPriceChangeId: map['productPriceChangeId'],
        productStoreGroupId: map['productStoreGroupId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        changedDate: map['changedDate'],
        currencyUomId: map['currencyUomId'],
        price: map['price'],
        productPricePurposeId: map['productPricePurposeId'],
        productPriceTypeId: map['productPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceCond extractProductPriceCond(dynamic json) {
    return ProductPriceCond(
        entityId: create_id_from('ProductPriceCond', ['productPriceRuleId', 'productPriceCondSeqId'], json),
        productPriceCondSeqId: json['productPriceCondSeqId'] as String,
        inputParamEnumId: json['inputParamEnumId'] as String,
        condValue: json['condValue'] as String,
        productPriceRuleId: json['productPriceRuleId'] as String,
        operatorEnumId: json['operatorEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceCond overridesProductPriceCond(Map<String, dynamic> map) {
    return ProductPriceCond(
        entityId: create_id_from('ProductPriceCond', ['productPriceRuleId', 'productPriceCondSeqId'], map),
        productPriceCondSeqId: map['productPriceCondSeqId'],
        inputParamEnumId: map['inputParamEnumId'],
        condValue: map['condValue'],
        productPriceRuleId: map['productPriceRuleId'],
        operatorEnumId: map['operatorEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPricePurpose extractProductPricePurpose(dynamic json) {
    return ProductPricePurpose(
        entityId: create_id_from('ProductPricePurpose', ['productPricePurposeId'], json),
        description: json['description'] as String,
        productPricePurposeId: json['productPricePurposeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPricePurpose overridesProductPricePurpose(Map<String, dynamic> map) {
    return ProductPricePurpose(
        entityId: create_id_from('ProductPricePurpose', ['productPricePurposeId'], map),
        description: map['description'],
        productPricePurposeId: map['productPricePurposeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceRule extractProductPriceRule(dynamic json) {
    return ProductPriceRule(
        entityId: create_id_from('ProductPriceRule', ['productPriceRuleId'], json),
        fromDate: check_dt(json['fromDate']),
        ruleName: json['ruleName'] as String,
        description: json['description'] as String,
        isSale: json['isSale'] as String,
        productPriceRuleId: json['productPriceRuleId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceRule overridesProductPriceRule(Map<String, dynamic> map) {
    return ProductPriceRule(
        entityId: create_id_from('ProductPriceRule', ['productPriceRuleId'], map),
        fromDate: map['fromDate'],
        ruleName: map['ruleName'],
        description: map['description'],
        isSale: map['isSale'],
        productPriceRuleId: map['productPriceRuleId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductPriceType extractProductPriceType(dynamic json) {
    return ProductPriceType(
        entityId: create_id_from('ProductPriceType', ['productPriceTypeId'], json),
        description: json['description'] as String,
        productPriceTypeId: json['productPriceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductPriceType overridesProductPriceType(Map<String, dynamic> map) {
    return ProductPriceType(
        entityId: create_id_from('ProductPriceType', ['productPriceTypeId'], map),
        description: map['description'],
        productPriceTypeId: map['productPriceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuantityBreak extractQuantityBreak(dynamic json) {
    return QuantityBreak(
        entityId: create_id_from('QuantityBreak', ['quantityBreakId'], json),
        thruQuantity: json['thruQuantity'] as double,
        quantityBreakTypeId: json['quantityBreakTypeId'] as String,
        fromQuantity: json['fromQuantity'] as double,
        quantityBreakId: json['quantityBreakId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuantityBreak overridesQuantityBreak(Map<String, dynamic> map) {
    return QuantityBreak(
        entityId: create_id_from('QuantityBreak', ['quantityBreakId'], map),
        thruQuantity: map['thruQuantity'],
        quantityBreakTypeId: map['quantityBreakTypeId'],
        fromQuantity: map['fromQuantity'],
        quantityBreakId: map['quantityBreakId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static QuantityBreakType extractQuantityBreakType(dynamic json) {
    return QuantityBreakType(
        entityId: create_id_from('QuantityBreakType', ['quantityBreakTypeId'], json),
        quantityBreakTypeId: json['quantityBreakTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static QuantityBreakType overridesQuantityBreakType(Map<String, dynamic> map) {
    return QuantityBreakType(
        entityId: create_id_from('QuantityBreakType', ['quantityBreakTypeId'], map),
        quantityBreakTypeId: map['quantityBreakTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SaleType extractSaleType(dynamic json) {
    return SaleType(
        entityId: create_id_from('SaleType', ['saleTypeId'], json),
        saleTypeId: json['saleTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SaleType overridesSaleType(Map<String, dynamic> map) {
    return SaleType(
        entityId: create_id_from('SaleType', ['saleTypeId'], map),
        saleTypeId: map['saleTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}