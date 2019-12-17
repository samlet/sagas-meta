import 'package:sagas_meta/src/models/party_contact.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServicesContact{
  final SrvClient client;
  PartyServicesContact(this.client);

  /**
   * Create a new ContactMech Purpose Type Record - ContactMechPurposeType
   *
   * Requires 
   * Returns contactMechPurposeTypeId[String]
   */
  Future<OfResult> createContactMechPurposeType(ContactMechPurposeType ent, ) =>
      client.invoke('createContactMechPurposeType', ent, {  });

  /**
   * Create a new ContactMech Type Record - ContactMechType
   *
   * Requires 
   * Returns contactMechTypeId[String]
   */
  Future<OfResult> createContactMechType(ContactMechType ent, ) =>
      client.invoke('createContactMechType', ent, {  });

  /**
   * Create a new ContactMech Type Attr Record - ContactMechTypeAttr
   *
   * Requires contactMechTypeId, attrName
   * Returns 
   */
  Future<OfResult> createContactMechTypeAttr(ContactMechTypeAttr ent, ) =>
      client.invoke('createContactMechTypeAttr', ent, {  });

  /**
   * Create a new ContactMech Type Purpose Record - ContactMechTypePurpose
   *
   * Requires contactMechTypeId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> createContactMechTypePurpose(ContactMechTypePurpose ent, ) =>
      client.invoke('createContactMechTypePurpose', ent, {  });

  /**
   * Delete a ContactMech Purpose Type Record - ContactMechPurposeType
   *
   * Requires contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> deleteContactMechPurposeType(ContactMechPurposeType ent, ) =>
      client.invoke('deleteContactMechPurposeType', ent, {  });

  /**
   * Delete a ContactMech Type Record - ContactMechType
   *
   * Requires contactMechTypeId
   * Returns 
   */
  Future<OfResult> deleteContactMechType(ContactMechType ent, ) =>
      client.invoke('deleteContactMechType', ent, {  });

  /**
   * Delete an existing ContactMech Type Attr Record - ContactMechTypeAttr
   *
   * Requires contactMechTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteContactMechTypeAttr(ContactMechTypeAttr ent, ) =>
      client.invoke('deleteContactMechTypeAttr', ent, {  });

  /**
   * Delete an existing ContactMech Type Purpose Record - ContactMechTypePurpose
   *
   * Requires contactMechTypeId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> deleteContactMechTypePurpose(ContactMechTypePurpose ent, ) =>
      client.invoke('deleteContactMechTypePurpose', ent, {  });

  /**
   * Update a ContactMech Purpose Type Record - ContactMechPurposeType
   *
   * Requires contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateContactMechPurposeType(ContactMechPurposeType ent, ) =>
      client.invoke('updateContactMechPurposeType', ent, {  });

  /**
   * Update a ContactMech Type Record - ContactMechType
   *
   * Requires contactMechTypeId
   * Returns 
   */
  Future<OfResult> updateContactMechType(ContactMechType ent, ) =>
      client.invoke('updateContactMechType', ent, {  });

  /**
   * Update a ContactMech Type Attr Record - ContactMechTypeAttr
   *
   * Requires contactMechTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateContactMechTypeAttr(ContactMechTypeAttr ent, ) =>
      client.invoke('updateContactMechTypeAttr', ent, {  });

  /**
   * Update a ContactMech Type Purpose Record - ContactMechTypePurpose
   *
   * Requires contactMechTypeId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateContactMechTypePurpose(ContactMechTypePurpose ent, ) =>
      client.invoke('updateContactMechTypePurpose', ent, {  });

}