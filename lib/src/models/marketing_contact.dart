import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ContactList, Contact List
class ContactList extends EntityBase {

  /// this entity has only one pk
  final String verifyEmailSubject;
  final String comments;
  final String contactListName;
  final String marketingCampaignId;
  final String optOutScreen;
  final String description;
  final String contactMechTypeId;
  final String contactListTypeId;
  final String verifyEmailFrom;
  final String ownerPartyId;
  final String lastModifiedByUserLogin;
  final String singleUse;
  final String contactListId; // pk
  final String isPublic;
  final String createdByUserLogin;
  final String verifyEmailScreen;
  final String verifyEmailWebSiteId;
  ContactList({entityId,
    this.verifyEmailSubject, this.comments, this.contactListName, this.marketingCampaignId, this.optOutScreen, this.description, this.contactMechTypeId, this.contactListTypeId, this.verifyEmailFrom, this.ownerPartyId, this.lastModifiedByUserLogin, this.singleUse, @required this.contactListId, this.isPublic, this.createdByUserLogin, this.verifyEmailScreen, this.verifyEmailWebSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactList { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'verifyEmailSubject':verifyEmailSubject, 'comments':comments, 'contactListName':contactListName, 'marketingCampaignId':marketingCampaignId, 'optOutScreen':optOutScreen, 'description':description, 'contactMechTypeId':contactMechTypeId, 'contactListTypeId':contactListTypeId, 'verifyEmailFrom':verifyEmailFrom, 'ownerPartyId':ownerPartyId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'singleUse':singleUse, 'contactListId':contactListId, 'isPublic':isPublic, 'createdByUserLogin':createdByUserLogin, 'verifyEmailScreen':verifyEmailScreen, 'verifyEmailWebSiteId':verifyEmailWebSiteId};
  }

}

/// Entity ContactListCommStatus, Contact List
class ContactListCommStatus extends EntityBase {

  final String statusId;
  final String contactListId; // pk
  final String communicationEventId; // pk
  final String messageId;
  final String partyId;
  final String contactMechId; // pk
  final String changeByUserLoginId;
  ContactListCommStatus({entityId,
    this.statusId, @required this.contactListId, @required this.communicationEventId, this.messageId, this.partyId, @required this.contactMechId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListCommStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusId':statusId, 'contactListId':contactListId, 'communicationEventId':communicationEventId, 'messageId':messageId, 'partyId':partyId, 'contactMechId':contactMechId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity ContactListParty, Contact List Party
class ContactListParty extends EntityBase {

  final DateTime fromDate; // pk
  final String statusId;
  final String contactListId; // pk
  final String preferredContactMechId;
  final String partyId; // pk
  final DateTime thruDate;
  ContactListParty({entityId,
    @required this.fromDate, this.statusId, @required this.contactListId, this.preferredContactMechId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'statusId':statusId, 'contactListId':contactListId, 'preferredContactMechId':preferredContactMechId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ContactListPartyAndStatus, ContactListPartyAndStatus
class ContactListPartyAndStatus extends EntityBase {

  final DateTime fromDate; // pk
  final DateTime statusDate; // pk
  final String optInVerifyCode;
  final String statusId;
  final String contactListId; // pk
  final String statusTypeId;
  final String setByUserLoginId;
  final String description;
  final String partyId; // pk
  final String sequenceId;
  final String statusCode;
  ContactListPartyAndStatus({entityId,
    @required this.fromDate, @required this.statusDate, this.optInVerifyCode, this.statusId, @required this.contactListId, this.statusTypeId, this.setByUserLoginId, this.description, @required this.partyId, this.sequenceId, this.statusCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListPartyAndStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'statusDate':statusDate, 'optInVerifyCode':optInVerifyCode, 'statusId':statusId, 'contactListId':contactListId, 'statusTypeId':statusTypeId, 'setByUserLoginId':setByUserLoginId, 'description':description, 'partyId':partyId, 'sequenceId':sequenceId, 'statusCode':statusCode};
  }

}

/// Entity ContactListPartyStatus, Contact List Party Status
class ContactListPartyStatus extends EntityBase {

  final DateTime fromDate; // pk
  final DateTime statusDate; // pk
  final String optInVerifyCode;
  final String statusId;
  final String contactListId; // pk
  final String setByUserLoginId;
  final String partyId; // pk
  ContactListPartyStatus({entityId,
    @required this.fromDate, @required this.statusDate, this.optInVerifyCode, this.statusId, @required this.contactListId, this.setByUserLoginId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListPartyStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'statusDate':statusDate, 'optInVerifyCode':optInVerifyCode, 'statusId':statusId, 'contactListId':contactListId, 'setByUserLoginId':setByUserLoginId, 'partyId':partyId};
  }

}

/// Entity ContactListType, Contact List Type
class ContactListType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String contactListTypeId; // pk
  ContactListType({entityId,
    this.description, @required this.contactListTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContactListType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'contactListTypeId':contactListTypeId};
  }

}

/// Entity WebSiteContactList, Web Site Contact List
class WebSiteContactList extends EntityBase {

  final DateTime fromDate; // pk
  final String contactListId; // pk
  final String webSiteId; // pk
  final DateTime thruDate;
  WebSiteContactList({entityId,
    @required this.fromDate, @required this.contactListId, @required this.webSiteId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSiteContactList { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'contactListId':contactListId, 'webSiteId':webSiteId, 'thruDate':thruDate};
  }

}