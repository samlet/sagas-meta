import 'package:sagas_meta/src/models/order_quote.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesQuote{
  final SrvClient client;
  OrderServicesQuote(this.client);

  /**
   * Remove all existing quote adjustments, recalc them and persist in QuoteAdjustment. - 
   *
   * Requires quoteId
   * Returns 
   */
  Future<OfResult> autoCreateQuoteAdjustments({@required String quoteId}) =>
      client.invoke('autoCreateQuoteAdjustments', null, { 'quoteId': quoteId });

  /**
   * Update the QuoteItem price with the passed value (if present) or automatically from the averageCost - QuoteItem
   *
   * Requires quoteId, quoteItemSeqId
   * Returns 
   */
  Future<OfResult> autoUpdateQuotePrice(QuoteItem ent, {Decimal manualQuoteUnitPrice, Decimal defaultQuoteUnitPrice}) =>
      client.invoke('autoUpdateQuotePrice', ent, { 'manualQuoteUnitPrice': manualQuoteUnitPrice, 'defaultQuoteUnitPrice': defaultQuoteUnitPrice });

  /**
   * Set the Quote status to ordered. - Quote
   *
   * Requires quoteId
   * Returns 
   */
  Future<OfResult> checkUpdateQuoteStatus(Quote ent, ) =>
      client.invoke('checkUpdateQuoteStatus', ent, {  });

  /**
   * Copy a Quote - Quote
   *
   * Requires quoteId
   * Returns quoteId[String]
   */
  Future<OfResult> copyQuote(Quote ent, {String copyQuoteRoles, String copyQuoteAttributes, String copyQuoteCoefficients, String copyQuoteItems, String copyQuoteAdjustments, String copyQuoteTerms}) =>
      client.invoke('copyQuote', ent, { 'copyQuoteRoles': copyQuoteRoles, 'copyQuoteAttributes': copyQuoteAttributes, 'copyQuoteCoefficients': copyQuoteCoefficients, 'copyQuoteItems': copyQuoteItems, 'copyQuoteAdjustments': copyQuoteAdjustments, 'copyQuoteTerms': copyQuoteTerms });

  /**
   * Copy a QuoteItem - QuoteItem
   *
   * Requires quoteId, quoteItemSeqId
   * Returns 
   */
  Future<OfResult> copyQuoteItem(QuoteItem ent, {String quoteIdTo, String quoteItemSeqIdTo, String copyQuoteAdjustments}) =>
      client.invoke('copyQuoteItem', ent, { 'quoteIdTo': quoteIdTo, 'quoteItemSeqIdTo': quoteItemSeqIdTo, 'copyQuoteAdjustments': copyQuoteAdjustments });

  /**
   * Create an Quote - Quote
   *
   * Requires 
   * Returns quoteId[String]
   */
  Future<OfResult> createQuote(Quote ent, ) =>
      client.invoke('createQuote', ent, {  });

  /**
   * Creates a new quote adjustment record - QuoteAdjustment
   *
   * Requires quoteAdjustmentTypeId, quoteId, quoteAdjustmentTypeId, quoteId
   * Returns quoteAdjustmentId[String]
   */
  Future<OfResult> createQuoteAdjustment(QuoteAdjustment ent, ) =>
      client.invoke('createQuoteAdjustment', ent, {  });

  /**
   * Create a new Quote and Quote Item for a CustRequest - QuoteItem
   *
   * Requires custRequestId, custRequestId
   * Returns quoteId[String], quoteItemSeqId[String]
   */
  Future<OfResult> createQuoteAndQuoteItemForRequest(QuoteItem ent, ) =>
      client.invoke('createQuoteAndQuoteItemForRequest', ent, {  });

  /**
   * Create a QuoteAttribute - QuoteAttribute
   *
   * Requires quoteId, attrName
   * Returns 
   */
  Future<OfResult> createQuoteAttribute(QuoteAttribute ent, ) =>
      client.invoke('createQuoteAttribute', ent, {  });

  /**
   * Create a QuoteCoefficient - QuoteCoefficient
   *
   * Requires quoteId, coeffName
   * Returns 
   */
  Future<OfResult> createQuoteCoefficient(QuoteCoefficient ent, ) =>
      client.invoke('createQuoteCoefficient', ent, {  });

  /**
   * Creates a new quote from a customer request - 
   *
   * Requires custRequestId
   * Returns quoteId[String]
   */
  Future<OfResult> createQuoteFromCustRequest({@required String custRequestId, String quoteTypeId}) =>
      client.invoke('createQuoteFromCustRequest', null, { 'custRequestId': custRequestId, 'quoteTypeId': quoteTypeId });

  /**
   * Creates a new quote from a shopping list - 
   *
   * Requires shoppingListId
   * Returns quoteId[String]
   */
  Future<OfResult> createQuoteFromShoppingList({@required String shoppingListId, String applyStorePromotions}) =>
      client.invoke('createQuoteFromShoppingList', null, { 'shoppingListId': shoppingListId, 'applyStorePromotions': applyStorePromotions });

  /**
   * Create a QuoteItem - QuoteItem
   *
   * Requires 
   * Returns quoteId[String], quoteItemSeqId[String]
   */
  Future<OfResult> createQuoteItem(QuoteItem ent, ) =>
      client.invoke('createQuoteItem', ent, {  });

  /**
   * Create a note item and associate with a quote - 
   *
   * Requires quoteId, noteInfo
   * Returns 
   */
  Future<OfResult> createQuoteNote({@required String quoteId, @required String noteInfo, String noteName}) =>
      client.invoke('createQuoteNote', null, { 'quoteId': quoteId, 'noteInfo': noteInfo, 'noteName': noteName });

  /**
   * Create a QuoteRole - QuoteRole
   *
   * Requires quoteId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createQuoteRole(QuoteRole ent, ) =>
      client.invoke('createQuoteRole', ent, {  });

  /**
   * Create a QuoteTermAttribute record - QuoteTermAttribute
   *
   * Requires termTypeId, quoteId, quoteItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createQuoteTermAttribute(QuoteTermAttribute ent, ) =>
      client.invoke('createQuoteTermAttribute', ent, {  });

  /**
   * Create a QuoteType record - QuoteType
   *
   * Requires 
   * Returns quoteTypeId[String]
   */
  Future<OfResult> createQuoteType(QuoteType ent, ) =>
      client.invoke('createQuoteType', ent, {  });

  /**
   * Create a QuoteTypeAttr record - QuoteTypeAttr
   *
   * Requires quoteTypeId, attrName
   * Returns 
   */
  Future<OfResult> createQuoteTypeAttr(QuoteTypeAttr ent, ) =>
      client.invoke('createQuoteTypeAttr', ent, {  });

  /**
   * Creates a new QuoteWorkEffort record and WorkEffort record - QuoteWorkEffort
   *
   * Requires quoteId, workEffortId, quoteId, workEffortId
   * Returns quoteId[String], workEffortId[String], workEffortId[String], quoteId[String], workEffortId[String]
   */
  Future<OfResult> createQuoteWorkEffort(QuoteWorkEffort ent, {String workEffortTypeId, String currentStatusId, DateTime lastStatusUpdate, String workEffortPurposeTypeId, String workEffortParentId, String scopeEnumId, int priority, int percentComplete, String workEffortName, String showAsEnumId, String sendNotificationEmail, String description, String locationDesc, DateTime estimatedStartDate, DateTime estimatedCompletionDate, DateTime actualStartDate, DateTime actualCompletionDate, double estimatedMilliSeconds, double estimatedSetupMillis, String estimateCalcMethod, double actualMilliSeconds, double actualSetupMillis, double totalMilliSecondsAllowed, Decimal totalMoneyAllowed, String moneyUomId, String specialTerms, int timeTransparency, String universalId, String sourceReferenceId, String fixedAssetId, String facilityId, String infoUrl, String recurrenceInfoId, String tempExprId, String runtimeDataId, String noteId, String serviceLoaderName, Decimal quantityToProduce, Decimal quantityProduced, Decimal quantityRejected, Decimal reservPersons, Decimal reserv2ndPPPerc, Decimal reservNthPPPerc, String accommodationMapId, String accommodationSpotId, int revisionNumber, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createQuoteWorkEffort', ent, { 'workEffortTypeId': workEffortTypeId, 'currentStatusId': currentStatusId, 'lastStatusUpdate': lastStatusUpdate, 'workEffortPurposeTypeId': workEffortPurposeTypeId, 'workEffortParentId': workEffortParentId, 'scopeEnumId': scopeEnumId, 'priority': priority, 'percentComplete': percentComplete, 'workEffortName': workEffortName, 'showAsEnumId': showAsEnumId, 'sendNotificationEmail': sendNotificationEmail, 'description': description, 'locationDesc': locationDesc, 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate, 'actualStartDate': actualStartDate, 'actualCompletionDate': actualCompletionDate, 'estimatedMilliSeconds': estimatedMilliSeconds, 'estimatedSetupMillis': estimatedSetupMillis, 'estimateCalcMethod': estimateCalcMethod, 'actualMilliSeconds': actualMilliSeconds, 'actualSetupMillis': actualSetupMillis, 'totalMilliSecondsAllowed': totalMilliSecondsAllowed, 'totalMoneyAllowed': totalMoneyAllowed, 'moneyUomId': moneyUomId, 'specialTerms': specialTerms, 'timeTransparency': timeTransparency, 'universalId': universalId, 'sourceReferenceId': sourceReferenceId, 'fixedAssetId': fixedAssetId, 'facilityId': facilityId, 'infoUrl': infoUrl, 'recurrenceInfoId': recurrenceInfoId, 'tempExprId': tempExprId, 'runtimeDataId': runtimeDataId, 'noteId': noteId, 'serviceLoaderName': serviceLoaderName, 'quantityToProduce': quantityToProduce, 'quantityProduced': quantityProduced, 'quantityRejected': quantityRejected, 'reservPersons': reservPersons, 'reserv2ndPPPerc': reserv2ndPPPerc, 'reservNthPPPerc': reservNthPPPerc, 'accommodationMapId': accommodationMapId, 'accommodationSpotId': accommodationSpotId, 'revisionNumber': revisionNumber, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Delete a QuoteTermAttribute record - QuoteTermAttribute
   *
   * Requires termTypeId, quoteId, quoteItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteQuoteTermAttribute(QuoteTermAttribute ent, ) =>
      client.invoke('deleteQuoteTermAttribute', ent, {  });

  /**
   * Delete a QuoteType record - QuoteType
   *
   * Requires quoteTypeId
   * Returns 
   */
  Future<OfResult> deleteQuoteType(QuoteType ent, ) =>
      client.invoke('deleteQuoteType', ent, {  });

  /**
   * Delete a QuoteTypeAttr record - QuoteTypeAttr
   *
   * Requires quoteTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteQuoteTypeAttr(QuoteTypeAttr ent, ) =>
      client.invoke('deleteQuoteTypeAttr', ent, {  });

  /**
   * Creates a new QuoteWorkEffort record - QuoteWorkEffort
   *
   * Requires quoteId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteQuoteWorkEffort(QuoteWorkEffort ent, ) =>
      client.invoke('deleteQuoteWorkEffort', ent, {  });

  /**
   * Expire a QuoteRole - QuoteRole
   *
   * Requires quoteId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> expireQuoteRole(QuoteRole ent, ) =>
      client.invoke('expireQuoteRole', ent, {  });

  /**
   * Get the Next Quote ID According to Settings on the PartyAcctgPreference Entity for the given Party - 
   *
   * Requires partyId
   * Returns quoteId[String]
   */
  Future<OfResult> getNextQuoteId({@required String partyId, String quoteTypeId, DateTime issueDate, String statusId, String currencyUomId, String productStoreId, String salesChannelEnumId, DateTime validFromDate, DateTime validThruDate, String quoteName, String description}) =>
      client.invoke('getNextQuoteId', null, { 'partyId': partyId, 'quoteTypeId': quoteTypeId, 'issueDate': issueDate, 'statusId': statusId, 'currencyUomId': currencyUomId, 'productStoreId': productStoreId, 'salesChannelEnumId': salesChannelEnumId, 'validFromDate': validFromDate, 'validThruDate': validThruDate, 'quoteName': quoteName, 'description': description });

  /**
   *  - 
   *
   * Requires partyAcctgPreference
   * Returns quoteId[Long]
   */
  Future<OfResult> quoteSequenceEnforced({@required Map<String,dynamic> partyAcctgPreference, String partyId, String quoteTypeId, DateTime issueDate, String statusId, String currencyUomId, String productStoreId, String salesChannelEnumId, DateTime validFromDate, DateTime validThruDate, String quoteName, String description}) =>
      client.invoke('quoteSequenceEnforced', null, { 'partyAcctgPreference': partyAcctgPreference, 'partyId': partyId, 'quoteTypeId': quoteTypeId, 'issueDate': issueDate, 'statusId': statusId, 'currencyUomId': currencyUomId, 'productStoreId': productStoreId, 'salesChannelEnumId': salesChannelEnumId, 'validFromDate': validFromDate, 'validThruDate': validThruDate, 'quoteName': quoteName, 'description': description });

  /**
   * Remove a QuoteAdjustment - QuoteAdjustment
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> removeQuoteAdjustment(QuoteAdjustment ent, ) =>
      client.invoke('removeQuoteAdjustment', ent, {  });

  /**
   * Remove a QuoteAttribute - QuoteAttribute
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> removeQuoteAttribute(QuoteAttribute ent, ) =>
      client.invoke('removeQuoteAttribute', ent, {  });

  /**
   * Remove a QuoteCoefficient - QuoteCoefficient
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> removeQuoteCoefficient(QuoteCoefficient ent, ) =>
      client.invoke('removeQuoteCoefficient', ent, {  });

  /**
   * Remove a QuoteItem - QuoteItem
   *
   * Requires 
   * Returns quoteId[String], quoteItemSeqId[String]
   */
  Future<OfResult> removeQuoteItem(QuoteItem ent, ) =>
      client.invoke('removeQuoteItem', ent, {  });

  /**
   * Remove a QuoteRole - QuoteRole
   *
   * Requires quoteId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeQuoteRole(QuoteRole ent, ) =>
      client.invoke('removeQuoteRole', ent, {  });

  /**
   * Send a quote report mail - 
   *
   * Requires emailType, quoteId, sendTo
   * Returns emailType[String], body[String], subject[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String]
   */
  Future<OfResult> sendQuoteReportMail({@required String emailType, @required String quoteId, @required String sendTo, String sendCc, String note}) =>
      client.invoke('sendQuoteReportMail', null, { 'emailType': emailType, 'quoteId': quoteId, 'sendTo': sendTo, 'sendCc': sendCc, 'note': note });

  /**
   * Creates quote entities - Quote
   *
   * Requires 
   * Returns quoteId[String]
   */
  Future<OfResult> storeQuote(Quote ent, {List<dynamic> quoteItems, List<dynamic> quoteAttributes, List<dynamic> quoteCoefficients, List<dynamic> quoteRoles, List<dynamic> quoteTerms, List<dynamic> quoteTermAttributes, List<dynamic> quoteWorkEfforts, List<dynamic> quoteAdjustments}) =>
      client.invoke('storeQuote', ent, { 'quoteItems': quoteItems, 'quoteAttributes': quoteAttributes, 'quoteCoefficients': quoteCoefficients, 'quoteRoles': quoteRoles, 'quoteTerms': quoteTerms, 'quoteTermAttributes': quoteTermAttributes, 'quoteWorkEfforts': quoteWorkEfforts, 'quoteAdjustments': quoteAdjustments });

  /**
   * Update a Quote - Quote
   *
   * Requires quoteId
   * Returns 
   */
  Future<OfResult> updateQuote(Quote ent, ) =>
      client.invoke('updateQuote', ent, {  });

  /**
   * Update a QuoteAdjustment - QuoteAdjustment
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateQuoteAdjustment(QuoteAdjustment ent, ) =>
      client.invoke('updateQuoteAdjustment', ent, {  });

  /**
   * Update a QuoteAttribute - QuoteAttribute
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateQuoteAttribute(QuoteAttribute ent, ) =>
      client.invoke('updateQuoteAttribute', ent, {  });

  /**
   * Update a QuoteCoefficient - QuoteCoefficient
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateQuoteCoefficient(QuoteCoefficient ent, ) =>
      client.invoke('updateQuoteCoefficient', ent, {  });

  /**
   * Update a QuoteItem - QuoteItem
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateQuoteItem(QuoteItem ent, ) =>
      client.invoke('updateQuoteItem', ent, {  });

  /**
   * Update a QuoteRole - QuoteRole
   *
   * Requires quoteId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> updateQuoteRole(QuoteRole ent, ) =>
      client.invoke('updateQuoteRole', ent, {  });

  /**
   * Update a QuoteTermAttribute record - QuoteTermAttribute
   *
   * Requires termTypeId, quoteId, quoteItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateQuoteTermAttribute(QuoteTermAttribute ent, ) =>
      client.invoke('updateQuoteTermAttribute', ent, {  });

  /**
   * Update a QuoteType record - QuoteType
   *
   * Requires quoteTypeId
   * Returns 
   */
  Future<OfResult> updateQuoteType(QuoteType ent, ) =>
      client.invoke('updateQuoteType', ent, {  });

  /**
   * Update a QuoteTypeAttr record - QuoteTypeAttr
   *
   * Requires quoteTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateQuoteTypeAttr(QuoteTypeAttr ent, ) =>
      client.invoke('updateQuoteTypeAttr', ent, {  });

}