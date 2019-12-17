import 'package:sagas_meta/src/models/marketing_contact.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class MarketingServicesContact{
  final SrvClient client;
  MarketingServicesContact(this.client);

  /**
   * Create a new Contact List Type Record - ContactListType
   *
   * Requires 
   * Returns contactListTypeId[String]
   */
  Future<OfResult> createContactListType(ContactListType ent, ) =>
      client.invoke('createContactListType', ent, {  });

  /**
   * Delete a Contact List Type Record - ContactListType
   *
   * Requires contactListTypeId
   * Returns 
   */
  Future<OfResult> deleteContactListType(ContactListType ent, ) =>
      client.invoke('deleteContactListType', ent, {  });

  /**
   * Update a Contact List Type Record - ContactListType
   *
   * Requires contactListTypeId
   * Returns 
   */
  Future<OfResult> updateContactListType(ContactListType ent, ) =>
      client.invoke('updateContactListType', ent, {  });

}