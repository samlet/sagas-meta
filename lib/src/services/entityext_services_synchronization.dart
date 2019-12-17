import 'package:sagas_meta/src/models/entity_synchronization.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class EntityextServicesSynchronization{
  final SrvClient client;
  EntityextServicesSynchronization(this.client);

  /**
   * Create a EntitySyncIncludeGroup record - EntitySyncIncludeGroup
   *
   * Requires entitySyncId, entityGroupId
   * Returns 
   */
  Future<OfResult> createEntitySyncIncludeGroup(EntitySyncIncludeGroup ent, ) =>
      client.invoke('createEntitySyncIncludeGroup', ent, {  });

  /**
   * Delete a EntitySyncIncludeGroup record - EntitySyncIncludeGroup
   *
   * Requires entitySyncId, entityGroupId
   * Returns 
   */
  Future<OfResult> deleteEntitySyncIncludeGroup(EntitySyncIncludeGroup ent, ) =>
      client.invoke('deleteEntitySyncIncludeGroup', ent, {  });

  /**
   * Update a EntitySyncIncludeGroup record - EntitySyncIncludeGroup
   *
   * Requires entitySyncId, entityGroupId
   * Returns 
   */
  Future<OfResult> updateEntitySyncIncludeGroup(EntitySyncIncludeGroup ent, ) =>
      client.invoke('updateEntitySyncIncludeGroup', ent, {  });

}