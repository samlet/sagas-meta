import 'package:sagas_meta/src/models/accounting_tax.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesTax{
  final SrvClient client;
  AccountingServicesTax(this.client);

  /**
   * Tax Authority Rate Product Calc Service - 
   *
   * Requires itemProductList, itemAmountList, itemPriceList
   * Returns orderAdjustments[java.util.List], itemAdjustments[java.util.List]
   */
  Future<OfResult> calcTax({String productStoreId, String facilityId, String payToPartyId, String billToPartyId, @required List<dynamic> itemProductList, @required List<dynamic> itemAmountList, @required List<dynamic> itemPriceList, List<dynamic> itemQuantityList, List<dynamic> itemShippingList, Decimal orderShippingAmount, Decimal orderPromotionsAmount, Map<String,dynamic> shippingAddress}) =>
      client.invoke('calcTax', null, { 'productStoreId': productStoreId, 'facilityId': facilityId, 'payToPartyId': payToPartyId, 'billToPartyId': billToPartyId, 'itemProductList': itemProductList, 'itemAmountList': itemAmountList, 'itemPriceList': itemPriceList, 'itemQuantityList': itemQuantityList, 'itemShippingList': itemShippingList, 'orderShippingAmount': orderShippingAmount, 'orderPromotionsAmount': orderPromotionsAmount, 'shippingAddress': shippingAddress });

  /**
   * Tax Authority Rate Product Calc Service - 
   *
   * Requires productStoreId, productId, basePrice
   * Returns taxTotal[BigDecimal], taxPercentage[BigDecimal], priceWithTax[BigDecimal]
   */
  Future<OfResult> calcTaxForDisplay({@required String productStoreId, String billToPartyId, @required String productId, Decimal quantity, @required Decimal basePrice, Decimal shippingPrice}) =>
      client.invoke('calcTaxForDisplay', null, { 'productStoreId': productStoreId, 'billToPartyId': billToPartyId, 'productId': productId, 'quantity': quantity, 'basePrice': basePrice, 'shippingPrice': shippingPrice });

  /**
   * Tax Calc Service Interface - 
   *
   * Requires itemProductList, itemAmountList, itemPriceList
   * Returns orderAdjustments[java.util.List], itemAdjustments[java.util.List]
   */
  Future<OfResult> calcTaxInterface({String productStoreId, String facilityId, String payToPartyId, String billToPartyId, @required List<dynamic> itemProductList, @required List<dynamic> itemAmountList, @required List<dynamic> itemPriceList, List<dynamic> itemQuantityList, List<dynamic> itemShippingList, Decimal orderShippingAmount, Decimal orderPromotionsAmount, Map<String,dynamic> shippingAddress}) =>
      client.invoke('calcTaxInterface', null, { 'productStoreId': productStoreId, 'facilityId': facilityId, 'payToPartyId': payToPartyId, 'billToPartyId': billToPartyId, 'itemProductList': itemProductList, 'itemAmountList': itemAmountList, 'itemPriceList': itemPriceList, 'itemQuantityList': itemQuantityList, 'itemShippingList': itemShippingList, 'orderShippingAmount': orderShippingAmount, 'orderPromotionsAmount': orderPromotionsAmount, 'shippingAddress': shippingAddress });

  /**
   * Tax Calc Total For Display Service Interface - 
   *
   * Requires productStoreId, productId, basePrice
   * Returns taxTotal[BigDecimal], taxPercentage[BigDecimal], priceWithTax[BigDecimal]
   */
  Future<OfResult> calcTaxTotalForDisplayInterface({@required String productStoreId, String billToPartyId, @required String productId, Decimal quantity, @required Decimal basePrice, Decimal shippingPrice}) =>
      client.invoke('calcTaxTotalForDisplayInterface', null, { 'productStoreId': productStoreId, 'billToPartyId': billToPartyId, 'productId': productId, 'quantity': quantity, 'basePrice': basePrice, 'shippingPrice': shippingPrice });

  /**
   * Create Customer PartyTaxAuthInfo - PartyTaxAuthInfo
   *
   * Requires partyId, taxAuthPartyGeoIds
   * Returns 
   */
  Future<OfResult> createCustomerTaxAuthInfo(PartyTaxAuthInfo ent, {@required String taxAuthPartyGeoIds}) =>
      client.invoke('createCustomerTaxAuthInfo', ent, { 'taxAuthPartyGeoIds': taxAuthPartyGeoIds });

  /**
   * Create PartyTaxAuthInfo - PartyTaxAuthInfo
   *
   * Requires partyId, taxAuthGeoId, taxAuthPartyId
   * Returns 
   */
  Future<OfResult> createPartyTaxAuthInfo(PartyTaxAuthInfo ent, ) =>
      client.invoke('createPartyTaxAuthInfo', ent, {  });

  /**
   * Create TaxAuthority - TaxAuthority
   *
   * Requires taxAuthGeoId, taxAuthPartyId
   * Returns 
   */
  Future<OfResult> createTaxAuthority(TaxAuthority ent, ) =>
      client.invoke('createTaxAuthority', ent, {  });

  /**
   * Create TaxAuthorityAssoc - TaxAuthorityAssoc
   *
   * Requires taxAuthGeoId, taxAuthPartyId, toTaxAuthGeoId, toTaxAuthPartyId
   * Returns 
   */
  Future<OfResult> createTaxAuthorityAssoc(TaxAuthorityAssoc ent, ) =>
      client.invoke('createTaxAuthorityAssoc', ent, {  });

  /**
   * Create a TaxAuthorityAssocType - TaxAuthorityAssocType
   *
   * Requires 
   * Returns taxAuthorityAssocTypeId[String]
   */
  Future<OfResult> createTaxAuthorityAssocType(TaxAuthorityAssocType ent, ) =>
      client.invoke('createTaxAuthorityAssocType', ent, {  });

  /**
   * Create TaxAuthorityCategory - TaxAuthorityCategory
   *
   * Requires taxAuthGeoId, taxAuthPartyId, productCategoryId
   * Returns 
   */
  Future<OfResult> createTaxAuthorityCategory(TaxAuthorityCategory ent, ) =>
      client.invoke('createTaxAuthorityCategory', ent, {  });

  /**
   * Create TaxAuthorityGlAccount - TaxAuthorityGlAccount
   *
   * Requires taxAuthGeoId, taxAuthPartyId, organizationPartyId
   * Returns 
   */
  Future<OfResult> createTaxAuthorityGlAccount(TaxAuthorityGlAccount ent, ) =>
      client.invoke('createTaxAuthorityGlAccount', ent, {  });

  /**
   * Create TaxAuthorityRateProduct - TaxAuthorityRateProduct
   *
   * Requires 
   * Returns taxAuthorityRateSeqId[String]
   */
  Future<OfResult> createTaxAuthorityRateProduct(TaxAuthorityRateProduct ent, ) =>
      client.invoke('createTaxAuthorityRateProduct', ent, {  });

  /**
   * Create a TaxAuthorityRateType - TaxAuthorityRateType
   *
   * Requires 
   * Returns taxAuthorityRateTypeId[String]
   */
  Future<OfResult> createTaxAuthorityRateType(TaxAuthorityRateType ent, ) =>
      client.invoke('createTaxAuthorityRateType', ent, {  });

  /**
   * Delete PartyTaxAuthInfo - PartyTaxAuthInfo
   *
   * Requires partyId, taxAuthGeoId, taxAuthPartyId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyTaxAuthInfo(PartyTaxAuthInfo ent, ) =>
      client.invoke('deletePartyTaxAuthInfo', ent, {  });

  /**
   * Delete TaxAuthority - TaxAuthority
   *
   * Requires taxAuthGeoId, taxAuthPartyId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthority(TaxAuthority ent, ) =>
      client.invoke('deleteTaxAuthority', ent, {  });

  /**
   * Delete TaxAuthorityAssoc - TaxAuthorityAssoc
   *
   * Requires taxAuthGeoId, taxAuthPartyId, toTaxAuthGeoId, toTaxAuthPartyId, fromDate
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityAssoc(TaxAuthorityAssoc ent, ) =>
      client.invoke('deleteTaxAuthorityAssoc', ent, {  });

  /**
   * Delete a TaxAuthorityAssocType - TaxAuthorityAssocType
   *
   * Requires taxAuthorityAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityAssocType(TaxAuthorityAssocType ent, ) =>
      client.invoke('deleteTaxAuthorityAssocType', ent, {  });

  /**
   * Delete TaxAuthorityCategory - TaxAuthorityCategory
   *
   * Requires taxAuthGeoId, taxAuthPartyId, productCategoryId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityCategory(TaxAuthorityCategory ent, ) =>
      client.invoke('deleteTaxAuthorityCategory', ent, {  });

  /**
   * Delete TaxAuthorityGlAccount - TaxAuthorityGlAccount
   *
   * Requires taxAuthGeoId, taxAuthPartyId, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityGlAccount(TaxAuthorityGlAccount ent, ) =>
      client.invoke('deleteTaxAuthorityGlAccount', ent, {  });

  /**
   * Delete TaxAuthorityRateProduct - TaxAuthorityRateProduct
   *
   * Requires taxAuthorityRateSeqId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityRateProduct(TaxAuthorityRateProduct ent, ) =>
      client.invoke('deleteTaxAuthorityRateProduct', ent, {  });

  /**
   * Delete a TaxAuthorityRateType - TaxAuthorityRateType
   *
   * Requires taxAuthorityRateTypeId
   * Returns 
   */
  Future<OfResult> deleteTaxAuthorityRateType(TaxAuthorityRateType ent, ) =>
      client.invoke('deleteTaxAuthorityRateType', ent, {  });

  /**
   * Zip Sales Calc Tax Service - change this to calcTax to run - 
   *
   * Requires itemProductList, itemAmountList, itemPriceList
   * Returns orderAdjustments[java.util.List], itemAdjustments[java.util.List]
   */
  Future<OfResult> flatZipSalesTaxCalc({String productStoreId, String facilityId, String payToPartyId, String billToPartyId, @required List<dynamic> itemProductList, @required List<dynamic> itemAmountList, @required List<dynamic> itemPriceList, List<dynamic> itemQuantityList, List<dynamic> itemShippingList, Decimal orderShippingAmount, Decimal orderPromotionsAmount, Map<String,dynamic> shippingAddress}) =>
      client.invoke('flatZipSalesTaxCalc', null, { 'productStoreId': productStoreId, 'facilityId': facilityId, 'payToPartyId': payToPartyId, 'billToPartyId': billToPartyId, 'itemProductList': itemProductList, 'itemAmountList': itemAmountList, 'itemPriceList': itemPriceList, 'itemQuantityList': itemQuantityList, 'itemShippingList': itemShippingList, 'orderShippingAmount': orderShippingAmount, 'orderPromotionsAmount': orderPromotionsAmount, 'shippingAddress': shippingAddress });

  /**
   * Import ZipSales Flat File - 
   *
   * Requires taxFileLocation, ruleFileLocation
   * Returns 
   */
  Future<OfResult> importZipSalesTaxData({@required String taxFileLocation, @required String ruleFileLocation}) =>
      client.invoke('importZipSalesTaxData', null, { 'taxFileLocation': taxFileLocation, 'ruleFileLocation': ruleFileLocation });

  /**
   * Update PartyTaxAuthInfo - PartyTaxAuthInfo
   *
   * Requires partyId, taxAuthGeoId, taxAuthPartyId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyTaxAuthInfo(PartyTaxAuthInfo ent, ) =>
      client.invoke('updatePartyTaxAuthInfo', ent, {  });

  /**
   * Update TaxAuthority - TaxAuthority
   *
   * Requires taxAuthGeoId, taxAuthPartyId
   * Returns 
   */
  Future<OfResult> updateTaxAuthority(TaxAuthority ent, ) =>
      client.invoke('updateTaxAuthority', ent, {  });

  /**
   * Update TaxAuthorityAssoc - TaxAuthorityAssoc
   *
   * Requires taxAuthGeoId, taxAuthPartyId, toTaxAuthGeoId, toTaxAuthPartyId, fromDate
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityAssoc(TaxAuthorityAssoc ent, ) =>
      client.invoke('updateTaxAuthorityAssoc', ent, {  });

  /**
   * Update a TaxAuthorityAssocType - TaxAuthorityAssocType
   *
   * Requires taxAuthorityAssocTypeId
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityAssocType(TaxAuthorityAssocType ent, ) =>
      client.invoke('updateTaxAuthorityAssocType', ent, {  });

  /**
   * Update TaxAuthorityCategory - TaxAuthorityCategory
   *
   * Requires taxAuthGeoId, taxAuthPartyId, productCategoryId
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityCategory(TaxAuthorityCategory ent, ) =>
      client.invoke('updateTaxAuthorityCategory', ent, {  });

  /**
   * Update TaxAuthorityGlAccount - TaxAuthorityGlAccount
   *
   * Requires taxAuthGeoId, taxAuthPartyId, organizationPartyId
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityGlAccount(TaxAuthorityGlAccount ent, ) =>
      client.invoke('updateTaxAuthorityGlAccount', ent, {  });

  /**
   * Update TaxAuthorityRateProduct - TaxAuthorityRateProduct
   *
   * Requires taxAuthorityRateSeqId
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityRateProduct(TaxAuthorityRateProduct ent, ) =>
      client.invoke('updateTaxAuthorityRateProduct', ent, {  });

  /**
   * Update a TaxAuthorityRateType - TaxAuthorityRateType
   *
   * Requires taxAuthorityRateTypeId
   * Returns 
   */
  Future<OfResult> updateTaxAuthorityRateType(TaxAuthorityRateType ent, ) =>
      client.invoke('updateTaxAuthorityRateType', ent, {  });

}