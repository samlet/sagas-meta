import 'package:sagas_meta/src/models/product_product.dart';
import 'package:sagas_meta/src/models/manufacturing_bom.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesBom{
  final SrvClient client;
  ManufacturingServicesBom(this.client);

  /**
   * Create a Product Manufacturing Rule - ProductManufacturingRule
   *
   * Requires productIdIn, productIdIn
   * Returns 
   */
  Future<OfResult> addProductManufacturingRule(ProductManufacturingRule ent, ) =>
      client.invoke('addProductManufacturingRule', ent, {  });

  /**
   * Copy BOM associations from one product to another - ProductAssoc
   *
   * Requires productId, productAssocTypeId, copyToProductId
   * Returns 
   */
  Future<OfResult> copyBOMAssocs(ProductAssoc ent, {@required String copyToProductId}) =>
      client.invoke('copyBOMAssocs', ent, { 'copyToProductId': copyToProductId });

  /**
   * Add Product to Product Association - ProductAssoc
   *
   * Requires productId, productIdTo, productAssocTypeId
   * Returns errorMessage[String]
   */
  Future<OfResult> createBOMAssoc(ProductAssoc ent, ) =>
      client.invoke('createBOMAssoc', ent, {  });

  /**
   * Remove a Product Manufacturing Rule - 
   *
   * Requires ruleId
   * Returns 
   */
  Future<OfResult> deleteProductManufacturingRule({@required String ruleId}) =>
      client.invoke('deleteProductManufacturingRule', null, { 'ruleId': ruleId });

  /**
   * Returns a BOMTree (an object that represents a configured bill of material tree in memory). Useful for tree traversal (breakdown, explosion, implosion). - ProductAssoc
   *
   * Requires productId, bomType
   * Returns tree[org.apache.ofbiz.manufacturing.bom.BOMTree]
   */
  Future<OfResult> getBOMTree(ProductAssoc ent, {int type, @required String bomType, Decimal amount}) =>
      client.invoke('getBOMTree', ent, { 'type': type, 'bomType': bomType, 'amount': amount });

  /**
   * Returns the product's routing id and the components of a given product (if necessary, running the configurator). - 
   *
   * Requires productId
   * Returns workEffortId[String], components[java.util.List], componentsMap[java.util.List]
   */
  Future<OfResult> getManufacturingComponents({@required String productId, Decimal quantity, Decimal amount, String fromDate, bool excludeWIPs}) =>
      client.invoke('getManufacturingComponents', null, { 'productId': productId, 'quantity': quantity, 'amount': amount, 'fromDate': fromDate, 'excludeWIPs': excludeWIPs });

  /**
   * Returns the max product's depth in the bill of materials - ProductAssoc
   *
   * Requires productId
   * Returns depth[Long]
   */
  Future<OfResult> getMaxDepth(ProductAssoc ent, {String bomType}) =>
      client.invoke('getMaxDepth', ent, { 'bomType': bomType });

  /**
   * Explodes a product id and returns all the components that are not manufactured on customer order: these components will be taken from warehouse. - 
   *
   * Requires productId
   * Returns notAssembledComponents[java.util.List]
   */
  Future<OfResult> getNotAssembledComponents({@required String productId, Decimal quantity, Decimal amount, String fromDate}) =>
      client.invoke('getNotAssembledComponents', null, { 'productId': productId, 'quantity': quantity, 'amount': amount, 'fromDate': fromDate });

  /**
   * Returns the components (that needs to be packaged) of a given product (if necessary, running the configurator). - 
   *
   * Requires productId
   * Returns productsInPackages[java.util.List]
   */
  Future<OfResult> getProductsInPackages({@required String productId, Decimal quantity, String fromDate}) =>
      client.invoke('getProductsInPackages', null, { 'productId': productId, 'quantity': quantity, 'fromDate': fromDate });

  /**
   * Updates the low level code of all the products in the Product entity - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> initLowLevelCode() =>
      client.invoke('initLowLevelCode', null, {  });

  /**
   * Returns the ProductAssoc generic value for a duplicate productIdTo ancestor if present, null otherwise. Useful to avoid loops when adding new assocs to a bill of materials. - ProductAssoc
   *
   * Requires productId, productIdTo, productAssocTypeId
   * Returns duplicatedProductAssoc[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> searchDuplicatedAncestor(ProductAssoc ent, ) =>
      client.invoke('searchDuplicatedAncestor', ent, {  });

  /**
   * Updates the low level code of the product in the Product entity - 
   *
   * Requires productIdTo
   * Returns lowLevelCode[Long]
   */
  Future<OfResult> updateLowLevelCode({@required String productIdTo, bool alsoComponents, bool alsoVariants}) =>
      client.invoke('updateLowLevelCode', null, { 'productIdTo': productIdTo, 'alsoComponents': alsoComponents, 'alsoVariants': alsoVariants });

  /**
   * Update a Product Manufacturing Rule - ProductManufacturingRule
   *
   * Requires ruleId, productIdIn, productIdIn
   * Returns 
   */
  Future<OfResult> updateProductManufacturingRule(ProductManufacturingRule ent, ) =>
      client.invoke('updateProductManufacturingRule', ent, {  });

}