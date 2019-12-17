import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:sagas_meta/src/models/order_request.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesRequest{
  final SrvClient client;
  OrderServicesRequest(this.client);

  /**
   * Copy a CustRequest - CustRequestItem
   *
   * Requires custRequestId, custRequestItemSeqId
   * Returns 
   */
  Future<OfResult> copyCustRequestItem(CustRequestItem ent, {String custRequestIdTo, String custRequestItemSeqIdTo, String copyLinkedQuotes}) =>
      client.invoke('copyCustRequestItem', ent, { 'custRequestIdTo': custRequestIdTo, 'custRequestItemSeqIdTo': custRequestItemSeqIdTo, 'copyLinkedQuotes': copyLinkedQuotes });

  /**
   * Create a custRequest record and optionally create a custRequest item. - CustRequest
   *
   * Requires 
   * Returns custRequestId[String]
   */
  Future<OfResult> createCustRequest(CustRequest ent, {String custRequestItemSeqId, String custRequestResolutionId, int sequenceNum, DateTime requiredByDate, String productId, Decimal quantity, Decimal selectedAmount, Decimal maximumAmount, DateTime reservStart, Decimal reservLength, Decimal reservPersons, String configId, String story, String webSiteId}) =>
      client.invoke('createCustRequest', ent, { 'custRequestItemSeqId': custRequestItemSeqId, 'custRequestResolutionId': custRequestResolutionId, 'sequenceNum': sequenceNum, 'requiredByDate': requiredByDate, 'productId': productId, 'quantity': quantity, 'selectedAmount': selectedAmount, 'maximumAmount': maximumAmount, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'configId': configId, 'story': story, 'webSiteId': webSiteId });

  /**
   * Create CustRequestAttribute record - 
   *
   * Requires custRequestId, attrName, attrValue
   * Returns 
   */
  Future<OfResult> createCustRequestAttribute({@required String custRequestId, @required String attrName, @required String attrValue}) =>
      client.invoke('createCustRequestAttribute', null, { 'custRequestId': custRequestId, 'attrName': attrName, 'attrValue': attrValue });

  /**
   * Create a CustRequestCategory record - CustRequestCategory
   *
   * Requires 
   * Returns custRequestCategoryId[String]
   */
  Future<OfResult> createCustRequestCategory(CustRequestCategory ent, ) =>
      client.invoke('createCustRequestCategory', ent, {  });

  /**
   * Create a Customer Request Content - CustRequestContent
   *
   * Requires custRequestId, contentId
   * Returns 
   */
  Future<OfResult> createCustRequestContent(CustRequestContent ent, ) =>
      client.invoke('createCustRequestContent', ent, {  });

  /**
   * Create a Customer request from a commEvent(email) - CommunicationEvent
   *
   * Requires communicationEventId
   * Returns custRequestId[String]
   */
  Future<OfResult> createCustRequestFromCommEvent(CommunicationEvent ent, {String custRequestId, String custRequestTypeId, String custRequestName, String story}) =>
      client.invoke('createCustRequestFromCommEvent', ent, { 'custRequestId': custRequestId, 'custRequestTypeId': custRequestTypeId, 'custRequestName': custRequestName, 'story': story });

  /**
   * Creates a new quote from a shopping list - 
   *
   * Requires shoppingListId
   * Returns custRequestId[String]
   */
  Future<OfResult> createCustRequestFromShoppingList({@required String shoppingListId}) =>
      client.invoke('createCustRequestFromShoppingList', null, { 'shoppingListId': shoppingListId });

  /**
   * Create a CustRequestItem record - CustRequestItem
   *
   * Requires custRequestId
   * Returns custRequestId[String], custRequestItemSeqId[String], custRequestItemSeqId[String]
   */
  Future<OfResult> createCustRequestItem(CustRequestItem ent, ) =>
      client.invoke('createCustRequestItem', ent, {  });

  /**
   * Create a note for a CustRequestItem - 
   *
   * Requires custRequestId, custRequestItemSeqId, note
   * Returns noteId[String], partyId[String], fromPartyId[String], custRequestName[String]
   */
  Future<OfResult> createCustRequestItemNote({@required String custRequestId, @required String custRequestItemSeqId, @required String note, String partyId}) =>
      client.invoke('createCustRequestItemNote', null, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId, 'note': note, 'partyId': partyId });

  /**
   * Create a note for a CustRequest - 
   *
   * Requires custRequestId, noteInfo
   * Returns noteId[String], fromPartyId[String], custRequestName[String]
   */
  Future<OfResult> createCustRequestNote({@required String custRequestId, @required String noteInfo}) =>
      client.invoke('createCustRequestNote', null, { 'custRequestId': custRequestId, 'noteInfo': noteInfo });

  /**
   * Create a CustRequestParty record - CustRequestParty
   *
   * Requires custRequestId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createCustRequestParty(CustRequestParty ent, ) =>
      client.invoke('createCustRequestParty', ent, {  });

  /**
   * Create a CustRequestResolution record - CustRequestResolution
   *
   * Requires 
   * Returns custRequestResolutionId[String]
   */
  Future<OfResult> createCustRequestResolution(CustRequestResolution ent, ) =>
      client.invoke('createCustRequestResolution', ent, {  });

  /**
   * Create a Cust Request Status Record - CustRequestStatus
   *
   * Requires 
   * Returns custRequestStatusId[String], custRequestStatusId[String]
   */
  Future<OfResult> createCustRequestStatus(CustRequestStatus ent, ) =>
      client.invoke('createCustRequestStatus', ent, {  });

  /**
   * Create a CustRequestType record - CustRequestType
   *
   * Requires 
   * Returns custRequestTypeId[String]
   */
  Future<OfResult> createCustRequestType(CustRequestType ent, ) =>
      client.invoke('createCustRequestType', ent, {  });

  /**
   * Create a CustRequestTypeAttr record - CustRequestTypeAttr
   *
   * Requires custRequestTypeId, attrName
   * Returns 
   */
  Future<OfResult> createCustRequestTypeAttr(CustRequestTypeAttr ent, ) =>
      client.invoke('createCustRequestTypeAttr', ent, {  });

  /**
   * Create a RespondingParty record - RespondingParty
   *
   * Requires respondingPartySeqId, custRequestId, partyId
   * Returns 
   */
  Future<OfResult> createRespondingParty(RespondingParty ent, ) =>
      client.invoke('createRespondingParty', ent, {  });

  /**
   * 
            Performs a security check for CustRequest. The user, if enters a request for someone else,
            must have one of the base ORDERMGR_CRQ CRUD+ADMIN permissions.
         - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> custRequestPermissionCheck({String fromPartyId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('custRequestPermissionCheck', null, { 'fromPartyId': fromPartyId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Delete a custRequest record in draft status - CustRequest
   *
   * Requires custRequestId
   * Returns 
   */
  Future<OfResult> deleteCustRequest(CustRequest ent, ) =>
      client.invoke('deleteCustRequest', ent, {  });

  /**
   * Delete a CustRequestCategory record - CustRequestCategory
   *
   * Requires custRequestCategoryId
   * Returns 
   */
  Future<OfResult> deleteCustRequestCategory(CustRequestCategory ent, ) =>
      client.invoke('deleteCustRequestCategory', ent, {  });

  /**
   * Update a Customer Request Content - CustRequestContent
   *
   * Requires custRequestId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> deleteCustRequestContent(CustRequestContent ent, ) =>
      client.invoke('deleteCustRequestContent', ent, {  });

  /**
   * Delete a CustRequestParty record - CustRequestParty
   *
   * Requires custRequestId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteCustRequestParty(CustRequestParty ent, ) =>
      client.invoke('deleteCustRequestParty', ent, {  });

  /**
   * Delete a CustRequestResolution record - CustRequestResolution
   *
   * Requires custRequestResolutionId
   * Returns 
   */
  Future<OfResult> deleteCustRequestResolution(CustRequestResolution ent, ) =>
      client.invoke('deleteCustRequestResolution', ent, {  });

  /**
   * Delete a CustRequestType record - CustRequestType
   *
   * Requires custRequestTypeId
   * Returns 
   */
  Future<OfResult> deleteCustRequestType(CustRequestType ent, ) =>
      client.invoke('deleteCustRequestType', ent, {  });

  /**
   * Delete a CustRequestTypeAttr record - CustRequestTypeAttr
   *
   * Requires custRequestTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteCustRequestTypeAttr(CustRequestTypeAttr ent, ) =>
      client.invoke('deleteCustRequestTypeAttr', ent, {  });

  /**
   * Delete a RespondingParty record - RespondingParty
   *
   * Requires respondingPartySeqId, custRequestId, partyId
   * Returns 
   */
  Future<OfResult> deleteRespondingParty(RespondingParty ent, ) =>
      client.invoke('deleteRespondingParty', ent, {  });

  /**
   * Delete a CustRequestParty record - CustRequestParty
   *
   * Requires custRequestId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireCustRequestParty(CustRequestParty ent, ) =>
      client.invoke('expireCustRequestParty', ent, {  });

  /**
   * Get CustRequests Associated By Role - 
   *
   * Requires 
   * Returns custRequestAndRoles[java.util.List]
   */
  Future<OfResult> getCustRequestsByRole({String roleTypeId}) =>
      client.invoke('getCustRequestsByRole', null, { 'roleTypeId': roleTypeId });

  /**
   * Set the Customer Request  Status - 
   *
   * Requires custRequestId, statusId
   * Returns custRequestId[String], oldStatusId[String], fromPartyId[String], custRequestName[String]
   */
  Future<OfResult> setCustRequestStatus({@required String custRequestId, @required String statusId, String reason, String webSiteId}) =>
      client.invoke('setCustRequestStatus', null, { 'custRequestId': custRequestId, 'statusId': statusId, 'reason': reason, 'webSiteId': webSiteId });

  /**
   * Update a custRequest record - CustRequest
   *
   * Requires custRequestId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateCustRequest(CustRequest ent, {String story, String webSiteId}) =>
      client.invoke('updateCustRequest', ent, { 'story': story, 'webSiteId': webSiteId });

  /**
   * Update CustRequestAttribute record - 
   *
   * Requires custRequestId, attrName, attrValue
   * Returns 
   */
  Future<OfResult> updateCustRequestAttribute({@required String custRequestId, @required String attrName, @required String attrValue}) =>
      client.invoke('updateCustRequestAttribute', null, { 'custRequestId': custRequestId, 'attrName': attrName, 'attrValue': attrValue });

  /**
   * Update a CustRequestCategory record - CustRequestCategory
   *
   * Requires custRequestCategoryId
   * Returns 
   */
  Future<OfResult> updateCustRequestCategory(CustRequestCategory ent, ) =>
      client.invoke('updateCustRequestCategory', ent, {  });

  /**
   * Update a CustRequestItem record - CustRequestItem
   *
   * Requires custRequestId, custRequestItemSeqId
   * Returns 
   */
  Future<OfResult> updateCustRequestItem(CustRequestItem ent, ) =>
      client.invoke('updateCustRequestItem', ent, {  });

  /**
   * Update CustRequest Note - 
   *
   * Requires custRequestId, noteId
   * Returns 
   */
  Future<OfResult> updateCustRequestNote({@required String custRequestId, @required String noteId, String noteInfo}) =>
      client.invoke('updateCustRequestNote', null, { 'custRequestId': custRequestId, 'noteId': noteId, 'noteInfo': noteInfo });

  /**
   * Update CustRequestParty record - CustRequestParty
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateCustRequestParty(CustRequestParty ent, ) =>
      client.invoke('updateCustRequestParty', ent, {  });

  /**
   * Update a CustRequestResolution record - CustRequestResolution
   *
   * Requires custRequestResolutionId
   * Returns 
   */
  Future<OfResult> updateCustRequestResolution(CustRequestResolution ent, ) =>
      client.invoke('updateCustRequestResolution', ent, {  });

  /**
   * Update a CustRequestType record - CustRequestType
   *
   * Requires custRequestTypeId
   * Returns 
   */
  Future<OfResult> updateCustRequestType(CustRequestType ent, ) =>
      client.invoke('updateCustRequestType', ent, {  });

  /**
   * Update a CustRequestTypeAttr record - CustRequestTypeAttr
   *
   * Requires custRequestTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateCustRequestTypeAttr(CustRequestTypeAttr ent, ) =>
      client.invoke('updateCustRequestTypeAttr', ent, {  });

  /**
   * Update a RespondingParty record - RespondingParty
   *
   * Requires respondingPartySeqId, custRequestId, partyId
   * Returns 
   */
  Future<OfResult> updateRespondingParty(RespondingParty ent, ) =>
      client.invoke('updateRespondingParty', ent, {  });

}