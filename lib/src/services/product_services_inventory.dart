import 'package:sagas_meta/src/models/product_inventory.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesInventory{
  final SrvClient client;
  ProductServicesInventory(this.client);

  /**
   * Create a InventoryItemAttribute - InventoryItemAttribute
   *
   * Requires inventoryItemId, attrName
   * Returns 
   */
  Future<OfResult> createInventoryItemAttribute(InventoryItemAttribute ent, ) =>
      client.invoke('createInventoryItemAttribute', ent, {  });

  /**
   * Create a InventoryItemTempRes record - InventoryItemTempRes
   *
   * Requires visitId, productId, productStoreId
   * Returns 
   */
  Future<OfResult> createInventoryItemTempRes(InventoryItemTempRes ent, ) =>
      client.invoke('createInventoryItemTempRes', ent, {  });

  /**
   * Create a InventoryItemTypeAttr - InventoryItemTypeAttr
   *
   * Requires inventoryItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> createInventoryItemTypeAttr(InventoryItemTypeAttr ent, ) =>
      client.invoke('createInventoryItemTypeAttr', ent, {  });

  /**
   * Create a Lot - Lot
   *
   * Requires 
   * Returns lotId[String]
   */
  Future<OfResult> createLot(Lot ent, ) =>
      client.invoke('createLot', ent, {  });

  /**
   * Delete a InventoryItemAttribute - InventoryItemAttribute
   *
   * Requires inventoryItemId, attrName
   * Returns 
   */
  Future<OfResult> deleteInventoryItemAttribute(InventoryItemAttribute ent, ) =>
      client.invoke('deleteInventoryItemAttribute', ent, {  });

  /**
   * Delete a InventoryItemTempRes record - InventoryItemTempRes
   *
   * Requires visitId, productId, productStoreId
   * Returns 
   */
  Future<OfResult> deleteInventoryItemTempRes(InventoryItemTempRes ent, ) =>
      client.invoke('deleteInventoryItemTempRes', ent, {  });

  /**
   * Delete a InventoryItemTypeAttr - InventoryItemTypeAttr
   *
   * Requires inventoryItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteInventoryItemTypeAttr(InventoryItemTypeAttr ent, ) =>
      client.invoke('deleteInventoryItemTypeAttr', ent, {  });

  /**
   * Delete a Lot - Lot
   *
   * Requires lotId
   * Returns 
   */
  Future<OfResult> deleteLot(Lot ent, ) =>
      client.invoke('deleteLot', ent, {  });

  /**
   * Update a InventoryItemAttribute - InventoryItemAttribute
   *
   * Requires inventoryItemId, attrName
   * Returns 
   */
  Future<OfResult> updateInventoryItemAttribute(InventoryItemAttribute ent, ) =>
      client.invoke('updateInventoryItemAttribute', ent, {  });

  /**
   * Update a InventoryItemTempRes record - InventoryItemTempRes
   *
   * Requires visitId, productId, productStoreId
   * Returns 
   */
  Future<OfResult> updateInventoryItemTempRes(InventoryItemTempRes ent, ) =>
      client.invoke('updateInventoryItemTempRes', ent, {  });

  /**
   * Update a InventoryItemTypeAttr - InventoryItemTypeAttr
   *
   * Requires inventoryItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateInventoryItemTypeAttr(InventoryItemTypeAttr ent, ) =>
      client.invoke('updateInventoryItemTypeAttr', ent, {  });

  /**
   * Update a Lot - Lot
   *
   * Requires lotId
   * Returns 
   */
  Future<OfResult> updateLot(Lot ent, ) =>
      client.invoke('updateLot', ent, {  });

}