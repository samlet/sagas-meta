import 'package:sagas_meta/src/models/common_enum.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesEnum{
  final SrvClient client;
  CommonServicesEnum(this.client);

  /**
   * Create a EnumerationType - EnumerationType
   *
   * Requires 
   * Returns enumTypeId[String]
   */
  Future<OfResult> createEnumerationType(EnumerationType ent, ) =>
      client.invoke('createEnumerationType', ent, {  });

  /**
   * Delete a EnumerationType - EnumerationType
   *
   * Requires enumTypeId
   * Returns 
   */
  Future<OfResult> deleteEnumerationType(EnumerationType ent, ) =>
      client.invoke('deleteEnumerationType', ent, {  });

  /**
   * Update a EnumerationType - EnumerationType
   *
   * Requires enumTypeId
   * Returns 
   */
  Future<OfResult> updateEnumerationType(EnumerationType ent, ) =>
      client.invoke('updateEnumerationType', ent, {  });

}