import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServicesCommunication{
  final SrvClient client;
  PartyServicesCommunication(this.client);

  /**
   * Create a new Communication Event Type Record - CommunicationEventType
   *
   * Requires 
   * Returns communicationEventTypeId[String]
   */
  Future<OfResult> createCommunicationEventType(CommunicationEventType ent, ) =>
      client.invoke('createCommunicationEventType', ent, {  });

  /**
   * Delete a Communication Event Type Record - CommunicationEventType
   *
   * Requires communicationEventTypeId
   * Returns 
   */
  Future<OfResult> deleteCommunicationEventType(CommunicationEventType ent, ) =>
      client.invoke('deleteCommunicationEventType', ent, {  });

  /**
   * Update a Communication Event Type Record - CommunicationEventType
   *
   * Requires communicationEventTypeId
   * Returns 
   */
  Future<OfResult> updateCommunicationEventType(CommunicationEventType ent, ) =>
      client.invoke('updateCommunicationEventType', ent, {  });

}