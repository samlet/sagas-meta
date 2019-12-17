import 'package:sagas_meta/src/models/product_supplier.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesSupplier{
  final SrvClient client;
  ProductServicesSupplier(this.client);

  /**
   * Create a ReorderGuideline record - ReorderGuideline
   *
   * Requires 
   * Returns reorderGuidelineId[String]
   */
  Future<OfResult> createReorderGuideline(ReorderGuideline ent, ) =>
      client.invoke('createReorderGuideline', ent, {  });

  /**
   * Create a SupplierRatingType - SupplierRatingType
   *
   * Requires 
   * Returns supplierRatingTypeId[String]
   */
  Future<OfResult> createSupplierRatingType(SupplierRatingType ent, ) =>
      client.invoke('createSupplierRatingType', ent, {  });

  /**
   * Delete a ReorderGuideline record - ReorderGuideline
   *
   * Requires reorderGuidelineId
   * Returns 
   */
  Future<OfResult> deleteReorderGuideline(ReorderGuideline ent, ) =>
      client.invoke('deleteReorderGuideline', ent, {  });

  /**
   * Delete a SupplierRatingType - SupplierRatingType
   *
   * Requires supplierRatingTypeId
   * Returns 
   */
  Future<OfResult> deleteSupplierRatingType(SupplierRatingType ent, ) =>
      client.invoke('deleteSupplierRatingType', ent, {  });

  /**
   * Update a ReorderGuideline record - ReorderGuideline
   *
   * Requires reorderGuidelineId
   * Returns 
   */
  Future<OfResult> updateReorderGuideline(ReorderGuideline ent, ) =>
      client.invoke('updateReorderGuideline', ent, {  });

  /**
   * Update a SupplierRatingType - SupplierRatingType
   *
   * Requires supplierRatingTypeId
   * Returns 
   */
  Future<OfResult> updateSupplierRatingType(SupplierRatingType ent, ) =>
      client.invoke('updateSupplierRatingType', ent, {  });

}