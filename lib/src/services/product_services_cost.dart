import 'package:sagas_meta/src/models/product_cost.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesCost{
  final SrvClient client;
  ProductServicesCost(this.client);

  /**
   * Calculates estimated costs for all the products - 
   *
   * Requires currencyUomId, costComponentTypePrefix
   * Returns 
   */
  Future<OfResult> calculateAllProductsCosts({@required String currencyUomId, @required String costComponentTypePrefix}) =>
      client.invoke('calculateAllProductsCosts', null, { 'currencyUomId': currencyUomId, 'costComponentTypePrefix': costComponentTypePrefix });

  /**
   * Calculate inventory average cost for a product - 
   *
   * Requires productId
   * Returns totalQuantityOnHand[BigDecimal], totalInventoryCost[BigDecimal], productAverageCost[BigDecimal], currencyUomId[String]
   */
  Future<OfResult> calculateProductAverageCost({@required String productId, String facilityId, String ownerPartyId}) =>
      client.invoke('calculateProductAverageCost', null, { 'productId': productId, 'facilityId': facilityId, 'ownerPartyId': ownerPartyId });

  /**
   * Calculates the product's costs. If the product does not have cost component defined, will use the BOM to calculate the cost. - 
   *
   * Requires productId, currencyUomId, costComponentTypePrefix
   * Returns totalCost[BigDecimal]
   */
  Future<OfResult> calculateProductCosts({@required String productId, @required String currencyUomId, @required String costComponentTypePrefix}) =>
      client.invoke('calculateProductCosts', null, { 'productId': productId, 'currencyUomId': currencyUomId, 'costComponentTypePrefix': costComponentTypePrefix });

  /**
   * Cancels CostComponent - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> cancelCostComponents({String costComponentId, String productId, String costUomId, String costComponentTypeId}) =>
      client.invoke('cancelCostComponents', null, { 'costComponentId': costComponentId, 'productId': productId, 'costUomId': costUomId, 'costComponentTypeId': costComponentTypeId });

  /**
   * Create a CostComponent - CostComponent
   *
   * Requires 
   * Returns costComponentId[String]
   */
  Future<OfResult> createCostComponent(CostComponent ent, ) =>
      client.invoke('createCostComponent', ent, {  });

  /**
   * Create a new Cost Component Attribute Record - CostComponentAttribute
   *
   * Requires costComponentId, attrName
   * Returns 
   */
  Future<OfResult> createCostComponentAttribute(CostComponentAttribute ent, ) =>
      client.invoke('createCostComponentAttribute', ent, {  });

  /**
   * Create a new Cost Component Type Record - CostComponentType
   *
   * Requires 
   * Returns costComponentTypeId[String]
   */
  Future<OfResult> createCostComponentType(CostComponentType ent, ) =>
      client.invoke('createCostComponentType', ent, {  });

  /**
   * Create a new Cost Component Type Record - CostComponentTypeAttr
   *
   * Requires costComponentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createCostComponentTypeAttr(CostComponentTypeAttr ent, ) =>
      client.invoke('createCostComponentTypeAttr', ent, {  });

  /**
   * Create a ProductCostComponentCalc - ProductCostComponentCalc
   *
   * Requires productId, costComponentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> createProductCostComponentCalc(ProductCostComponentCalc ent, ) =>
      client.invoke('createProductCostComponentCalc', ent, {  });

  /**
   * Delete a CostComponent - CostComponent
   *
   * Requires costComponentId
   * Returns 
   */
  Future<OfResult> deleteCostComponent(CostComponent ent, ) =>
      client.invoke('deleteCostComponent', ent, {  });

  /**
   * Delete an existing CostComponentAttribute Record - CostComponentAttribute
   *
   * Requires costComponentId, attrName
   * Returns 
   */
  Future<OfResult> deleteCostComponentAttribute(CostComponentAttribute ent, ) =>
      client.invoke('deleteCostComponentAttribute', ent, {  });

  /**
   * Delete an existing Cost Component Type Record - CostComponentType
   *
   * Requires costComponentTypeId
   * Returns 
   */
  Future<OfResult> deleteCostComponentType(CostComponentType ent, ) =>
      client.invoke('deleteCostComponentType', ent, {  });

  /**
   * Delete an existing Cost Component Type Attr Record - CostComponentTypeAttr
   *
   * Requires costComponentTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteCostComponentTypeAttr(CostComponentTypeAttr ent, ) =>
      client.invoke('deleteCostComponentTypeAttr', ent, {  });

  /**
   * Delete a Example - ProductCostComponentCalc
   *
   * Requires productId, costComponentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductCostComponentCalc(ProductCostComponentCalc ent, ) =>
      client.invoke('deleteProductCostComponentCalc', ent, {  });

  /**
   * Gets the product's costs from CostComponent entries - 
   *
   * Requires productId, currencyUomId, costComponentTypePrefix
   * Returns productCost[BigDecimal]
   */
  Future<OfResult> getProductCost({@required String productId, @required String currencyUomId, @required String costComponentTypePrefix}) =>
      client.invoke('getProductCost', null, { 'productId': productId, 'currencyUomId': currencyUomId, 'costComponentTypePrefix': costComponentTypePrefix });

  /**
   * Gets the production run task's costs - 
   *
   * Requires workEffortId, currencyUomId
   * Returns taskCost[BigDecimal], costsByType[Map]
   */
  Future<OfResult> getTaskCost({@required String workEffortId, @required String currencyUomId, String productId, String routingId}) =>
      client.invoke('getTaskCost', null, { 'workEffortId': workEffortId, 'currencyUomId': currencyUomId, 'productId': productId, 'routingId': routingId });

  /**
   * Interface to describe base parameters for Product Cost Calculation Services - 
   *
   * Requires productCostComponentCalc, costComponentCalc, currencyUomId, costComponentTypePrefix, baseCost
   * Returns productCostAdjustment[BigDecimal]
   */
  Future<OfResult> productCostCalcInterface({@required Map<String,dynamic> productCostComponentCalc, @required Map<String,dynamic> costComponentCalc, @required String currencyUomId, @required String costComponentTypePrefix, @required Decimal baseCost}) =>
      client.invoke('productCostCalcInterface', null, { 'productCostComponentCalc': productCostComponentCalc, 'costComponentCalc': costComponentCalc, 'currencyUomId': currencyUomId, 'costComponentTypePrefix': costComponentTypePrefix, 'baseCost': baseCost });

  /**
   * Formula that creates a cost component equal to a percentage of total product cost - 
   *
   * Requires productCostComponentCalc, costComponentCalc, currencyUomId, costComponentTypePrefix, baseCost
   * Returns productCostAdjustment[BigDecimal]
   */
  Future<OfResult> productCostPercentageFormula({@required Map<String,dynamic> productCostComponentCalc, @required Map<String,dynamic> costComponentCalc, @required String currencyUomId, @required String costComponentTypePrefix, @required Decimal baseCost}) =>
      client.invoke('productCostPercentageFormula', null, { 'productCostComponentCalc': productCostComponentCalc, 'costComponentCalc': costComponentCalc, 'currencyUomId': currencyUomId, 'costComponentTypePrefix': costComponentTypePrefix, 'baseCost': baseCost });

  /**
   * Create a CostComponent and cancel the existing ones - CostComponent
   *
   * Requires 
   * Returns costComponentId[String]
   */
  Future<OfResult> recreateCostComponent(CostComponent ent, ) =>
      client.invoke('recreateCostComponent', ent, {  });

  /**
   * Update a CostComponent - CostComponent
   *
   * Requires costComponentId
   * Returns 
   */
  Future<OfResult> updateCostComponent(CostComponent ent, ) =>
      client.invoke('updateCostComponent', ent, {  });

  /**
   * Update a CostComponentAttribute - CostComponentAttribute
   *
   * Requires costComponentId, attrName
   * Returns 
   */
  Future<OfResult> updateCostComponentAttribute(CostComponentAttribute ent, ) =>
      client.invoke('updateCostComponentAttribute', ent, {  });

  /**
   * Update a Cost Component Type - CostComponentType
   *
   * Requires costComponentTypeId
   * Returns 
   */
  Future<OfResult> updateCostComponentType(CostComponentType ent, ) =>
      client.invoke('updateCostComponentType', ent, {  });

  /**
   * Update a Cost Component Type - CostComponentTypeAttr
   *
   * Requires costComponentTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateCostComponentTypeAttr(CostComponentTypeAttr ent, ) =>
      client.invoke('updateCostComponentTypeAttr', ent, {  });

  /**
   * Update a ProductCostComponentCalc - ProductCostComponentCalc
   *
   * Requires productId, costComponentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductCostComponentCalc(ProductCostComponentCalc ent, ) =>
      client.invoke('updateProductCostComponentCalc', ent, {  });

}