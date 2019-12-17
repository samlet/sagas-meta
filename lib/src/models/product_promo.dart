import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductPromo, Product Promotion
class ProductPromo extends EntityBase {

  /// this entity has only one pk
  final String showToCustomer;
  final DateTime lastModifiedDate;
  final String requireCode;
  final String overrideOrgPartyId;
  final String productPromoId; // pk
  final int useLimitPerCustomer;
  final int useLimitPerOrder;
  final int useLimitPerPromotion;
  final String promoName;
  final String promoText;
  final String userEntered;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final double billbackFactor;
  final String createdByUserLogin;
  ProductPromo({entityId,
    this.showToCustomer, this.lastModifiedDate, this.requireCode, this.overrideOrgPartyId, @required this.productPromoId, this.useLimitPerCustomer, this.useLimitPerOrder, this.useLimitPerPromotion, this.promoName, this.promoText, this.userEntered, this.lastModifiedByUserLogin, this.createdDate, this.billbackFactor, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'showToCustomer':showToCustomer, 'lastModifiedDate':lastModifiedDate, 'requireCode':requireCode, 'overrideOrgPartyId':overrideOrgPartyId, 'productPromoId':productPromoId, 'useLimitPerCustomer':useLimitPerCustomer, 'useLimitPerOrder':useLimitPerOrder, 'useLimitPerPromotion':useLimitPerPromotion, 'promoName':promoName, 'promoText':promoText, 'userEntered':userEntered, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'billbackFactor':billbackFactor, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity ProductPromoAction, Product Promotion Action
class ProductPromoAction extends EntityBase {

  final double amount;
  final double quantity;
  final String productId;
  final String productPromoRuleId; // pk
  final String orderAdjustmentTypeId;
  final String useCartQuantity;
  final String productPromoActionEnumId;
  final String productPromoId; // pk
  final String serviceName;
  final String customMethodId;
  final String productPromoActionSeqId; // pk
  final String partyId;
  ProductPromoAction({entityId,
    this.amount, this.quantity, this.productId, @required this.productPromoRuleId, this.orderAdjustmentTypeId, this.useCartQuantity, this.productPromoActionEnumId, @required this.productPromoId, this.serviceName, this.customMethodId, @required this.productPromoActionSeqId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoAction { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'quantity':quantity, 'productId':productId, 'productPromoRuleId':productPromoRuleId, 'orderAdjustmentTypeId':orderAdjustmentTypeId, 'useCartQuantity':useCartQuantity, 'productPromoActionEnumId':productPromoActionEnumId, 'productPromoId':productPromoId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'productPromoActionSeqId':productPromoActionSeqId, 'partyId':partyId};
  }

}

/// Entity ProductPromoCategory, Product Promotion Category
class ProductPromoCategory extends EntityBase {

  final String productCategoryId; // pk
  final String andGroupId; // pk
  final String productPromoActionSeqId; // pk
  final String productPromoRuleId; // pk
  final String includeSubCategories;
  final String productPromoApplEnumId;
  final String productPromoId; // pk
  final String productPromoCondSeqId; // pk
  ProductPromoCategory({entityId,
    @required this.productCategoryId, @required this.andGroupId, @required this.productPromoActionSeqId, @required this.productPromoRuleId, this.includeSubCategories, this.productPromoApplEnumId, @required this.productPromoId, @required this.productPromoCondSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productCategoryId':productCategoryId, 'andGroupId':andGroupId, 'productPromoActionSeqId':productPromoActionSeqId, 'productPromoRuleId':productPromoRuleId, 'includeSubCategories':includeSubCategories, 'productPromoApplEnumId':productPromoApplEnumId, 'productPromoId':productPromoId, 'productPromoCondSeqId':productPromoCondSeqId};
  }

}

/// Entity ProductPromoCode, Product Promotion
class ProductPromoCode extends EntityBase {

  /// this entity has only one pk
  final int useLimitPerCode;
  final DateTime lastModifiedDate;
  final String productPromoCodeId; // pk
  final String productPromoId;
  final int useLimitPerCustomer;
  final DateTime thruDate;
  final DateTime fromDate;
  final String userEntered;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String requireEmailOrParty;
  final String createdByUserLogin;
  ProductPromoCode({entityId,
    this.useLimitPerCode, this.lastModifiedDate, @required this.productPromoCodeId, this.productPromoId, this.useLimitPerCustomer, this.thruDate, this.fromDate, this.userEntered, this.lastModifiedByUserLogin, this.createdDate, this.requireEmailOrParty, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'useLimitPerCode':useLimitPerCode, 'lastModifiedDate':lastModifiedDate, 'productPromoCodeId':productPromoCodeId, 'productPromoId':productPromoId, 'useLimitPerCustomer':useLimitPerCustomer, 'thruDate':thruDate, 'fromDate':fromDate, 'userEntered':userEntered, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'requireEmailOrParty':requireEmailOrParty, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity ProductPromoCodeEmail, Product Promotion Email
class ProductPromoCodeEmail extends EntityBase {

  final String emailAddress; // pk
  final String productPromoCodeId; // pk
  ProductPromoCodeEmail({entityId,
    @required this.emailAddress, @required this.productPromoCodeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCodeEmail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'emailAddress':emailAddress, 'productPromoCodeId':productPromoCodeId};
  }

}

/// Entity ProductPromoCodeEmailParty, Product Promotion Email and Party View
class ProductPromoCodeEmailParty extends EntityBase {

  final DateTime fromDate; // pk
  final String infoString;
  final String productPromoCodeId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  ProductPromoCodeEmailParty({entityId,
    @required this.fromDate, this.infoString, @required this.productPromoCodeId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCodeEmailParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'infoString':infoString, 'productPromoCodeId':productPromoCodeId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ProductPromoCodeParty, Product Promotion Party
class ProductPromoCodeParty extends EntityBase {

  final String productPromoCodeId; // pk
  final String partyId; // pk
  ProductPromoCodeParty({entityId,
    @required this.productPromoCodeId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCodeParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productPromoCodeId':productPromoCodeId, 'partyId':partyId};
  }

}

/// Entity ProductPromoCond, Product Promotion Condition
class ProductPromoCond extends EntityBase {

  final String productPromoRuleId; // pk
  final String inputParamEnumId;
  final String condValue;
  final String productPromoId; // pk
  final String customMethodId;
  final String operatorEnumId;
  final String otherValue;
  final String productPromoCondSeqId; // pk
  ProductPromoCond({entityId,
    @required this.productPromoRuleId, this.inputParamEnumId, this.condValue, @required this.productPromoId, this.customMethodId, this.operatorEnumId, this.otherValue, @required this.productPromoCondSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoCond { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productPromoRuleId':productPromoRuleId, 'inputParamEnumId':inputParamEnumId, 'condValue':condValue, 'productPromoId':productPromoId, 'customMethodId':customMethodId, 'operatorEnumId':operatorEnumId, 'otherValue':otherValue, 'productPromoCondSeqId':productPromoCondSeqId};
  }

}

/// Entity ProductPromoContent, Product Promo Content
class ProductPromoContent extends EntityBase {

  final DateTime fromDate; // pk
  final String productPromoContentTypeId; // pk
  final String contentId; // pk
  final String productPromoId; // pk
  final DateTime thruDate;
  ProductPromoContent({entityId,
    @required this.fromDate, @required this.productPromoContentTypeId, @required this.contentId, @required this.productPromoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'productPromoContentTypeId':productPromoContentTypeId, 'contentId':contentId, 'productPromoId':productPromoId, 'thruDate':thruDate};
  }

}

/// Entity ProductPromoProduct, Product Promotion Category
class ProductPromoProduct extends EntityBase {

  final String productId; // pk
  final String productPromoActionSeqId; // pk
  final String productPromoRuleId; // pk
  final String productPromoApplEnumId;
  final String productPromoId; // pk
  final String productPromoCondSeqId; // pk
  ProductPromoProduct({entityId,
    @required this.productId, @required this.productPromoActionSeqId, @required this.productPromoRuleId, this.productPromoApplEnumId, @required this.productPromoId, @required this.productPromoCondSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productId':productId, 'productPromoActionSeqId':productPromoActionSeqId, 'productPromoRuleId':productPromoRuleId, 'productPromoApplEnumId':productPromoApplEnumId, 'productPromoId':productPromoId, 'productPromoCondSeqId':productPromoCondSeqId};
  }

}

/// Entity ProductPromoRule, Product Promotion Rule
class ProductPromoRule extends EntityBase {

  final String productPromoRuleId; // pk
  final String ruleName;
  final String productPromoId; // pk
  ProductPromoRule({entityId,
    @required this.productPromoRuleId, this.ruleName, @required this.productPromoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoRule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productPromoRuleId':productPromoRuleId, 'ruleName':ruleName, 'productPromoId':productPromoId};
  }

}

/// Entity ProductPromoUse, Product Promotion Use
class ProductPromoUse extends EntityBase {

  final double quantityLeftInActions;
  final String orderId; // pk
  final double totalDiscountAmount;
  final String productPromoCodeId;
  final String promoSequenceId; // pk
  final String productPromoId;
  final String partyId;
  ProductPromoUse({entityId,
    this.quantityLeftInActions, @required this.orderId, this.totalDiscountAmount, this.productPromoCodeId, @required this.promoSequenceId, this.productPromoId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoUse { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantityLeftInActions':quantityLeftInActions, 'orderId':orderId, 'totalDiscountAmount':totalDiscountAmount, 'productPromoCodeId':productPromoCodeId, 'promoSequenceId':promoSequenceId, 'productPromoId':productPromoId, 'partyId':partyId};
  }

}

/// Entity ProductPromoUseCheck, Product Promotion Use Check View
class ProductPromoUseCheck extends EntityBase {

  final double quantityLeftInActions;
  final String statusId;
  final String orderId; // pk
  final double totalDiscountAmount;
  final String productPromoCodeId;
  final String promoSequenceId; // pk
  final String productPromoId;
  final String partyId;
  ProductPromoUseCheck({entityId,
    this.quantityLeftInActions, this.statusId, @required this.orderId, this.totalDiscountAmount, this.productPromoCodeId, @required this.promoSequenceId, this.productPromoId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductPromoUseCheck { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantityLeftInActions':quantityLeftInActions, 'statusId':statusId, 'orderId':orderId, 'totalDiscountAmount':totalDiscountAmount, 'productPromoCodeId':productPromoCodeId, 'promoSequenceId':promoSequenceId, 'productPromoId':productPromoId, 'partyId':partyId};
  }

}