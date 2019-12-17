import 'package:sagas_meta/src/models/product_config.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesConfig{
  final SrvClient client;
  ProductServicesConfig(this.client);

  /**
   * Create a new ConfigOptionProductOption Record - ConfigOptionProductOption
   *
   * Requires configId, configItemId, sequenceNum, configOptionId, productId
   * Returns 
   */
  Future<OfResult> createConfigOptionProductOption(ConfigOptionProductOption ent, ) =>
      client.invoke('createConfigOptionProductOption', ent, {  });

  /**
   * Create a ProdConfItemContentType - ProdConfItemContentType
   *
   * Requires 
   * Returns confItemContentTypeId[String]
   */
  Future<OfResult> createProdConfItemContentType(ProdConfItemContentType ent, ) =>
      client.invoke('createProdConfItemContentType', ent, {  });

  /**
   * Delete an existing ConfigOptionProductOption Record - ConfigOptionProductOption
   *
   * Requires configId, configItemId, sequenceNum, configOptionId, productId
   * Returns 
   */
  Future<OfResult> deleteConfigOptionProductOption(ConfigOptionProductOption ent, ) =>
      client.invoke('deleteConfigOptionProductOption', ent, {  });

  /**
   * Delete a ProdConfItemContentType - ProdConfItemContentType
   *
   * Requires confItemContentTypeId
   * Returns 
   */
  Future<OfResult> deleteProdConfItemContentType(ProdConfItemContentType ent, ) =>
      client.invoke('deleteProdConfItemContentType', ent, {  });

  /**
   * Update a ConfigOptionProductOption record - ConfigOptionProductOption
   *
   * Requires configId, configItemId, sequenceNum, configOptionId, productId
   * Returns 
   */
  Future<OfResult> updateConfigOptionProductOption(ConfigOptionProductOption ent, ) =>
      client.invoke('updateConfigOptionProductOption', ent, {  });

  /**
   * Update a ProdConfItemContentType - ProdConfItemContentType
   *
   * Requires confItemContentTypeId
   * Returns 
   */
  Future<OfResult> updateProdConfItemContentType(ProdConfItemContentType ent, ) =>
      client.invoke('updateProdConfItemContentType', ent, {  });

}