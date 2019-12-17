import 'package:sagas_meta/src/models/marketing_tracking.dart';
import 'package:sagas_meta/src/models/marketing_campaign.dart';
import 'package:sagas_meta/src/models/marketing_segment.dart';
import 'package:sagas_meta/src/models/marketing_contact.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class MarketingServices{
  final SrvClient client;
  MarketingServices(this.client);

  /**
   *  - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> addPriceRuleToMarketingCampaign(MarketingCampaignPrice ent, ) =>
      client.invoke('addPriceRuleToMarketingCampaign', ent, {  });

  /**
   *  - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> addPromoToMarketingCampaign(MarketingCampaignPromo ent, ) =>
      client.invoke('addPromoToMarketingCampaign', ent, {  });

  /**
   * Determine: are Parties Related Through SegmentGroup? - 
   *
   * Requires partyId, toPartyId
   * Returns areRelated[String]
   */
  Future<OfResult> arePartiesRelatedThroughSegmentGroup({@required String partyId, String roleTypeId, @required String toPartyId, String toRoleTypeId}) =>
      client.invoke('arePartiesRelatedThroughSegmentGroup', null, { 'partyId': partyId, 'roleTypeId': roleTypeId, 'toPartyId': toPartyId, 'toRoleTypeId': toRoleTypeId });

  /**
   *  - 
   *
   * Requires partyId, partyGroupId
   * Returns partyId[String], partyGroupId[String]
   */
  Future<OfResult> convertLeadToContact({@required String partyId, @required String partyGroupId}) =>
      client.invoke('convertLeadToContact', null, { 'partyId': partyId, 'partyGroupId': partyGroupId });

  /**
   * Create an Account Group - 
   *
   * Requires 
   * Returns partyId[String]
   */
  Future<OfResult> createAccount({String groupName, String groupNameLocal, String officeSiteName, Decimal annualRevenue, int numEmployees, String tickerSymbol, String comments, String logoImageUrl, String toName, String attnName, String address1, String address2, int houseNumber, String houseNumberExt, String directions, String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String countryCode, String areaCode, String contactNumber, String askForName, String emailAddress, String extension}) =>
      client.invoke('createAccount', null, { 'groupName': groupName, 'groupNameLocal': groupNameLocal, 'officeSiteName': officeSiteName, 'annualRevenue': annualRevenue, 'numEmployees': numEmployees, 'tickerSymbol': tickerSymbol, 'comments': comments, 'logoImageUrl': logoImageUrl, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'emailAddress': emailAddress, 'extension': extension });

  /**
   * Create a Contact Person - 
   *
   * Requires 
   * Returns partyId[String], contactMechId[String], roleTypeId[String]
   */
  Future<OfResult> createContact({String salutation, String firstName, String middleName, String lastName, String personalTitle, String suffix, String nickname, String firstNameLocal, String middleNameLocal, String lastNameLocal, String otherLocal, String memberId, String gender, DateTime birthDate, DateTime deceasedDate, double height, double weight, String mothersMaidenName, String maritalStatus, String socialSecurityNumber, String passportNumber, DateTime passportExpireDate, double totalYearsWorkExperience, String comments, String employmentStatusEnumId, String residenceStatusEnumId, String occupation, int yearsWithEmployer, int monthsWithEmployer, String existingCustomer, String cardId, String toName, String attnName, String address1, String address2, int houseNumber, String houseNumberExt, String directions, String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String countryCode, String areaCode, String contactNumber, String askForName, String emailAddress, String partyIdFrom, String quickAdd, String extension, String contactListId}) =>
      client.invoke('createContact', null, { 'salutation': salutation, 'firstName': firstName, 'middleName': middleName, 'lastName': lastName, 'personalTitle': personalTitle, 'suffix': suffix, 'nickname': nickname, 'firstNameLocal': firstNameLocal, 'middleNameLocal': middleNameLocal, 'lastNameLocal': lastNameLocal, 'otherLocal': otherLocal, 'memberId': memberId, 'gender': gender, 'birthDate': birthDate, 'deceasedDate': deceasedDate, 'height': height, 'weight': weight, 'mothersMaidenName': mothersMaidenName, 'maritalStatus': maritalStatus, 'socialSecurityNumber': socialSecurityNumber, 'passportNumber': passportNumber, 'passportExpireDate': passportExpireDate, 'totalYearsWorkExperience': totalYearsWorkExperience, 'comments': comments, 'employmentStatusEnumId': employmentStatusEnumId, 'residenceStatusEnumId': residenceStatusEnumId, 'occupation': occupation, 'yearsWithEmployer': yearsWithEmployer, 'monthsWithEmployer': monthsWithEmployer, 'existingCustomer': existingCustomer, 'cardId': cardId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'emailAddress': emailAddress, 'partyIdFrom': partyIdFrom, 'quickAdd': quickAdd, 'extension': extension, 'contactListId': contactListId });

  /**
   * Create a ContactList record - ContactList
   *
   * Requires 
   * Returns contactListId[String]
   */
  Future<OfResult> createContactList(ContactList ent, ) =>
      client.invoke('createContactList', ent, {  });

  /**
   * Add Party to ContactList - ContactListParty
   *
   * Requires contactListId, partyId, statusId, statusId
   * Returns 
   */
  Future<OfResult> createContactListParty(ContactListParty ent, {String baseLocation}) =>
      client.invoke('createContactListParty', ent, { 'baseLocation': baseLocation });

  /**
   * Create ContactListParty Status - ContactListPartyStatus
   *
   * Requires contactListId, partyId, statusId, preferredContactMechId, statusId
   * Returns 
   */
  Future<OfResult> createContactListPartyStatus(ContactListPartyStatus ent, {String baseLocation, @required String preferredContactMechId}) =>
      client.invoke('createContactListPartyStatus', ent, { 'baseLocation': baseLocation, 'preferredContactMechId': preferredContactMechId });

  /**
   * 
            Sales Lead can be just a person or a person representing a company or a company (party group).
            createLead works 1) If person information is passed. 2) If company (party group) information is passed. 3) If Person and company (party group) information is passed. 
         - 
   *
   * Requires 
   * Returns partyId[String], partyGroupPartyId[String], roleTypeId[String], contactMechId[String]
   */
  Future<OfResult> createLead({String salutation, String firstName, String middleName, String lastName, String personalTitle, String suffix, String nickname, String firstNameLocal, String middleNameLocal, String lastNameLocal, String otherLocal, String memberId, String gender, DateTime birthDate, DateTime deceasedDate, double height, double weight, String mothersMaidenName, String maritalStatus, String socialSecurityNumber, String passportNumber, DateTime passportExpireDate, double totalYearsWorkExperience, String comments, String employmentStatusEnumId, String residenceStatusEnumId, String occupation, int yearsWithEmployer, int monthsWithEmployer, String existingCustomer, String cardId, String toName, String attnName, String address1, String address2, int houseNumber, String houseNumberExt, String directions, String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String countryCode, String areaCode, String contactNumber, String askForName, String emailAddress, String groupName, String title, String numEmployees, String officeSiteName, String partyIdFrom, String dataSourceId, String extension, String contactListId}) =>
      client.invoke('createLead', null, { 'salutation': salutation, 'firstName': firstName, 'middleName': middleName, 'lastName': lastName, 'personalTitle': personalTitle, 'suffix': suffix, 'nickname': nickname, 'firstNameLocal': firstNameLocal, 'middleNameLocal': middleNameLocal, 'lastNameLocal': lastNameLocal, 'otherLocal': otherLocal, 'memberId': memberId, 'gender': gender, 'birthDate': birthDate, 'deceasedDate': deceasedDate, 'height': height, 'weight': weight, 'mothersMaidenName': mothersMaidenName, 'maritalStatus': maritalStatus, 'socialSecurityNumber': socialSecurityNumber, 'passportNumber': passportNumber, 'passportExpireDate': passportExpireDate, 'totalYearsWorkExperience': totalYearsWorkExperience, 'comments': comments, 'employmentStatusEnumId': employmentStatusEnumId, 'residenceStatusEnumId': residenceStatusEnumId, 'occupation': occupation, 'yearsWithEmployer': yearsWithEmployer, 'monthsWithEmployer': monthsWithEmployer, 'existingCustomer': existingCustomer, 'cardId': cardId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'emailAddress': emailAddress, 'groupName': groupName, 'title': title, 'numEmployees': numEmployees, 'officeSiteName': officeSiteName, 'partyIdFrom': partyIdFrom, 'dataSourceId': dataSourceId, 'extension': extension, 'contactListId': contactListId });

  /**
   * Create a MarketingCampaign record - MarketingCampaign
   *
   * Requires 
   * Returns marketingCampaignId[String]
   */
  Future<OfResult> createMarketingCampaign(MarketingCampaign ent, ) =>
      client.invoke('createMarketingCampaign', ent, {  });

  /**
   * Create a MarketingCampaignNote - MarketingCampaignNote
   *
   * Requires marketingCampaignId, noteId
   * Returns marketingCampaignId[String], noteId[String]
   */
  Future<OfResult> createMarketingCampaignNote(MarketingCampaignNote ent, ) =>
      client.invoke('createMarketingCampaignNote', ent, {  });

  /**
   * Add PriceRule to MarketingCampaign - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> createMarketingCampaignPrice(MarketingCampaignPrice ent, ) =>
      client.invoke('createMarketingCampaignPrice', ent, {  });

  /**
   * Add Promo to MarketingCampaign - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> createMarketingCampaignPromo(MarketingCampaignPromo ent, ) =>
      client.invoke('createMarketingCampaignPromo', ent, {  });

  /**
   * Add Role to Campaign - MarketingCampaignRole
   *
   * Requires marketingCampaignId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> createMarketingCampaignRole(MarketingCampaignRole ent, ) =>
      client.invoke('createMarketingCampaignRole', ent, {  });

  /**
   * Create a SegmentGroup - SegmentGroup
   *
   * Requires 
   * Returns segmentGroupId[String]
   */
  Future<OfResult> createSegmentGroup(SegmentGroup ent, ) =>
      client.invoke('createSegmentGroup', ent, {  });

  /**
   * Create a SegmentGroupClassification - SegmentGroupClassification
   *
   * Requires segmentGroupId, partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> createSegmentGroupClassification(SegmentGroupClassification ent, ) =>
      client.invoke('createSegmentGroupClassification', ent, {  });

  /**
   * Create a SegmentGroupGeo - SegmentGroupGeo
   *
   * Requires segmentGroupId, geoId
   * Returns 
   */
  Future<OfResult> createSegmentGroupGeo(SegmentGroupGeo ent, ) =>
      client.invoke('createSegmentGroupGeo', ent, {  });

  /**
   * Create a SegmentGroupRole - SegmentGroupRole
   *
   * Requires segmentGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createSegmentGroupRole(SegmentGroupRole ent, ) =>
      client.invoke('createSegmentGroupRole', ent, {  });

  /**
   * Create SegmentGroupType - SegmentGroupType
   *
   * Requires 
   * Returns segmentGroupTypeId[String]
   */
  Future<OfResult> createSegmentGroupType(SegmentGroupType ent, ) =>
      client.invoke('createSegmentGroupType', ent, {  });

  /**
   * Create a TrackingCode record - TrackingCode
   *
   * Requires trackingCodeId, trackingCodeTypeId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> createTrackingCode(TrackingCode ent, ) =>
      client.invoke('createTrackingCode', ent, {  });

  /**
   * Create a TrackingCodeOrder record - TrackingCodeOrder
   *
   * Requires orderId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> createTrackingCodeOrder(TrackingCodeOrder ent, ) =>
      client.invoke('createTrackingCodeOrder', ent, {  });

  /**
   * Create a TrackingCodeOrderReturn  record - TrackingCodeOrderReturn
   *
   * Requires returnId, orderId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> createTrackingCodeOrderReturn(TrackingCodeOrderReturn ent, ) =>
      client.invoke('createTrackingCodeOrderReturn', ent, {  });

  /**
   * Create TrackingCodeOrderReturn for all the Return Items with Orders that have trackingCodeOrder entry - 
   *
   * Requires returnId
   * Returns 
   */
  Future<OfResult> createTrackingCodeOrderReturns({@required String returnId}) =>
      client.invoke('createTrackingCodeOrderReturns', null, { 'returnId': returnId });

  /**
   * Create a TrackingCodeType record - TrackingCodeType
   *
   * Requires trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> createTrackingCodeType(TrackingCodeType ent, ) =>
      client.invoke('createTrackingCodeType', ent, {  });

  /**
   *  - WebSiteContactList
   *
   * Requires webSiteId, contactListId, fromDate
   * Returns 
   */
  Future<OfResult> createWebSiteContactList(WebSiteContactList ent, ) =>
      client.invoke('createWebSiteContactList', ent, {  });

  /**
   * Remove Party from ContactList - ContactListParty
   *
   * Requires contactListId, partyId, fromDate
   * Returns 
   */
  Future<OfResult> deleteContactListParty(ContactListParty ent, ) =>
      client.invoke('deleteContactListParty', ent, {  });

  /**
   * Remove a MarketingCampaign record - MarketingCampaign
   *
   * Requires marketingCampaignId
   * Returns 
   */
  Future<OfResult> deleteMarketingCampaign(MarketingCampaign ent, ) =>
      client.invoke('deleteMarketingCampaign', ent, {  });

  /**
   * Delete a MarketingCampaignNote - MarketingCampaignNote
   *
   * Requires marketingCampaignId, noteId
   * Returns 
   */
  Future<OfResult> deleteMarketingCampaignNote(MarketingCampaignNote ent, ) =>
      client.invoke('deleteMarketingCampaignNote', ent, {  });

  /**
   * Remove PriceRule from MarketingCampaign - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> deleteMarketingCampaignPrice(MarketingCampaignPrice ent, ) =>
      client.invoke('deleteMarketingCampaignPrice', ent, {  });

  /**
   * Remove Promo to MarketingCampaign - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> deleteMarketingCampaignPromo(MarketingCampaignPromo ent, ) =>
      client.invoke('deleteMarketingCampaignPromo', ent, {  });

  /**
   * Remove Role from Campaign - MarketingCampaignRole
   *
   * Requires marketingCampaignId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteMarketingCampaignRole(MarketingCampaignRole ent, ) =>
      client.invoke('deleteMarketingCampaignRole', ent, {  });

  /**
   * Delete a SegmentGroup - SegmentGroup
   *
   * Requires segmentGroupId
   * Returns 
   */
  Future<OfResult> deleteSegmentGroup(SegmentGroup ent, ) =>
      client.invoke('deleteSegmentGroup', ent, {  });

  /**
   * Delete a SegmentGroupClassification - SegmentGroupClassification
   *
   * Requires segmentGroupId, partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> deleteSegmentGroupClassification(SegmentGroupClassification ent, ) =>
      client.invoke('deleteSegmentGroupClassification', ent, {  });

  /**
   * Delete a SegmentGroupGeo - SegmentGroupGeo
   *
   * Requires segmentGroupId, geoId
   * Returns 
   */
  Future<OfResult> deleteSegmentGroupGeo(SegmentGroupGeo ent, ) =>
      client.invoke('deleteSegmentGroupGeo', ent, {  });

  /**
   * Delete a SegmentGroupRole - SegmentGroupRole
   *
   * Requires segmentGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteSegmentGroupRole(SegmentGroupRole ent, ) =>
      client.invoke('deleteSegmentGroupRole', ent, {  });

  /**
   * Delete SegmentGroupType - SegmentGroupType
   *
   * Requires segmentGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteSegmentGroupType(SegmentGroupType ent, ) =>
      client.invoke('deleteSegmentGroupType', ent, {  });

  /**
   * Delete a TrackingCode record - TrackingCode
   *
   * Requires trackingCodeId
   * Returns 
   */
  Future<OfResult> deleteTrackingCode(TrackingCode ent, ) =>
      client.invoke('deleteTrackingCode', ent, {  });

  /**
   * Update a TrackingCode record - TrackingCodeOrderReturn
   *
   * Requires returnId, orderId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> deleteTrackingCodeOrderReturn(TrackingCodeOrderReturn ent, ) =>
      client.invoke('deleteTrackingCodeOrderReturn', ent, {  });

  /**
   * Update a TrackingCodeType record - TrackingCodeType
   *
   * Requires trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> deleteTrackingCodeType(TrackingCodeType ent, ) =>
      client.invoke('deleteTrackingCodeType', ent, {  });

  /**
   *  - WebSiteContactList
   *
   * Requires webSiteId, contactListId, fromDate
   * Returns 
   */
  Future<OfResult> deleteWebSiteContactList(WebSiteContactList ent, ) =>
      client.invoke('deleteWebSiteContactList', ent, {  });

  /**
   * Expire PriceRule to MarketingCampaign - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> expireMarketingCampaignPrice(MarketingCampaignPrice ent, ) =>
      client.invoke('expireMarketingCampaignPrice', ent, {  });

  /**
   * Expire Promo from MarketingCampaign - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> expireMarketingCampaignPromo(MarketingCampaignPromo ent, ) =>
      client.invoke('expireMarketingCampaignPromo', ent, {  });

  /**
   * Expire Role from Campaign - MarketingCampaignRole
   *
   * Requires marketingCampaignId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireMarketingCampaignRole(MarketingCampaignRole ent, ) =>
      client.invoke('expireMarketingCampaignRole', ent, {  });

  /**
   *  - 
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> exportVCard({@required String partyId}) =>
      client.invoke('exportVCard', null, { 'partyId': partyId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> marketingPermissionService({String primaryPermission, String altPermission, String mainAction, String resourceDescription}) =>
      client.invoke('marketingPermissionService', null, { 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'mainAction': mainAction, 'resourceDescription': resourceDescription });

  /**
   * This service merges the contact details of two parties, partyId merges into partyIdTo - 
   *
   * Requires partyIdTo, partyId
   * Returns partyId[String]
   */
  Future<OfResult> mergeContacts({String addrContactMechIdTo, String phoneContactMechIdTo, String emailContactMechIdTo, String addrContactMechId, String phoneContactMechId, String emailContactMechId, @required String partyIdTo, @required String partyId, String useAddress2, String useContactNum2, String useEmail2}) =>
      client.invoke('mergeContacts', null, { 'addrContactMechIdTo': addrContactMechIdTo, 'phoneContactMechIdTo': phoneContactMechIdTo, 'emailContactMechIdTo': emailContactMechIdTo, 'addrContactMechId': addrContactMechId, 'phoneContactMechId': phoneContactMechId, 'emailContactMechId': emailContactMechId, 'partyIdTo': partyIdTo, 'partyId': partyId, 'useAddress2': useAddress2, 'useContactNum2': useContactNum2, 'useEmail2': useEmail2 });

  /**
   * Uses the communication event information to locate the contact list party information and removes the contact from the list - 
   *
   * Requires communicationEventId
   * Returns contactListId[String]
   */
  Future<OfResult> optOutOfListFromCommEvent({@required String communicationEventId}) =>
      client.invoke('optOutOfListFromCommEvent', null, { 'communicationEventId': communicationEventId });

  /**
   * Remove a ContactList record - ContactList
   *
   * Requires contactListId
   * Returns 
   */
  Future<OfResult> removeContactList(ContactList ent, ) =>
      client.invoke('removeContactList', ent, {  });

  /**
   *  - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> removePriceRuleFromMarketingCampaign(MarketingCampaignPrice ent, ) =>
      client.invoke('removePriceRuleFromMarketingCampaign', ent, {  });

  /**
   *  - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> removePromoFromMarketingCampaign(MarketingCampaignPromo ent, ) =>
      client.invoke('removePromoFromMarketingCampaign', ent, {  });

  /**
   *  - 
   *
   * Requires preferredContactMechId
   * Returns 
   */
  Future<OfResult> sendContactListPartySubscribeEmail({String productStoreId, String partyId, String contactListId, @required String preferredContactMechId, DateTime fromDate, String statusId, String baseLocation}) =>
      client.invoke('sendContactListPartySubscribeEmail', null, { 'productStoreId': productStoreId, 'partyId': partyId, 'contactListId': contactListId, 'preferredContactMechId': preferredContactMechId, 'fromDate': fromDate, 'statusId': statusId, 'baseLocation': baseLocation });

  /**
   *  - 
   *
   * Requires preferredContactMechId
   * Returns 
   */
  Future<OfResult> sendContactListPartyUnSubscribeEmail({String productStoreId, String partyId, String contactListId, @required String preferredContactMechId, DateTime fromDate, String statusId}) =>
      client.invoke('sendContactListPartyUnSubscribeEmail', null, { 'productStoreId': productStoreId, 'partyId': partyId, 'contactListId': contactListId, 'preferredContactMechId': preferredContactMechId, 'fromDate': fromDate, 'statusId': statusId });

  /**
   *  - 
   *
   * Requires preferredContactMechId
   * Returns 
   */
  Future<OfResult> sendContactListPartyUnSubscribeVerifyEmail({String productStoreId, String partyId, String contactListId, @required String preferredContactMechId, DateTime fromDate, String statusId, String baseLocation}) =>
      client.invoke('sendContactListPartyUnSubscribeVerifyEmail', null, { 'productStoreId': productStoreId, 'partyId': partyId, 'contactListId': contactListId, 'preferredContactMechId': preferredContactMechId, 'fromDate': fromDate, 'statusId': statusId, 'baseLocation': baseLocation });

  /**
   * Send ContactListParty Verify Email - 
   *
   * Requires contactListId, partyId, fromDate
   * Returns 
   */
  Future<OfResult> sendContactListPartyVerifyEmail({@required String contactListId, @required String partyId, @required DateTime fromDate, String baseLocation}) =>
      client.invoke('sendContactListPartyVerifyEmail', null, { 'contactListId': contactListId, 'partyId': partyId, 'fromDate': fromDate, 'baseLocation': baseLocation });

  /**
   * Signs an input email up for a ContactList with _NA_ party using the system userLogin.
            The intent is for anonymous sign ups to email lists.  Also validates email format. - 
   *
   * Requires contactListId, email
   * Returns 
   */
  Future<OfResult> signUpForContactList({@required String contactListId, @required String email, String partyId, String baseLocation}) =>
      client.invoke('signUpForContactList', null, { 'contactListId': contactListId, 'email': email, 'partyId': partyId, 'baseLocation': baseLocation });

  /**
   * Unsubscribe an input email for a ContactList with _NA_ party using the system userLogin.
            The intent is for anonymous unsubscribe to email lists.  Also validates email format. - 
   *
   * Requires contactListId, email
   * Returns 
   */
  Future<OfResult> unsubscribeContactListParty({@required String contactListId, @required String email, String partyId, String baseLocation}) =>
      client.invoke('unsubscribeContactListParty', null, { 'contactListId': contactListId, 'email': email, 'partyId': partyId, 'baseLocation': baseLocation });

  /**
   * Find email by contactMechId then call unsubscribeContactListParty service. - 
   *
   * Requires contactListId, preferredContactMechId
   * Returns 
   */
  Future<OfResult> unsubscribeContactListPartyContachMech({@required String contactListId, @required String preferredContactMechId, String partyId, String baseLocation}) =>
      client.invoke('unsubscribeContactListPartyContachMech', null, { 'contactListId': contactListId, 'preferredContactMechId': preferredContactMechId, 'partyId': partyId, 'baseLocation': baseLocation });

  /**
   *  - 
   *
   * Requires communicationEventId, statusId
   * Returns 
   */
  Future<OfResult> updateCommStatusFromCommEvent({@required String communicationEventId, @required String statusId}) =>
      client.invoke('updateCommStatusFromCommEvent', null, { 'communicationEventId': communicationEventId, 'statusId': statusId });

  /**
   * Update a ContactList record - ContactList
   *
   * Requires contactListId
   * Returns 
   */
  Future<OfResult> updateContactList(ContactList ent, ) =>
      client.invoke('updateContactList', ent, {  });

  /**
   *  - ContactListCommStatus
   *
   * Requires contactListId, communicationEventId, contactMechId, statusId
   * Returns 
   */
  Future<OfResult> updateContactListCommStatus(ContactListCommStatus ent, ) =>
      client.invoke('updateContactListCommStatus', ent, {  });

  /**
   * Update Party to ContactList Join - ContactListParty
   *
   * Requires contactListId, partyId
   * Returns contactListId[String], productStoreId[String]
   */
  Future<OfResult> updateContactListParty(ContactListParty ent, {String productStoreId, String optInVerifyCode, String baseLocation}) =>
      client.invoke('updateContactListParty', ent, { 'productStoreId': productStoreId, 'optInVerifyCode': optInVerifyCode, 'baseLocation': baseLocation });

  /**
   * Update Party to ContactList Join - ContactListParty
   *
   * Requires contactListId
   * Returns productStoreId[String]
   */
  Future<OfResult> updateContactListPartyNoUserLogin(ContactListParty ent, {String webSiteId, String productStoreId, String optInVerifyCode, String email, String baseLocation}) =>
      client.invoke('updateContactListPartyNoUserLogin', ent, { 'webSiteId': webSiteId, 'productStoreId': productStoreId, 'optInVerifyCode': optInVerifyCode, 'email': email, 'baseLocation': baseLocation });

  /**
   * Update a MarketingCampaign record - MarketingCampaign
   *
   * Requires marketingCampaignId
   * Returns 
   */
  Future<OfResult> updateMarketingCampaign(MarketingCampaign ent, ) =>
      client.invoke('updateMarketingCampaign', ent, {  });

  /**
   * Update PriceRule to MarketingCampaign - MarketingCampaignPrice
   *
   * Requires marketingCampaignId, productPriceRuleId, fromDate
   * Returns 
   */
  Future<OfResult> updateMarketingCampaignPrice(MarketingCampaignPrice ent, ) =>
      client.invoke('updateMarketingCampaignPrice', ent, {  });

  /**
   * Update Promo to MarketingCampaign - MarketingCampaignPromo
   *
   * Requires marketingCampaignId, productPromoId, fromDate
   * Returns 
   */
  Future<OfResult> updateMarketingCampaignPromo(MarketingCampaignPromo ent, ) =>
      client.invoke('updateMarketingCampaignPromo', ent, {  });

  /**
   * Update Role to Campaign - MarketingCampaignRole
   *
   * Requires marketingCampaignId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateMarketingCampaignRole(MarketingCampaignRole ent, ) =>
      client.invoke('updateMarketingCampaignRole', ent, {  });

  /**
   * Update ContactList Party Contact Mech - 
   *
   * Requires contactMechId, oldContactMechId
   * Returns 
   */
  Future<OfResult> updatePartyEmailContactListParty({@required String contactMechId, @required String oldContactMechId}) =>
      client.invoke('updatePartyEmailContactListParty', null, { 'contactMechId': contactMechId, 'oldContactMechId': oldContactMechId });

  /**
   * Update a SegmentGroup - SegmentGroup
   *
   * Requires segmentGroupId
   * Returns 
   */
  Future<OfResult> updateSegmentGroup(SegmentGroup ent, ) =>
      client.invoke('updateSegmentGroup', ent, {  });

  /**
   * Update a SegmentGroupClassification - SegmentGroupClassification
   *
   * Requires segmentGroupId, partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> updateSegmentGroupClassification(SegmentGroupClassification ent, ) =>
      client.invoke('updateSegmentGroupClassification', ent, {  });

  /**
   * Update a SegmentGroupGeo - SegmentGroupGeo
   *
   * Requires segmentGroupId, geoId
   * Returns 
   */
  Future<OfResult> updateSegmentGroupGeo(SegmentGroupGeo ent, ) =>
      client.invoke('updateSegmentGroupGeo', ent, {  });

  /**
   * Update a SegmentGroupRole - SegmentGroupRole
   *
   * Requires segmentGroupId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> updateSegmentGroupRole(SegmentGroupRole ent, ) =>
      client.invoke('updateSegmentGroupRole', ent, {  });

  /**
   * Update SegmentGroupType - SegmentGroupType
   *
   * Requires segmentGroupTypeId
   * Returns 
   */
  Future<OfResult> updateSegmentGroupType(SegmentGroupType ent, ) =>
      client.invoke('updateSegmentGroupType', ent, {  });

  /**
   * Update a TrackingCode record - TrackingCode
   *
   * Requires trackingCodeId
   * Returns 
   */
  Future<OfResult> updateTrackingCode(TrackingCode ent, ) =>
      client.invoke('updateTrackingCode', ent, {  });

  /**
   * Update a TrackingCode record - TrackingCodeOrder
   *
   * Requires orderId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> updateTrackingCodeOrder(TrackingCodeOrder ent, ) =>
      client.invoke('updateTrackingCodeOrder', ent, {  });

  /**
   * Update a TrackingCode record - TrackingCodeOrderReturn
   *
   * Requires returnId, orderId, trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> updateTrackingCodeOrderReturn(TrackingCodeOrderReturn ent, ) =>
      client.invoke('updateTrackingCodeOrderReturn', ent, {  });

  /**
   * Update a TrackingCodeType record - TrackingCodeType
   *
   * Requires trackingCodeTypeId
   * Returns 
   */
  Future<OfResult> updateTrackingCodeType(TrackingCodeType ent, ) =>
      client.invoke('updateTrackingCodeType', ent, {  });

  /**
   *  - WebSiteContactList
   *
   * Requires webSiteId, contactListId, fromDate
   * Returns 
   */
  Future<OfResult> updateWebSiteContactList(WebSiteContactList ent, ) =>
      client.invoke('updateWebSiteContactList', ent, {  });

}