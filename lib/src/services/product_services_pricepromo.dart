import 'package:sagas_meta/src/models/product_promo.dart';
import 'package:sagas_meta/src/models/product_price.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesPricepromo{
  final SrvClient client;
  ProductServicesPricepromo(this.client);

  /**
   * Calculate a Product's Purchase Price - 
   *
   * Requires product, currencyUomId
   * Returns price[BigDecimal], validPriceFound[Boolean], orderItemPriceInfos[java.util.List]
   */
  Future<OfResult> calculatePurchasePrice({@required Map<String,dynamic> product, @required String currencyUomId, String partyId, Decimal quantity, Decimal amount, String agreementId}) =>
      client.invoke('calculatePurchasePrice', null, { 'product': product, 'currencyUomId': currencyUomId, 'partyId': partyId, 'quantity': quantity, 'amount': amount, 'agreementId': agreementId });

  /**
   * Create a ProductPriceAction - ProductPriceAction
   *
   * Requires productPriceRuleId
   * Returns productPriceActionSeqId[String], productPriceActionSeqId[String]
   */
  Future<OfResult> createProductPriceAction(ProductPriceAction ent, ) =>
      client.invoke('createProductPriceAction', ent, {  });

  /**
   * Create a ProductPriceActionType - ProductPriceActionType
   *
   * Requires 
   * Returns productPriceActionTypeId[String]
   */
  Future<OfResult> createProductPriceActionType(ProductPriceActionType ent, ) =>
      client.invoke('createProductPriceActionType', ent, {  });

  /**
   * Create a ProductPriceAutoNotice - ProductPriceAutoNotice
   *
   * Requires 
   * Returns productPriceNoticeId[String]
   */
  Future<OfResult> createProductPriceAutoNotice(ProductPriceAutoNotice ent, ) =>
      client.invoke('createProductPriceAutoNotice', ent, {  });

  /**
   * Create a ProductPriceCond - ProductPriceCond
   *
   * Requires productPriceRuleId
   * Returns productPriceCondSeqId[String], productPriceCondSeqId[String]
   */
  Future<OfResult> createProductPriceCond(ProductPriceCond ent, {String condValueInput}) =>
      client.invoke('createProductPriceCond', ent, { 'condValueInput': condValueInput });

  /**
   * Create a ProductPriceRule - ProductPriceRule
   *
   * Requires ruleName, ruleName
   * Returns productPriceRuleId[String]
   */
  Future<OfResult> createProductPriceRule(ProductPriceRule ent, ) =>
      client.invoke('createProductPriceRule', ent, {  });

  /**
   * Create a ProductPromo - ProductPromo
   *
   * Requires promoName, promoName
   * Returns productPromoId[String]
   */
  Future<OfResult> createProductPromo(ProductPromo ent, ) =>
      client.invoke('createProductPromo', ent, {  });

  /**
   * Create a ProductPromo - ProductPromoAction
   *
   * Requires productPromoId, productPromoRuleId, customMethodId, customMethodId
   * Returns productPromoActionSeqId[String], productPromoActionSeqId[String]
   */
  Future<OfResult> createProductPromoAction(ProductPromoAction ent, ) =>
      client.invoke('createProductPromoAction', ent, {  });

  /**
   * Create a ProductPromoCategory - ProductPromoCategory
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productCategoryId, andGroupId
   * Returns 
   */
  Future<OfResult> createProductPromoCategory(ProductPromoCategory ent, ) =>
      client.invoke('createProductPromoCategory', ent, {  });

  /**
   * Create a ProductPromoCode - ProductPromoCode
   *
   * Requires 
   * Returns productPromoCodeId[String]
   */
  Future<OfResult> createProductPromoCode(ProductPromoCode ent, ) =>
      client.invoke('createProductPromoCode', ent, {  });

  /**
   * Create a ProductPromoCodeEmail - ProductPromoCodeEmail
   *
   * Requires productPromoCodeId, emailAddress
   * Returns 
   */
  Future<OfResult> createProductPromoCodeEmail(ProductPromoCodeEmail ent, ) =>
      client.invoke('createProductPromoCodeEmail', ent, {  });

  /**
   * Create a ProductPromoCodeParty - ProductPromoCodeParty
   *
   * Requires productPromoCodeId, partyId
   * Returns 
   */
  Future<OfResult> createProductPromoCodeParty(ProductPromoCodeParty ent, ) =>
      client.invoke('createProductPromoCodeParty', ent, {  });

  /**
   * Create a Product Promo Code Set - ProductPromoCode
   *
   * Requires quantity
   * Returns 
   */
  Future<OfResult> createProductPromoCodeSet(ProductPromoCode ent, {@required int quantity, int codeLength, String promoCodeLayout}) =>
      client.invoke('createProductPromoCodeSet', ent, { 'quantity': quantity, 'codeLength': codeLength, 'promoCodeLayout': promoCodeLayout });

  /**
   * Create a ProductPromo - ProductPromoCond
   *
   * Requires productPromoId, productPromoRuleId
   * Returns productPromoCondSeqId[String], productPromoCondSeqId[String]
   */
  Future<OfResult> createProductPromoCond(ProductPromoCond ent, {String carrierShipmentMethod}) =>
      client.invoke('createProductPromoCond', ent, { 'carrierShipmentMethod': carrierShipmentMethod });

  /**
   * Create a ProductPromoProduct - ProductPromoProduct
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productId
   * Returns 
   */
  Future<OfResult> createProductPromoProduct(ProductPromoProduct ent, ) =>
      client.invoke('createProductPromoProduct', ent, {  });

  /**
   * Create a ProductPromo - ProductPromoRule
   *
   * Requires productPromoId, ruleName
   * Returns productPromoRuleId[String], productPromoRuleId[String]
   */
  Future<OfResult> createProductPromoRule(ProductPromoRule ent, ) =>
      client.invoke('createProductPromoRule', ent, {  });

  /**
   * Delete a ProductPriceAction - ProductPriceAction
   *
   * Requires productPriceRuleId, productPriceActionSeqId
   * Returns 
   */
  Future<OfResult> deleteProductPriceAction(ProductPriceAction ent, ) =>
      client.invoke('deleteProductPriceAction', ent, {  });

  /**
   * Delete a ProductPriceActionType - ProductPriceActionType
   *
   * Requires productPriceActionTypeId
   * Returns 
   */
  Future<OfResult> deleteProductPriceActionType(ProductPriceActionType ent, ) =>
      client.invoke('deleteProductPriceActionType', ent, {  });

  /**
   * Delete a ProductPriceAutoNotice - ProductPriceAutoNotice
   *
   * Requires productPriceNoticeId
   * Returns 
   */
  Future<OfResult> deleteProductPriceAutoNotice(ProductPriceAutoNotice ent, ) =>
      client.invoke('deleteProductPriceAutoNotice', ent, {  });

  /**
   * Delete a ProductPriceCond - ProductPriceCond
   *
   * Requires productPriceRuleId, productPriceCondSeqId
   * Returns 
   */
  Future<OfResult> deleteProductPriceCond(ProductPriceCond ent, ) =>
      client.invoke('deleteProductPriceCond', ent, {  });

  /**
   * Delete a ProductPriceRule - ProductPriceRule
   *
   * Requires productPriceRuleId
   * Returns 
   */
  Future<OfResult> deleteProductPriceRule(ProductPriceRule ent, ) =>
      client.invoke('deleteProductPriceRule', ent, {  });

  /**
   * Delete a ProductPromo - ProductPromo
   *
   * Requires productPromoId
   * Returns 
   */
  Future<OfResult> deleteProductPromo(ProductPromo ent, ) =>
      client.invoke('deleteProductPromo', ent, {  });

  /**
   * Delete a ProductPromo - ProductPromoAction
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId
   * Returns 
   */
  Future<OfResult> deleteProductPromoAction(ProductPromoAction ent, ) =>
      client.invoke('deleteProductPromoAction', ent, {  });

  /**
   * Delete a ProductPromoCategory - ProductPromoCategory
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productCategoryId, andGroupId
   * Returns 
   */
  Future<OfResult> deleteProductPromoCategory(ProductPromoCategory ent, ) =>
      client.invoke('deleteProductPromoCategory', ent, {  });

  /**
   * Delete a ProductPromoCode - ProductPromoCode
   *
   * Requires productPromoCodeId
   * Returns 
   */
  Future<OfResult> deleteProductPromoCode(ProductPromoCode ent, ) =>
      client.invoke('deleteProductPromoCode', ent, {  });

  /**
   * Delete a ProductPromoCodeEmail - ProductPromoCodeEmail
   *
   * Requires productPromoCodeId, emailAddress
   * Returns 
   */
  Future<OfResult> deleteProductPromoCodeEmail(ProductPromoCodeEmail ent, ) =>
      client.invoke('deleteProductPromoCodeEmail', ent, {  });

  /**
   * Delete a ProductPromoCodeParty - ProductPromoCodeParty
   *
   * Requires productPromoCodeId, partyId
   * Returns 
   */
  Future<OfResult> deleteProductPromoCodeParty(ProductPromoCodeParty ent, ) =>
      client.invoke('deleteProductPromoCodeParty', ent, {  });

  /**
   * Delete a ProductPromo - ProductPromoCond
   *
   * Requires productPromoId, productPromoRuleId, productPromoCondSeqId
   * Returns 
   */
  Future<OfResult> deleteProductPromoCond(ProductPromoCond ent, ) =>
      client.invoke('deleteProductPromoCond', ent, {  });

  /**
   * Delete a ProductPromoProduct - ProductPromoProduct
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productId
   * Returns 
   */
  Future<OfResult> deleteProductPromoProduct(ProductPromoProduct ent, ) =>
      client.invoke('deleteProductPromoProduct', ent, {  });

  /**
   * Delete a ProductPromo - ProductPromoRule
   *
   * Requires productPromoId, productPromoRuleId
   * Returns 
   */
  Future<OfResult> deleteProductPromoRule(ProductPromoRule ent, ) =>
      client.invoke('deleteProductPromoRule', ent, {  });

  /**
   * Set the Value options for selected Price Rule Condition Input - 
   *
   * Requires inputParamEnumId
   * Returns productPriceRulesCondValues[java.util.List]
   */
  Future<OfResult> getAssociatedPriceRulesConds({@required String inputParamEnumId}) =>
      client.invoke('getAssociatedPriceRulesConds', null, { 'inputParamEnumId': inputParamEnumId });

  /**
   * Update a ProductPriceAction - ProductPriceAction
   *
   * Requires productPriceRuleId, productPriceActionSeqId
   * Returns 
   */
  Future<OfResult> updateProductPriceAction(ProductPriceAction ent, ) =>
      client.invoke('updateProductPriceAction', ent, {  });

  /**
   * Update a ProductPriceActionType - ProductPriceActionType
   *
   * Requires productPriceActionTypeId
   * Returns 
   */
  Future<OfResult> updateProductPriceActionType(ProductPriceActionType ent, ) =>
      client.invoke('updateProductPriceActionType', ent, {  });

  /**
   * Update a ProductPriceAutoNotice - ProductPriceAutoNotice
   *
   * Requires productPriceNoticeId
   * Returns 
   */
  Future<OfResult> updateProductPriceAutoNotice(ProductPriceAutoNotice ent, ) =>
      client.invoke('updateProductPriceAutoNotice', ent, {  });

  /**
   * Update a ProductPriceCond - ProductPriceCond
   *
   * Requires productPriceRuleId, productPriceCondSeqId
   * Returns 
   */
  Future<OfResult> updateProductPriceCond(ProductPriceCond ent, {String condValueInput}) =>
      client.invoke('updateProductPriceCond', ent, { 'condValueInput': condValueInput });

  /**
   * Update a ProductPriceRule - ProductPriceRule
   *
   * Requires productPriceRuleId
   * Returns 
   */
  Future<OfResult> updateProductPriceRule(ProductPriceRule ent, ) =>
      client.invoke('updateProductPriceRule', ent, {  });

  /**
   * Update a ProductPromo - ProductPromo
   *
   * Requires productPromoId
   * Returns 
   */
  Future<OfResult> updateProductPromo(ProductPromo ent, ) =>
      client.invoke('updateProductPromo', ent, {  });

  /**
   * Update a ProductPromo - ProductPromoAction
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId
   * Returns 
   */
  Future<OfResult> updateProductPromoAction(ProductPromoAction ent, ) =>
      client.invoke('updateProductPromoAction', ent, {  });

  /**
   * Update a ProductPromoCategory - ProductPromoCategory
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productCategoryId, andGroupId
   * Returns 
   */
  Future<OfResult> updateProductPromoCategory(ProductPromoCategory ent, ) =>
      client.invoke('updateProductPromoCategory', ent, {  });

  /**
   * Update a ProductPromoCode - ProductPromoCode
   *
   * Requires productPromoCodeId
   * Returns 
   */
  Future<OfResult> updateProductPromoCode(ProductPromoCode ent, ) =>
      client.invoke('updateProductPromoCode', ent, {  });

  /**
   * Update a ProductPromo - ProductPromoCond
   *
   * Requires productPromoId, productPromoRuleId, productPromoCondSeqId
   * Returns 
   */
  Future<OfResult> updateProductPromoCond(ProductPromoCond ent, {String carrierShipmentMethod}) =>
      client.invoke('updateProductPromoCond', ent, { 'carrierShipmentMethod': carrierShipmentMethod });

  /**
   * Update a ProductPromoProduct - ProductPromoProduct
   *
   * Requires productPromoId, productPromoRuleId, productPromoActionSeqId, productPromoCondSeqId, productId
   * Returns 
   */
  Future<OfResult> updateProductPromoProduct(ProductPromoProduct ent, ) =>
      client.invoke('updateProductPromoProduct', ent, {  });

  /**
   * Update a ProductPromo - ProductPromoRule
   *
   * Requires productPromoId, productPromoRuleId, ruleName
   * Returns 
   */
  Future<OfResult> updateProductPromoRule(ProductPromoRule ent, ) =>
      client.invoke('updateProductPromoRule', ent, {  });

}