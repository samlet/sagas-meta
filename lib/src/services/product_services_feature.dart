import 'package:sagas_meta/src/models/product_feature.dart';
import 'package:sagas_meta/src/models/product_price.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesFeature{
  final SrvClient client;
  ProductServicesFeature(this.client);

  /**
   * Apply a ProductFeature to a Product; a fromDate can be used
            to specify when the feature will be applied, if no fromDate is specified,
            it will be applied now. - ProductFeatureAppl
   *
   * Requires productId, productFeatureId, productFeatureApplTypeId, productFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> applyFeatureToProduct(ProductFeatureAppl ent, ) =>
      client.invoke('applyFeatureToProduct', ent, {  });

  /**
   * Apply a ProductFeature to a Product - 
   *
   * Requires productId, productFeatureTypeId, idCode, productFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> applyFeatureToProductFromTypeAndCode({@required String productId, @required String productFeatureTypeId, @required String idCode, @required String productFeatureApplTypeId, DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('applyFeatureToProductFromTypeAndCode', null, { 'productId': productId, 'productFeatureTypeId': productFeatureTypeId, 'idCode': idCode, 'productFeatureApplTypeId': productFeatureApplTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

  /**
   * Create a Feature Price - ProductFeaturePrice
   *
   * Requires productPriceTypeId, currencyUomId, price, price
   * Returns fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createFeaturePrice(ProductFeaturePrice ent, ) =>
      client.invoke('createFeaturePrice', ent, {  });

  /**
   * Create a ProductFeature record - ProductFeature
   *
   * Requires productFeatureTypeId, description, productFeatureTypeId, description
   * Returns productFeatureId[String]
   */
  Future<OfResult> createProductFeature(ProductFeature ent, ) =>
      client.invoke('createProductFeature', ent, {  });

  /**
   * Create a ProductFeatureApplAttr - ProductFeatureApplAttr
   *
   * Requires productId, productFeatureId, attrName
   * Returns 
   */
  Future<OfResult> createProductFeatureApplAttr(ProductFeatureApplAttr ent, ) =>
      client.invoke('createProductFeatureApplAttr', ent, {  });

  /**
   * Create a ProductFeatureApplType - ProductFeatureApplType
   *
   * Requires 
   * Returns productFeatureApplTypeId[String]
   */
  Future<OfResult> createProductFeatureApplType(ProductFeatureApplType ent, ) =>
      client.invoke('createProductFeatureApplType', ent, {  });

  /**
   * Create a ProductFeatureGroup to ProductCategory Application - ProductFeatureCatGrpAppl
   *
   * Requires productCategoryId, productFeatureGroupId
   * Returns 
   */
  Future<OfResult> createProductFeatureCatGrpAppl(ProductFeatureCatGrpAppl ent, ) =>
      client.invoke('createProductFeatureCatGrpAppl', ent, {  });

  /**
   * Create a ProductFeatureCategory record - ProductFeatureCategory
   *
   * Requires description, description
   * Returns productFeatureCategoryId[String]
   */
  Future<OfResult> createProductFeatureCategory(ProductFeatureCategory ent, ) =>
      client.invoke('createProductFeatureCategory', ent, {  });

  /**
   * Create a ProductFeatureCategory to ProductCategory Application - ProductFeatureCategoryAppl
   *
   * Requires productCategoryId, productFeatureCategoryId
   * Returns 
   */
  Future<OfResult> createProductFeatureCategoryAppl(ProductFeatureCategoryAppl ent, ) =>
      client.invoke('createProductFeatureCategoryAppl', ent, {  });

  /**
   * Create a ProductFeatureGroup - ProductFeatureGroup
   *
   * Requires 
   * Returns productFeatureGroupId[String]
   */
  Future<OfResult> createProductFeatureGroup(ProductFeatureGroup ent, ) =>
      client.invoke('createProductFeatureGroup', ent, {  });

  /**
   * Create a ProductFeatureGroup to ProductFeature Application - ProductFeatureGroupAppl
   *
   * Requires productFeatureGroupId, productFeatureId
   * Returns 
   */
  Future<OfResult> createProductFeatureGroupAppl(ProductFeatureGroupAppl ent, ) =>
      client.invoke('createProductFeatureGroupAppl', ent, {  });

  /**
   * Create a ProductFeatureIactn - ProductFeatureIactn
   *
   * Requires productFeatureId, productFeatureIdTo, productFeatureIactnTypeId, productFeatureIactnTypeId
   * Returns 
   */
  Future<OfResult> createProductFeatureIactn(ProductFeatureIactn ent, ) =>
      client.invoke('createProductFeatureIactn', ent, {  });

  /**
   * Create a ProductFeatureIactnType - ProductFeatureIactnType
   *
   * Requires 
   * Returns productFeatureIactnTypeId[String]
   */
  Future<OfResult> createProductFeatureIactnType(ProductFeatureIactnType ent, ) =>
      client.invoke('createProductFeatureIactnType', ent, {  });

  /**
   * Create a ProductFeatureType - ProductFeatureType
   *
   * Requires 
   * Returns productFeatureTypeId[String], productFeatureTypeId[String]
   */
  Future<OfResult> createProductFeatureType(ProductFeatureType ent, ) =>
      client.invoke('createProductFeatureType', ent, {  });

  /**
   * Delete a Feature Price - ProductFeaturePrice
   *
   * Requires productFeatureId, productPriceTypeId, currencyUomId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFeaturePrice(ProductFeaturePrice ent, ) =>
      client.invoke('deleteFeaturePrice', ent, {  });

  /**
   * Delete a ProductFeatureApplType - ProductFeatureApplType
   *
   * Requires productFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> deleteProductFeatureApplType(ProductFeatureApplType ent, ) =>
      client.invoke('deleteProductFeatureApplType', ent, {  });

  /**
   * Delete a ProductFeatureIactnType - ProductFeatureIactnType
   *
   * Requires productFeatureIactnTypeId
   * Returns 
   */
  Future<OfResult> deleteProductFeatureIactnType(ProductFeatureIactnType ent, ) =>
      client.invoke('deleteProductFeatureIactnType', ent, {  });

  /**
   * Remove a ProductFeature from a Product - ProductFeatureAppl
   *
   * Requires productId, productFeatureId, fromDate
   * Returns 
   */
  Future<OfResult> removeFeatureFromProduct(ProductFeatureAppl ent, ) =>
      client.invoke('removeFeatureFromProduct', ent, {  });

  /**
   * Remove a ProductFeatureApplAttr - ProductFeatureApplAttr
   *
   * Requires productId, productFeatureId, fromDate, attrName
   * Returns 
   */
  Future<OfResult> removeProductFeatureApplAttr(ProductFeatureApplAttr ent, ) =>
      client.invoke('removeProductFeatureApplAttr', ent, {  });

  /**
   * Remove a ProductFeatureGroup to ProductCategory Application - ProductFeatureCatGrpAppl
   *
   * Requires productCategoryId, productFeatureGroupId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductFeatureCatGrpAppl(ProductFeatureCatGrpAppl ent, ) =>
      client.invoke('removeProductFeatureCatGrpAppl', ent, {  });

  /**
   * Remove a ProductFeatureCategory to ProductCategory Application - ProductFeatureCategoryAppl
   *
   * Requires productCategoryId, productFeatureCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductFeatureCategoryAppl(ProductFeatureCategoryAppl ent, ) =>
      client.invoke('removeProductFeatureCategoryAppl', ent, {  });

  /**
   * Remove a ProductFeatureGroup to ProductFeature Application - ProductFeatureGroupAppl
   *
   * Requires productFeatureGroupId, productFeatureId, fromDate
   * Returns 
   */
  Future<OfResult> removeProductFeatureGroupAppl(ProductFeatureGroupAppl ent, ) =>
      client.invoke('removeProductFeatureGroupAppl', ent, {  });

  /**
   * Remove a ProductFeatureIactn - ProductFeatureIactn
   *
   * Requires productFeatureId, productFeatureIdTo
   * Returns 
   */
  Future<OfResult> removeProductFeatureIactn(ProductFeatureIactn ent, ) =>
      client.invoke('removeProductFeatureIactn', ent, {  });

  /**
   * Remove a ProductFeatureType - ProductFeatureType
   *
   * Requires productFeatureTypeId
   * Returns 
   */
  Future<OfResult> removeProductFeatureType(ProductFeatureType ent, ) =>
      client.invoke('removeProductFeatureType', ent, {  });

  /**
   * Update a Feature Price - ProductFeaturePrice
   *
   * Requires productFeatureId, productPriceTypeId, currencyUomId, fromDate, price, price
   * Returns 
   */
  Future<OfResult> updateFeaturePrice(ProductFeaturePrice ent, ) =>
      client.invoke('updateFeaturePrice', ent, {  });

  /**
   * Update a ProductFeature to Product Application - ProductFeatureAppl
   *
   * Requires productId, productFeatureId, fromDate, productFeatureApplTypeId, productFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> updateFeatureToProductApplication(ProductFeatureAppl ent, ) =>
      client.invoke('updateFeatureToProductApplication', ent, {  });

  /**
   * Update a ProductFeature record - ProductFeature
   *
   * Requires productFeatureId, productFeatureTypeId, description, productFeatureTypeId, description
   * Returns 
   */
  Future<OfResult> updateProductFeature(ProductFeature ent, ) =>
      client.invoke('updateProductFeature', ent, {  });

  /**
   * Update a ProductFeatureApplAttr - ProductFeatureApplAttr
   *
   * Requires productId, productFeatureId, fromDate, attrName
   * Returns 
   */
  Future<OfResult> updateProductFeatureApplAttr(ProductFeatureApplAttr ent, ) =>
      client.invoke('updateProductFeatureApplAttr', ent, {  });

  /**
   * Update a ProductFeatureApplType - ProductFeatureApplType
   *
   * Requires productFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> updateProductFeatureApplType(ProductFeatureApplType ent, ) =>
      client.invoke('updateProductFeatureApplType', ent, {  });

  /**
   * Update a ProductFeatureGroup to ProductCategory Application - ProductFeatureCatGrpAppl
   *
   * Requires productCategoryId, productFeatureGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductFeatureCatGrpAppl(ProductFeatureCatGrpAppl ent, ) =>
      client.invoke('updateProductFeatureCatGrpAppl', ent, {  });

  /**
   * Update a ProductFeatureCategory record - ProductFeatureCategory
   *
   * Requires productFeatureCategoryId, description, description
   * Returns 
   */
  Future<OfResult> updateProductFeatureCategory(ProductFeatureCategory ent, ) =>
      client.invoke('updateProductFeatureCategory', ent, {  });

  /**
   * Update a ProductFeatureCategory to ProductCategory Application - ProductFeatureCategoryAppl
   *
   * Requires productCategoryId, productFeatureCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductFeatureCategoryAppl(ProductFeatureCategoryAppl ent, ) =>
      client.invoke('updateProductFeatureCategoryAppl', ent, {  });

  /**
   * Create a ProductFeatureGroup - ProductFeatureGroup
   *
   * Requires productFeatureGroupId
   * Returns 
   */
  Future<OfResult> updateProductFeatureGroup(ProductFeatureGroup ent, ) =>
      client.invoke('updateProductFeatureGroup', ent, {  });

  /**
   * Update a ProductFeatureGroup to ProductFeature Application - ProductFeatureGroupAppl
   *
   * Requires productFeatureGroupId, productFeatureId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductFeatureGroupAppl(ProductFeatureGroupAppl ent, ) =>
      client.invoke('updateProductFeatureGroupAppl', ent, {  });

  /**
   * Update a ProductFeatureIactnType - ProductFeatureIactnType
   *
   * Requires productFeatureIactnTypeId
   * Returns 
   */
  Future<OfResult> updateProductFeatureIactnType(ProductFeatureIactnType ent, ) =>
      client.invoke('updateProductFeatureIactnType', ent, {  });

  /**
   * Update a ProductFeatureType - ProductFeatureType
   *
   * Requires productFeatureTypeId
   * Returns 
   */
  Future<OfResult> updateProductFeatureType(ProductFeatureType ent, ) =>
      client.invoke('updateProductFeatureType', ent, {  });

}