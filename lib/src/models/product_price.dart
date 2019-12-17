import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductFeaturePrice, Product Feature Price
class ProductFeaturePrice extends EntityBase {

  final DateTime lastModifiedDate;
  final String productFeatureId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String lastModifiedByUserLogin;
  final String currencyUomId; // pk
  final DateTime createdDate;
  final double price;
  final String createdByUserLogin;
  final String productPriceTypeId; // pk
  ProductFeaturePrice({entityId,
    this.lastModifiedDate, @required this.productFeatureId, this.thruDate, @required this.fromDate, this.lastModifiedByUserLogin, @required this.currencyUomId, this.createdDate, this.price, this.createdByUserLogin, @required this.productPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductFeaturePrice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastModifiedDate':lastModifiedDate, 'productFeatureId':productFeatureId, 'thruDate':thruDate, 'fromDate':fromDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'price':price, 'createdByUserLogin':createdByUserLogin, 'productPriceTypeId':productPriceTypeId};
  }

}

/// Entity ProductPaymentMethodType, Product PaymentMethodType
class ProductPaymentMethodType extends EntityBase {

  final DateTime fromDate; // pk
  final String productId; // pk
  final int sequenceNum;
  final String paymentMethodTypeId; // pk
  final String productPricePurposeId; // pk
  final DateTime thruDate;
  ProductPaymentMethodType({entityId,
    @required this.fromDate, @required this.productId, this.sequenceNum, @required this.paymentMethodTypeId, @required this.productPricePurposeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPaymentMethodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productId':productId, 'sequenceNum':sequenceNum, 'paymentMethodTypeId':paymentMethodTypeId, 'productPricePurposeId':productPricePurposeId, 'thruDate':thruDate};
  }

}

/// Entity ProductPrice, Product Price
class ProductPrice extends EntityBase {

  final String taxInPrice;
  final String termUomId;
  final double priceWithTax;
  final String productStoreGroupId; // pk
  final String taxAuthPartyId;
  final String lastModifiedByUserLogin;
  final String customPriceCalcService;
  final double price;
  final String taxAuthGeoId;
  final String productPricePurposeId; // pk
  final String createdByUserLogin;
  final String productId; // pk
  final DateTime lastModifiedDate;
  final double taxPercentage;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String currencyUomId; // pk
  final DateTime createdDate;
  final double priceWithoutTax;
  final double taxAmount;
  final String productPriceTypeId; // pk
  ProductPrice({entityId,
    this.taxInPrice, this.termUomId, this.priceWithTax, @required this.productStoreGroupId, this.taxAuthPartyId, this.lastModifiedByUserLogin, this.customPriceCalcService, this.price, this.taxAuthGeoId, @required this.productPricePurposeId, this.createdByUserLogin, @required this.productId, this.lastModifiedDate, this.taxPercentage, this.thruDate, @required this.fromDate, @required this.currencyUomId, this.createdDate, this.priceWithoutTax, this.taxAmount, @required this.productPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPrice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxInPrice':taxInPrice, 'termUomId':termUomId, 'priceWithTax':priceWithTax, 'productStoreGroupId':productStoreGroupId, 'taxAuthPartyId':taxAuthPartyId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'customPriceCalcService':customPriceCalcService, 'price':price, 'taxAuthGeoId':taxAuthGeoId, 'productPricePurposeId':productPricePurposeId, 'createdByUserLogin':createdByUserLogin, 'productId':productId, 'lastModifiedDate':lastModifiedDate, 'taxPercentage':taxPercentage, 'thruDate':thruDate, 'fromDate':fromDate, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'priceWithoutTax':priceWithoutTax, 'taxAmount':taxAmount, 'productPriceTypeId':productPriceTypeId};
  }

}

/// Entity ProductPriceAction, Product Price Action
class ProductPriceAction extends EntityBase {

  final double amount;
  final String productPriceActionSeqId; // pk
  final String productPriceActionTypeId;
  final String productPriceRuleId; // pk
  final String rateCode;
  ProductPriceAction({entityId,
    this.amount, @required this.productPriceActionSeqId, this.productPriceActionTypeId, @required this.productPriceRuleId, this.rateCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceAction { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'productPriceActionSeqId':productPriceActionSeqId, 'productPriceActionTypeId':productPriceActionTypeId, 'productPriceRuleId':productPriceRuleId, 'rateCode':rateCode};
  }

}

/// Entity ProductPriceActionType, Product Price Type
class ProductPriceActionType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String productPriceActionTypeId; // pk
  ProductPriceActionType({entityId,
    this.description, @required this.productPriceActionTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceActionType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'productPriceActionTypeId':productPriceActionTypeId};
  }

}

/// Entity ProductPriceAutoNotice, Product Price Automatic Notice History
class ProductPriceAutoNotice extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final DateTime runDate;
  final String facilityId;
  final String productPriceNoticeId; // pk
  final DateTime thruDate;
  ProductPriceAutoNotice({entityId,
    this.fromDate, this.runDate, this.facilityId, @required this.productPriceNoticeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceAutoNotice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'runDate':runDate, 'facilityId':facilityId, 'productPriceNoticeId':productPriceNoticeId, 'thruDate':thruDate};
  }

}

/// Entity ProductPriceChange, Product Price Change History
class ProductPriceChange extends EntityBase {

  /// this entity has only one pk
  final String productId;
  final double oldPrice;
  final String changedByUserLogin;
  final String productPriceChangeId; // pk
  final String productStoreGroupId;
  final DateTime thruDate;
  final DateTime fromDate;
  final DateTime changedDate;
  final String currencyUomId;
  final double price;
  final String productPricePurposeId;
  final String productPriceTypeId;
  ProductPriceChange({entityId,
    this.productId, this.oldPrice, this.changedByUserLogin, @required this.productPriceChangeId, this.productStoreGroupId, this.thruDate, this.fromDate, this.changedDate, this.currencyUomId, this.price, this.productPricePurposeId, this.productPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceChange { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'oldPrice':oldPrice, 'changedByUserLogin':changedByUserLogin, 'productPriceChangeId':productPriceChangeId, 'productStoreGroupId':productStoreGroupId, 'thruDate':thruDate, 'fromDate':fromDate, 'changedDate':changedDate, 'currencyUomId':currencyUomId, 'price':price, 'productPricePurposeId':productPricePurposeId, 'productPriceTypeId':productPriceTypeId};
  }

}

/// Entity ProductPriceCond, Product Price Condition
class ProductPriceCond extends EntityBase {

  final String productPriceCondSeqId; // pk
  final String inputParamEnumId;
  final String condValue;
  final String productPriceRuleId; // pk
  final String operatorEnumId;
  ProductPriceCond({entityId,
    @required this.productPriceCondSeqId, this.inputParamEnumId, this.condValue, @required this.productPriceRuleId, this.operatorEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceCond { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productPriceCondSeqId':productPriceCondSeqId, 'inputParamEnumId':inputParamEnumId, 'condValue':condValue, 'productPriceRuleId':productPriceRuleId, 'operatorEnumId':operatorEnumId};
  }

}

/// Entity ProductPricePurpose, Product Price Purpose
class ProductPricePurpose extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String productPricePurposeId; // pk
  ProductPricePurpose({entityId,
    this.description, @required this.productPricePurposeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPricePurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'productPricePurposeId':productPricePurposeId};
  }

}

/// Entity ProductPriceRule, Product Pice Rule
class ProductPriceRule extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String ruleName;
  final String description;
  final String isSale;
  final String productPriceRuleId; // pk
  final DateTime thruDate;
  ProductPriceRule({entityId,
    this.fromDate, this.ruleName, this.description, this.isSale, @required this.productPriceRuleId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceRule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'ruleName':ruleName, 'description':description, 'isSale':isSale, 'productPriceRuleId':productPriceRuleId, 'thruDate':thruDate};
  }

}

/// Entity ProductPriceType, Product Price Type
class ProductPriceType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String productPriceTypeId; // pk
  ProductPriceType({entityId,
    this.description, @required this.productPriceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPriceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'productPriceTypeId':productPriceTypeId};
  }

}

/// Entity QuantityBreak, Quantity Break
class QuantityBreak extends EntityBase {

  /// this entity has only one pk
  final double thruQuantity;
  final String quantityBreakTypeId;
  final double fromQuantity;
  final String quantityBreakId; // pk
  QuantityBreak({entityId,
    this.thruQuantity, this.quantityBreakTypeId, this.fromQuantity, @required this.quantityBreakId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuantityBreak { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'thruQuantity':thruQuantity, 'quantityBreakTypeId':quantityBreakTypeId, 'fromQuantity':fromQuantity, 'quantityBreakId':quantityBreakId};
  }

}

/// Entity QuantityBreakType, Quantity Break Type
class QuantityBreakType extends EntityBase {

  /// this entity has only one pk
  final String quantityBreakTypeId; // pk
  final String description;
  QuantityBreakType({entityId,
    @required this.quantityBreakTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'QuantityBreakType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantityBreakTypeId':quantityBreakTypeId, 'description':description};
  }

}

/// Entity SaleType, Sale Type
class SaleType extends EntityBase {

  /// this entity has only one pk
  final String saleTypeId; // pk
  final String description;
  SaleType({entityId,
    @required this.saleTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SaleType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'saleTypeId':saleTypeId, 'description':description};
  }

}