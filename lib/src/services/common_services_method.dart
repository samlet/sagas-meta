import 'package:sagas_meta/src/models/common_method.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesMethod{
  final SrvClient client;
  CommonServicesMethod(this.client);

  /**
   * Create a Custom Method - CustomMethod
   *
   * Requires 
   * Returns customMethodId[String]
   */
  Future<OfResult> createCustomMethod(CustomMethod ent, ) =>
      client.invoke('createCustomMethod', ent, {  });

  /**
   * Create a Custom Method Type - CustomMethodType
   *
   * Requires 
   * Returns customMethodTypeId[String]
   */
  Future<OfResult> createCustomMethodType(CustomMethodType ent, ) =>
      client.invoke('createCustomMethodType', ent, {  });

  /**
   * Delete a Custom Method - CustomMethod
   *
   * Requires customMethodId
   * Returns 
   */
  Future<OfResult> deleteCustomMethod(CustomMethod ent, ) =>
      client.invoke('deleteCustomMethod', ent, {  });

  /**
   * Delete a Custom Method Type - CustomMethodType
   *
   * Requires customMethodTypeId
   * Returns 
   */
  Future<OfResult> deleteCustomMethodType(CustomMethodType ent, ) =>
      client.invoke('deleteCustomMethodType', ent, {  });

  /**
   * Update a Custom Method - CustomMethod
   *
   * Requires customMethodId
   * Returns 
   */
  Future<OfResult> updateCustomMethod(CustomMethod ent, ) =>
      client.invoke('updateCustomMethod', ent, {  });

  /**
   * Update a Custom Method Type - CustomMethodType
   *
   * Requires customMethodTypeId
   * Returns 
   */
  Future<OfResult> updateCustomMethodType(CustomMethodType ent, ) =>
      client.invoke('updateCustomMethodType', ent, {  });

}