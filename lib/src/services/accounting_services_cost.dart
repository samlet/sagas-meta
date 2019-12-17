import 'package:sagas_meta/src/models/accounting_ledger.dart';
import 'package:sagas_meta/src/models/product_cost.dart';
import 'package:sagas_meta/src/models/workeffort_workeffort.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesCost{
  final SrvClient client;
  AccountingServicesCost(this.client);

  /**
   * Create a CostComponentCalc - CostComponentCalc
   *
   * Requires 
   * Returns costComponentCalcId[String]
   */
  Future<OfResult> createCostComponentCalc(CostComponentCalc ent, ) =>
      client.invoke('createCostComponentCalc', ent, {  });

  /**
   * Create Product Average Cost record - ProductAverageCost
   *
   * Requires productAverageCostTypeId, organizationPartyId, productId, facilityId, averageCost, averageCost
   * Returns 
   */
  Future<OfResult> createProductAverageCost(ProductAverageCost ent, ) =>
      client.invoke('createProductAverageCost', ent, {  });

  /**
   * Create a WorkEffortCostCalc entry - WorkEffortCostCalc
   *
   * Requires workEffortId, costComponentTypeId
   * Returns 
   */
  Future<OfResult> createWorkEffortCostCalc(WorkEffortCostCalc ent, ) =>
      client.invoke('createWorkEffortCostCalc', ent, {  });

  /**
   * Delete a Product Average Cost record - ProductAverageCost
   *
   * Requires productAverageCostTypeId, organizationPartyId, productId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> deleteProductAverageCost(ProductAverageCost ent, ) =>
      client.invoke('deleteProductAverageCost', ent, {  });

  /**
   * Get Average cost of a product - 
   *
   * Requires 
   * Returns unitCost[BigDecimal]
   */
  Future<OfResult> getProductAverageCost({Map<String,dynamic> inventoryItem}) =>
      client.invoke('getProductAverageCost', null, { 'inventoryItem': inventoryItem });

  /**
   * Remove a CostComponentCalc - CostComponentCalc
   *
   * Requires costComponentCalcId
   * Returns 
   */
  Future<OfResult> removeCostComponentCalc(CostComponentCalc ent, ) =>
      client.invoke('removeCostComponentCalc', ent, {  });

  /**
   * Remove a WorkEffortCostCalc entry - WorkEffortCostCalc
   *
   * Requires workEffortId, costComponentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeWorkEffortCostCalc(WorkEffortCostCalc ent, ) =>
      client.invoke('removeWorkEffortCostCalc', ent, {  });

  /**
   * Update a CostComponentCalc - CostComponentCalc
   *
   * Requires costComponentCalcId
   * Returns 
   */
  Future<OfResult> updateCostComponentCalc(CostComponentCalc ent, ) =>
      client.invoke('updateCostComponentCalc', ent, {  });

  /**
   * Update a Product Average Cost record - ProductAverageCost
   *
   * Requires productAverageCostTypeId, organizationPartyId, productId, facilityId, fromDate
   * Returns 
   */
  Future<OfResult> updateProductAverageCost(ProductAverageCost ent, ) =>
      client.invoke('updateProductAverageCost', ent, {  });

  /**
   * Update a Product Average Cost record on receive inventory - ProductAverageCost
   *
   * Requires facilityId, quantityAccepted, productId, inventoryItemId
   * Returns 
   */
  Future<OfResult> updateProductAverageCostOnReceiveInventory(ProductAverageCost ent, {@required Decimal quantityAccepted, @required String inventoryItemId}) =>
      client.invoke('updateProductAverageCostOnReceiveInventory', ent, { 'quantityAccepted': quantityAccepted, 'inventoryItemId': inventoryItemId });

}