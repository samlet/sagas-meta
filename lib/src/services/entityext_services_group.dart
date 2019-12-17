import 'package:sagas_meta/src/models/entity_group.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class EntityextServicesGroup{
  final SrvClient client;
  EntityextServicesGroup(this.client);

  /**
   * Create a EntityGroup record - EntityGroup
   *
   * Requires 
   * Returns entityGroupId[String]
   */
  Future<OfResult> createEntityGroup(EntityGroup ent, ) =>
      client.invoke('createEntityGroup', ent, {  });

  /**
   * Create a EntityGroupEntry record - EntityGroupEntry
   *
   * Requires entityGroupId, entityOrPackage
   * Returns 
   */
  Future<OfResult> createEntityGroupEntry(EntityGroupEntry ent, ) =>
      client.invoke('createEntityGroupEntry', ent, {  });

  /**
   * Delete a EntityGroup record - EntityGroup
   *
   * Requires entityGroupId
   * Returns 
   */
  Future<OfResult> deleteEntityGroup(EntityGroup ent, ) =>
      client.invoke('deleteEntityGroup', ent, {  });

  /**
   * Delete a EntityGroupEntry record - EntityGroupEntry
   *
   * Requires entityGroupId, entityOrPackage
   * Returns 
   */
  Future<OfResult> deleteEntityGroupEntry(EntityGroupEntry ent, ) =>
      client.invoke('deleteEntityGroupEntry', ent, {  });

  /**
   * Update a EntityGroup record - EntityGroup
   *
   * Requires entityGroupId
   * Returns 
   */
  Future<OfResult> updateEntityGroup(EntityGroup ent, ) =>
      client.invoke('updateEntityGroup', ent, {  });

  /**
   * Update a EntityGroupEntry record - EntityGroupEntry
   *
   * Requires entityGroupId, entityOrPackage
   * Returns 
   */
  Future<OfResult> updateEntityGroupEntry(EntityGroupEntry ent, ) =>
      client.invoke('updateEntityGroupEntry', ent, {  });

}