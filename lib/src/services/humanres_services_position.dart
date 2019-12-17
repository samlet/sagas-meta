import 'package:sagas_meta/src/models/humanres_position.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class HumanresServicesPosition{
  final SrvClient client;
  HumanresServicesPosition(this.client);

  /**
   * Create a EmplPositionClassType record - EmplPositionClassType
   *
   * Requires 
   * Returns emplPositionClassTypeId[String]
   */
  Future<OfResult> createEmplPositionClassType(EmplPositionClassType ent, ) =>
      client.invoke('createEmplPositionClassType', ent, {  });

  /**
   * Create a EmplPositionTypeClass record - EmplPositionTypeClass
   *
   * Requires emplPositionTypeId, emplPositionClassTypeId, fromDate
   * Returns 
   */
  Future<OfResult> createEmplPositionTypeClass(EmplPositionTypeClass ent, ) =>
      client.invoke('createEmplPositionTypeClass', ent, {  });

  /**
   * Delete a record - EmplPositionClassType
   *
   * Requires emplPositionClassTypeId
   * Returns 
   */
  Future<OfResult> deleteEmplPositionClassType(EmplPositionClassType ent, ) =>
      client.invoke('deleteEmplPositionClassType', ent, {  });

  /**
   * Expire a EmplPositionTypeClass record - EmplPositionTypeClass
   *
   * Requires emplPositionTypeId, emplPositionClassTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireEmplPositionTypeClass(EmplPositionTypeClass ent, ) =>
      client.invoke('expireEmplPositionTypeClass', ent, {  });

  /**
   * Update a record - EmplPositionClassType
   *
   * Requires emplPositionClassTypeId
   * Returns 
   */
  Future<OfResult> updateEmplPositionClassType(EmplPositionClassType ent, ) =>
      client.invoke('updateEmplPositionClassType', ent, {  });

  /**
   * Update a EmplPositionTypeClass record - EmplPositionTypeClass
   *
   * Requires emplPositionTypeId, emplPositionClassTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateEmplPositionTypeClass(EmplPositionTypeClass ent, ) =>
      client.invoke('updateEmplPositionTypeClass', ent, {  });

}