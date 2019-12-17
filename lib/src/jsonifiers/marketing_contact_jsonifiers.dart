import 'package:sagas_meta/src/models/marketing_contact.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingContactJsonifier{
  static ContactList extractContactList(dynamic json) {
    return ContactList(
        entityId: create_id_from('ContactList', ['contactListId'], json),
        verifyEmailSubject: json['verifyEmailSubject'] as String,
        comments: json['comments'] as String,
        contactListName: json['contactListName'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        optOutScreen: json['optOutScreen'] as String,
        description: json['description'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        contactListTypeId: json['contactListTypeId'] as String,
        verifyEmailFrom: json['verifyEmailFrom'] as String,
        ownerPartyId: json['ownerPartyId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        singleUse: json['singleUse'] as String,
        contactListId: json['contactListId'] as String,
        isPublic: json['isPublic'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        verifyEmailScreen: json['verifyEmailScreen'] as String,
        verifyEmailWebSiteId: json['verifyEmailWebSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactList overridesContactList(Map<String, dynamic> map) {
    return ContactList(
        entityId: create_id_from('ContactList', ['contactListId'], map),
        verifyEmailSubject: map['verifyEmailSubject'],
        comments: map['comments'],
        contactListName: map['contactListName'],
        marketingCampaignId: map['marketingCampaignId'],
        optOutScreen: map['optOutScreen'],
        description: map['description'],
        contactMechTypeId: map['contactMechTypeId'],
        contactListTypeId: map['contactListTypeId'],
        verifyEmailFrom: map['verifyEmailFrom'],
        ownerPartyId: map['ownerPartyId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        singleUse: map['singleUse'],
        contactListId: map['contactListId'],
        isPublic: map['isPublic'],
        createdByUserLogin: map['createdByUserLogin'],
        verifyEmailScreen: map['verifyEmailScreen'],
        verifyEmailWebSiteId: map['verifyEmailWebSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactListCommStatus extractContactListCommStatus(dynamic json) {
    return ContactListCommStatus(
        entityId: create_id_from('ContactListCommStatus', ['contactListId', 'communicationEventId', 'contactMechId'], json),
        statusId: json['statusId'] as String,
        contactListId: json['contactListId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        messageId: json['messageId'] as String,
        partyId: json['partyId'] as String,
        contactMechId: json['contactMechId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListCommStatus overridesContactListCommStatus(Map<String, dynamic> map) {
    return ContactListCommStatus(
        entityId: create_id_from('ContactListCommStatus', ['contactListId', 'communicationEventId', 'contactMechId'], map),
        statusId: map['statusId'],
        contactListId: map['contactListId'],
        communicationEventId: map['communicationEventId'],
        messageId: map['messageId'],
        partyId: map['partyId'],
        contactMechId: map['contactMechId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactListParty extractContactListParty(dynamic json) {
    return ContactListParty(
        entityId: create_id_from('ContactListParty', ['contactListId', 'partyId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        statusId: json['statusId'] as String,
        contactListId: json['contactListId'] as String,
        preferredContactMechId: json['preferredContactMechId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListParty overridesContactListParty(Map<String, dynamic> map) {
    return ContactListParty(
        entityId: create_id_from('ContactListParty', ['contactListId', 'partyId', 'fromDate'], map),
        fromDate: map['fromDate'],
        statusId: map['statusId'],
        contactListId: map['contactListId'],
        preferredContactMechId: map['preferredContactMechId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactListPartyAndStatus extractContactListPartyAndStatus(dynamic json) {
    return ContactListPartyAndStatus(
        entityId: create_id_from('ContactListPartyAndStatus', ['fromDate', 'statusDate', 'contactListId', 'partyId'], json),
        fromDate: check_dt(json['fromDate']),
        statusDate: check_dt(json['statusDate']),
        optInVerifyCode: json['optInVerifyCode'] as String,
        statusId: json['statusId'] as String,
        contactListId: json['contactListId'] as String,
        statusTypeId: json['statusTypeId'] as String,
        setByUserLoginId: json['setByUserLoginId'] as String,
        description: json['description'] as String,
        partyId: json['partyId'] as String,
        sequenceId: json['sequenceId'] as String,
        statusCode: json['statusCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListPartyAndStatus overridesContactListPartyAndStatus(Map<String, dynamic> map) {
    return ContactListPartyAndStatus(
        entityId: create_id_from('ContactListPartyAndStatus', ['fromDate', 'statusDate', 'contactListId', 'partyId'], map),
        fromDate: map['fromDate'],
        statusDate: map['statusDate'],
        optInVerifyCode: map['optInVerifyCode'],
        statusId: map['statusId'],
        contactListId: map['contactListId'],
        statusTypeId: map['statusTypeId'],
        setByUserLoginId: map['setByUserLoginId'],
        description: map['description'],
        partyId: map['partyId'],
        sequenceId: map['sequenceId'],
        statusCode: map['statusCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactListPartyStatus extractContactListPartyStatus(dynamic json) {
    return ContactListPartyStatus(
        entityId: create_id_from('ContactListPartyStatus', ['contactListId', 'partyId', 'fromDate', 'statusDate'], json),
        fromDate: check_dt(json['fromDate']),
        statusDate: check_dt(json['statusDate']),
        optInVerifyCode: json['optInVerifyCode'] as String,
        statusId: json['statusId'] as String,
        contactListId: json['contactListId'] as String,
        setByUserLoginId: json['setByUserLoginId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListPartyStatus overridesContactListPartyStatus(Map<String, dynamic> map) {
    return ContactListPartyStatus(
        entityId: create_id_from('ContactListPartyStatus', ['contactListId', 'partyId', 'fromDate', 'statusDate'], map),
        fromDate: map['fromDate'],
        statusDate: map['statusDate'],
        optInVerifyCode: map['optInVerifyCode'],
        statusId: map['statusId'],
        contactListId: map['contactListId'],
        setByUserLoginId: map['setByUserLoginId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContactListType extractContactListType(dynamic json) {
    return ContactListType(
        entityId: create_id_from('ContactListType', ['contactListTypeId'], json),
        description: json['description'] as String,
        contactListTypeId: json['contactListTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContactListType overridesContactListType(Map<String, dynamic> map) {
    return ContactListType(
        entityId: create_id_from('ContactListType', ['contactListTypeId'], map),
        description: map['description'],
        contactListTypeId: map['contactListTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSiteContactList extractWebSiteContactList(dynamic json) {
    return WebSiteContactList(
        entityId: create_id_from('WebSiteContactList', ['webSiteId', 'contactListId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        contactListId: json['contactListId'] as String,
        webSiteId: json['webSiteId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSiteContactList overridesWebSiteContactList(Map<String, dynamic> map) {
    return WebSiteContactList(
        entityId: create_id_from('WebSiteContactList', ['webSiteId', 'contactListId', 'fromDate'], map),
        fromDate: map['fromDate'],
        contactListId: map['contactListId'],
        webSiteId: map['webSiteId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}