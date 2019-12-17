import 'package:sagas_meta/src/models/party_party.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServicesParty{
  final SrvClient client;
  PartyServicesParty(this.client);

  /**
   * Create a PartyClassificationType Record - PartyClassificationType
   *
   * Requires 
   * Returns partyClassificationTypeId[String]
   */
  Future<OfResult> createPartyClassificationType(PartyClassificationType ent, ) =>
      client.invoke('createPartyClassificationType', ent, {  });

  /**
   * Create a PartyContentType Record - PartyContentType
   *
   * Requires 
   * Returns partyContentTypeId[String]
   */
  Future<OfResult> createPartyContentType(PartyContentType ent, ) =>
      client.invoke('createPartyContentType', ent, {  });

  /**
   * Create a PartyGeoPoint Record - PartyGeoPoint
   *
   * Requires partyId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> createPartyGeoPoint(PartyGeoPoint ent, ) =>
      client.invoke('createPartyGeoPoint', ent, {  });

  /**
   * Create a PartyIcsAvsOverride Record - PartyIcsAvsOverride
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> createPartyIcsAvsOverride(PartyIcsAvsOverride ent, ) =>
      client.invoke('createPartyIcsAvsOverride', ent, {  });

  /**
   * Create a PartyIdentificationType Record - PartyIdentificationType
   *
   * Requires 
   * Returns partyIdentificationTypeId[String]
   */
  Future<OfResult> createPartyIdentificationType(PartyIdentificationType ent, ) =>
      client.invoke('createPartyIdentificationType', ent, {  });

  /**
   * Create a PartyType Record - PartyType
   *
   * Requires 
   * Returns partyTypeId[String]
   */
  Future<OfResult> createPartyType(PartyType ent, ) =>
      client.invoke('createPartyType', ent, {  });

  /**
   * Create a PartyTypeAttr Record - PartyTypeAttr
   *
   * Requires partyTypeId, attrName
   * Returns 
   */
  Future<OfResult> createPartyTypeAttr(PartyTypeAttr ent, ) =>
      client.invoke('createPartyTypeAttr', ent, {  });

  /**
   * Create a PriorityType Record - PriorityType
   *
   * Requires 
   * Returns priorityTypeId[String]
   */
  Future<OfResult> createPriorityType(PriorityType ent, ) =>
      client.invoke('createPriorityType', ent, {  });

  /**
   * Delete a PartyClassificationType Record - PartyClassificationType
   *
   * Requires partyClassificationTypeId
   * Returns 
   */
  Future<OfResult> deletePartyClassificationType(PartyClassificationType ent, ) =>
      client.invoke('deletePartyClassificationType', ent, {  });

  /**
   * Delete a PartyContentType Record - PartyContentType
   *
   * Requires partyContentTypeId
   * Returns 
   */
  Future<OfResult> deletePartyContentType(PartyContentType ent, ) =>
      client.invoke('deletePartyContentType', ent, {  });

  /**
   * Delete a PartyIcsAvsOverride Record - PartyIcsAvsOverride
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> deletePartyIcsAvsOverride(PartyIcsAvsOverride ent, ) =>
      client.invoke('deletePartyIcsAvsOverride', ent, {  });

  /**
   * Delete a PartyIdentificationType Record - PartyIdentificationType
   *
   * Requires partyIdentificationTypeId
   * Returns 
   */
  Future<OfResult> deletePartyIdentificationType(PartyIdentificationType ent, ) =>
      client.invoke('deletePartyIdentificationType', ent, {  });

  /**
   * Delete a PartyType Record - PartyType
   *
   * Requires partyTypeId
   * Returns 
   */
  Future<OfResult> deletePartyType(PartyType ent, ) =>
      client.invoke('deletePartyType', ent, {  });

  /**
   * Delete a PartyTypeAttr Record - PartyTypeAttr
   *
   * Requires partyTypeId, attrName
   * Returns 
   */
  Future<OfResult> deletePartyTypeAttr(PartyTypeAttr ent, ) =>
      client.invoke('deletePartyTypeAttr', ent, {  });

  /**
   * Delete a PriorityType Record - PriorityType
   *
   * Requires priorityTypeId
   * Returns 
   */
  Future<OfResult> deletePriorityType(PriorityType ent, ) =>
      client.invoke('deletePriorityType', ent, {  });

  /**
   * Expire a PartyGeoPoint Record - PartyGeoPoint
   *
   * Requires partyId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> expirePartyGeoPoint(PartyGeoPoint ent, ) =>
      client.invoke('expirePartyGeoPoint', ent, {  });

  /**
   * Update a PartyClassificationType Record - PartyClassificationType
   *
   * Requires partyClassificationTypeId
   * Returns 
   */
  Future<OfResult> updatePartyClassificationType(PartyClassificationType ent, ) =>
      client.invoke('updatePartyClassificationType', ent, {  });

  /**
   * Update a PartyContentType Record - PartyContentType
   *
   * Requires partyContentTypeId
   * Returns 
   */
  Future<OfResult> updatePartyContentType(PartyContentType ent, ) =>
      client.invoke('updatePartyContentType', ent, {  });

  /**
   * Update a PartyGeoPoint Record - PartyGeoPoint
   *
   * Requires partyId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyGeoPoint(PartyGeoPoint ent, ) =>
      client.invoke('updatePartyGeoPoint', ent, {  });

  /**
   * Update a PartyIcsAvsOverride Record - PartyIcsAvsOverride
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> updatePartyIcsAvsOverride(PartyIcsAvsOverride ent, ) =>
      client.invoke('updatePartyIcsAvsOverride', ent, {  });

  /**
   * Update a PartyIdentificationType Record - PartyIdentificationType
   *
   * Requires partyIdentificationTypeId
   * Returns 
   */
  Future<OfResult> updatePartyIdentificationType(PartyIdentificationType ent, ) =>
      client.invoke('updatePartyIdentificationType', ent, {  });

  /**
   * Update a PartyType Record - PartyType
   *
   * Requires partyTypeId
   * Returns 
   */
  Future<OfResult> updatePartyType(PartyType ent, ) =>
      client.invoke('updatePartyType', ent, {  });

  /**
   * Update a PartyTypeAttr Record - PartyTypeAttr
   *
   * Requires partyTypeId, attrName
   * Returns 
   */
  Future<OfResult> updatePartyTypeAttr(PartyTypeAttr ent, ) =>
      client.invoke('updatePartyTypeAttr', ent, {  });

  /**
   * Update a PriorityType Record - PriorityType
   *
   * Requires priorityTypeId
   * Returns 
   */
  Future<OfResult> updatePriorityType(PriorityType ent, ) =>
      client.invoke('updatePriorityType', ent, {  });

}