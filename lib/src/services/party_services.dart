import 'package:sagas_meta/src/models/party_need.dart';
import 'package:sagas_meta/src/models/order_request.dart';
import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:sagas_meta/src/models/party_agreement.dart';
import 'package:sagas_meta/src/models/party_contact.dart';
import 'package:sagas_meta/src/models/party_party.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServices{
  final SrvClient client;
  PartyServices(this.client);

  /**
   * 
            Performs accept and decline PartyInvitation security check. The userLogin partyId must equal the
            partyIdTo in PartyInvitation OR partyId fetched using emailAdress in PartyInvitation.
            The user with PARTYMGR_UPDATE permission can also perform this function.
         - 
   *
   * Requires partyInvitationId
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> accAndDecPartyInvitationPermissionCheck({@required String partyInvitationId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('accAndDecPartyInvitationPermissionCheck', null, { 'partyInvitationId': partyInvitationId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires partyInvitationId, partyId
   * Returns 
   */
  Future<OfResult> acceptPartyInvitation({@required String partyInvitationId, @required String partyId}) =>
      client.invoke('acceptPartyInvitation', null, { 'partyInvitationId': partyInvitationId, 'partyId': partyId });

  /**
   *  - 
   *
   * Requires partyInvitationId
   * Returns 
   */
  Future<OfResult> cancelPartyInvitation({@required String partyInvitationId}) =>
      client.invoke('cancelPartyInvitation', null, { 'partyInvitationId': partyInvitationId });

  /**
   * 
            Performs cancel PartyInvitation security check. The userLogin partyId must equal the
            partyId/partyIdFrom in PartyInvitation OR partyId fetched using emailAdress in PartyInvitation.
            The user with PARTYMGR_UPDATE permission can also perform this function.
         - 
   *
   * Requires partyInvitationId
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> cancelPartyInvitationPermissionCheck({@required String partyInvitationId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('cancelPartyInvitationPermissionCheck', null, { 'partyInvitationId': partyInvitationId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Delete an AddressMatchMap record - AddressMatchMap
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> clearAddressMatchMap(AddressMatchMap ent, ) =>
      client.invoke('clearAddressMatchMap', ent, {  });

  /**
   * Copies all contact mechs from the partyIdFrom to the partyIdTo. Does not delete or overwrite any contact mechs. - 
   *
   * Requires partyIdFrom, partyIdTo
   * Returns 
   */
  Future<OfResult> copyPartyContactMechs({@required String partyIdFrom, @required String partyIdTo}) =>
      client.invoke('copyPartyContactMechs', null, { 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo });

  /**
   * Create an AddressMatchMap record - AddressMatchMap
   *
   * Requires mapKey, mapValue
   * Returns 
   */
  Future<OfResult> createAddressMatchMap(AddressMatchMap ent, ) =>
      client.invoke('createAddressMatchMap', ent, {  });

  /**
   * Create an Affiliate - 
   *
   * Requires partyId, affiliateName
   * Returns partyId[String]
   */
  Future<OfResult> createAffiliate({@required String partyId, @required String affiliateName, String affiliateDescription, String yearEstablished, String siteType, String sitePageViews, String siteVisitors}) =>
      client.invoke('createAffiliate', null, { 'partyId': partyId, 'affiliateName': affiliateName, 'affiliateDescription': affiliateDescription, 'yearEstablished': yearEstablished, 'siteType': siteType, 'sitePageViews': sitePageViews, 'siteVisitors': siteVisitors });

  /**
   * Create a AgreementAttribute entry - AgreementAttribute
   *
   * Requires agreementId, attrName
   * Returns 
   */
  Future<OfResult> createAgreementAttribute(AgreementAttribute ent, ) =>
      client.invoke('createAgreementAttribute', ent, {  });

  /**
   * Create a AgreementItemTypeAttr entry - AgreementItemTypeAttr
   *
   * Requires agreementItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> createAgreementItemTypeAttr(AgreementItemTypeAttr ent, ) =>
      client.invoke('createAgreementItemTypeAttr', ent, {  });

  /**
   * 
                Creates a CommunicationEvent record based on information before running a sendMail service (to be used via ECA)
         - 
   *
   * Requires subject, sendFrom, sendTo
   * Returns communicationEventId[String]
   */
  Future<OfResult> createCommEventFromEmail({String partyId, @required String subject, @required String sendFrom, @required String sendTo, String contentType, String statusId, String orderId, String returnId}) =>
      client.invoke('createCommEventFromEmail', null, { 'partyId': partyId, 'subject': subject, 'sendFrom': sendFrom, 'sendTo': sendTo, 'contentType': contentType, 'statusId': statusId, 'orderId': orderId, 'returnId': returnId });

  /**
   * Creates a CommunicationEvent record based on information before
            running a sendContentToFtp service (to be used via ECA)
         - 
   *
   * Requires contentId, contactMechId
   * Returns communicationEventId[String]
   */
  Future<OfResult> createCommEventFromFtpTransfer({String partyId, @required String contentId, @required String contactMechId}) =>
      client.invoke('createCommEventFromFtpTransfer', null, { 'partyId': partyId, 'contentId': contentId, 'contactMechId': contactMechId });

  /**
   * Creates a WorkEffort entity and CommunicationEventWorkEff - 
   *
   * Requires workEffortTypeId, currentStatusId, workEffortName, communicationEventId, currentStatusId, workEffortName, workEffortTypeId
   * Returns workEffortId[String], workEffortId[String], communicationEventId[String], workEffortId[String]
   */
  Future<OfResult> createCommEventWorkEffort({String workEffortId, @required String workEffortTypeId, @required String currentStatusId, DateTime lastStatusUpdate, String workEffortPurposeTypeId, String workEffortParentId, String scopeEnumId, int priority, int percentComplete, @required String workEffortName, String showAsEnumId, String sendNotificationEmail, String description, String locationDesc, DateTime estimatedStartDate, DateTime estimatedCompletionDate, DateTime actualStartDate, DateTime actualCompletionDate, double estimatedMilliSeconds, double estimatedSetupMillis, String estimateCalcMethod, double actualMilliSeconds, double actualSetupMillis, double totalMilliSecondsAllowed, Decimal totalMoneyAllowed, String moneyUomId, String specialTerms, int timeTransparency, String universalId, String sourceReferenceId, String fixedAssetId, String facilityId, String infoUrl, String recurrenceInfoId, String tempExprId, String runtimeDataId, String noteId, String serviceLoaderName, Decimal quantityToProduce, Decimal quantityProduced, Decimal quantityRejected, Decimal reservPersons, Decimal reserv2ndPPPerc, Decimal reservNthPPPerc, String accommodationMapId, String accommodationSpotId, int revisionNumber, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String communicationEventId}) =>
      client.invoke('createCommEventWorkEffort', null, { 'workEffortId': workEffortId, 'workEffortTypeId': workEffortTypeId, 'currentStatusId': currentStatusId, 'lastStatusUpdate': lastStatusUpdate, 'workEffortPurposeTypeId': workEffortPurposeTypeId, 'workEffortParentId': workEffortParentId, 'scopeEnumId': scopeEnumId, 'priority': priority, 'percentComplete': percentComplete, 'workEffortName': workEffortName, 'showAsEnumId': showAsEnumId, 'sendNotificationEmail': sendNotificationEmail, 'description': description, 'locationDesc': locationDesc, 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate, 'actualStartDate': actualStartDate, 'actualCompletionDate': actualCompletionDate, 'estimatedMilliSeconds': estimatedMilliSeconds, 'estimatedSetupMillis': estimatedSetupMillis, 'estimateCalcMethod': estimateCalcMethod, 'actualMilliSeconds': actualMilliSeconds, 'actualSetupMillis': actualSetupMillis, 'totalMilliSecondsAllowed': totalMilliSecondsAllowed, 'totalMoneyAllowed': totalMoneyAllowed, 'moneyUomId': moneyUomId, 'specialTerms': specialTerms, 'timeTransparency': timeTransparency, 'universalId': universalId, 'sourceReferenceId': sourceReferenceId, 'fixedAssetId': fixedAssetId, 'facilityId': facilityId, 'infoUrl': infoUrl, 'recurrenceInfoId': recurrenceInfoId, 'tempExprId': tempExprId, 'runtimeDataId': runtimeDataId, 'noteId': noteId, 'serviceLoaderName': serviceLoaderName, 'quantityToProduce': quantityToProduce, 'quantityProduced': quantityProduced, 'quantityRejected': quantityRejected, 'reservPersons': reservPersons, 'reserv2ndPPPerc': reserv2ndPPPerc, 'reservNthPPPerc': reservNthPPPerc, 'accommodationMapId': accommodationMapId, 'accommodationSpotId': accommodationSpotId, 'revisionNumber': revisionNumber, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'communicationEventId': communicationEventId });

  /**
   * Create a Communication Event with permission check - 
   *
   * Requires 
   * Returns communicationEventId[String]
   */
  Future<OfResult> createCommunicationEvent({String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, String partyIdTo, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String communicationEventId, String productId, String orderId, String returnId, String custRequestId, String action}) =>
      client.invoke('createCommunicationEvent', null, { 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'communicationEventId': communicationEventId, 'productId': productId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'action': action });

  /**
   * Create a Communication Event with or w/o permission check - 
   *
   * Requires 
   * Returns communicationEventId[String]
   */
  Future<OfResult> createCommunicationEventInterface({String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, String partyIdTo, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String communicationEventId, String productId, String orderId, String returnId, String custRequestId, String action}) =>
      client.invoke('createCommunicationEventInterface', null, { 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'communicationEventId': communicationEventId, 'productId': productId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'action': action });

  /**
   * Create a CommunicationEventPrpTyp - CommunicationEventPrpTyp
   *
   * Requires 
   * Returns communicationEventPrpTypId[String]
   */
  Future<OfResult> createCommunicationEventPrpTyp(CommunicationEventPrpTyp ent, ) =>
      client.invoke('createCommunicationEventPrpTyp', ent, {  });

  /**
   * Create a Communication Event Purpose - CommunicationEventPurpose
   *
   * Requires communicationEventPrpTypId, communicationEventId
   * Returns 
   */
  Future<OfResult> createCommunicationEventPurpose(CommunicationEventPurpose ent, ) =>
      client.invoke('createCommunicationEventPurpose', ent, {  });

  /**
   * Create a Communication Event Role with permission check - 
   *
   * Requires communicationEventId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createCommunicationEventRole({@required String communicationEventId, @required String partyId, @required String roleTypeId, String contactMechId, String statusId}) =>
      client.invoke('createCommunicationEventRole', null, { 'communicationEventId': communicationEventId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'contactMechId': contactMechId, 'statusId': statusId });

  /**
   * Create a Communication Event Role with or w/o permission check - 
   *
   * Requires communicationEventId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createCommunicationEventRoleInterface({@required String communicationEventId, @required String partyId, @required String roleTypeId, String contactMechId, String statusId}) =>
      client.invoke('createCommunicationEventRoleInterface', null, { 'communicationEventId': communicationEventId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'contactMechId': contactMechId, 'statusId': statusId });

  /**
   * Create a Communication Event Role without permission check - 
   *
   * Requires communicationEventId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createCommunicationEventRoleWithoutPermission({@required String communicationEventId, @required String partyId, @required String roleTypeId, String contactMechId, String statusId}) =>
      client.invoke('createCommunicationEventRoleWithoutPermission', null, { 'communicationEventId': communicationEventId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'contactMechId': contactMechId, 'statusId': statusId });

  /**
   * Create a Communication Event without permission check - 
   *
   * Requires 
   * Returns communicationEventId[String]
   */
  Future<OfResult> createCommunicationEventWithoutPermission({String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, String partyIdTo, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String communicationEventId, String productId, String orderId, String returnId, String custRequestId, String action}) =>
      client.invoke('createCommunicationEventWithoutPermission', null, { 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'communicationEventId': communicationEventId, 'productId': productId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'action': action });

  /**
   * Create a ContactMech - 
   *
   * Requires contactMechTypeId
   * Returns contactMechId[String]
   */
  Future<OfResult> createContactMech({@required String contactMechTypeId, String infoString, String contactMechId}) =>
      client.invoke('createContactMech', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechId': contactMechId });

  /**
   * create a contact mech attribute record - ContactMechAttribute
   *
   * Requires contactMechId, attrName
   * Returns 
   */
  Future<OfResult> createContactMechAttribute(ContactMechAttribute ent, ) =>
      client.invoke('createContactMechAttribute', ent, {  });

  /**
   *  - ContactMechLink
   *
   * Requires contactMechIdFrom, contactMechIdTo
   * Returns 
   */
  Future<OfResult> createContactMechLink(ContactMechLink ent, ) =>
      client.invoke('createContactMechLink', ent, {  });

  /**
   * Create a CustRequestCommEvent - CustRequestCommEvent
   *
   * Requires custRequestId, communicationEventId
   * Returns 
   */
  Future<OfResult> createCustRequestCommEvent(CustRequestCommEvent ent, ) =>
      client.invoke('createCustRequestCommEvent', ent, {  });

  /**
   * Create an Email Address - 
   *
   * Requires emailAddress
   * Returns contactMechId[String]
   */
  Future<OfResult> createEmailAddress({String contactMechTypeId, String infoString, @required String emailAddress}) =>
      client.invoke('createEmailAddress', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'emailAddress': emailAddress });

  /**
   *  - EmailAddressVerification
   *
   * Requires emailAddress
   * Returns verifyHash[String]
   */
  Future<OfResult> createEmailAddressVerification(EmailAddressVerification ent, ) =>
      client.invoke('createEmailAddressVerification', ent, {  });

  /**
   * create FtpAddress - FtpAddress
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createFtpAddress(FtpAddress ent, ) =>
      client.invoke('createFtpAddress', ent, {  });

  /**
   * Create a NeedType - NeedType
   *
   * Requires 
   * Returns needTypeId[String]
   */
  Future<OfResult> createNeedType(NeedType ent, ) =>
      client.invoke('createNeedType', ent, {  });

  /**
   * create a party attribute record - PartyAttribute
   *
   * Requires partyId, attrName
   * Returns 
   */
  Future<OfResult> createPartyAttribute(PartyAttribute ent, ) =>
      client.invoke('createPartyAttribute', ent, {  });

  /**
   * Create a PartyCarrierAccount record - PartyCarrierAccount
   *
   * Requires partyId, carrierPartyId, accountNumber, accountNumber
   * Returns 
   */
  Future<OfResult> createPartyCarrierAccount(PartyCarrierAccount ent, ) =>
      client.invoke('createPartyCarrierAccount', ent, {  });

  /**
   * create PartyClassification - PartyClassification
   *
   * Requires partyId, partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> createPartyClassification(PartyClassification ent, ) =>
      client.invoke('createPartyClassification', ent, {  });

  /**
   * create PartyClassificationGroup - PartyClassificationGroup
   *
   * Requires 
   * Returns partyClassificationGroupId[String]
   */
  Future<OfResult> createPartyClassificationGroup(PartyClassificationGroup ent, ) =>
      client.invoke('createPartyClassificationGroup', ent, {  });

  /**
   * Create a PartyContactMech - 
   *
   * Requires contactMechTypeId
   * Returns contactMechId[String]
   */
  Future<OfResult> createPartyContactMech({String contactMechTypeId, String infoString, String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String contactMechPurposeTypeId}) =>
      client.invoke('createPartyContactMech', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a Party ContactMech Purpose - 
   *
   * Requires contactMechId, contactMechPurposeTypeId
   * Returns fromDate[Timestamp]
   */
  Future<OfResult> createPartyContactMechPurpose({String partyId, @required String contactMechId, @required String contactMechPurposeTypeId, DateTime fromDate}) =>
      client.invoke('createPartyContactMechPurpose', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'fromDate': fromDate });

  /**
   * Create a PartyContent record - PartyContent
   *
   * Requires partyId, contentId, partyContentTypeId
   * Returns 
   */
  Future<OfResult> createPartyContent(PartyContent ent, ) =>
      client.invoke('createPartyContent', ent, {  });

  /**
   * Creates a relation between a Party and a DataSource using PartyDataSource. The userLogin must have PARTYMGR_SRC_CREATE permission. - PartyDataSource
   *
   * Requires partyId, dataSourceId
   * Returns 
   */
  Future<OfResult> createPartyDataSource(PartyDataSource ent, ) =>
      client.invoke('createPartyDataSource', ent, {  });

  /**
   * Create an Email Address - 
   *
   * Requires emailAddress
   * Returns contactMechId[String]
   */
  Future<OfResult> createPartyEmailAddress({String contactMechTypeId, String infoString, String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String contactMechPurposeTypeId, @required String emailAddress}) =>
      client.invoke('createPartyEmailAddress', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'emailAddress': emailAddress });

  /**
   * Create an Ftp Address associated to a party - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createPartyFtpAddress({String contactMechTypeId, String infoString, String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String hostname, int port, String username, String ftpPassword, String binaryTransfer, String filePath, String zipFile, String passiveMode, int defaultTimeout, String contactMechPurposeTypeId}) =>
      client.invoke('createPartyFtpAddress', null, { 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'hostname': hostname, 'port': port, 'username': username, 'ftpPassword': ftpPassword, 'binaryTransfer': binaryTransfer, 'filePath': filePath, 'zipFile': zipFile, 'passiveMode': passiveMode, 'defaultTimeout': defaultTimeout, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a PartyGroup - PartyGroup
   *
   * Requires groupName, groupName
   * Returns partyId[String]
   */
  Future<OfResult> createPartyGroup(PartyGroup ent, {String partyTypeId, String description, String preferredCurrencyUomId, String externalId, String statusId}) =>
      client.invoke('createPartyGroup', ent, { 'partyTypeId': partyTypeId, 'description': description, 'preferredCurrencyUomId': preferredCurrencyUomId, 'externalId': externalId, 'statusId': statusId });

  /**
   * create PartyIdentification entity - PartyIdentification
   *
   * Requires partyId, partyIdentificationTypeId
   * Returns 
   */
  Future<OfResult> createPartyIdentification(PartyIdentification ent, ) =>
      client.invoke('createPartyIdentification', ent, {  });

  /**
   * Create Party Invitation - 
   *
   * Requires 
   * Returns partyInvitationId[String], partyInvitationId[String]
   */
  Future<OfResult> createPartyInvitation({String partyIdFrom, String partyId, String toName, String emailAddress, String statusId, DateTime lastInviteDate}) =>
      client.invoke('createPartyInvitation', null, { 'partyIdFrom': partyIdFrom, 'partyId': partyId, 'toName': toName, 'emailAddress': emailAddress, 'statusId': statusId, 'lastInviteDate': lastInviteDate });

  /**
   * Create PartyInvitationGroupAssoc - 
   *
   * Requires partyInvitationId, partyIdTo
   * Returns 
   */
  Future<OfResult> createPartyInvitationGroupAssoc({@required String partyInvitationId, @required String partyIdTo}) =>
      client.invoke('createPartyInvitationGroupAssoc', null, { 'partyInvitationId': partyInvitationId, 'partyIdTo': partyIdTo });

  /**
   * Create PartyInvitationRoleAssoc - 
   *
   * Requires partyInvitationId, roleTypeId
   * Returns 
   */
  Future<OfResult> createPartyInvitationRoleAssoc({@required String partyInvitationId, @required String roleTypeId}) =>
      client.invoke('createPartyInvitationRoleAssoc', null, { 'partyInvitationId': partyInvitationId, 'roleTypeId': roleTypeId });

  /**
   * Create a note item and associate with a party. If a noteId is passed, creates an assoication to that note instead. - 
   *
   * Requires partyId
   * Returns noteId[String]
   */
  Future<OfResult> createPartyNote({@required String partyId, String noteName, String noteId, String note}) =>
      client.invoke('createPartyNote', null, { 'partyId': partyId, 'noteName': noteName, 'noteId': noteId, 'note': note });

  /**
   * Create a Postal Address - 
   *
   * Requires address1, city, postalCode, address1, city, postalCode
   * Returns contactMechId[String]
   */
  Future<OfResult> createPartyPostalAddress({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String paymentMethodId, String contactMechPurposeTypeId, String latitude, String longitude}) =>
      client.invoke('createPartyPostalAddress', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'paymentMethodId': paymentMethodId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'latitude': latitude, 'longitude': longitude });

  /**
   * 
            Create a Relationship between two Parties;
            if partyIdFrom is not specified the partyId of the current userLogin will be used;
            if roleTypeIds are not specified they will default to "_NA_".
            If a partyIdFrom is passed in, it will be used if the userLogin has PARTYMGR_REL_CREATE permission.
         - PartyRelationship
   *
   * Requires partyIdTo, partyIdTo
   * Returns 
   */
  Future<OfResult> createPartyRelationship(PartyRelationship ent, ) =>
      client.invoke('createPartyRelationship', ent, {  });

  /**
   * Create party's roles and party's relationship - 
   *
   * Requires partyIdFrom, partyIdTo
   * Returns 
   */
  Future<OfResult> createPartyRelationshipAndRole({@required String partyIdFrom, String roleTypeIdFrom, @required String partyIdTo, String roleTypeIdTo, DateTime fromDate, DateTime thruDate, String statusId, String relationshipName, String securityGroupId, String priorityTypeId, String partyRelationshipTypeId, String permissionsEnumId, String positionTitle, String comments}) =>
      client.invoke('createPartyRelationshipAndRole', null, { 'partyIdFrom': partyIdFrom, 'roleTypeIdFrom': roleTypeIdFrom, 'partyIdTo': partyIdTo, 'roleTypeIdTo': roleTypeIdTo, 'fromDate': fromDate, 'thruDate': thruDate, 'statusId': statusId, 'relationshipName': relationshipName, 'securityGroupId': securityGroupId, 'priorityTypeId': priorityTypeId, 'partyRelationshipTypeId': partyRelationshipTypeId, 'permissionsEnumId': permissionsEnumId, 'positionTitle': positionTitle, 'comments': comments });

  /**
   * create a company/contact relationship and add the related roles - 
   *
   * Requires accountPartyId, contactPartyId
   * Returns 
   */
  Future<OfResult> createPartyRelationshipContactAccount({@required String accountPartyId, @required String contactPartyId, String comments}) =>
      client.invoke('createPartyRelationshipContactAccount', null, { 'accountPartyId': accountPartyId, 'contactPartyId': contactPartyId, 'comments': comments });

  /**
   * Create a new Party Relationship type - PartyRelationshipType
   *
   * Requires partyRelationshipTypeId, partyRelationshipName, partyRelationshipName
   * Returns 
   */
  Future<OfResult> createPartyRelationshipType(PartyRelationshipType ent, ) =>
      client.invoke('createPartyRelationshipType', ent, {  });

  /**
   * Create a Party Role (add a Role to a Party). The logged in user must have PARTYMGR_CREATE or have
            permission to change the role of this partyId - PartyRole
   *
   * Requires partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createPartyRole(PartyRole ent, ) =>
      client.invoke('createPartyRole', ent, {  });

  /**
   * Create a Telecommunications Number - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createPartyTelecomNumber({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String countryCode, String areaCode, String contactNumber, String askForName, String contactMechPurposeTypeId}) =>
      client.invoke('createPartyTelecomNumber', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a Person - Person
   *
   * Requires 
   * Returns partyId[String]
   */
  Future<OfResult> createPerson(Person ent, {String preferredCurrencyUomId, String description, String externalId, String statusId}) =>
      client.invoke('createPerson', ent, { 'preferredCurrencyUomId': preferredCurrencyUomId, 'description': description, 'externalId': externalId, 'statusId': statusId });

  /**
   * Create a Person and UserLogin - 
   *
   * Requires userLoginId, currentPassword, currentPasswordVerify
   * Returns partyId[String], newUserLogin[Map]
   */
  Future<OfResult> createPersonAndUserLogin({String salutation, String firstName, String middleName, String lastName, String personalTitle, String suffix, String nickname, String firstNameLocal, String middleNameLocal, String lastNameLocal, String otherLocal, String memberId, String gender, DateTime birthDate, DateTime deceasedDate, double height, double weight, String mothersMaidenName, String maritalStatus, String socialSecurityNumber, String passportNumber, DateTime passportExpireDate, double totalYearsWorkExperience, String comments, String employmentStatusEnumId, String residenceStatusEnumId, String occupation, int yearsWithEmployer, int monthsWithEmployer, String existingCustomer, String cardId, String partyTypeId, String externalId, String preferredCurrencyUomId, String description, String statusId, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String dataSourceId, String isUnread, String partyId, @required String userLoginId, String enabled, @required String currentPassword, @required String currentPasswordVerify, String passwordHint, String requirePasswordChange, String externalAuthId, String securityQuestion, String securityAnswer}) =>
      client.invoke('createPersonAndUserLogin', null, { 'salutation': salutation, 'firstName': firstName, 'middleName': middleName, 'lastName': lastName, 'personalTitle': personalTitle, 'suffix': suffix, 'nickname': nickname, 'firstNameLocal': firstNameLocal, 'middleNameLocal': middleNameLocal, 'lastNameLocal': lastNameLocal, 'otherLocal': otherLocal, 'memberId': memberId, 'gender': gender, 'birthDate': birthDate, 'deceasedDate': deceasedDate, 'height': height, 'weight': weight, 'mothersMaidenName': mothersMaidenName, 'maritalStatus': maritalStatus, 'socialSecurityNumber': socialSecurityNumber, 'passportNumber': passportNumber, 'passportExpireDate': passportExpireDate, 'totalYearsWorkExperience': totalYearsWorkExperience, 'comments': comments, 'employmentStatusEnumId': employmentStatusEnumId, 'residenceStatusEnumId': residenceStatusEnumId, 'occupation': occupation, 'yearsWithEmployer': yearsWithEmployer, 'monthsWithEmployer': monthsWithEmployer, 'existingCustomer': existingCustomer, 'cardId': cardId, 'partyTypeId': partyTypeId, 'externalId': externalId, 'preferredCurrencyUomId': preferredCurrencyUomId, 'description': description, 'statusId': statusId, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'dataSourceId': dataSourceId, 'isUnread': isUnread, 'partyId': partyId, 'userLoginId': userLoginId, 'enabled': enabled, 'currentPassword': currentPassword, 'currentPasswordVerify': currentPasswordVerify, 'passwordHint': passwordHint, 'requirePasswordChange': requirePasswordChange, 'externalAuthId': externalAuthId, 'securityQuestion': securityQuestion, 'securityAnswer': securityAnswer });

  /**
   * Create a Postal Address - 
   *
   * Requires address1, city, postalCode, address1, city, postalCode
   * Returns contactMechId[String]
   */
  Future<OfResult> createPostalAddress({String contactMechId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId}) =>
      client.invoke('createPostalAddress', null, { 'contactMechId': contactMechId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId });

  /**
   * Create postal address, purposes and set them defaults - 
   *
   * Requires address1, city, postalCode
   * Returns contactMechId[String]
   */
  Future<OfResult> createPostalAddressAndPurposes({String setShippingPurpose, String setBillingPurpose, String productStoreId, String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String paymentMethodId, String contactMechPurposeTypeId, String latitude, String longitude}) =>
      client.invoke('createPostalAddressAndPurposes', null, { 'setShippingPurpose': setShippingPurpose, 'setBillingPurpose': setBillingPurpose, 'productStoreId': productStoreId, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'paymentMethodId': paymentMethodId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'latitude': latitude, 'longitude': longitude });

  /**
   * Create a Postal Address Boundary - PostalAddressBoundary
   *
   * Requires contactMechId, geoId
   * Returns 
   */
  Future<OfResult> createPostalAddressBoundary(PostalAddressBoundary ent, ) =>
      client.invoke('createPostalAddressBoundary', ent, {  });

  /**
   * Create a new role type - 
   *
   * Requires roleTypeId, description
   * Returns roleType[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> createRoleType({@required String roleTypeId, String parentTypeId, @required String description}) =>
      client.invoke('createRoleType', null, { 'roleTypeId': roleTypeId, 'parentTypeId': parentTypeId, 'description': description });

  /**
   * Create a RoleTypeAttr Record - RoleTypeAttr
   *
   * Requires roleTypeId, attrName
   * Returns 
   */
  Future<OfResult> createRoleTypeAttr(RoleTypeAttr ent, ) =>
      client.invoke('createRoleTypeAttr', ent, {  });

  /**
   * Create a Telecommunications Number - 
   *
   * Requires 
   * Returns contactMechId[String]
   */
  Future<OfResult> createTelecomNumber({String contactMechId, String countryCode, String areaCode, String contactNumber, String askForName}) =>
      client.invoke('createTelecomNumber', null, { 'contactMechId': contactMechId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName });

  /**
   * Create and Update email address - 
   *
   * Requires emailAddress
   * Returns emailAddress[String], contactMechId[String]
   */
  Future<OfResult> createUpdatePartyEmailAddress({String partyId, Map<String,dynamic> userLogin, String contactMechPurposeTypeId, @required String emailAddress, String contactMechId}) =>
      client.invoke('createUpdatePartyEmailAddress', null, { 'partyId': partyId, 'userLogin': userLogin, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'emailAddress': emailAddress, 'contactMechId': contactMechId });

  /**
   * Create or Update a postal address - 
   *
   * Requires address1, city, postalCode, partyId, address1, city, postalCode
   * Returns contactMechId[String]
   */
  Future<OfResult> createUpdatePartyPostalAddress({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, Map<String,dynamic> userLogin, String contactMechPurposeTypeId}) =>
      client.invoke('createUpdatePartyPostalAddress', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'userLogin': userLogin, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * 
            Create or update both parties roles and parties relationship, partyRelationshipTypeId being mandatory.
            The relationship is considered from one side or another (partyId is checked internally against partyIdFrom)
            If a type of parties relationship exists PartyIdTo or PartyIdFrom are updated.
            The history is maintained, allowing to track changes.
         - PartyRelationship
   *
   * Requires partyIdFrom, partyIdTo, roleTypeIdFrom, roleTypeIdTo, partyId
   * Returns 
   */
  Future<OfResult> createUpdatePartyRelationshipAndRoles(PartyRelationship ent, {@required String partyId}) =>
      client.invoke('createUpdatePartyRelationshipAndRoles', ent, { 'partyId': partyId });

  /**
   * Create and Update telecom number - 
   *
   * Requires partyId
   * Returns contactMechId[String]
   */
  Future<OfResult> createUpdatePartyTelecomNumber({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String countryCode, String areaCode, String contactNumber, String askForName, Map<String,dynamic> userLogin, String contactMechPurposeTypeId}) =>
      client.invoke('createUpdatePartyTelecomNumber', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'userLogin': userLogin, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create and Update a person - Person
   *
   * Requires firstName, lastName, firstName, lastName
   * Returns partyId[String]
   */
  Future<OfResult> createUpdatePerson(Person ent, {Map<String,dynamic> userLogin}) =>
      client.invoke('createUpdatePerson', ent, { 'userLogin': userLogin });

  /**
   * Create Vendor Information - Vendor
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> createVendor(Vendor ent, ) =>
      client.invoke('createVendor', ent, {  });

  /**
   *  - 
   *
   * Requires partyInvitationId
   * Returns 
   */
  Future<OfResult> declinePartyInvitation({@required String partyInvitationId}) =>
      client.invoke('declinePartyInvitation', null, { 'partyInvitationId': partyInvitationId });

  /**
   * Delete a AgreementAttribute record - AgreementAttribute
   *
   * Requires agreementId, attrName
   * Returns 
   */
  Future<OfResult> deleteAgreementAttribute(AgreementAttribute ent, ) =>
      client.invoke('deleteAgreementAttribute', ent, {  });

  /**
   * Delete a AgreementItemTypeAttr record - AgreementItemTypeAttr
   *
   * Requires agreementItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteAgreementItemTypeAttr(AgreementItemTypeAttr ent, ) =>
      client.invoke('deleteAgreementItemTypeAttr', ent, {  });

  /**
   * Delete a Communication Event, optionally delete the attached content and dataresource - 
   *
   * Requires communicationEventId
   * Returns 
   */
  Future<OfResult> deleteCommunicationEvent({@required String communicationEventId, String delContentDataResource}) =>
      client.invoke('deleteCommunicationEvent', null, { 'communicationEventId': communicationEventId, 'delContentDataResource': delContentDataResource });

  /**
   * Delete a CommunicationEventPrpTyp - CommunicationEventPrpTyp
   *
   * Requires communicationEventPrpTypId
   * Returns 
   */
  Future<OfResult> deleteCommunicationEventPrpTyp(CommunicationEventPrpTyp ent, ) =>
      client.invoke('deleteCommunicationEventPrpTyp', ent, {  });

  /**
   * Delete a Communication Event, optionally delete the attached content and dataresource
            and when this is the only communication event connected to a workeffort delete the workeffort too. - 
   *
   * Requires communicationEventId
   * Returns 
   */
  Future<OfResult> deleteCommunicationEventWorkEffort({@required String communicationEventId, String delContentDataResource}) =>
      client.invoke('deleteCommunicationEventWorkEffort', null, { 'communicationEventId': communicationEventId, 'delContentDataResource': delContentDataResource });

  /**
   *  - ContactMechLink
   *
   * Requires contactMechIdFrom, contactMechIdTo
   * Returns 
   */
  Future<OfResult> deleteContactMechLink(ContactMechLink ent, ) =>
      client.invoke('deleteContactMechLink', ent, {  });

  /**
   * Delete a CustRequestCommEvent - CustRequestCommEvent
   *
   * Requires custRequestId, communicationEventId
   * Returns 
   */
  Future<OfResult> deleteCustRequestCommEvent(CustRequestCommEvent ent, ) =>
      client.invoke('deleteCustRequestCommEvent', ent, {  });

  /**
   * Delete a NeedType - NeedType
   *
   * Requires needTypeId
   * Returns 
   */
  Future<OfResult> deleteNeedType(NeedType ent, ) =>
      client.invoke('deleteNeedType', ent, {  });

  /**
   * delete PartyClassification - PartyClassification
   *
   * Requires partyId, partyClassificationGroupId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyClassification(PartyClassification ent, ) =>
      client.invoke('deletePartyClassification', ent, {  });

  /**
   * delete PartyClassificationGroup - PartyClassificationGroup
   *
   * Requires partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> deletePartyClassificationGroup(PartyClassificationGroup ent, ) =>
      client.invoke('deletePartyClassificationGroup', ent, {  });

  /**
   * Delete a PartyContactMech - 
   *
   * Requires contactMechId
   * Returns 
   */
  Future<OfResult> deletePartyContactMech({String partyId, @required String contactMechId}) =>
      client.invoke('deletePartyContactMech', null, { 'partyId': partyId, 'contactMechId': contactMechId });

  /**
   * Delete a Party ContactMech Purpose - 
   *
   * Requires contactMechId, contactMechPurposeTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyContactMechPurpose({String partyId, @required String contactMechId, @required String contactMechPurposeTypeId, @required DateTime fromDate}) =>
      client.invoke('deletePartyContactMechPurpose', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'fromDate': fromDate });

  /**
   * Delete a Party ContactMech Purpose - 
   *
   * Requires contactMechId, contactMechPurposeTypeId
   * Returns 
   */
  Future<OfResult> deletePartyContactMechPurposeIfExists({String partyId, @required String contactMechId, @required String contactMechPurposeTypeId}) =>
      client.invoke('deletePartyContactMechPurposeIfExists', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * delete PartyClassificationGroup - PartyIdentification
   *
   * Requires partyId, partyIdentificationTypeId
   * Returns 
   */
  Future<OfResult> deletePartyIdentification(PartyIdentification ent, ) =>
      client.invoke('deletePartyIdentification', ent, {  });

  /**
   * Remove Party Invitation - 
   *
   * Requires partyInvitationId
   * Returns 
   */
  Future<OfResult> deletePartyInvitation({@required String partyInvitationId}) =>
      client.invoke('deletePartyInvitation', null, { 'partyInvitationId': partyInvitationId });

  /**
   * Remove PartyInvitationGroupAssoc - 
   *
   * Requires partyInvitationId, partyIdTo
   * Returns 
   */
  Future<OfResult> deletePartyInvitationGroupAssoc({@required String partyInvitationId, @required String partyIdTo}) =>
      client.invoke('deletePartyInvitationGroupAssoc', null, { 'partyInvitationId': partyInvitationId, 'partyIdTo': partyIdTo });

  /**
   * Remove PartyInvitationRoleAssoc - 
   *
   * Requires partyInvitationId, roleTypeId
   * Returns 
   */
  Future<OfResult> deletePartyInvitationRoleAssoc({@required String partyInvitationId, @required String roleTypeId}) =>
      client.invoke('deletePartyInvitationRoleAssoc', null, { 'partyInvitationId': partyInvitationId, 'roleTypeId': roleTypeId });

  /**
   * 
            Delete a Relationship between two Parties;
            if partyIdFrom is not specified the partyId of the current userLogin will be used;
            if roleTypeIds are not specified they will default to "_NA_".
         - PartyRelationship
   *
   * Requires partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyRelationship(PartyRelationship ent, ) =>
      client.invoke('deletePartyRelationship', ent, {  });

  /**
   * Delete a Party Role (remove a Role from a Party). The logged in user must have PARTYMGR_DELETE or have
            permission to change the role of this partyId - PartyRole
   *
   * Requires partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deletePartyRole(PartyRole ent, ) =>
      client.invoke('deletePartyRole', ent, {  });

  /**
   * Delete a Postal Address Boundary - PostalAddressBoundary
   *
   * Requires contactMechId, geoId
   * Returns 
   */
  Future<OfResult> deletePostalAddressBoundary(PostalAddressBoundary ent, ) =>
      client.invoke('deletePostalAddressBoundary', ent, {  });

  /**
   * Delete a RoleType Record - RoleType
   *
   * Requires roleTypeId
   * Returns 
   */
  Future<OfResult> deleteRoleType(RoleType ent, ) =>
      client.invoke('deleteRoleType', ent, {  });

  /**
   * Delete a RoleTypeAttr Record - RoleTypeAttr
   *
   * Requires roleTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteRoleTypeAttr(RoleTypeAttr ent, ) =>
      client.invoke('deleteRoleTypeAttr', ent, {  });

  /**
   * Remove Vendor Information - Vendor
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> deleteVendor(Vendor ent, ) =>
      client.invoke('deleteVendor', ent, {  });

  /**
   * Ensure that the party is in the _NA_ role. - 
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> ensureNaPartyRole({@required String partyId}) =>
      client.invoke('ensureNaPartyRole', null, { 'partyId': partyId });

  /**
   * Ensure that the party is in the specified role. - 
   *
   * Requires partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> ensurePartyRole({@required String partyId, @required String roleTypeId}) =>
      client.invoke('ensurePartyRole', null, { 'partyId': partyId, 'roleTypeId': roleTypeId });

  /**
   * Ensure that the party indicate by partyIdFrom is in the roleTypeIdFrom specifc role. If roleTypeIdFrom isn't present use _NA_ - 
   *
   * Requires partyIdFrom
   * Returns 
   */
  Future<OfResult> ensurePartyRoleFrom({@required String partyIdFrom, String roleTypeIdFrom}) =>
      client.invoke('ensurePartyRoleFrom', null, { 'partyIdFrom': partyIdFrom, 'roleTypeIdFrom': roleTypeIdFrom });

  /**
   * Ensure that the party indicate by partyIdTo is in the roleTypeIdTo specific role. If roleTypeIdTo isn't present use _NA_ - 
   *
   * Requires partyIdTo
   * Returns 
   */
  Future<OfResult> ensurePartyRoleTo({@required String partyIdTo, String roleTypeIdTo}) =>
      client.invoke('ensurePartyRoleTo', null, { 'partyIdTo': partyIdTo, 'roleTypeIdTo': roleTypeIdTo });

  /**
   * Find the partyId corresponding to a reference and a reference type - 
   *
   * Requires idToFind
   * Returns party[org.apache.ofbiz.entity.GenericValue], partiesFound[List]
   */
  Future<OfResult> findPartiesById({@required String idToFind, String partyIdentificationTypeId, String searchPartyFirst, String searchAllId}) =>
      client.invoke('findPartiesById', null, { 'idToFind': idToFind, 'partyIdentificationTypeId': partyIdentificationTypeId, 'searchPartyFirst': searchPartyFirst, 'searchAllId': searchAllId });

  /**
   * Find the partyId/contactMechId for a specific email address, if not found do not return a value - 
   *
   * Requires address
   * Returns partyId[String], contactMechId[String]
   */
  Future<OfResult> findPartyFromEmailAddress({@required String address, String caseInsensitive, String personal, DateTime fromDate}) =>
      client.invoke('findPartyFromEmailAddress', null, { 'address': address, 'caseInsensitive': caseInsensitive, 'personal': personal, 'fromDate': fromDate });

  /**
   * Find the partyId/contactMechId for a specific telephone number, if not found do not return a value - 
   *
   * Requires telno
   * Returns partyId[String], contactMechId[String]
   */
  Future<OfResult> findPartyFromTelephone({@required String telno}) =>
      client.invoke('findPartyFromTelephone', null, { 'telno': telno });

  /**
   * 
            Find the partyId/contactMechId for a specific telephone number, if not found do not return a value.
            Same than above but keep the number complete internally.
         - 
   *
   * Requires telno
   * Returns partyId[String], contactMechId[String]
   */
  Future<OfResult> findPartyFromTelephoneComplete({@required String telno}) =>
      client.invoke('findPartyFromTelephoneComplete', null, { 'telno': telno });

  /**
   * Get the main party Email address - 
   *
   * Requires partyId
   * Returns emailAddress[String], contactMechId[String]
   */
  Future<OfResult> getPartyEmail({@required String partyId, String contactMechPurposeTypeId}) =>
      client.invoke('getPartyEmail', null, { 'partyId': partyId, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Get the main role of this party which is a child of the MAIN_ROLE roletypeId - 
   *
   * Requires partyId
   * Returns roleTypeId[String], description[String]
   */
  Future<OfResult> getPartyMainRole({@required String partyId}) =>
      client.invoke('getPartyMainRole', null, { 'partyId': partyId });

  /**
   * Get Party Name For Date - 
   *
   * Requires partyId
   * Returns groupName[String], firstName[String], middleName[String], lastName[String], personalTitle[String], suffix[String], fullName[String], gender[String]
   */
  Future<OfResult> getPartyNameForDate({@required String partyId, DateTime compareDate, String lastNameFirst}) =>
      client.invoke('getPartyNameForDate', null, { 'partyId': partyId, 'compareDate': compareDate, 'lastNameFirst': lastNameFirst });

  /**
   * Get the party postal address - 
   *
   * Requires partyId
   * Returns contactMechPurposeTypeId[String], contactMechId[String], address1[String], address2[String], directions[String], city[String], postalCode[String], stateProvinceGeoId[String], countyGeoId[String], countryGeoId[String]
   */
  Future<OfResult> getPartyPostalAddress({@required String partyId, String contactMechPurposeTypeId}) =>
      client.invoke('getPartyPostalAddress', null, { 'partyId': partyId, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Get the party Email Telephone - 
   *
   * Requires partyId
   * Returns contactMechId[String], contactMechPurposeTypeId[String], countryCode[String], areaCode[String], contactNumber[String], extension[String]
   */
  Future<OfResult> getPartyTelephone({@required String partyId, String contactMechPurposeTypeId}) =>
      client.invoke('getPartyTelephone', null, { 'partyId': partyId, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Merges customer accounts and disabled the duplicate - 
   *
   * Requires partyId, partyIdTo
   * Returns partyId[String]
   */
  Future<OfResult> linkPartyRecord({@required String partyId, @required String partyIdTo}) =>
      client.invoke('linkPartyRecord', null, { 'partyId': partyId, 'partyIdTo': partyIdTo });

  /**
   * Performs a lookup for parties - 
   *
   * Requires 
   * Returns lookupResult[List]
   */
  Future<OfResult> lookupParty({String firstName, String lastName}) =>
      client.invoke('lookupParty', null, { 'firstName': firstName, 'lastName': lastName });

  /**
   * 
            Performs a basic Party Manager security check. The user must have one of the base PARTYMGR
            CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyBasePermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyBasePermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Party CommunicationEvents Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyCommunicationEventPermissionCheck({String partyIdFrom, String partyIdTo, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyCommunicationEventPermissionCheck', null, { 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party contact mech security check. The userLogin partyId must equal the partyId parameter OR
            the user must have one of the base PARTYMGR or PARTYMGR_PCM CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyContactMechPermissionCheck({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyContactMechPermissionCheck', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party datasource security check. The user must have one of the base PARTYMGR or
            PARTYMGR_SRC CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyDatasourcePermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyDatasourcePermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party group security check. The userLogin partyId must equal the partyId parameter OR
            the user has one of the base PARTYMGR or PARTYMGR_GRP CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns partyId[String], hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyGroupPermissionCheck({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyGroupPermissionCheck', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party ID security check. The userLogin partyId must equal
            the partyId parameter, or the logged-in user must have the correct permission
            to perform the operation.
         - 
   *
   * Requires 
   * Returns partyId[String], hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyIdPermissionCheck({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyIdPermissionCheck', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party relationship security check. The user must have one of the base PARTYMGR or
            PARTYMGR_REL CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyRelationshipPermissionCheck({String partyIdFrom, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyRelationshipPermissionCheck', null, { 'partyIdFrom': partyIdFrom, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party role security check. The user must have one of the base PARTYMGR or
            PARTYMGR_ROLE CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns partyId[String], hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyRolePermissionCheck({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyRolePermissionCheck', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * 
            Performs a party status security check. The userLogin partyId must equal the partyId parameter OR
            the user must have one of the base PARTYMGR or PARTYMGR_STS CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> partyStatusPermissionCheck({String partyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('partyStatusPermissionCheck', null, { 'partyId': partyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Create customer profile on basis of First Name ,Last Name and Email Address - 
   *
   * Requires firstName, lastName, emailAddress
   * Returns partyId[String]
   */
  Future<OfResult> quickCreateCustomer({@required String firstName, @required String lastName, @required String emailAddress, String contactListId, String subscribeContactList}) =>
      client.invoke('quickCreateCustomer', null, { 'firstName': firstName, 'lastName': lastName, 'emailAddress': emailAddress, 'contactListId': contactListId, 'subscribeContactList': subscribeContactList });

  /**
   * Delete an AddressMatchMap record - AddressMatchMap
   *
   * Requires mapKey, mapValue
   * Returns 
   */
  Future<OfResult> removeAddressMatchMap(AddressMatchMap ent, ) =>
      client.invoke('removeAddressMatchMap', ent, {  });

  /**
   * Remove a Communication Event Purpose - CommunicationEventPurpose
   *
   * Requires communicationEventPrpTypId, communicationEventId
   * Returns 
   */
  Future<OfResult> removeCommunicationEventPurpose(CommunicationEventPurpose ent, ) =>
      client.invoke('removeCommunicationEventPurpose', ent, {  });

  /**
   * Remove a Communication Event Role - 
   *
   * Requires communicationEventId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeCommunicationEventRole({@required String communicationEventId, @required String partyId, @required String roleTypeId, String deleteCommEventIfLast, String delContentDataResource}) =>
      client.invoke('removeCommunicationEventRole', null, { 'communicationEventId': communicationEventId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'deleteCommEventIfLast': deleteCommEventIfLast, 'delContentDataResource': delContentDataResource });

  /**
   * removes a contact mech attribute record - ContactMechAttribute
   *
   * Requires contactMechId, attrName
   * Returns 
   */
  Future<OfResult> removeContactMechAttribute(ContactMechAttribute ent, ) =>
      client.invoke('removeContactMechAttribute', ent, {  });

  /**
   * removes a party attribute record - PartyAttribute
   *
   * Requires partyId, attrName
   * Returns 
   */
  Future<OfResult> removePartyAttribute(PartyAttribute ent, ) =>
      client.invoke('removePartyAttribute', ent, {  });

  /**
   * Remove a PartyContent record - PartyContent
   *
   * Requires partyId, contentId, partyContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removePartyContent(PartyContent ent, ) =>
      client.invoke('removePartyContent', ent, {  });

  /**
   * Save Party Name Change - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> savePartyNameChange({String partyId, String groupName, String firstName, String middleName, String lastName, String personalTitle, String suffix}) =>
      client.invoke('savePartyNameChange', null, { 'partyId': partyId, 'groupName': groupName, 'firstName': firstName, 'middleName': middleName, 'lastName': lastName, 'personalTitle': personalTitle, 'suffix': suffix });

  /**
   *  - 
   *
   * Requires userLoginId, productStoreId
   * Returns 
   */
  Future<OfResult> sendAccountActivatedEmailNotification({@required String userLoginId, @required String productStoreId}) =>
      client.invoke('sendAccountActivatedEmailNotification', null, { 'userLoginId': userLoginId, 'productStoreId': productStoreId });

  /**
   * Sends a communication event as a single-part email using sendMail.  All parameters come from CommunicationEvent, which must
            be of type EMAIL_COMMUNICATION. Will look for a contactMechIdTo to send the emails - 
   *
   * Requires communicationEventId
   * Returns 
   */
  Future<OfResult> sendCommEventAsEmail({@required String communicationEventId}) =>
      client.invoke('sendCommEventAsEmail', null, { 'communicationEventId': communicationEventId });

  /**
   * Sends communication event associated contents to a ftp server. All parameters come from CommunicationEvent, which must
            be of type FILE_TRANSFER_COMM. Will look for a contactMechIdTo to connect to Ftp - 
   *
   * Requires communicationEventId
   * Returns 
   */
  Future<OfResult> sendCommEventAsFtp({@required String communicationEventId}) =>
      client.invoke('sendCommEventAsFtp', null, { 'communicationEventId': communicationEventId });

  /**
   * Create communication event and send mail to company - 
   *
   * Requires partyIdTo
   * Returns communicationEventId[String]
   */
  Future<OfResult> sendContactUsEmailToCompany({String emailAddress, String firstName, String lastName, String postalCode, String countryCode, String emailType, String productStoreId, String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String communicationEventId, String productId, String orderId, String returnId, String custRequestId, String action, @required String partyIdTo}) =>
      client.invoke('sendContactUsEmailToCompany', null, { 'emailAddress': emailAddress, 'firstName': firstName, 'lastName': lastName, 'postalCode': postalCode, 'countryCode': countryCode, 'emailType': emailType, 'productStoreId': productStoreId, 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'communicationEventId': communicationEventId, 'productId': productId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'action': action, 'partyIdTo': partyIdTo });

  /**
   *  - 
   *
   * Requires partyId, emailAddress, productStoreId
   * Returns 
   */
  Future<OfResult> sendCreatePartyEmailNotification({@required String partyId, @required String emailAddress, @required String productStoreId}) =>
      client.invoke('sendCreatePartyEmailNotification', null, { 'partyId': partyId, 'emailAddress': emailAddress, 'productStoreId': productStoreId });

  /**
   * Checks for email communication events with the status COM_IN_PROGRESS and a startdate which is expired, then send the email - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> sendEmailDated() =>
      client.invoke('sendEmailDated', null, {  });

  /**
   * Send emails to members of a contact list, wrapping each email in its own transaction and tagging each member
                that has been sent, so if the whole effort is aborted, it can start over from the middle.  The max-retry is important because if this service is
                and some emails cannot sent, it will start again later and try again - 
   *
   * Requires contactListId, communicationEventId
   * Returns 
   */
  Future<OfResult> sendEmailToContactList({@required String contactListId, @required String communicationEventId}) =>
      client.invoke('sendEmailToContactList', null, { 'contactListId': contactListId, 'communicationEventId': communicationEventId });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> sendUpdatePersonalInfoEmailNotification({String partyId, Map<String,dynamic> updatedUserLogin, String productStoreId}) =>
      client.invoke('sendUpdatePersonalInfoEmailNotification', null, { 'partyId': partyId, 'updatedUserLogin': updatedUserLogin, 'productStoreId': productStoreId });

  /**
   *  - 
   *
   * Requires emailAddress
   * Returns 
   */
  Future<OfResult> sendVerifyEmailAddressNotification({@required String emailAddress}) =>
      client.invoke('sendVerifyEmailAddressNotification', null, { 'emailAddress': emailAddress });

  /**
   * Sets the status of a communication event to COM_COMPLETE using the updateCommunicationEvent service,
            set datetimeEnded to now if not defined - 
   *
   * Requires communicationEventId
   * Returns 
   */
  Future<OfResult> setCommEventComplete({@required String communicationEventId, String partyIdFrom}) =>
      client.invoke('setCommEventComplete', null, { 'communicationEventId': communicationEventId, 'partyIdFrom': partyIdFrom });

  /**
   * Marks a communication event as read - CommunicationEventRole
   *
   * Requires communicationEventId, communicationEventId
   * Returns 
   */
  Future<OfResult> setCommEventRoleToRead(CommunicationEventRole ent, ) =>
      client.invoke('setCommEventRoleToRead', ent, {  });

  /**
   * Set the Communication event  Status for a specific role - CommunicationEventRole
   *
   * Requires communicationEventId, partyId, roleTypeId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setCommunicationEventRoleStatus(CommunicationEventRole ent, ) =>
      client.invoke('setCommunicationEventRoleStatus', ent, {  });

  /**
   * Set the Communication event Status - CommunicationEvent
   *
   * Requires communicationEventId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setCommunicationEventStatus(CommunicationEvent ent, {String setRoleStatusToComplete}) =>
      client.invoke('setCommunicationEventStatus', ent, { 'setRoleStatusToComplete': setRoleStatusToComplete });

  /**
   * Sets the party (customer) profile defaults - 
   *
   * Requires productStoreId, productStoreId
   * Returns 
   */
  Future<OfResult> setPartyProfileDefaults({String partyId, @required String productStoreId, String defaultShipAddr, String defaultBillAddr, String defaultPayMeth, String defaultShipMeth}) =>
      client.invoke('setPartyProfileDefaults', null, { 'partyId': partyId, 'productStoreId': productStoreId, 'defaultShipAddr': defaultShipAddr, 'defaultBillAddr': defaultBillAddr, 'defaultPayMeth': defaultPayMeth, 'defaultShipMeth': defaultShipMeth });

  /**
   * Set the party status. Requires PARTYMGR_UPDATE or PARTYMGR_STS_UPDATE permission. The change to statusId must be defined in StatusValidChange, otherwise
            this service will fail. The result is the original statusId, so that ECA conditions can check if a status has actually changed. - 
   *
   * Requires partyId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setPartyStatus({@required String partyId, @required String statusId, DateTime statusDate}) =>
      client.invoke('setPartyStatus', null, { 'partyId': partyId, 'statusId': statusId, 'statusDate': statusDate });

  /**
   * Update an Affiliate - 
   *
   * Requires affiliateName
   * Returns 
   */
  Future<OfResult> updateAffiliate({String partyId, @required String affiliateName, String affiliateDescription, String yearEstablished, String siteType, String sitePageViews, String siteVisitors}) =>
      client.invoke('updateAffiliate', null, { 'partyId': partyId, 'affiliateName': affiliateName, 'affiliateDescription': affiliateDescription, 'yearEstablished': yearEstablished, 'siteType': siteType, 'sitePageViews': sitePageViews, 'siteVisitors': siteVisitors });

  /**
   * Update a AgreementAttribute record - AgreementAttribute
   *
   * Requires agreementId, attrName
   * Returns 
   */
  Future<OfResult> updateAgreementAttribute(AgreementAttribute ent, ) =>
      client.invoke('updateAgreementAttribute', ent, {  });

  /**
   * Update a AgreementItemTypeAttr record - AgreementItemTypeAttr
   *
   * Requires agreementItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateAgreementItemTypeAttr(AgreementItemTypeAttr ent, ) =>
      client.invoke('updateAgreementItemTypeAttr', ent, {  });

  /**
   * Update a Communication Event - 
   *
   * Requires communicationEventId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateCommunicationEvent({@required String communicationEventId, String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, String partyIdTo, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String contactMechPurposeTypeIdFrom}) =>
      client.invoke('updateCommunicationEvent', null, { 'communicationEventId': communicationEventId, 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'contactMechPurposeTypeIdFrom': contactMechPurposeTypeIdFrom });

  /**
   * Update a CommunicationEventPrpTyp - CommunicationEventPrpTyp
   *
   * Requires communicationEventPrpTypId
   * Returns 
   */
  Future<OfResult> updateCommunicationEventPrpTyp(CommunicationEventPrpTyp ent, ) =>
      client.invoke('updateCommunicationEventPrpTyp', ent, {  });

  /**
   * Update a CommunicationEventPurpose - CommunicationEventPurpose
   *
   * Requires communicationEventPrpTypId, communicationEventId
   * Returns 
   */
  Future<OfResult> updateCommunicationEventPurpose(CommunicationEventPurpose ent, ) =>
      client.invoke('updateCommunicationEventPurpose', ent, {  });

  /**
   * Update a Communication Event Role - 
   *
   * Requires communicationEventId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> updateCommunicationEventRole({@required String communicationEventId, @required String partyId, @required String roleTypeId, String contactMechId, String statusId}) =>
      client.invoke('updateCommunicationEventRole', null, { 'communicationEventId': communicationEventId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'contactMechId': contactMechId, 'statusId': statusId });

  /**
   * Update a ContactMech - 
   *
   * Requires contactMechId, contactMechTypeId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateContactMech({@required String contactMechId, @required String contactMechTypeId, String infoString}) =>
      client.invoke('updateContactMech', null, { 'contactMechId': contactMechId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString });

  /**
   * Update postal address, telecom number and purposes. The setShippingPurpose and setBillingPurpose enable the service to create purposes for TelecomNumber - 
   *
   * Requires address1, city, postalCode, contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateContactMechAndPurposes({String countryCode, String areaCode, String contactNumber, String askForName, String phoneContactMechId, String setShippingPurpose, String setBillingPurpose, String productStoreId, String partyId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, @required String contactMechId}) =>
      client.invoke('updateContactMechAndPurposes', null, { 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'phoneContactMechId': phoneContactMechId, 'setShippingPurpose': setShippingPurpose, 'setBillingPurpose': setBillingPurpose, 'productStoreId': productStoreId, 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'contactMechId': contactMechId });

  /**
   * updates a contact mech attribute record - ContactMechAttribute
   *
   * Requires contactMechId, attrName
   * Returns 
   */
  Future<OfResult> updateContactMechAttribute(ContactMechAttribute ent, ) =>
      client.invoke('updateContactMechAttribute', ent, {  });

  /**
   * Update an Email Address - 
   *
   * Requires contactMechId, emailAddress
   * Returns contactMechId[String]
   */
  Future<OfResult> updateEmailAddress({@required String contactMechId, @required String emailAddress}) =>
      client.invoke('updateEmailAddress', null, { 'contactMechId': contactMechId, 'emailAddress': emailAddress });

  /**
   * update FtpAddress - FtpAddress
   *
   * Requires contactMechId, contactMechId
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updateFtpAddressWithHistory(FtpAddress ent, ) =>
      client.invoke('updateFtpAddressWithHistory', ent, {  });

  /**
   * Update a NeedType - NeedType
   *
   * Requires needTypeId
   * Returns 
   */
  Future<OfResult> updateNeedType(NeedType ent, ) =>
      client.invoke('updateNeedType', ent, {  });

  /**
   * updates a party attribute record - PartyAttribute
   *
   * Requires partyId, attrName
   * Returns 
   */
  Future<OfResult> updatePartyAttribute(PartyAttribute ent, ) =>
      client.invoke('updatePartyAttribute', ent, {  });

  /**
   * Update a PartyCarrierAccount record - PartyCarrierAccount
   *
   * Requires partyId, carrierPartyId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyCarrierAccount(PartyCarrierAccount ent, ) =>
      client.invoke('updatePartyCarrierAccount', ent, {  });

  /**
   * update PartyClassification - PartyClassification
   *
   * Requires partyId, partyClassificationGroupId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyClassification(PartyClassification ent, ) =>
      client.invoke('updatePartyClassification', ent, {  });

  /**
   * update PartyClassificationGroup - PartyClassificationGroup
   *
   * Requires partyClassificationGroupId
   * Returns 
   */
  Future<OfResult> updatePartyClassificationGroup(PartyClassificationGroup ent, ) =>
      client.invoke('updatePartyClassificationGroup', ent, {  });

  /**
   * Update a PartyContactMech - 
   *
   * Requires contactMechId, contactMechTypeId
   * Returns contactMechId[String]
   */
  Future<OfResult> updatePartyContactMech({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, @required String contactMechTypeId, String infoString, String newContactMechId}) =>
      client.invoke('updatePartyContactMech', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'newContactMechId': newContactMechId });

  /**
   * Update a PartyContent record - PartyContent
   *
   * Requires partyId, contentId, partyContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyContent(PartyContent ent, ) =>
      client.invoke('updatePartyContent', ent, {  });

  /**
   * Update an Email Address - 
   *
   * Requires contactMechId, emailAddress
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updatePartyEmailAddress({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, @required String emailAddress}) =>
      client.invoke('updatePartyEmailAddress', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'emailAddress': emailAddress });

  /**
   * Update an Ftp Address associated to a party - 
   *
   * Requires contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updatePartyFtpAddress({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String hostname, int port, String username, String ftpPassword, String binaryTransfer, String filePath, String zipFile, String passiveMode, int defaultTimeout}) =>
      client.invoke('updatePartyFtpAddress', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'hostname': hostname, 'port': port, 'username': username, 'ftpPassword': ftpPassword, 'binaryTransfer': binaryTransfer, 'filePath': filePath, 'zipFile': zipFile, 'passiveMode': passiveMode, 'defaultTimeout': defaultTimeout });

  /**
   * Update a PartyGroup - PartyGroup
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updatePartyGroup(PartyGroup ent, {String description, String partyTypeId, String preferredCurrencyUomId, String externalId, String statusId}) =>
      client.invoke('updatePartyGroup', ent, { 'description': description, 'partyTypeId': partyTypeId, 'preferredCurrencyUomId': preferredCurrencyUomId, 'externalId': externalId, 'statusId': statusId });

  /**
   * update PartyIdentification entity - PartyIdentification
   *
   * Requires partyId, partyIdentificationTypeId
   * Returns 
   */
  Future<OfResult> updatePartyIdentification(PartyIdentification ent, ) =>
      client.invoke('updatePartyIdentification', ent, {  });

  /**
   * Update Party Invitation - 
   *
   * Requires partyInvitationId
   * Returns 
   */
  Future<OfResult> updatePartyInvitation({@required String partyInvitationId, String partyIdFrom, String partyId, String toName, String emailAddress, String statusId, DateTime lastInviteDate}) =>
      client.invoke('updatePartyInvitation', null, { 'partyInvitationId': partyInvitationId, 'partyIdFrom': partyIdFrom, 'partyId': partyId, 'toName': toName, 'emailAddress': emailAddress, 'statusId': statusId, 'lastInviteDate': lastInviteDate });

  /**
   * Update a Postal Address - 
   *
   * Requires address1, city, postalCode, contactMechId, address1, city, postalCode
   * Returns contactMechId[String]
   */
  Future<OfResult> updatePartyPostalAddress({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId}) =>
      client.invoke('updatePartyPostalAddress', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId });

  /**
   * 
            Update a Relationship between two Parties;
            if partyIdFrom is not specified the partyId of the current userLogin will be used;
            if roleTypeIds are not specified they will default to "_NA_".
            If a partyIdFrom is passed in, it will be used if the userLogin has PARTYMGR_REL_UPDATE permission.
         - PartyRelationship
   *
   * Requires partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyRelationship(PartyRelationship ent, ) =>
      client.invoke('updatePartyRelationship', ent, {  });

  /**
   * Update a Telecommunications Number - 
   *
   * Requires contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updatePartyTelecomNumber({String partyId, String contactMechId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String countryCode, String areaCode, String contactNumber, String askForName}) =>
      client.invoke('updatePartyTelecomNumber', null, { 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName });

  /**
   * Update a Person - Person
   *
   * Requires firstName, lastName, firstName, lastName
   * Returns 
   */
  Future<OfResult> updatePerson(Person ent, {String preferredCurrencyUomId, String description, String externalId, String statusId}) =>
      client.invoke('updatePerson', ent, { 'preferredCurrencyUomId': preferredCurrencyUomId, 'description': description, 'externalId': externalId, 'statusId': statusId });

  /**
   * Update a Postal Address - 
   *
   * Requires address1, city, postalCode, contactMechId, address1, city, postalCode
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updatePostalAddress({String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, @required String contactMechId, String partyId, String latitude, String longitude}) =>
      client.invoke('updatePostalAddress', null, { 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'contactMechId': contactMechId, 'partyId': partyId, 'latitude': latitude, 'longitude': longitude });

  /**
   * Update postal address, purposes and set them defaults. The setShippingPurpose and setBillingPurpose enable the service to create purposes for PostalAddress and make them default addresses of party - 
   *
   * Requires address1, city, postalCode, contactMechId
   * Returns contactMechId[String]
   */
  Future<OfResult> updatePostalAddressAndPurposes({String setShippingPurpose, String setBillingPurpose, String productStoreId, String partyId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, @required String contactMechId}) =>
      client.invoke('updatePostalAddressAndPurposes', null, { 'setShippingPurpose': setShippingPurpose, 'setBillingPurpose': setBillingPurpose, 'productStoreId': productStoreId, 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'contactMechId': contactMechId });

  /**
   * Update a RoleType Record - RoleType
   *
   * Requires roleTypeId
   * Returns 
   */
  Future<OfResult> updateRoleType(RoleType ent, ) =>
      client.invoke('updateRoleType', ent, {  });

  /**
   * Update a RoleTypeAttr Record - RoleTypeAttr
   *
   * Requires roleTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateRoleTypeAttr(RoleTypeAttr ent, ) =>
      client.invoke('updateRoleTypeAttr', ent, {  });

  /**
   * Update a Telecommunications Number - 
   *
   * Requires contactMechId
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updateTelecomNumber({String countryCode, String areaCode, String contactNumber, String askForName, @required String contactMechId}) =>
      client.invoke('updateTelecomNumber', null, { 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'contactMechId': contactMechId });

  /**
   * Update Vendor Information - Vendor
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> updateVendor(Vendor ent, ) =>
      client.invoke('updateVendor', ent, {  });

  /**
   *  - 
   *
   * Requires verifyHash
   * Returns 
   */
  Future<OfResult> verifyEmailAddress({@required String verifyHash}) =>
      client.invoke('verifyEmailAddress', null, { 'verifyHash': verifyHash });

}