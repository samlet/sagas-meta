import 'package:sagas_meta/src/models/order_request.dart';
import 'package:sagas_meta/src/models/order_order.dart';
import 'package:sagas_meta/src/models/order_shoppinglist.dart';
import 'package:sagas_meta/src/models/order_quote.dart';
import 'package:sagas_meta/src/models/order_requirement.dart';
import 'package:sagas_meta/src/models/workeffort_workeffort.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class WorkeffortServices{
  final SrvClient client;
  WorkeffortServices(this.client);

  /**
   * Create or update WorkEffortInventoryAssign - WorkEffortInventoryAssign
   *
   * Requires workEffortId, inventoryItemId, inventoryItemId, workEffortId
   * Returns 
   */
  Future<OfResult> assignInventoryToWorkEffort(WorkEffortInventoryAssign ent, ) =>
      client.invoke('assignInventoryToWorkEffort', ent, {  });

  /**
   * Create a WorkEffortPartyAssignment Entity - WorkEffortPartyAssignment
   *
   * Requires workEffortId, partyId, roleTypeId, statusId, partyId, roleTypeId, statusId, workEffortId
   * Returns fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> assignPartyToWorkEffort(WorkEffortPartyAssignment ent, ) =>
      client.invoke('assignPartyToWorkEffort', ent, {  });

  /**
   * Checks to see if a CustRequestItem exists - 
   *
   * Requires 
   * Returns custRequestItemExists[java.lang.String]
   */
  Future<OfResult> checkCustRequestItemExists({String custRequestId, String custRequestItemSeqId}) =>
      client.invoke('checkCustRequestItemExists', null, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId });

  /**
   * Copies an existing WorkEffort to a new WorkEffort. - 
   *
   * Requires sourceWorkEffortId
   * Returns workEffortId[String]
   */
  Future<OfResult> copyWorkEffort({@required String sourceWorkEffortId, String targetWorkEffortId, String copyWorkEffortAssocs, String deepCopy, String excludeExpiredAssocs, String copyRelatedValues, String excludeExpiredRelations}) =>
      client.invoke('copyWorkEffort', null, { 'sourceWorkEffortId': sourceWorkEffortId, 'targetWorkEffortId': targetWorkEffortId, 'copyWorkEffortAssocs': copyWorkEffortAssocs, 'deepCopy': deepCopy, 'excludeExpiredAssocs': excludeExpiredAssocs, 'copyRelatedValues': copyRelatedValues, 'excludeExpiredRelations': excludeExpiredRelations });

  /**
   * Copies WorkEffortAssocs from one WorkEffort to another WorkEffort. Only child WorkEffort associations will be copied. - 
   *
   * Requires sourceWorkEffortId
   * Returns 
   */
  Future<OfResult> copyWorkEffortAssocs({@required String sourceWorkEffortId, String targetWorkEffortId, String deepCopy, String excludeExpiredAssocs, String copyRelatedValues, String excludeExpiredRelations}) =>
      client.invoke('copyWorkEffortAssocs', null, { 'sourceWorkEffortId': sourceWorkEffortId, 'targetWorkEffortId': targetWorkEffortId, 'deepCopy': deepCopy, 'excludeExpiredAssocs': excludeExpiredAssocs, 'copyRelatedValues': copyRelatedValues, 'excludeExpiredRelations': excludeExpiredRelations });

  /**
   * Creates a CommunicationEvent entity and CommunicationEventWorkEff - 
   *
   * Requires 
   * Returns communicationEventId[String], workEffortId[String], communicationEventId[String]
   */
  Future<OfResult> createCommunicationEventWorkEff({String communicationEventId, String communicationEventTypeId, String origCommEventId, String parentCommEventId, String statusId, String contactMechTypeId, String contactMechIdFrom, String contactMechIdTo, String roleTypeIdFrom, String roleTypeIdTo, String partyIdFrom, String partyIdTo, DateTime entryDate, DateTime datetimeStarted, DateTime datetimeEnded, String subject, String contentMimeTypeId, String content, String note, String reasonEnumId, String contactListId, String headerString, String fromString, String toString, String ccString, String bccString, String messageId, String workEffortId, String description}) =>
      client.invoke('createCommunicationEventWorkEff', null, { 'communicationEventId': communicationEventId, 'communicationEventTypeId': communicationEventTypeId, 'origCommEventId': origCommEventId, 'parentCommEventId': parentCommEventId, 'statusId': statusId, 'contactMechTypeId': contactMechTypeId, 'contactMechIdFrom': contactMechIdFrom, 'contactMechIdTo': contactMechIdTo, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdTo': roleTypeIdTo, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'entryDate': entryDate, 'datetimeStarted': datetimeStarted, 'datetimeEnded': datetimeEnded, 'subject': subject, 'contentMimeTypeId': contentMimeTypeId, 'content': content, 'note': note, 'reasonEnumId': reasonEnumId, 'contactListId': contactListId, 'headerString': headerString, 'fromString': fromString, 'toString': toString, 'ccString': ccString, 'bccString': bccString, 'messageId': messageId, 'workEffortId': workEffortId, 'description': description });

  /**
   * Creates a OrderHeaderWorkEffort - OrderHeaderWorkEffort
   *
   * Requires orderId, workEffortId, workEffortId
   * Returns orderId[String], orderId[String]
   */
  Future<OfResult> createOrderHeaderWorkEffort(OrderHeaderWorkEffort ent, {String orderTypeId, String orderName, String externalId, String salesChannelEnumId, DateTime orderDate, String priority, DateTime entryDate, DateTime pickSheetPrintedDate, String visitId, String statusId, String createdBy, String firstAttemptOrderId, String currencyUom, String syncStatusId, String billingAccountId, String originFacilityId, String webSiteId, String productStoreId, String agreementId, String terminalId, String transactionId, String autoOrderShoppingListId, String needsInventoryIssuance, String isRushOrder, String internalCode, Decimal remainingSubTotal, Decimal grandTotal, String isViewed, String invoicePerShipment}) =>
      client.invoke('createOrderHeaderWorkEffort', ent, { 'orderTypeId': orderTypeId, 'orderName': orderName, 'externalId': externalId, 'salesChannelEnumId': salesChannelEnumId, 'orderDate': orderDate, 'priority': priority, 'entryDate': entryDate, 'pickSheetPrintedDate': pickSheetPrintedDate, 'visitId': visitId, 'statusId': statusId, 'createdBy': createdBy, 'firstAttemptOrderId': firstAttemptOrderId, 'currencyUom': currencyUom, 'syncStatusId': syncStatusId, 'billingAccountId': billingAccountId, 'originFacilityId': originFacilityId, 'webSiteId': webSiteId, 'productStoreId': productStoreId, 'agreementId': agreementId, 'terminalId': terminalId, 'transactionId': transactionId, 'autoOrderShoppingListId': autoOrderShoppingListId, 'needsInventoryIssuance': needsInventoryIssuance, 'isRushOrder': isRushOrder, 'internalCode': internalCode, 'remainingSubTotal': remainingSubTotal, 'grandTotal': grandTotal, 'isViewed': isViewed, 'invoicePerShipment': invoicePerShipment });

  /**
   * Creates a ShoppingListWorkEffort - ShoppingListWorkEffort
   *
   * Requires shoppingListId, workEffortId, workEffortId
   * Returns shoppingListId[String], shoppingListId[String]
   */
  Future<OfResult> createShoppingListWorkEffort(ShoppingListWorkEffort ent, {String shoppingListTypeId, String parentShoppingListId, String productStoreId, String visitorId, String partyId, String listName, String description, String isPublic, String isActive, String currencyUom, String shipmentMethodTypeId, String carrierPartyId, String carrierRoleTypeId, String contactMechId, String paymentMethodId, String recurrenceInfoId, DateTime lastOrderedDate, DateTime lastAdminModified, String productPromoCodeId}) =>
      client.invoke('createShoppingListWorkEffort', ent, { 'shoppingListTypeId': shoppingListTypeId, 'parentShoppingListId': parentShoppingListId, 'productStoreId': productStoreId, 'visitorId': visitorId, 'partyId': partyId, 'listName': listName, 'description': description, 'isPublic': isPublic, 'isActive': isActive, 'currencyUom': currencyUom, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'recurrenceInfoId': recurrenceInfoId, 'lastOrderedDate': lastOrderedDate, 'lastAdminModified': lastAdminModified, 'productPromoCodeId': productPromoCodeId });

  /**
   * Create a WorkEffort Entity - WorkEffort
   *
   * Requires workEffortTypeId, workEffortName, currentStatusId
   * Returns workEffortId[String]
   */
  Future<OfResult> createWorkEffort(WorkEffort ent, {String quickAssignPartyId, String requirementId, String custRequestId, String communicationEventId, String webSiteId}) =>
      client.invoke('createWorkEffort', ent, { 'quickAssignPartyId': quickAssignPartyId, 'requirementId': requirementId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'webSiteId': webSiteId });

  /**
   * Creates a WorkEffort entity and WorkEffortAssoc - 
   *
   * Requires workEffortTypeId, currentStatusId, workEffortName, workEffortIdFrom, workEffortAssocTypeId, currentStatusId, workEffortName, workEffortAssocTypeId, workEffortIdFrom, workEffortTypeId
   * Returns workEffortId[String], workEffortIdFrom[String], workEffortIdTo[String], workEffortAssocTypeId[String], fromDate[java.sql.Timestamp], workEffortIdTo[String], fromDate[java.sql.Timestamp], workEffortAssocTypeId[String], workEffortIdFrom[String]
   */
  Future<OfResult> createWorkEffortAndAssoc({String workEffortId, @required String workEffortTypeId, @required String currentStatusId, DateTime lastStatusUpdate, String workEffortPurposeTypeId, String workEffortParentId, String scopeEnumId, int priority, int percentComplete, @required String workEffortName, String showAsEnumId, String sendNotificationEmail, String description, String locationDesc, DateTime estimatedStartDate, DateTime estimatedCompletionDate, DateTime actualStartDate, DateTime actualCompletionDate, double estimatedMilliSeconds, double estimatedSetupMillis, String estimateCalcMethod, double actualMilliSeconds, double actualSetupMillis, double totalMilliSecondsAllowed, Decimal totalMoneyAllowed, String moneyUomId, String specialTerms, int timeTransparency, String universalId, String sourceReferenceId, String fixedAssetId, String facilityId, String infoUrl, String recurrenceInfoId, String tempExprId, String runtimeDataId, String noteId, String serviceLoaderName, Decimal quantityToProduce, Decimal quantityProduced, Decimal quantityRejected, Decimal reservPersons, Decimal reserv2ndPPPerc, Decimal reservNthPPPerc, String accommodationMapId, String accommodationSpotId, int revisionNumber, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String workEffortIdFrom, String workEffortIdTo, @required String workEffortAssocTypeId, DateTime fromDate, int sequenceNum, DateTime thruDate, String quickAssignPartyId}) =>
      client.invoke('createWorkEffortAndAssoc', null, { 'workEffortId': workEffortId, 'workEffortTypeId': workEffortTypeId, 'currentStatusId': currentStatusId, 'lastStatusUpdate': lastStatusUpdate, 'workEffortPurposeTypeId': workEffortPurposeTypeId, 'workEffortParentId': workEffortParentId, 'scopeEnumId': scopeEnumId, 'priority': priority, 'percentComplete': percentComplete, 'workEffortName': workEffortName, 'showAsEnumId': showAsEnumId, 'sendNotificationEmail': sendNotificationEmail, 'description': description, 'locationDesc': locationDesc, 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate, 'actualStartDate': actualStartDate, 'actualCompletionDate': actualCompletionDate, 'estimatedMilliSeconds': estimatedMilliSeconds, 'estimatedSetupMillis': estimatedSetupMillis, 'estimateCalcMethod': estimateCalcMethod, 'actualMilliSeconds': actualMilliSeconds, 'actualSetupMillis': actualSetupMillis, 'totalMilliSecondsAllowed': totalMilliSecondsAllowed, 'totalMoneyAllowed': totalMoneyAllowed, 'moneyUomId': moneyUomId, 'specialTerms': specialTerms, 'timeTransparency': timeTransparency, 'universalId': universalId, 'sourceReferenceId': sourceReferenceId, 'fixedAssetId': fixedAssetId, 'facilityId': facilityId, 'infoUrl': infoUrl, 'recurrenceInfoId': recurrenceInfoId, 'tempExprId': tempExprId, 'runtimeDataId': runtimeDataId, 'noteId': noteId, 'serviceLoaderName': serviceLoaderName, 'quantityToProduce': quantityToProduce, 'quantityProduced': quantityProduced, 'quantityRejected': quantityRejected, 'reservPersons': reservPersons, 'reserv2ndPPPerc': reserv2ndPPPerc, 'reservNthPPPerc': reservNthPPPerc, 'accommodationMapId': accommodationMapId, 'accommodationSpotId': accommodationSpotId, 'revisionNumber': revisionNumber, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'workEffortIdFrom': workEffortIdFrom, 'workEffortIdTo': workEffortIdTo, 'workEffortAssocTypeId': workEffortAssocTypeId, 'fromDate': fromDate, 'sequenceNum': sequenceNum, 'thruDate': thruDate, 'quickAssignPartyId': quickAssignPartyId });

  /**
   * Create a WorkEffort Entity and assign to a party - WorkEffort
   *
   * Requires partyId, roleTypeId, statusId, workEffortTypeId, workEffortName, currentStatusId
   * Returns workEffortId[String]
   */
  Future<OfResult> createWorkEffortAndPartyAssign(WorkEffort ent, {@required String partyId, @required String roleTypeId, @required String statusId, String quickAssignPartyId, String requirementId, String communicationEventId}) =>
      client.invoke('createWorkEffortAndPartyAssign', ent, { 'partyId': partyId, 'roleTypeId': roleTypeId, 'statusId': statusId, 'quickAssignPartyId': quickAssignPartyId, 'requirementId': requirementId, 'communicationEventId': communicationEventId });

  /**
   * 
            Create a WorkEffort Assoc, for linking task to describe a project or
            for linking routing with its routingTasks
         - WorkEffortAssoc
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, workEffortAssocTypeId, workEffortIdFrom, workEffortIdTo
   * Returns 
   */
  Future<OfResult> createWorkEffortAssoc(WorkEffortAssoc ent, ) =>
      client.invoke('createWorkEffortAssoc', ent, {  });

  /**
   * Create a WorkEffort Attribute - WorkEffortAttribute
   *
   * Requires workEffortId, attrName, attrName, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortAttribute(WorkEffortAttribute ent, ) =>
      client.invoke('createWorkEffortAttribute', ent, {  });

  /**
   * Create WorkEffortContactMech; if contactMechId is not provided, a new contact mech is created (if partyId is set then the new contact mech is also associated to the party) - 
   *
   * Requires workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> createWorkEffortContactMech({DateTime thruDate, String comments, String partyId, String contactMechId, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId}) =>
      client.invoke('createWorkEffortContactMech', null, { 'thruDate': thruDate, 'comments': comments, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a Work Effort Content - WorkEffortContent
   *
   * Requires workEffortId, contentId, workEffortContentTypeId, contentId, workEffortContentTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortContent(WorkEffortContent ent, ) =>
      client.invoke('createWorkEffortContent', ent, {  });

  /**
   * Create WorkEffort Email Address - 
   *
   * Requires workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> createWorkEffortEmailAddress({DateTime thruDate, String comments, String partyId, String contactMechId, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId}) =>
      client.invoke('createWorkEffortEmailAddress', null, { 'thruDate': thruDate, 'comments': comments, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * Create a WorkEffort Event Reminder - WorkEffortEventReminder
   *
   * Requires workEffortId, workEffortId
   * Returns sequenceId[String], sequenceId[String]
   */
  Future<OfResult> createWorkEffortEventReminder(WorkEffortEventReminder ent, ) =>
      client.invoke('createWorkEffortEventReminder', ent, {  });

  /**
   * Create a WorkEffortFixedAssetAssign entry to associate a fixed asset
            with a work effort (e.g. a production run task) - WorkEffortFixedAssetAssign
   *
   * Requires workEffortId, fixedAssetId, fixedAssetId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortFixedAssetAssign(WorkEffortFixedAssetAssign ent, ) =>
      client.invoke('createWorkEffortFixedAssetAssign', ent, {  });

  /**
   * Creates a WorkEffortFixedAssetStd entry to associate a routing task
            with a fixed asset (type) - WorkEffortFixedAssetStd
   *
   * Requires workEffortId, fixedAssetTypeId, fixedAssetTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortFixedAssetStd(WorkEffortFixedAssetStd ent, ) =>
      client.invoke('createWorkEffortFixedAssetStd', ent, {  });

  /**
   * 
            Create a WorkEffort - Product Assoc, for linking WorkEffort to In or Out  Product,
            for routing it's the link between Manufactured Product with its routings
         - WorkEffortGoodStandard
   *
   * Requires workEffortId, productId, workEffortGoodStdTypeId, productId, workEffortGoodStdTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortGoodStandard(WorkEffortGoodStandard ent, ) =>
      client.invoke('createWorkEffortGoodStandard', ent, {  });

  /**
   * Create WorkEffort iCalendar Data - WorkEffortIcalData
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortICalData(WorkEffortIcalData ent, ) =>
      client.invoke('createWorkEffortICalData', ent, {  });

  /**
   * Create WorkEffortInventoryProduced - WorkEffortInventoryProduced
   *
   * Requires workEffortId, inventoryItemId, inventoryItemId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortInventoryProduced(WorkEffortInventoryProduced ent, ) =>
      client.invoke('createWorkEffortInventoryProduced', ent, {  });

  /**
   * Create a Work Effort Keyword - WorkEffortKeyword
   *
   * Requires workEffortId, keyword, keyword, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortKeyword(WorkEffortKeyword ent, ) =>
      client.invoke('createWorkEffortKeyword', ent, {  });

  /**
   * Create a Work Effort Keyword - WorkEffortKeyword
   *
   * Requires workEffortId, keyword, keyword, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortKeywords(WorkEffortKeyword ent, ) =>
      client.invoke('createWorkEffortKeywords', ent, {  });

  /**
   * Create a WorkEffort Note - 
   *
   * Requires workEffortId, noteInfo
   * Returns noteId[String]
   */
  Future<OfResult> createWorkEffortNote({@required String workEffortId, @required String noteInfo, String noteParty, String noteName, String internalNote}) =>
      client.invoke('createWorkEffortNote', null, { 'workEffortId': workEffortId, 'noteInfo': noteInfo, 'noteParty': noteParty, 'noteName': noteName, 'internalNote': internalNote });

  /**
   * Create WorkEffort PostalAddress - 
   *
   * Requires address1, city, postalCode, workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> createWorkEffortPostalAddress({String contactMechId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String partyId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String paymentMethodId, String contactMechPurposeTypeId, String latitude, String longitude, @required String workEffortId, String contactMechTypeId, String infoString}) =>
      client.invoke('createWorkEffortPostalAddress', null, { 'contactMechId': contactMechId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'paymentMethodId': paymentMethodId, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'latitude': latitude, 'longitude': longitude, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString });

  /**
   * Creates a QuoteWorkEffort - QuoteWorkEffort
   *
   * Requires quoteId, workEffortId, quoteId, quoteId, workEffortId
   * Returns quoteId[String], quoteId[String]
   */
  Future<OfResult> createWorkEffortQuote(QuoteWorkEffort ent, {String quoteTypeId, String partyId, DateTime issueDate, String statusId, String currencyUomId, String productStoreId, String salesChannelEnumId, DateTime validFromDate, DateTime validThruDate, String quoteName, String description}) =>
      client.invoke('createWorkEffortQuote', ent, { 'quoteTypeId': quoteTypeId, 'partyId': partyId, 'issueDate': issueDate, 'statusId': statusId, 'currencyUomId': currencyUomId, 'productStoreId': productStoreId, 'salesChannelEnumId': salesChannelEnumId, 'validFromDate': validFromDate, 'validThruDate': validThruDate, 'quoteName': quoteName, 'description': description });

  /**
   * Creates a CustRequestWorkEffort - CustRequestWorkEffort
   *
   * Requires custRequestId, workEffortId, custRequestId, custRequestId, workEffortId
   * Returns custRequestId[String], custRequestId[String]
   */
  Future<OfResult> createWorkEffortRequest(CustRequestWorkEffort ent, {String custRequestTypeId, String custRequestCategoryId, String statusId, String fromPartyId, int priority, DateTime custRequestDate, DateTime responseRequiredDate, String custRequestName, String description, String maximumAmountUomId, String productStoreId, String salesChannelEnumId, String fulfillContactMechId, String currencyUomId, DateTime openDateTime, DateTime closedDateTime, String internalComment, String reason, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createWorkEffortRequest', ent, { 'custRequestTypeId': custRequestTypeId, 'custRequestCategoryId': custRequestCategoryId, 'statusId': statusId, 'fromPartyId': fromPartyId, 'priority': priority, 'custRequestDate': custRequestDate, 'responseRequiredDate': responseRequiredDate, 'custRequestName': custRequestName, 'description': description, 'maximumAmountUomId': maximumAmountUomId, 'productStoreId': productStoreId, 'salesChannelEnumId': salesChannelEnumId, 'fulfillContactMechId': fulfillContactMechId, 'currencyUomId': currencyUomId, 'openDateTime': openDateTime, 'closedDateTime': closedDateTime, 'internalComment': internalComment, 'reason': reason, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Creates a CustRequestItemWorkEffort - 
   *
   * Requires custRequestId, custRequestItemSeqId, workEffortId, custRequestId, custRequestItemSeqId, custRequestId, custRequestItemSeqId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortRequestItem({@required String custRequestId, @required String custRequestItemSeqId, @required String workEffortId, String custRequestResolutionId, String statusId, int priority, int sequenceNum, DateTime requiredByDate, String productId, Decimal quantity, Decimal selectedAmount, Decimal maximumAmount, DateTime reservStart, Decimal reservLength, Decimal reservPersons, String configId, String description, String story, String custRequestItemExists}) =>
      client.invoke('createWorkEffortRequestItem', null, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId, 'workEffortId': workEffortId, 'custRequestResolutionId': custRequestResolutionId, 'statusId': statusId, 'priority': priority, 'sequenceNum': sequenceNum, 'requiredByDate': requiredByDate, 'productId': productId, 'quantity': quantity, 'selectedAmount': selectedAmount, 'maximumAmount': maximumAmount, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'configId': configId, 'description': description, 'story': story, 'custRequestItemExists': custRequestItemExists });

  /**
   * Creates a CustRequestItem entity and CustRequestItemWorkEffort - 
   *
   * Requires custRequestId, custRequestItemSeqId, workEffortId, custRequestId, custRequestItemSeqId, custRequestId, custRequestItemSeqId, workEffortId
   * Returns custRequestItemExists[java.lang.String]
   */
  Future<OfResult> createWorkEffortRequestItemAndRequestItem({@required String custRequestId, @required String custRequestItemSeqId, @required String workEffortId, String custRequestResolutionId, String statusId, int priority, int sequenceNum, DateTime requiredByDate, String productId, Decimal quantity, Decimal selectedAmount, Decimal maximumAmount, DateTime reservStart, Decimal reservLength, Decimal reservPersons, String configId, String description, String story, String custRequestItemExists}) =>
      client.invoke('createWorkEffortRequestItemAndRequestItem', null, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId, 'workEffortId': workEffortId, 'custRequestResolutionId': custRequestResolutionId, 'statusId': statusId, 'priority': priority, 'sequenceNum': sequenceNum, 'requiredByDate': requiredByDate, 'productId': productId, 'quantity': quantity, 'selectedAmount': selectedAmount, 'maximumAmount': maximumAmount, 'reservStart': reservStart, 'reservLength': reservLength, 'reservPersons': reservPersons, 'configId': configId, 'description': description, 'story': story, 'custRequestItemExists': custRequestItemExists });

  /**
   * Create a Work Effort Review - WorkEffortReview
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortReview(WorkEffortReview ent, ) =>
      client.invoke('createWorkEffortReview', ent, {  });

  /**
   * Create WorkEffortSkillStandard - WorkEffortSkillStandard
   *
   * Requires workEffortId, skillTypeId, skillTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortSkillStandard(WorkEffortSkillStandard ent, ) =>
      client.invoke('createWorkEffortSkillStandard', ent, {  });

  /**
   * Create a WorkEffort Survey - WorkEffortSurveyAppl
   *
   * Requires workEffortId, surveyId, fromDate, fromDate, surveyId, workEffortId
   * Returns 
   */
  Future<OfResult> createWorkEffortSurveyAppl(WorkEffortSurveyAppl ent, ) =>
      client.invoke('createWorkEffortSurveyAppl', ent, {  });

  /**
   * Create WorkEffort TelecomNumber - 
   *
   * Requires workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> createWorkEffortTelecomNumber({String contactMechId, String countryCode, String areaCode, String contactNumber, String askForName, String partyId, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String contactMechPurposeTypeId, @required String workEffortId, String contactMechTypeId, String infoString}) =>
      client.invoke('createWorkEffortTelecomNumber', null, { 'contactMechId': contactMechId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString });

  /**
   * Creates a WorkRequirementFulfillment - WorkRequirementFulfillment
   *
   * Requires workEffortId, requirementId, workEffortId, requirementId
   * Returns 
   */
  Future<OfResult> createWorkRequirementFulfillment(WorkRequirementFulfillment ent, {String requirementTypeId, String facilityId, String deliverableId, String fixedAssetId, String productId, String statusId, String description, DateTime requirementStartDate, DateTime requiredByDate, Decimal estimatedBudget, Decimal quantity, String useCase, String reason, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createWorkRequirementFulfillment', ent, { 'requirementTypeId': requirementTypeId, 'facilityId': facilityId, 'deliverableId': deliverableId, 'fixedAssetId': fixedAssetId, 'productId': productId, 'statusId': statusId, 'description': description, 'requirementStartDate': requirementStartDate, 'requiredByDate': requiredByDate, 'estimatedBudget': estimatedBudget, 'quantity': quantity, 'useCase': useCase, 'reason': reason, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Deletes CommunicationEventWorkEff - 
   *
   * Requires workEffortId, communicationEventId, communicationEventId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteCommunicationEventWorkEff({@required String workEffortId, @required String communicationEventId}) =>
      client.invoke('deleteCommunicationEventWorkEff', null, { 'workEffortId': workEffortId, 'communicationEventId': communicationEventId });

  /**
   * Deletes a OrderHeaderWorkEffort - OrderHeaderWorkEffort
   *
   * Requires orderId, workEffortId, orderId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteOrderHeaderWorkEffort(OrderHeaderWorkEffort ent, ) =>
      client.invoke('deleteOrderHeaderWorkEffort', ent, {  });

  /**
   * delete/set the thrudate on the WorkEffortPartyAssignment Entity to today - WorkEffortPartyAssignment
   *
   * Requires workEffortId, partyId, roleTypeId, fromDate, fromDate, partyId, roleTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> deletePartyToWorkEffortAssignment(WorkEffortPartyAssignment ent, ) =>
      client.invoke('deletePartyToWorkEffortAssignment', ent, {  });

  /**
   * Deletes a ShoppingListWorkEffort - ShoppingListWorkEffort
   *
   * Requires shoppingListId, workEffortId, shoppingListId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteShoppingListWorkEffort(ShoppingListWorkEffort ent, ) =>
      client.invoke('deleteShoppingListWorkEffort', ent, {  });

  /**
   * Delete a WorkEffort Entity - WorkEffort
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffort(WorkEffort ent, ) =>
      client.invoke('deleteWorkEffort', ent, {  });

  /**
   * Delete a WorkEffort Attribute - WorkEffortAttribute
   *
   * Requires workEffortId, attrName, attrName, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortAttribute(WorkEffortAttribute ent, ) =>
      client.invoke('deleteWorkEffortAttribute', ent, {  });

  /**
   * Delete WorkEffortContactMech - WorkEffortContactMech
   *
   * Requires workEffortId, contactMechId, fromDate
   * Returns 
   */
  Future<OfResult> deleteWorkEffortContactMech(WorkEffortContactMech ent, ) =>
      client.invoke('deleteWorkEffortContactMech', ent, {  });

  /**
   * Delete a Work Effort Content - WorkEffortContent
   *
   * Requires workEffortId, contentId, workEffortContentTypeId, fromDate, contentId, fromDate, workEffortContentTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortContent(WorkEffortContent ent, ) =>
      client.invoke('deleteWorkEffortContent', ent, {  });

  /**
   * Delete a WorkEffort Event Reminder - WorkEffortEventReminder
   *
   * Requires workEffortId, sequenceId, sequenceId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortEventReminder(WorkEffortEventReminder ent, ) =>
      client.invoke('deleteWorkEffortEventReminder', ent, {  });

  /**
   * Delete WorkEffort iCalendar Data - WorkEffortIcalData
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortICalData(WorkEffortIcalData ent, ) =>
      client.invoke('deleteWorkEffortICalData', ent, {  });

  /**
   * Delete WorkEffortInventoryProduced - WorkEffortInventoryProduced
   *
   * Requires workEffortId, inventoryItemId, workEffortId, inventoryItemId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortInventoryProduced(WorkEffortInventoryProduced ent, ) =>
      client.invoke('deleteWorkEffortInventoryProduced', ent, {  });

  /**
   * Remove a Work Effort Keyword - 
   *
   * Requires workEffortId, keyword, keyword, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortKeyword({@required String workEffortId, @required String keyword}) =>
      client.invoke('deleteWorkEffortKeyword', null, { 'workEffortId': workEffortId, 'keyword': keyword });

  /**
   * Remove all Work Effort Keyword - 
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortKeywords({@required String workEffortId}) =>
      client.invoke('deleteWorkEffortKeywords', null, { 'workEffortId': workEffortId });

  /**
   * Deletes a QuoteWorkEffort - QuoteWorkEffort
   *
   * Requires quoteId, workEffortId, quoteId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortQuote(QuoteWorkEffort ent, ) =>
      client.invoke('deleteWorkEffortQuote', ent, {  });

  /**
   * Deletes a CustRequestWorkEffort - CustRequestWorkEffort
   *
   * Requires custRequestId, workEffortId, custRequestId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortRequest(CustRequestWorkEffort ent, ) =>
      client.invoke('deleteWorkEffortRequest', ent, {  });

  /**
   * Deletes a CustRequestItemWorkEffort - 
   *
   * Requires custRequestId, custRequestItemSeqId, workEffortId, custRequestId, custRequestItemSeqId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortRequestItem({@required String custRequestId, @required String custRequestItemSeqId, @required String workEffortId}) =>
      client.invoke('deleteWorkEffortRequestItem', null, { 'custRequestId': custRequestId, 'custRequestItemSeqId': custRequestItemSeqId, 'workEffortId': workEffortId });

  /**
   * Remove a Work Effort Review - 
   *
   * Requires workEffortId, userLoginId, reviewDate, reviewDate, userLoginId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortReview({@required String workEffortId, @required String userLoginId, @required DateTime reviewDate}) =>
      client.invoke('deleteWorkEffortReview', null, { 'workEffortId': workEffortId, 'userLoginId': userLoginId, 'reviewDate': reviewDate });

  /**
   * Delete WorkEffortSkillStandard - WorkEffortSkillStandard
   *
   * Requires workEffortId, skillTypeId, skillTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteWorkEffortSkillStandard(WorkEffortSkillStandard ent, ) =>
      client.invoke('deleteWorkEffortSkillStandard', ent, {  });

  /**
   * Deletes a WorkRequirementFulfillment - WorkRequirementFulfillment
   *
   * Requires requirementId, workEffortId, workEffortId, requirementId
   * Returns 
   */
  Future<OfResult> deleteWorkRequirementFulfillment(WorkRequirementFulfillment ent, ) =>
      client.invoke('deleteWorkRequirementFulfillment', ent, {  });

  /**
   * Duplicate a Work Effort. If workEffortId is empty a new workEffortId will be generated.
            Set the statusId of the new WorkEffort to this status, otherwise, set the status to the first of the
            sequenceId of the statusTypeId - 
   *
   * Requires oldWorkEffortId
   * Returns workEffortId[String]
   */
  Future<OfResult> duplicateWorkEffort({String workEffortId, @required String oldWorkEffortId, String duplicateWorkEffortAssocs, String duplicateWorkEffortContents, String duplicateWorkEffortNotes, String duplicateWorkEffortAssignmentRates, String removeWorkEffortAssocs, String removeWorkEffortContents, String removeWorkEffortNotes, String removeWorkEffortAssignmentRates, String statusId}) =>
      client.invoke('duplicateWorkEffort', null, { 'workEffortId': workEffortId, 'oldWorkEffortId': oldWorkEffortId, 'duplicateWorkEffortAssocs': duplicateWorkEffortAssocs, 'duplicateWorkEffortContents': duplicateWorkEffortContents, 'duplicateWorkEffortNotes': duplicateWorkEffortNotes, 'duplicateWorkEffortAssignmentRates': duplicateWorkEffortAssignmentRates, 'removeWorkEffortAssocs': removeWorkEffortAssocs, 'removeWorkEffortContents': removeWorkEffortContents, 'removeWorkEffortNotes': removeWorkEffortNotes, 'removeWorkEffortAssignmentRates': removeWorkEffortAssignmentRates, 'statusId': statusId });

  /**
   * Get iCalendar Work Efforts - 
   *
   * Requires workEffortId
   * Returns workEfforts[List]
   */
  Future<OfResult> getICalWorkEfforts({@required String workEffortId, String workEffortTypeId}) =>
      client.invoke('getICalWorkEfforts', null, { 'workEffortId': workEffortId, 'workEffortTypeId': workEffortTypeId });

  /**
   * Get Party iCalendar URL - 
   *
   * Requires partyId
   * Returns iCalUrl[String]
   */
  Future<OfResult> getPartyICalUrl({@required String partyId}) =>
      client.invoke('getPartyICalUrl', null, { 'partyId': partyId });

  /**
   * 
            Create a map with an entry for each facility. The value is another map with information about
            the manufacturing orders running in the facility for the given product:
            incoming - incomingProductionRunList, estimatedQuantityTotal.  Shows quantity of product to be produced.
            outgoing - outgoingProductionRunList, estimatedQuantityTotal.  Shows quantity of product to be consumed.
         - 
   *
   * Requires productId
   * Returns summaryInByFacility[Map], summaryOutByFacility[Map]
   */
  Future<OfResult> getProductManufacturingSummaryByFacility({@required String productId, String facilityId}) =>
      client.invoke('getProductManufacturingSummaryByFacility', null, { 'productId': productId, 'facilityId': facilityId });

  /**
   * Get WorkEffort - 
   *
   * Requires 
   * Returns workEffortId[java.lang.String], workEffort[org.apache.ofbiz.entity.GenericValue], canView[java.lang.Boolean], tryEntity[java.lang.Boolean], currentStatusItem[org.apache.ofbiz.entity.GenericValue], partyAssigns[java.util.Collection]
   */
  Future<OfResult> getWorkEffort({String workEffortId, String currentStatusId}) =>
      client.invoke('getWorkEffort', null, { 'workEffortId': workEffortId, 'currentStatusId': currentStatusId });

  /**
   * Get WorkEffort Assigned Activities : workEffort assign to userLogin.partyId and with
            workEffortTypeId = ACTIVITY and currentStatusId not in (WF_COMPLETED, WF_TERMINATED, WF_ABORTED)
            and partyAssign.statusId not in (CAL_DECLINED, CAL_DELEGATED, CAL_COMPLETED, CAL_CANCELLED, PRTYASGN_UNASSIGNED) - 
   *
   * Requires 
   * Returns activities[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedActivities() =>
      client.invoke('getWorkEffortAssignedActivities', null, {  });

  /**
   * Get WorkEffort Assigned Activities By Group : same condition as getWorkEffortAssignedActivities but on view WorkEffortPartyAssignByGroup
            to be able to have all parties associated to userLogin.partyId by PartyRelationship - 
   *
   * Requires 
   * Returns groupActivities[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedActivitiesByGroup() =>
      client.invoke('getWorkEffortAssignedActivitiesByGroup', null, {  });

  /**
   * Get WorkEffort Assigned Activities By Role : same condition as getWorkEffortAssignedActivities but on view WorkEffortPartyAssignByRole
            to be able to have all party roles - 
   *
   * Requires 
   * Returns roleActivities[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedActivitiesByRole() =>
      client.invoke('getWorkEffortAssignedActivitiesByRole', null, {  });

  /**
   * Get the active WorkEffort Events where the logged in user is assigned in the specidied role. - 
   *
   * Requires roleTypeId
   * Returns events[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedEventsForRole({@required String roleTypeId}) =>
      client.invoke('getWorkEffortAssignedEventsForRole', null, { 'roleTypeId': roleTypeId });

  /**
   * Get the active WorkEffort Events in the specified role for all the parties. - 
   *
   * Requires roleTypeId
   * Returns events[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedEventsForRoleOfAllParties({@required String roleTypeId}) =>
      client.invoke('getWorkEffortAssignedEventsForRoleOfAllParties', null, { 'roleTypeId': roleTypeId });

  /**
   * Get WorkEffort Assigned Tasks : workEffort assign to userLogin.partyId and with
            workEffortTypeId = TASK and currentStatusId not in (CAL_DECLINED, CAL_DELEGATED, CAL_COMPLETED, CAL_CANCELLED) and partyAssign.statusId != PRTYASGN_UNASSIGNED
            OR  workEffortTypeId = PROD_ORDER_TASK and currentStatusId not in (PRUN_CANCELLED, PRUN_COMPLETED, PRUN_CLOSED) - 
   *
   * Requires 
   * Returns tasks[java.util.List]
   */
  Future<OfResult> getWorkEffortAssignedTasks() =>
      client.invoke('getWorkEffortAssignedTasks', null, {  });

  /**
   * Get WorkEffort Events by a period specified by periodType attribute (one of the
          java.util.Calendar field values). Return a Map with periodStart as the key and a Collection of events for that period as value
          If filterOutCanceledEvents is set to Boolean(true) then workEfforts with currentStatusId=EVENT_CANCELLED will not be returned.
          To limit the events to a particular partyId, specify the partyId.  To limit the events to a set of partyIds, specify a Collection of partyIds.
         - 
   *
   * Requires start, numPeriods, periodType
   * Returns periods[java.util.List], maxConcurrentEntries[java.lang.Integer]
   */
  Future<OfResult> getWorkEffortEventsByPeriod({String calendarType, String partyId, List<dynamic> partyIds, String facilityId, String fixedAssetId, String workEffortTypeId, @required DateTime start, @required int numPeriods, @required int periodType, bool filterOutCanceledEvents, List<dynamic> entityExprList}) =>
      client.invoke('getWorkEffortEventsByPeriod', null, { 'calendarType': calendarType, 'partyId': partyId, 'partyIds': partyIds, 'facilityId': facilityId, 'fixedAssetId': fixedAssetId, 'workEffortTypeId': workEffortTypeId, 'start': start, 'numPeriods': numPeriods, 'periodType': periodType, 'filterOutCanceledEvents': filterOutCanceledEvents, 'entityExprList': entityExprList });

  /**
   * Index the Keywords for a WorkEffort - 
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> indexWorkEffortKeywords({@required String workEffortId, Map<String,dynamic> workEffortInstance}) =>
      client.invoke('indexWorkEffortKeywords', null, { 'workEffortId': workEffortId, 'workEffortInstance': workEffortInstance });

  /**
   * WorkEffort Entity Interface - WorkEffort
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> interfaceWorkEffort(WorkEffort ent, ) =>
      client.invoke('interfaceWorkEffort', ent, {  });

  /**
   * Make a Communication Event Workeffort and create the workeffort itself if the ID not supplied - WorkEffort
   *
   * Requires workEffortId, communicationEventId
   * Returns workEffortId[String], communicationEventId[String]
   */
  Future<OfResult> makeCommunicationEventWorkEffort(WorkEffort ent, {@required String communicationEventId, String relationDescription}) =>
      client.invoke('makeCommunicationEventWorkEffort', ent, { 'communicationEventId': communicationEventId, 'relationDescription': relationDescription });

  /**
   * Process work effort event reminders. This service is run by the job scheduler. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> processWorkEffortEventReminders() =>
      client.invoke('processWorkEffortEventReminders', null, {  });

  /**
   * Quick Assign Party To WorkEffort as Owner - 
   *
   * Requires workEffortId, quickAssignPartyId
   * Returns 
   */
  Future<OfResult> quickAssignPartyToWorkEffort({@required String workEffortId, @required String quickAssignPartyId}) =>
      client.invoke('quickAssignPartyToWorkEffort', null, { 'workEffortId': workEffortId, 'quickAssignPartyId': quickAssignPartyId });

  /**
   * Quick Assign Party To WorkEffort as Owner - 
   *
   * Requires workEffortId, quickAssignPartyId, roleTypeId
   * Returns 
   */
  Future<OfResult> quickAssignPartyToWorkEffortWithRole({@required String workEffortId, @required String quickAssignPartyId, @required String roleTypeId}) =>
      client.invoke('quickAssignPartyToWorkEffortWithRole', null, { 'workEffortId': workEffortId, 'quickAssignPartyId': quickAssignPartyId, 'roleTypeId': roleTypeId });

  /**
   * 
            Remove a WorkEffort Assoc, for linking task to describe a project or
            for linking routing with its routingTasks
         - WorkEffortAssoc
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, fromDate, fromDate, workEffortAssocTypeId, workEffortIdFrom, workEffortIdTo
   * Returns 
   */
  Future<OfResult> removeWorkEffortAssoc(WorkEffortAssoc ent, ) =>
      client.invoke('removeWorkEffortAssoc', ent, {  });

  /**
   * Remove a WorkEffortFixedAssign entry, which removes the association between a fixed asset
            and a work effort (e.g. a production run task) - WorkEffortFixedAssetAssign
   *
   * Requires workEffortId, fixedAssetId, fromDate, fixedAssetId, fromDate, workEffortId
   * Returns 
   */
  Future<OfResult> removeWorkEffortFixedAssetAssign(WorkEffortFixedAssetAssign ent, ) =>
      client.invoke('removeWorkEffortFixedAssetAssign', ent, {  });

  /**
   * Removes a WorkEffortFixedAssetStd, thus removing the association between a routing task
            and a fixed asset (type) - WorkEffortFixedAssetStd
   *
   * Requires workEffortId, fixedAssetTypeId, fixedAssetTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> removeWorkEffortFixedAssetStd(WorkEffortFixedAssetStd ent, ) =>
      client.invoke('removeWorkEffortFixedAssetStd', ent, {  });

  /**
   * Remove a WorkEffort - Product Assoc, for linking WorkEffort to In or Out  Product,
            for routing it's the link between Manufactured Product with its routings
         - WorkEffortGoodStandard
   *
   * Requires workEffortId, productId, workEffortGoodStdTypeId, fromDate, fromDate, productId, workEffortGoodStdTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> removeWorkEffortGoodStandard(WorkEffortGoodStandard ent, ) =>
      client.invoke('removeWorkEffortGoodStandard', ent, {  });

  /**
   * Based on task's estimate dates, write assign entries for the fixed asset the task is assigned to - 
   *
   * Requires workEffortId
   * Returns 
   */
  Future<OfResult> setWorkEffortFixedAssetAssign({@required String workEffortId}) =>
      client.invoke('setWorkEffortFixedAssetAssign', null, { 'workEffortId': workEffortId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> timesheetUpdatePermission({String workEffortId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('timesheetUpdatePermission', null, { 'workEffortId': workEffortId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Delete a WorkEffortPartyAssignment Entity - WorkEffortPartyAssignment
   *
   * Requires workEffortId, partyId, roleTypeId, fromDate, fromDate, partyId, roleTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> unassignPartyFromWorkEffort(WorkEffortPartyAssignment ent, ) =>
      client.invoke('unassignPartyFromWorkEffort', ent, {  });

  /**
   * Updates CommunicationEventWorkEff - 
   *
   * Requires workEffortId, communicationEventId, communicationEventId, workEffortId
   * Returns 
   */
  Future<OfResult> updateCommunicationEventWorkEff({@required String workEffortId, @required String communicationEventId, String description}) =>
      client.invoke('updateCommunicationEventWorkEff', null, { 'workEffortId': workEffortId, 'communicationEventId': communicationEventId, 'description': description });

  /**
   * Update a WorkEffortPartyAssignment Entity - WorkEffortPartyAssignment
   *
   * Requires workEffortId, partyId, roleTypeId, fromDate, fromDate, partyId, roleTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> updatePartyToWorkEffortAssignment(WorkEffortPartyAssignment ent, ) =>
      client.invoke('updatePartyToWorkEffortAssignment', ent, {  });

  /**
   * Update a WorkEffort Entity - WorkEffort
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffort(WorkEffort ent, {String communicationEventId, String reason, String webSiteId}) =>
      client.invoke('updateWorkEffort', ent, { 'communicationEventId': communicationEventId, 'reason': reason, 'webSiteId': webSiteId });

  /**
   * Creates a WorkEffort entity and WorkEffortAssoc - 
   *
   * Requires 
   * Returns workEffortId[String], workEffortIdFrom[String], workEffortIdTo[String], workEffortAssocTypeId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> updateWorkEffortAndAssoc({String workEffortId, String workEffortTypeId, String currentStatusId, DateTime lastStatusUpdate, String workEffortPurposeTypeId, String workEffortParentId, String scopeEnumId, int priority, int percentComplete, String workEffortName, String showAsEnumId, String sendNotificationEmail, String description, String locationDesc, DateTime estimatedStartDate, DateTime estimatedCompletionDate, DateTime actualStartDate, DateTime actualCompletionDate, double estimatedMilliSeconds, double estimatedSetupMillis, String estimateCalcMethod, double actualMilliSeconds, double actualSetupMillis, double totalMilliSecondsAllowed, Decimal totalMoneyAllowed, String moneyUomId, String specialTerms, int timeTransparency, String universalId, String sourceReferenceId, String fixedAssetId, String facilityId, String infoUrl, String recurrenceInfoId, String tempExprId, String runtimeDataId, String noteId, String serviceLoaderName, Decimal quantityToProduce, Decimal quantityProduced, Decimal quantityRejected, Decimal reservPersons, Decimal reserv2ndPPPerc, Decimal reservNthPPPerc, String accommodationMapId, String accommodationSpotId, int revisionNumber, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String workEffortIdFrom, String workEffortIdTo, String workEffortAssocTypeId, DateTime fromDate, int sequenceNum, DateTime thruDate, String communicationEventId, String reason, String webSiteId}) =>
      client.invoke('updateWorkEffortAndAssoc', null, { 'workEffortId': workEffortId, 'workEffortTypeId': workEffortTypeId, 'currentStatusId': currentStatusId, 'lastStatusUpdate': lastStatusUpdate, 'workEffortPurposeTypeId': workEffortPurposeTypeId, 'workEffortParentId': workEffortParentId, 'scopeEnumId': scopeEnumId, 'priority': priority, 'percentComplete': percentComplete, 'workEffortName': workEffortName, 'showAsEnumId': showAsEnumId, 'sendNotificationEmail': sendNotificationEmail, 'description': description, 'locationDesc': locationDesc, 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate, 'actualStartDate': actualStartDate, 'actualCompletionDate': actualCompletionDate, 'estimatedMilliSeconds': estimatedMilliSeconds, 'estimatedSetupMillis': estimatedSetupMillis, 'estimateCalcMethod': estimateCalcMethod, 'actualMilliSeconds': actualMilliSeconds, 'actualSetupMillis': actualSetupMillis, 'totalMilliSecondsAllowed': totalMilliSecondsAllowed, 'totalMoneyAllowed': totalMoneyAllowed, 'moneyUomId': moneyUomId, 'specialTerms': specialTerms, 'timeTransparency': timeTransparency, 'universalId': universalId, 'sourceReferenceId': sourceReferenceId, 'fixedAssetId': fixedAssetId, 'facilityId': facilityId, 'infoUrl': infoUrl, 'recurrenceInfoId': recurrenceInfoId, 'tempExprId': tempExprId, 'runtimeDataId': runtimeDataId, 'noteId': noteId, 'serviceLoaderName': serviceLoaderName, 'quantityToProduce': quantityToProduce, 'quantityProduced': quantityProduced, 'quantityRejected': quantityRejected, 'reservPersons': reservPersons, 'reserv2ndPPPerc': reserv2ndPPPerc, 'reservNthPPPerc': reservNthPPPerc, 'accommodationMapId': accommodationMapId, 'accommodationSpotId': accommodationSpotId, 'revisionNumber': revisionNumber, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'workEffortIdFrom': workEffortIdFrom, 'workEffortIdTo': workEffortIdTo, 'workEffortAssocTypeId': workEffortAssocTypeId, 'fromDate': fromDate, 'sequenceNum': sequenceNum, 'thruDate': thruDate, 'communicationEventId': communicationEventId, 'reason': reason, 'webSiteId': webSiteId });

  /**
   * 
            Update a WorkEffort Assoc, for linking task to describe a project or
            for linking routing with its routingTasks
         - WorkEffortAssoc
   *
   * Requires workEffortIdFrom, workEffortIdTo, workEffortAssocTypeId, fromDate, fromDate, workEffortAssocTypeId, workEffortIdFrom, workEffortIdTo
   * Returns 
   */
  Future<OfResult> updateWorkEffortAssoc(WorkEffortAssoc ent, ) =>
      client.invoke('updateWorkEffortAssoc', ent, {  });

  /**
   * Update a WorkEffort Attribute - WorkEffortAttribute
   *
   * Requires workEffortId, attrName, attrName, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortAttribute(WorkEffortAttribute ent, ) =>
      client.invoke('updateWorkEffortAttribute', ent, {  });

  /**
   * Update WorkEffortContactMech - 
   *
   * Requires workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateWorkEffortContactMech({DateTime thruDate, String comments, String partyId, String contactMechId, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId, String newContactMechId}) =>
      client.invoke('updateWorkEffortContactMech', null, { 'thruDate': thruDate, 'comments': comments, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'newContactMechId': newContactMechId });

  /**
   * Update a Work Effort Content - WorkEffortContent
   *
   * Requires workEffortId, contentId, workEffortContentTypeId, fromDate, contentId, fromDate, workEffortContentTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortContent(WorkEffortContent ent, ) =>
      client.invoke('updateWorkEffortContent', ent, {  });

  /**
   * Update WorkEffort Email Address - 
   *
   * Requires workEffortId
   * Returns contactMechId[String]
   */
  Future<OfResult> updateWorkEffortEmailAddress({DateTime thruDate, String comments, String partyId, String contactMechId, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId, String newContactMechId}) =>
      client.invoke('updateWorkEffortEmailAddress', null, { 'thruDate': thruDate, 'comments': comments, 'partyId': partyId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'newContactMechId': newContactMechId });

  /**
   * Update a WorkEffort Event Reminder - WorkEffortEventReminder
   *
   * Requires workEffortId, sequenceId, sequenceId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortEventReminder(WorkEffortEventReminder ent, ) =>
      client.invoke('updateWorkEffortEventReminder', ent, {  });

  /**
   * Update an existing WorkEffortFixedAssetAssign entry - WorkEffortFixedAssetAssign
   *
   * Requires workEffortId, fixedAssetId, fromDate, fixedAssetId, fromDate, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortFixedAssetAssign(WorkEffortFixedAssetAssign ent, ) =>
      client.invoke('updateWorkEffortFixedAssetAssign', ent, {  });

  /**
   * Updates an existing WorkEffortFixedAssetStd entry - WorkEffortFixedAssetStd
   *
   * Requires workEffortId, fixedAssetTypeId, fixedAssetTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortFixedAssetStd(WorkEffortFixedAssetStd ent, ) =>
      client.invoke('updateWorkEffortFixedAssetStd', ent, {  });

  /**
   * 
            Update a WorkEffort - Product Assoc, for linking WorkEffort to In or Out  Product,
            for routing it's the link between Manufactured Product with its routings
         - WorkEffortGoodStandard
   *
   * Requires workEffortId, productId, workEffortGoodStdTypeId, fromDate, fromDate, productId, workEffortGoodStdTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortGoodStandard(WorkEffortGoodStandard ent, ) =>
      client.invoke('updateWorkEffortGoodStandard', ent, {  });

  /**
   * Update WorkEffort iCalendar Data - WorkEffortIcalData
   *
   * Requires workEffortId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortICalData(WorkEffortIcalData ent, ) =>
      client.invoke('updateWorkEffortICalData', ent, {  });

  /**
   * Update a WorkEffort Note - 
   *
   * Requires workEffortId, noteId, internalNote
   * Returns 
   */
  Future<OfResult> updateWorkEffortNote({@required String workEffortId, @required String noteId, @required String internalNote, String noteInfo}) =>
      client.invoke('updateWorkEffortNote', null, { 'workEffortId': workEffortId, 'noteId': noteId, 'internalNote': internalNote, 'noteInfo': noteInfo });

  /**
   * Update WorkEffort PostalAddress - 
   *
   * Requires address1, city, postalCode, contactMechId, workEffortId
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updateWorkEffortPostalAddress({String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, @required String contactMechId, String partyId, String latitude, String longitude, DateTime thruDate, String comments, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId, String newContactMechId}) =>
      client.invoke('updateWorkEffortPostalAddress', null, { 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'contactMechId': contactMechId, 'partyId': partyId, 'latitude': latitude, 'longitude': longitude, 'thruDate': thruDate, 'comments': comments, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'newContactMechId': newContactMechId });

  /**
   * Update a Work Effort Review - WorkEffortReview
   *
   * Requires workEffortId, userLoginId, reviewDate, reviewDate, userLoginId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortReview(WorkEffortReview ent, ) =>
      client.invoke('updateWorkEffortReview', ent, {  });

  /**
   * Update WorkEffortSkillStandard - WorkEffortSkillStandard
   *
   * Requires workEffortId, skillTypeId, skillTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortSkillStandard(WorkEffortSkillStandard ent, ) =>
      client.invoke('updateWorkEffortSkillStandard', ent, {  });

  /**
   * Update a WorkEffort Survey - WorkEffortSurveyAppl
   *
   * Requires workEffortId, surveyId, fromDate, fromDate, surveyId, workEffortId
   * Returns 
   */
  Future<OfResult> updateWorkEffortSurveyAppl(WorkEffortSurveyAppl ent, ) =>
      client.invoke('updateWorkEffortSurveyAppl', ent, {  });

  /**
   * Update WorkEffort TelecomNumber - 
   *
   * Requires contactMechId, workEffortId
   * Returns contactMechId[String], oldContactMechId[String]
   */
  Future<OfResult> updateWorkEffortTelecomNumber({String countryCode, String areaCode, String contactNumber, String askForName, @required String contactMechId, DateTime thruDate, String comments, String partyId, DateTime fromDate, String roleTypeId, String allowSolicitation, String extension, String verified, int yearsWithContactMech, int monthsWithContactMech, @required String workEffortId, String contactMechTypeId, String infoString, String contactMechPurposeTypeId, String newContactMechId}) =>
      client.invoke('updateWorkEffortTelecomNumber', null, { 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'contactMechId': contactMechId, 'thruDate': thruDate, 'comments': comments, 'partyId': partyId, 'fromDate': fromDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'workEffortId': workEffortId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'newContactMechId': newContactMechId });

  /**
   * Update a Text Document DataResource and Content Records - 
   *
   * Requires dataResourceId, workEffortId, workEffortContentTypeId
   * Returns dataResourceId[String], contentId[String], roleTypeList[List]
   */
  Future<OfResult> updateWorkEffortTextContent({String dataResourceTypeId, String dataTemplateTypeId, String dataCategoryId, String dataSourceId, String statusId, String dataResourceName, String localeString, String mimeTypeId, String characterSetId, String objectInfo, String surveyId, String surveyResponseId, String relatedDetailId, String isPublic, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String dataResourceId, String textData, String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String templateDataResourceId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, int childLeafCount, int childBranchCount, String contentPurposeTypeId, String contentIdFrom, List<dynamic> targetOperationList, String skipPermissionCheck, bool displayFailCond, List<dynamic> roleTypeList, String contentIdTo, String contentAssocTypeId, DateTime fromDate, DateTime thruDate, String contentAssocPredicateId, int sequenceNum, String mapKey, int upperCoordinate, int leftCoordinate, @required String workEffortId, @required String workEffortContentTypeId}) =>
      client.invoke('updateWorkEffortTextContent', null, { 'dataResourceTypeId': dataResourceTypeId, 'dataTemplateTypeId': dataTemplateTypeId, 'dataCategoryId': dataCategoryId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'dataResourceName': dataResourceName, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'objectInfo': objectInfo, 'surveyId': surveyId, 'surveyResponseId': surveyResponseId, 'relatedDetailId': relatedDetailId, 'isPublic': isPublic, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'dataResourceId': dataResourceId, 'textData': textData, 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'templateDataResourceId': templateDataResourceId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'contentPurposeTypeId': contentPurposeTypeId, 'contentIdFrom': contentIdFrom, 'targetOperationList': targetOperationList, 'skipPermissionCheck': skipPermissionCheck, 'displayFailCond': displayFailCond, 'roleTypeList': roleTypeList, 'contentIdTo': contentIdTo, 'contentAssocTypeId': contentAssocTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'contentAssocPredicateId': contentAssocPredicateId, 'sequenceNum': sequenceNum, 'mapKey': mapKey, 'upperCoordinate': upperCoordinate, 'leftCoordinate': leftCoordinate, 'workEffortId': workEffortId, 'workEffortContentTypeId': workEffortContentTypeId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> workEffortGenericPermission({String workEffortId, String workEffortParentId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('workEffortGenericPermission', null, { 'workEffortId': workEffortId, 'workEffortParentId': workEffortParentId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * iCalendar Permission Check - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> workEffortICalendarPermission({String workEffortId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('workEffortICalendarPermission', null, { 'workEffortId': workEffortId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> workEffortManagerPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('workEffortManagerPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

}