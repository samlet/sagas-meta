import 'package:sagas_meta/src/models/product_price.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesPrice{
  final SrvClient client;
  ProductServicesPrice(this.client);

  /**
   * Create a ProductPricePurpose - ProductPricePurpose
   *
   * Requires 
   * Returns productPricePurposeId[String]
   */
  Future<OfResult> createProductPricePurpose(ProductPricePurpose ent, ) =>
      client.invoke('createProductPricePurpose', ent, {  });

  /**
   * Create a ProductPriceType - ProductPriceType
   *
   * Requires 
   * Returns productPriceTypeId[String]
   */
  Future<OfResult> createProductPriceType(ProductPriceType ent, ) =>
      client.invoke('createProductPriceType', ent, {  });

  /**
   * Create a QuantityBreakType record - QuantityBreakType
   *
   * Requires 
   * Returns quantityBreakTypeId[String]
   */
  Future<OfResult> createQuantityBreakType(QuantityBreakType ent, ) =>
      client.invoke('createQuantityBreakType', ent, {  });

  /**
   * Create a SaleType record - SaleType
   *
   * Requires 
   * Returns saleTypeId[String]
   */
  Future<OfResult> createSaleType(SaleType ent, ) =>
      client.invoke('createSaleType', ent, {  });

  /**
   * Delete a ProductPricePurpose - ProductPricePurpose
   *
   * Requires productPricePurposeId
   * Returns 
   */
  Future<OfResult> deleteProductPricePurpose(ProductPricePurpose ent, ) =>
      client.invoke('deleteProductPricePurpose', ent, {  });

  /**
   * Delete a ProductPriceType - ProductPriceType
   *
   * Requires productPriceTypeId
   * Returns 
   */
  Future<OfResult> deleteProductPriceType(ProductPriceType ent, ) =>
      client.invoke('deleteProductPriceType', ent, {  });

  /**
   * Delete a QuantityBreakType record - QuantityBreakType
   *
   * Requires quantityBreakTypeId
   * Returns 
   */
  Future<OfResult> deleteQuantityBreakType(QuantityBreakType ent, ) =>
      client.invoke('deleteQuantityBreakType', ent, {  });

  /**
   * Delete a SaleType record - SaleType
   *
   * Requires saleTypeId
   * Returns 
   */
  Future<OfResult> deleteSaleType(SaleType ent, ) =>
      client.invoke('deleteSaleType', ent, {  });

  /**
   * Update a ProductPricePurpose - ProductPricePurpose
   *
   * Requires productPricePurposeId
   * Returns 
   */
  Future<OfResult> updateProductPricePurpose(ProductPricePurpose ent, ) =>
      client.invoke('updateProductPricePurpose', ent, {  });

  /**
   * Update a ProductPriceType - ProductPriceType
   *
   * Requires productPriceTypeId
   * Returns 
   */
  Future<OfResult> updateProductPriceType(ProductPriceType ent, ) =>
      client.invoke('updateProductPriceType', ent, {  });

  /**
   * Update a QuantityBreakType record - QuantityBreakType
   *
   * Requires quantityBreakTypeId
   * Returns 
   */
  Future<OfResult> updateQuantityBreakType(QuantityBreakType ent, ) =>
      client.invoke('updateQuantityBreakType', ent, {  });

  /**
   * Update a SaleType record - SaleType
   *
   * Requires saleTypeId
   * Returns 
   */
  Future<OfResult> updateSaleType(SaleType ent, ) =>
      client.invoke('updateSaleType', ent, {  });

}