import 'package:sagas_meta/src/models/accounting_invoice.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesInvoice{
  final SrvClient client;
  AccountingServicesInvoice(this.client);

  /**
   * Call Tax Calculate Service - 
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> addtax({@required String invoiceId}) =>
      client.invoke('addtax', null, { 'invoiceId': invoiceId });

  /**
   * Scheduled service to generate Invoice from an existing Invoice - 
   *
   * Requires recurrenceInfoId
   * Returns 
   */
  Future<OfResult> autoGenerateInvoiceFromExistingInvoice({@required String recurrenceInfoId}) =>
      client.invoke('autoGenerateInvoiceFromExistingInvoice', null, { 'recurrenceInfoId': recurrenceInfoId });

  /**
   * Calculate the previously invoiced amount for an OrderAdjustment - 
   *
   * Requires orderAdjustment
   * Returns invoicedTotal[BigDecimal]
   */
  Future<OfResult> calculateInvoicedAdjustmentTotal({@required Map<String,dynamic> orderAdjustment}) =>
      client.invoke('calculateInvoicedAdjustmentTotal', null, { 'orderAdjustment': orderAdjustment });

  /**
   * Cancel Invoice - 
   *
   * Requires invoiceId
   * Returns invoiceTypeId[String]
   */
  Future<OfResult> cancelInvoice({@required String invoiceId}) =>
      client.invoke('cancelInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Checks to see if the payments applied to an invoice total up to the invoice total; if so sets to PAID - 
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> checkInvoicePaymentApplications({@required String invoiceId}) =>
      client.invoke('checkInvoicePaymentApplications', null, { 'invoiceId': invoiceId });

  /**
   * Create Invoice Record/items from an existing invoice - Invoice
   *
   * Requires invoiceIdToCopyFrom
   * Returns invoiceId[String]
   */
  Future<OfResult> copyInvoice(Invoice ent, {@required String invoiceIdToCopyFrom}) =>
      client.invoke('copyInvoice', ent, { 'invoiceIdToCopyFrom': invoiceIdToCopyFrom });

  /**
   * Save a Invoice data to a template . - 
   *
   * Requires invoiceId, invoiceTypeId
   * Returns invoiceId[String]
   */
  Future<OfResult> copyInvoiceToTemplate({@required String invoiceId, @required String invoiceTypeId}) =>
      client.invoke('copyInvoiceToTemplate', null, { 'invoiceId': invoiceId, 'invoiceTypeId': invoiceTypeId });

  /**
   * 
            Create commission invoice for the list of sales invoices.  
            Returns a List of Maps, one for each invoice created containing: 
                commissionInvoiceId: the invoiceId of the invoice created 
                salesRepresentative: the invoice partyIdFrom 
         - 
   *
   * Requires invoiceIds
   * Returns invoicesCreated[List]
   */
  Future<OfResult> createCommissionInvoices({List<dynamic> partyIds, @required List<dynamic> invoiceIds}) =>
      client.invoke('createCommissionInvoices', null, { 'partyIds': partyIds, 'invoiceIds': invoiceIds });

  /**
   * Create Invoice Record - Invoice
   *
   * Requires invoiceTypeId, partyIdFrom, partyId, invoiceTypeId, partyIdFrom, partyId
   * Returns invoiceId[String]
   */
  Future<OfResult> createInvoice(Invoice ent, ) =>
      client.invoke('createInvoice', ent, {  });

  /**
   * Create a InvoiceAttribute - InvoiceAttribute
   *
   * Requires invoiceId, attrName
   * Returns invoiceId[String], attrName[String]
   */
  Future<OfResult> createInvoiceAttribute(InvoiceAttribute ent, ) =>
      client.invoke('createInvoiceAttribute', ent, {  });

  /**
   * Create a ContactMech for an invoice - InvoiceContactMech
   *
   * Requires invoiceId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> createInvoiceContactMech(InvoiceContactMech ent, ) =>
      client.invoke('createInvoiceContactMech', ent, {  });

  /**
   * Add Content To Invoice - InvoiceContent
   *
   * Requires invoiceId, invoiceContentTypeId, contentId
   * Returns invoiceId[String], invoiceContentTypeId[String], contentId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createInvoiceContent(InvoiceContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createInvoiceContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a InvoiceContentType - InvoiceContentType
   *
   * Requires 
   * Returns invoiceContentTypeId[String]
   */
  Future<OfResult> createInvoiceContentType(InvoiceContentType ent, ) =>
      client.invoke('createInvoiceContentType', ent, {  });

  /**
   * 
            Create an invoice from existing order
            orderId = The orderId to associate the invoice with
            billItems = List of ItemIssuance records to use for creating the invoice
         - 
   *
   * Requires orderId, billItems
   * Returns invoiceId[String], invoiceTypeId[String]
   */
  Future<OfResult> createInvoiceForOrder({@required String orderId, @required List<dynamic> billItems, DateTime eventDate, String invoiceId}) =>
      client.invoke('createInvoiceForOrder', null, { 'orderId': orderId, 'billItems': billItems, 'eventDate': eventDate, 'invoiceId': invoiceId });

  /**
   * 
            Create an invoice from existing order using all order items
            orderId = The orderId to associate the invoice with
         - 
   *
   * Requires orderId
   * Returns invoiceId[String]
   */
  Future<OfResult> createInvoiceForOrderAllItems({@required String orderId}) =>
      client.invoke('createInvoiceForOrderAllItems', null, { 'orderId': orderId });

  /**
   * Create an invoice from existing order when invoicePerShipment is N - 
   *
   * Requires orderId
   * Returns invoiceId[String]
   */
  Future<OfResult> createInvoiceFromOrder({@required String orderId}) =>
      client.invoke('createInvoiceFromOrder', null, { 'orderId': orderId });

  /**
   * 
            Create an invoice from a return
            returnId = The returnId to associate the invoice with
            billItems = List of ShipmentReceipts (for sales return) or ItemIssuance (for purchase return) to use for creating the invoice
         - 
   *
   * Requires returnId
   * Returns invoiceId[String]
   */
  Future<OfResult> createInvoiceFromReturn({@required String returnId, List<dynamic> billItems}) =>
      client.invoke('createInvoiceFromReturn', null, { 'returnId': returnId, 'billItems': billItems });

  /**
   * Create a new Invoice Item Record - InvoiceItem
   *
   * Requires invoiceId
   * Returns invoiceItemSeqId[String], invoiceItemSeqId[String]
   */
  Future<OfResult> createInvoiceItem(InvoiceItem ent, ) =>
      client.invoke('createInvoiceItem', ent, {  });

  /**
   * Create a InvoiceItemAssoc - InvoiceItemAssoc
   *
   * Requires invoiceIdFrom, invoiceItemSeqIdFrom, invoiceIdTo, invoiceItemSeqIdTo, invoiceItemAssocTypeId
   * Returns 
   */
  Future<OfResult> createInvoiceItemAssoc(InvoiceItemAssoc ent, ) =>
      client.invoke('createInvoiceItemAssoc', ent, {  });

  /**
   * Create a InvoiceItemAssocType - InvoiceItemAssocType
   *
   * Requires 
   * Returns invoiceItemAssocTypeId[String]
   */
  Future<OfResult> createInvoiceItemAssocType(InvoiceItemAssocType ent, ) =>
      client.invoke('createInvoiceItemAssocType', ent, {  });

  /**
   * Create a InvoiceItemAttribute record - InvoiceItemAttribute
   *
   * Requires invoiceId, invoiceItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> createInvoiceItemAttribute(InvoiceItemAttribute ent, ) =>
      client.invoke('createInvoiceItemAttribute', ent, {  });

  /**
   * Create InvoiceItemTypeAttr - InvoiceItemTypeAttr
   *
   * Requires invoiceItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> createInvoiceItemTypeAttr(InvoiceItemTypeAttr ent, ) =>
      client.invoke('createInvoiceItemTypeAttr', ent, {  });

  /**
   * Create InvoiceItemTypeMap - InvoiceItemTypeMap
   *
   * Requires invoiceItemMapKey, invoiceTypeId
   * Returns 
   */
  Future<OfResult> createInvoiceItemTypeMap(InvoiceItemTypeMap ent, ) =>
      client.invoke('createInvoiceItemTypeMap', ent, {  });

  /**
   * Create a InvoiceNote - InvoiceNote
   *
   * Requires invoiceId, noteId
   * Returns invoiceId[String], noteId[String]
   */
  Future<OfResult> createInvoiceNote(InvoiceNote ent, ) =>
      client.invoke('createInvoiceNote', ent, {  });

  /**
   * Create a new Invoice Role Record - InvoiceRole
   *
   * Requires invoiceId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createInvoiceRole(InvoiceRole ent, ) =>
      client.invoke('createInvoiceRole', ent, {  });

  /**
   * Create a Invoice Status Record - InvoiceStatus
   *
   * Requires statusId, invoiceId
   * Returns 
   */
  Future<OfResult> createInvoiceStatus(InvoiceStatus ent, ) =>
      client.invoke('createInvoiceStatus', ent, {  });

  /**
   * Create Invoice (Item) Term Record - InvoiceTerm
   *
   * Requires 
   * Returns invoiceTermId[String]
   */
  Future<OfResult> createInvoiceTerm(InvoiceTerm ent, ) =>
      client.invoke('createInvoiceTerm', ent, {  });

  /**
   * Create a InvoiceTermAttribute record - InvoiceTermAttribute
   *
   * Requires invoiceTermId, attrName
   * Returns 
   */
  Future<OfResult> createInvoiceTermAttribute(InvoiceTermAttribute ent, ) =>
      client.invoke('createInvoiceTermAttribute', ent, {  });

  /**
   * Create a InvoiceType - InvoiceType
   *
   * Requires 
   * Returns invoiceTypeId[String]
   */
  Future<OfResult> createInvoiceType(InvoiceType ent, ) =>
      client.invoke('createInvoiceType', ent, {  });

  /**
   * Create a InvoiceTypeAttr record - InvoiceTypeAttr
   *
   * Requires invoiceTypeId, attrName
   * Returns 
   */
  Future<OfResult> createInvoiceTypeAttr(InvoiceTypeAttr ent, ) =>
      client.invoke('createInvoiceTypeAttr', ent, {  });

  /**
   * 
            Create invoice(s) from a return Shipment
            invoicesCreated = List of invoiceIds which were created by this service
         - 
   *
   * Requires shipmentId
   * Returns invoicesCreated[List]
   */
  Future<OfResult> createInvoicesFromReturnShipment({@required String shipmentId}) =>
      client.invoke('createInvoicesFromReturnShipment', null, { 'shipmentId': shipmentId });

  /**
   * 
            Create invoice(s) from a Shipment
            All the order items associated with the shipment will be selected and
            one invoice for each order in the shipment will be created.
            invoicesCreated = List of invoiceIds which were created by this service
         - 
   *
   * Requires shipmentId
   * Returns invoicesCreated[List]
   */
  Future<OfResult> createInvoicesFromShipment({@required String shipmentId, DateTime eventDate}) =>
      client.invoke('createInvoicesFromShipment', null, { 'shipmentId': shipmentId, 'eventDate': eventDate });

  /**
   * 
            Create invoice(s) from a shipment list.
            All the order items associated with the shipments will be selected and
            one invoice for each order will be created (each invoice could contain
            items shipped in different shipments).
            If the shipments are drop shipments, the type of invoices (purchase or sales) created
            will be controlled by the createSalesInvoicesForDropShipments parameter (purchase by default).
            invoicesCreated = List of invoiceIds which were created by this service
         - 
   *
   * Requires shipmentIds
   * Returns invoicesCreated[List]
   */
  Future<OfResult> createInvoicesFromShipments({@required List<dynamic> shipmentIds, bool createSalesInvoicesForDropShipments, DateTime eventDate}) =>
      client.invoke('createInvoicesFromShipments', null, { 'shipmentIds': shipmentIds, 'createSalesInvoicesForDropShipments': createSalesInvoicesForDropShipments, 'eventDate': eventDate });

  /**
   * 
            Create sales invoice(s) from a drop shipment by wrapping a call to
            createInvoicesFromShipments with the createSalesInvoicesForDropShipments parameter
         - 
   *
   * Requires shipmentId
   * Returns invoicesCreated[List]
   */
  Future<OfResult> createSalesInvoicesFromDropShipment({@required String shipmentId}) =>
      client.invoke('createSalesInvoicesFromDropShipment', null, { 'shipmentId': shipmentId });

  /**
   *  - InvoiceContent
   *
   * Requires invoiceId, invoiceContentTypeId, text
   * Returns 
   */
  Future<OfResult> createSimpleTextContentForInvoice(InvoiceContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String text}) =>
      client.invoke('createSimpleTextContentForInvoice', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'text': text });

  /**
   * Delete a InvoiceAttribute - InvoiceAttribute
   *
   * Requires invoiceId, attrName
   * Returns 
   */
  Future<OfResult> deleteInvoiceAttribute(InvoiceAttribute ent, ) =>
      client.invoke('deleteInvoiceAttribute', ent, {  });

  /**
   * Delete a ContactMech for an invoice - InvoiceContactMech
   *
   * Requires invoiceId, contactMechPurposeTypeId, contactMechId
   * Returns 
   */
  Future<OfResult> deleteInvoiceContactMech(InvoiceContactMech ent, ) =>
      client.invoke('deleteInvoiceContactMech', ent, {  });

  /**
   * Delete a InvoiceContentType - InvoiceContentType
   *
   * Requires invoiceContentTypeId
   * Returns 
   */
  Future<OfResult> deleteInvoiceContentType(InvoiceContentType ent, ) =>
      client.invoke('deleteInvoiceContentType', ent, {  });

  /**
   * Delete a InvoiceItemAssoc - InvoiceItemAssoc
   *
   * Requires invoiceIdFrom, invoiceItemSeqIdFrom, invoiceIdTo, invoiceItemSeqIdTo, invoiceItemAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteInvoiceItemAssoc(InvoiceItemAssoc ent, ) =>
      client.invoke('deleteInvoiceItemAssoc', ent, {  });

  /**
   * Delete a InvoiceItemAssocType - InvoiceItemAssocType
   *
   * Requires invoiceItemAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteInvoiceItemAssocType(InvoiceItemAssocType ent, ) =>
      client.invoke('deleteInvoiceItemAssocType', ent, {  });

  /**
   * Delete a InvoiceItemAttribute record - InvoiceItemAttribute
   *
   * Requires invoiceId, invoiceItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> deleteInvoiceItemAttribute(InvoiceItemAttribute ent, ) =>
      client.invoke('deleteInvoiceItemAttribute', ent, {  });

  /**
   * Delete InvoiceItemTypeAttr - InvoiceItemTypeAttr
   *
   * Requires invoiceItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteInvoiceItemTypeAttr(InvoiceItemTypeAttr ent, ) =>
      client.invoke('deleteInvoiceItemTypeAttr', ent, {  });

  /**
   * Delete InvoiceItemTypeMap - InvoiceItemTypeMap
   *
   * Requires invoiceItemMapKey, invoiceTypeId
   * Returns 
   */
  Future<OfResult> deleteInvoiceItemTypeMap(InvoiceItemTypeMap ent, ) =>
      client.invoke('deleteInvoiceItemTypeMap', ent, {  });

  /**
   * Delete a InvoiceNote - InvoiceNote
   *
   * Requires invoiceId, noteId
   * Returns 
   */
  Future<OfResult> deleteInvoiceNote(InvoiceNote ent, ) =>
      client.invoke('deleteInvoiceNote', ent, {  });

  /**
   * Delete Invoice (Item) Term Record - InvoiceTerm
   *
   * Requires invoiceTermId
   * Returns 
   */
  Future<OfResult> deleteInvoiceTerm(InvoiceTerm ent, ) =>
      client.invoke('deleteInvoiceTerm', ent, {  });

  /**
   * Delete a InvoiceTermAttribute record - InvoiceTermAttribute
   *
   * Requires invoiceTermId, attrName
   * Returns 
   */
  Future<OfResult> deleteInvoiceTermAttribute(InvoiceTermAttribute ent, ) =>
      client.invoke('deleteInvoiceTermAttribute', ent, {  });

  /**
   * Delete a InvoiceType - InvoiceType
   *
   * Requires invoiceTypeId
   * Returns 
   */
  Future<OfResult> deleteInvoiceType(InvoiceType ent, ) =>
      client.invoke('deleteInvoiceType', ent, {  });

  /**
   * Delete a InvoiceTypeAttr record - InvoiceTypeAttr
   *
   * Requires invoiceTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteInvoiceTypeAttr(InvoiceTypeAttr ent, ) =>
      client.invoke('deleteInvoiceTypeAttr', ent, {  });

  /**
   * Retrieve an existing Invoice/Items - Invoice
   *
   * Requires invoiceId
   * Returns invoice[org.apache.ofbiz.entity.GenericValue], invoiceItems[List]
   */
  Future<OfResult> getInvoice(Invoice ent, ) =>
      client.invoke('getInvoice', ent, {  });

  /**
   * calculate running total for selected Invoices - 
   *
   * Requires invoiceIds
   * Returns invoiceRunningTotal[String]
   */
  Future<OfResult> getInvoiceRunningTotal({@required List<dynamic> invoiceIds, String organizationPartyId}) =>
      client.invoke('getInvoiceRunningTotal', null, { 'invoiceIds': invoiceIds, 'organizationPartyId': organizationPartyId });

  /**
   * Filter invoices by invoiceItemAssocTypeId - 
   *
   * Requires invoiceList, invoiceItemAssocTypeId
   * Returns filteredInvoiceList[List]
   */
  Future<OfResult> getInvoicesFilterByAssocType({@required List<dynamic> invoiceList, @required String invoiceItemAssocTypeId}) =>
      client.invoke('getInvoicesFilterByAssocType', null, { 'invoiceList': invoiceList, 'invoiceItemAssocTypeId': invoiceItemAssocTypeId });

  /**
   * Get the Next Invoice ID According to Settings on the PartyAcctgPreference Entity for the given Party - 
   *
   * Requires partyId, invoiceTypeId, partyIdFrom
   * Returns invoiceId[String]
   */
  Future<OfResult> getNextInvoiceId({@required String partyId, String invoiceId, @required String invoiceTypeId, @required String partyIdFrom, String roleTypeId, String statusId, String billingAccountId, String contactMechId, DateTime invoiceDate, DateTime dueDate, DateTime paidDate, String invoiceMessage, String referenceNumber, String description, String currencyUomId, String recurrenceInfoId}) =>
      client.invoke('getNextInvoiceId', null, { 'partyId': partyId, 'invoiceId': invoiceId, 'invoiceTypeId': invoiceTypeId, 'partyIdFrom': partyIdFrom, 'roleTypeId': roleTypeId, 'statusId': statusId, 'billingAccountId': billingAccountId, 'contactMechId': contactMechId, 'invoiceDate': invoiceDate, 'dueDate': dueDate, 'paidDate': paidDate, 'invoiceMessage': invoiceMessage, 'referenceNumber': referenceNumber, 'description': description, 'currencyUomId': currencyUomId, 'recurrenceInfoId': recurrenceInfoId });

  /**
   *  - 
   *
   * Requires partyAcctgPreference, partyId, invoiceTypeId, partyIdFrom
   * Returns invoiceId[Long]
   */
  Future<OfResult> invoiceSequenceEnforced({@required Map<String,dynamic> partyAcctgPreference, @required String partyId, @required String invoiceTypeId, @required String partyIdFrom, String roleTypeId, String statusId, String billingAccountId, String contactMechId, DateTime invoiceDate, DateTime dueDate, DateTime paidDate, String invoiceMessage, String referenceNumber, String description, String currencyUomId, String recurrenceInfoId}) =>
      client.invoke('invoiceSequenceEnforced', null, { 'partyAcctgPreference': partyAcctgPreference, 'partyId': partyId, 'invoiceTypeId': invoiceTypeId, 'partyIdFrom': partyIdFrom, 'roleTypeId': roleTypeId, 'statusId': statusId, 'billingAccountId': billingAccountId, 'contactMechId': contactMechId, 'invoiceDate': invoiceDate, 'dueDate': dueDate, 'paidDate': paidDate, 'invoiceMessage': invoiceMessage, 'referenceNumber': referenceNumber, 'description': description, 'currencyUomId': currencyUomId, 'recurrenceInfoId': recurrenceInfoId });

  /**
   *  - 
   *
   * Requires partyAcctgPreference, partyId, invoiceTypeId, partyIdFrom
   * Returns invoiceId[String]
   */
  Future<OfResult> invoiceSequenceRestart({@required Map<String,dynamic> partyAcctgPreference, @required String partyId, String invoiceId, @required String invoiceTypeId, @required String partyIdFrom, String roleTypeId, String statusId, String billingAccountId, String contactMechId, DateTime invoiceDate, DateTime dueDate, DateTime paidDate, String invoiceMessage, String referenceNumber, String description, String currencyUomId, String recurrenceInfoId}) =>
      client.invoke('invoiceSequenceRestart', null, { 'partyAcctgPreference': partyAcctgPreference, 'partyId': partyId, 'invoiceId': invoiceId, 'invoiceTypeId': invoiceTypeId, 'partyIdFrom': partyIdFrom, 'roleTypeId': roleTypeId, 'statusId': statusId, 'billingAccountId': billingAccountId, 'contactMechId': contactMechId, 'invoiceDate': invoiceDate, 'dueDate': dueDate, 'paidDate': paidDate, 'invoiceMessage': invoiceMessage, 'referenceNumber': referenceNumber, 'description': description, 'currencyUomId': currencyUomId, 'recurrenceInfoId': recurrenceInfoId });

  /**
   * check if a invoice is in a foreign currency related to the accounting company. - 
   *
   * Requires invoiceId
   * Returns isForeign[Boolean]
   */
  Future<OfResult> isInvoiceInForeignCurrency({@required String invoiceId}) =>
      client.invoke('isInvoiceInForeignCurrency', null, { 'invoiceId': invoiceId });

  /**
   * Set status of invoices in bulk. - 
   *
   * Requires invoiceIds, statusId
   * Returns errorMessage[String]
   */
  Future<OfResult> massChangeInvoiceStatus({@required List<dynamic> invoiceIds, @required String statusId}) =>
      client.invoke('massChangeInvoiceStatus', null, { 'invoiceIds': invoiceIds, 'statusId': statusId });

  /**
   * 
            Sets status of each invoice in the list of invoices to INVOICE_READY.
         - 
   *
   * Requires invoicesCreated
   * Returns 
   */
  Future<OfResult> readyInvoices({@required List<dynamic> invoicesCreated}) =>
      client.invoke('readyInvoices', null, { 'invoicesCreated': invoicesCreated });

  /**
   * Remove Content From Invoice - InvoiceContent
   *
   * Requires invoiceId, invoiceContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> removeInvoiceContent(InvoiceContent ent, ) =>
      client.invoke('removeInvoiceContent', ent, {  });

  /**
   * Remove an existing Invoice Item Record - InvoiceItem
   *
   * Requires invoiceId, invoiceItemSeqId
   * Returns 
   */
  Future<OfResult> removeInvoiceItem(InvoiceItem ent, ) =>
      client.invoke('removeInvoiceItem', ent, {  });

  /**
   * Remove invoiceItemAssoc record on cancel invoice - 
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> removeInvoiceItemAssocOnCancelInvoice({@required String invoiceId}) =>
      client.invoke('removeInvoiceItemAssocOnCancelInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Remove an existing Invoice Role Record - InvoiceRole
   *
   * Requires invoiceId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> removeInvoiceRole(InvoiceRole ent, ) =>
      client.invoke('removeInvoiceRole', ent, {  });

  /**
   * Reset OrderItemBilling and OrderAdjustmentBilling records on cancel invoice, so it is isn't considered invoiced any more by createInvoiceForOrder service - 
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> resetOrderItemBillingAndOrderAdjustmentBillingOnCancelInvoice({@required String invoiceId}) =>
      client.invoke('resetOrderItemBillingAndOrderAdjustmentBillingOnCancelInvoice', null, { 'invoiceId': invoiceId });

  /**
   * 
            A sample/example service to calculate an affiliate commission (direct relationship to customer) and create
            and invoice for it on behalf of the affiliate, ie an invoice from the affiliate to the company that can
            then be paid by the company to balance it.
         - 
   *
   * Requires paymentId
   * Returns invoiceId[String]
   */
  Future<OfResult> sampleInvoiceAffiliateCommission({@required String paymentId}) =>
      client.invoke('sampleInvoiceAffiliateCommission', null, { 'paymentId': paymentId });

  /**
   * Send an invoice per email - 
   *
   * Requires invoiceId, sendFrom, sendTo
   * Returns 
   */
  Future<OfResult> sendInvoicePerEmail({@required String invoiceId, @required String sendFrom, @required String sendTo, String sendCc, String subject, String bodyText, String other}) =>
      client.invoke('sendInvoicePerEmail', null, { 'invoiceId': invoiceId, 'sendFrom': sendFrom, 'sendTo': sendTo, 'sendCc': sendCc, 'subject': subject, 'bodyText': bodyText, 'other': other });

  /**
   * Set the Invoice  Status - 
   *
   * Requires invoiceId, statusId
   * Returns invoiceTypeId[String], oldStatusId[String]
   */
  Future<OfResult> setInvoiceStatus({@required String invoiceId, @required String statusId, DateTime statusDate, DateTime paidDate}) =>
      client.invoke('setInvoiceStatus', null, { 'invoiceId': invoiceId, 'statusId': statusId, 'statusDate': statusDate, 'paidDate': paidDate });

  /**
   * Set invoice(s) to Ready from Shipment - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> setInvoicesToReadyFromShipment({@required String shipmentId}) =>
      client.invoke('setInvoicesToReadyFromShipment', null, { 'shipmentId': shipmentId });

  /**
   * Update an existing Invoice Record - Invoice
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> updateInvoice(Invoice ent, ) =>
      client.invoke('updateInvoice', ent, {  });

  /**
   * Update a InvoiceAttribute - InvoiceAttribute
   *
   * Requires invoiceId, attrName
   * Returns 
   */
  Future<OfResult> updateInvoiceAttribute(InvoiceAttribute ent, ) =>
      client.invoke('updateInvoiceAttribute', ent, {  });

  /**
   * Update Content To Invoice - InvoiceContent
   *
   * Requires invoiceId, invoiceContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> updateInvoiceContent(InvoiceContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('updateInvoiceContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Update a InvoiceContentType - InvoiceContentType
   *
   * Requires invoiceContentTypeId
   * Returns 
   */
  Future<OfResult> updateInvoiceContentType(InvoiceContentType ent, ) =>
      client.invoke('updateInvoiceContentType', ent, {  });

  /**
   * Update existing Invoice Item Record - InvoiceItem
   *
   * Requires invoiceId, invoiceItemSeqId
   * Returns invoiceId[String], invoiceItemSeqId[String]
   */
  Future<OfResult> updateInvoiceItem(InvoiceItem ent, ) =>
      client.invoke('updateInvoiceItem', ent, {  });

  /**
   * Update a InvoiceItemAssoc - InvoiceItemAssoc
   *
   * Requires invoiceIdFrom, invoiceItemSeqIdFrom, invoiceIdTo, invoiceItemSeqIdTo, invoiceItemAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateInvoiceItemAssoc(InvoiceItemAssoc ent, ) =>
      client.invoke('updateInvoiceItemAssoc', ent, {  });

  /**
   * Update a InvoiceItemAssocType - InvoiceItemAssocType
   *
   * Requires invoiceItemAssocTypeId
   * Returns 
   */
  Future<OfResult> updateInvoiceItemAssocType(InvoiceItemAssocType ent, ) =>
      client.invoke('updateInvoiceItemAssocType', ent, {  });

  /**
   * Update a InvoiceItemAttribute record - InvoiceItemAttribute
   *
   * Requires invoiceId, invoiceItemSeqId, attrName
   * Returns 
   */
  Future<OfResult> updateInvoiceItemAttribute(InvoiceItemAttribute ent, ) =>
      client.invoke('updateInvoiceItemAttribute', ent, {  });

  /**
   * Update Invoice Item Type Record - InvoiceItemType
   *
   * Requires invoiceItemTypeId
   * Returns 
   */
  Future<OfResult> updateInvoiceItemType(InvoiceItemType ent, ) =>
      client.invoke('updateInvoiceItemType', ent, {  });

  /**
   * Update InvoiceItemTypeAttr - InvoiceItemTypeAttr
   *
   * Requires invoiceItemTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateInvoiceItemTypeAttr(InvoiceItemTypeAttr ent, ) =>
      client.invoke('updateInvoiceItemTypeAttr', ent, {  });

  /**
   * Update InvoiceItemTypeMap - InvoiceItemTypeMap
   *
   * Requires invoiceItemMapKey, invoiceTypeId
   * Returns 
   */
  Future<OfResult> updateInvoiceItemTypeMap(InvoiceItemTypeMap ent, ) =>
      client.invoke('updateInvoiceItemTypeMap', ent, {  });

  /**
   * Update Invoice (Item) Term Record - InvoiceTerm
   *
   * Requires invoiceTermId
   * Returns 
   */
  Future<OfResult> updateInvoiceTerm(InvoiceTerm ent, ) =>
      client.invoke('updateInvoiceTerm', ent, {  });

  /**
   * Update a InvoiceTermAttribute record - InvoiceTermAttribute
   *
   * Requires invoiceTermId, attrName
   * Returns 
   */
  Future<OfResult> updateInvoiceTermAttribute(InvoiceTermAttribute ent, ) =>
      client.invoke('updateInvoiceTermAttribute', ent, {  });

  /**
   * Update a InvoiceType - InvoiceType
   *
   * Requires invoiceTypeId
   * Returns 
   */
  Future<OfResult> updateInvoiceType(InvoiceType ent, ) =>
      client.invoke('updateInvoiceType', ent, {  });

  /**
   * Update a InvoiceTypeAttr record - InvoiceTypeAttr
   *
   * Requires invoiceTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateInvoiceTypeAttr(InvoiceTypeAttr ent, ) =>
      client.invoke('updateInvoiceTypeAttr', ent, {  });

  /**
   *  - InvoiceContent
   *
   * Requires invoiceId, invoiceContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> updateSimpleTextContentForInvoice(InvoiceContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String textDataResourceId, String text}) =>
      client.invoke('updateSimpleTextContentForInvoice', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'textDataResourceId': textDataResourceId, 'text': text });

}