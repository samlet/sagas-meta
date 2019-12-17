import 'package:sagas_meta/src/models/entity_tenant.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class EntityextServicesTenant{
  final SrvClient client;
  EntityextServicesTenant(this.client);

  /**
   * Create a new Component Record - Component
   *
   * Requires componentName
   * Returns 
   */
  Future<OfResult> createComponent(Component ent, ) =>
      client.invoke('createComponent', ent, {  });

  /**
   * Delete a Component record - Component
   *
   * Requires componentName
   * Returns 
   */
  Future<OfResult> deleteComponent(Component ent, ) =>
      client.invoke('deleteComponent', ent, {  });

  /**
   * Update a Component record - Component
   *
   * Requires componentName
   * Returns 
   */
  Future<OfResult> updateComponent(Component ent, ) =>
      client.invoke('updateComponent', ent, {  });

}