import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesPayment{
  final SrvClient client;
  AccountingServicesPayment(this.client);

  /**
   * Cancel all payments for payment group - 
   *
   * Requires paymentGroupId
   * Returns 
   */
  Future<OfResult> cancelCheckRunPayments({@required String paymentGroupId}) =>
      client.invoke('cancelCheckRunPayments', null, { 'paymentGroupId': paymentGroupId });

  /**
   * cancel payment batch - 
   *
   * Requires paymentGroupId
   * Returns 
   */
  Future<OfResult> cancelPaymentBatch({@required String paymentGroupId}) =>
      client.invoke('cancelPaymentBatch', null, { 'paymentGroupId': paymentGroupId });

  /**
   * Check the valid(unbatched) payment and create batch for same - 
   *
   * Requires paymentIds, paymentGroupTypeId
   * Returns paymentGroupId[String]
   */
  Future<OfResult> checkAndCreateBatchForValidPayments({@required List<dynamic> paymentIds, @required String paymentGroupTypeId, DateTime fromDate, String paymentGroupName}) =>
      client.invoke('checkAndCreateBatchForValidPayments', null, { 'paymentIds': paymentIds, 'paymentGroupTypeId': paymentGroupTypeId, 'fromDate': fromDate, 'paymentGroupName': paymentGroupName });

  /**
   * Checks to see if each invoice to which a payment is applied has been fully paid up.  If so, sets the invoice status to PAID. - 
   *
   * Requires paymentId
   * Returns 
   */
  Future<OfResult> checkPaymentInvoices({@required String paymentId}) =>
      client.invoke('checkPaymentInvoices', null, { 'paymentId': paymentId });

  /**
   *  - BillingAccountTermAttr
   *
   * Requires billingAccountTermId, attrName
   * Returns 
   */
  Future<OfResult> createBillingAccountTermAttr(BillingAccountTermAttr ent, ) =>
      client.invoke('createBillingAccountTermAttr', ent, {  });

  /**
   * Create a Deduction record - Deduction
   *
   * Requires 
   * Returns deductionId[String]
   */
  Future<OfResult> createDeduction(Deduction ent, ) =>
      client.invoke('createDeduction', ent, {  });

  /**
   * Create a Deduction Type record - DeductionType
   *
   * Requires 
   * Returns deductionTypeId[String]
   */
  Future<OfResult> createDeductionType(DeductionType ent, ) =>
      client.invoke('createDeductionType', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns finAccountTransId[String]
   */
  Future<OfResult> createFinAccoutnTransFromPayment({String finAccountTransTypeId, String finAccountId, String partyId, String glReconciliationId, DateTime transactionDate, DateTime entryDate, Decimal amount, String paymentId, String orderId, String orderItemSeqId, String performedByPartyId, String reasonEnumId, String comments, String statusId, String finAccountTransId, List<dynamic> invoiceIds}) =>
      client.invoke('createFinAccoutnTransFromPayment', null, { 'finAccountTransTypeId': finAccountTransTypeId, 'finAccountId': finAccountId, 'partyId': partyId, 'glReconciliationId': glReconciliationId, 'transactionDate': transactionDate, 'entryDate': entryDate, 'amount': amount, 'paymentId': paymentId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'performedByPartyId': performedByPartyId, 'reasonEnumId': reasonEnumId, 'comments': comments, 'statusId': statusId, 'finAccountTransId': finAccountTransId, 'invoiceIds': invoiceIds });

  /**
   * Create a payment application if either the invoice of payment could be found - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createMatchingPaymentApplication({String paymentId, String invoiceId}) =>
      client.invoke('createMatchingPaymentApplication', null, { 'paymentId': paymentId, 'invoiceId': invoiceId });

  /**
   * Create a Payment.  If a paymentMethodId is supplied, paymentMethodTypeId is gotten from paymentMethod.  Otherwise, it must be supplied.  If no
        paymentMethodTypeId and no paymentMethodId is supplied, then an error will be returned.  - Payment
   *
   * Requires paymentTypeId, partyIdFrom, partyIdTo, amount, paymentTypeId, partyIdFrom, partyIdTo, amount
   * Returns paymentId[String]
   */
  Future<OfResult> createPayment(Payment ent, ) =>
      client.invoke('createPayment', ent, {  });

  /**
   * Create a payment and a payment application for the full amount - 
   *
   * Requires paymentTypeId, partyIdFrom, partyIdTo, statusId, amount, paymentTypeId, partyIdFrom, partyIdTo, statusId, amount
   * Returns paymentId[String], paymentApplicationId[String]
   */
  Future<OfResult> createPaymentAndApplication({@required String paymentTypeId, String paymentMethodTypeId, String paymentMethodId, String paymentGatewayResponseId, String paymentPreferenceId, @required String partyIdFrom, @required String partyIdTo, String roleTypeIdTo, @required String statusId, DateTime effectiveDate, String paymentRefNum, @required Decimal amount, String currencyUomId, String comments, String finAccountTransId, String overrideGlAccountId, Decimal actualCurrencyAmount, String actualCurrencyUomId, String paymentId, String invoiceId, String invoiceItemSeqId, String billingAccountId, String taxAuthGeoId}) =>
      client.invoke('createPaymentAndApplication', null, { 'paymentTypeId': paymentTypeId, 'paymentMethodTypeId': paymentMethodTypeId, 'paymentMethodId': paymentMethodId, 'paymentGatewayResponseId': paymentGatewayResponseId, 'paymentPreferenceId': paymentPreferenceId, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'roleTypeIdTo': roleTypeIdTo, 'statusId': statusId, 'effectiveDate': effectiveDate, 'paymentRefNum': paymentRefNum, 'amount': amount, 'currencyUomId': currencyUomId, 'comments': comments, 'finAccountTransId': finAccountTransId, 'overrideGlAccountId': overrideGlAccountId, 'actualCurrencyAmount': actualCurrencyAmount, 'actualCurrencyUomId': actualCurrencyUomId, 'paymentId': paymentId, 'invoiceId': invoiceId, 'invoiceItemSeqId': invoiceItemSeqId, 'billingAccountId': billingAccountId, 'taxAuthGeoId': taxAuthGeoId });

  /**
   * create Payment and PaymentApplications for multiple invoices for one party - 
   *
   * Requires partyId, invoices, paymentMethodId
   * Returns organizationPartyId[String], finAccountId[String], paymentId[String], invoiceIds[List], amount[BigDecimal]
   */
  Future<OfResult> createPaymentAndApplicationForParty({String organizationPartyId, @required String partyId, @required List<dynamic> invoices, String paymentMethodTypeId, @required String paymentMethodId, String finAccountId, int checkStartNumber}) =>
      client.invoke('createPaymentAndApplicationForParty', null, { 'organizationPartyId': organizationPartyId, 'partyId': partyId, 'invoices': invoices, 'paymentMethodTypeId': paymentMethodTypeId, 'paymentMethodId': paymentMethodId, 'finAccountId': finAccountId, 'checkStartNumber': checkStartNumber });

  /**
   * Creates Payments, Payment Application and Payment Group for the same - 
   *
   * Requires organizationPartyId, invoiceIds, paymentMethodId
   * Returns paymentGroupId[String], errorMessage[String]
   */
  Future<OfResult> createPaymentAndPaymentGroupForInvoices({@required String organizationPartyId, int checkStartNumber, @required List<dynamic> invoiceIds, String paymentMethodTypeId, @required String paymentMethodId}) =>
      client.invoke('createPaymentAndPaymentGroupForInvoices', null, { 'organizationPartyId': organizationPartyId, 'checkStartNumber': checkStartNumber, 'invoiceIds': invoiceIds, 'paymentMethodTypeId': paymentMethodTypeId, 'paymentMethodId': paymentMethodId });

  /**
   * Create a payment application - 
   *
   * Requires paymentId
   * Returns amountApplied[BigDecimal], paymentApplicationId[String], paymentTypeId[String]
   */
  Future<OfResult> createPaymentApplication({@required String paymentId, String toPaymentId, String invoiceId, String billingAccountId, String taxAuthGeoId, Decimal amountApplied}) =>
      client.invoke('createPaymentApplication', null, { 'paymentId': paymentId, 'toPaymentId': toPaymentId, 'invoiceId': invoiceId, 'billingAccountId': billingAccountId, 'taxAuthGeoId': taxAuthGeoId, 'amountApplied': amountApplied });

  /**
   * Create a PaymentAttribute record - PaymentAttribute
   *
   * Requires paymentId, attrName
   * Returns 
   */
  Future<OfResult> createPaymentAttribute(PaymentAttribute ent, ) =>
      client.invoke('createPaymentAttribute', ent, {  });

  /**
   * Create a PaymentBudgetAllocation record - PaymentBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, paymentId
   * Returns 
   */
  Future<OfResult> createPaymentBudgetAllocation(PaymentBudgetAllocation ent, ) =>
      client.invoke('createPaymentBudgetAllocation', ent, {  });

  /**
   * Add Content To Payment - PaymentContent
   *
   * Requires paymentId, paymentContentTypeId, contentId
   * Returns paymentId[String], paymentContentTypeId[String], contentId[String], fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createPaymentContent(PaymentContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('createPaymentContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Create a PaymentContentType record - PaymentContentType
   *
   * Requires 
   * Returns paymentContentTypeId[String]
   */
  Future<OfResult> createPaymentContentType(PaymentContentType ent, ) =>
      client.invoke('createPaymentContentType', ent, {  });

  /**
   * Create Payment from Order when payment does exist yet and not disabled by accounting config - 
   *
   * Requires orderId
   * Returns paymentId[String]
   */
  Future<OfResult> createPaymentFromOrder({@required String orderId, String paymentMethodId, String paymentRefNum, String comments}) =>
      client.invoke('createPaymentFromOrder', null, { 'orderId': orderId, 'paymentMethodId': paymentMethodId, 'paymentRefNum': paymentRefNum, 'comments': comments });

  /**
   *  - 
   *
   * Requires paymentIds, paymentGroupTypeId
   * Returns paymentGroupId[String]
   */
  Future<OfResult> createPaymentGroupAndMember({@required List<dynamic> paymentIds, @required String paymentGroupTypeId, DateTime fromDate, String paymentGroupName}) =>
      client.invoke('createPaymentGroupAndMember', null, { 'paymentIds': paymentIds, 'paymentGroupTypeId': paymentGroupTypeId, 'fromDate': fromDate, 'paymentGroupName': paymentGroupName });

  /**
   * Create a PaymentGroupType record - PaymentGroupType
   *
   * Requires 
   * Returns paymentGroupTypeId[String]
   */
  Future<OfResult> createPaymentGroupType(PaymentGroupType ent, ) =>
      client.invoke('createPaymentGroupType', ent, {  });

  /**
   * Create a PaymentType record - PaymentType
   *
   * Requires 
   * Returns paymentTypeId[String]
   */
  Future<OfResult> createPaymentType(PaymentType ent, ) =>
      client.invoke('createPaymentType', ent, {  });

  /**
   * Create a PaymentTypeAttr record - PaymentTypeAttr
   *
   * Requires paymentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createPaymentTypeAttr(PaymentTypeAttr ent, ) =>
      client.invoke('createPaymentTypeAttr', ent, {  });

  /**
   *  - BillingAccountTermAttr
   *
   * Requires billingAccountTermId, attrName
   * Returns 
   */
  Future<OfResult> deleteBillingAccountTermAttr(BillingAccountTermAttr ent, ) =>
      client.invoke('deleteBillingAccountTermAttr', ent, {  });

  /**
   * Delete a Deduction record - Deduction
   *
   * Requires deductionId
   * Returns 
   */
  Future<OfResult> deleteDeduction(Deduction ent, ) =>
      client.invoke('deleteDeduction', ent, {  });

  /**
   * Delete a Deduction Type record - DeductionType
   *
   * Requires deductionTypeId
   * Returns 
   */
  Future<OfResult> deleteDeductionType(DeductionType ent, ) =>
      client.invoke('deleteDeductionType', ent, {  });

  /**
   * Delete a PaymentAttribute record - PaymentAttribute
   *
   * Requires paymentId, attrName
   * Returns 
   */
  Future<OfResult> deletePaymentAttribute(PaymentAttribute ent, ) =>
      client.invoke('deletePaymentAttribute', ent, {  });

  /**
   * Delete a PaymentBudgetAllocation record - PaymentBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, paymentId
   * Returns 
   */
  Future<OfResult> deletePaymentBudgetAllocation(PaymentBudgetAllocation ent, ) =>
      client.invoke('deletePaymentBudgetAllocation', ent, {  });

  /**
   * Delete a PaymentContentType record - PaymentContentType
   *
   * Requires paymentContentTypeId
   * Returns 
   */
  Future<OfResult> deletePaymentContentType(PaymentContentType ent, ) =>
      client.invoke('deletePaymentContentType', ent, {  });

  /**
   * Delete a PaymentGroupType record - PaymentGroupType
   *
   * Requires paymentGroupTypeId
   * Returns 
   */
  Future<OfResult> deletePaymentGroupType(PaymentGroupType ent, ) =>
      client.invoke('deletePaymentGroupType', ent, {  });

  /**
   * Delete a PaymentType record - PaymentType
   *
   * Requires paymentTypeId
   * Returns 
   */
  Future<OfResult> deletePaymentType(PaymentType ent, ) =>
      client.invoke('deletePaymentType', ent, {  });

  /**
   * Delete a PaymentTypeAttr record - PaymentTypeAttr
   *
   * Requires paymentTypeId, attrName
   * Returns 
   */
  Future<OfResult> deletePaymentTypeAttr(PaymentTypeAttr ent, ) =>
      client.invoke('deletePaymentTypeAttr', ent, {  });

  /**
   * Create a list with information on payment due dates and amounts for the invoice; one of invoiceId or invoice must be provided. - 
   *
   * Requires 
   * Returns invoicePaymentInfoList[List]
   */
  Future<OfResult> getInvoicePaymentInfoList({String invoiceId, Map<String,dynamic> invoice}) =>
      client.invoke('getInvoicePaymentInfoList', null, { 'invoiceId': invoiceId, 'invoice': invoice });

  /**
   * Create a list with information on payment due dates and amounts. - 
   *
   * Requires invoiceTypeId, daysOffset
   * Returns invoicePaymentInfoList[List]
   */
  Future<OfResult> getInvoicePaymentInfoListByDueDateOffset({@required String invoiceTypeId, @required int daysOffset, String partyId, String partyIdFrom}) =>
      client.invoke('getInvoicePaymentInfoListByDueDateOffset', null, { 'invoiceTypeId': invoiceTypeId, 'daysOffset': daysOffset, 'partyId': partyId, 'partyIdFrom': partyIdFrom });

  /**
   * Get ReconciliationId associated to paymentGroup - 
   *
   * Requires paymentGroupId
   * Returns glReconciliationId[String]
   */
  Future<OfResult> getPaymentGroupReconciliationId({@required String paymentGroupId}) =>
      client.invoke('getPaymentGroupReconciliationId', null, { 'paymentGroupId': paymentGroupId });

  /**
   * calculate running total for payments - 
   *
   * Requires paymentIds
   * Returns paymentRunningTotal[String]
   */
  Future<OfResult> getPaymentRunningTotal({@required List<dynamic> paymentIds, String organizationPartyId}) =>
      client.invoke('getPaymentRunningTotal', null, { 'paymentIds': paymentIds, 'organizationPartyId': organizationPartyId });

  /**
   * Get list of payment - 
   *
   * Requires 
   * Returns payments[List]
   */
  Future<OfResult> getPayments({String paymentGroupId, String finAccountTransId}) =>
      client.invoke('getPayments', null, { 'paymentGroupId': paymentGroupId, 'finAccountTransId': finAccountTransId });

  /**
   * Set status of Payments in bulk. - 
   *
   * Requires paymentIds, statusId
   * Returns errorMessage[String]
   */
  Future<OfResult> massChangePaymentStatus({@required List<dynamic> paymentIds, @required String statusId}) =>
      client.invoke('massChangePaymentStatus', null, { 'paymentIds': paymentIds, 'statusId': statusId });

  /**
   * Updates a Payment and then marks it as PMNT_SENT - Payment
   *
   * Requires paymentId
   * Returns 
   */
  Future<OfResult> quickSendPayment(Payment ent, ) =>
      client.invoke('quickSendPayment', ent, {  });

  /**
   * Delete a paymentApplication record. - PaymentApplication
   *
   * Requires paymentApplicationId
   * Returns paymentId[String], invoiceId[String], invoiceItemSeqId[String], billingAccountId[String], overrideGlAccountId[String], toPaymentId[String], taxAuthGeoId[String], amountApplied[java.math.BigDecimal]
   */
  Future<OfResult> removePaymentApplication(PaymentApplication ent, ) =>
      client.invoke('removePaymentApplication', ent, {  });

  /**
   * Remove Content From Payment - PaymentContent
   *
   * Requires paymentId, paymentContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> removePaymentContent(PaymentContent ent, ) =>
      client.invoke('removePaymentContent', ent, {  });

  /**
   * Change the status of a Payment - Payment
   *
   * Requires paymentId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setPaymentStatus(Payment ent, ) =>
      client.invoke('setPaymentStatus', ent, {  });

  /**
   *  - BillingAccountTermAttr
   *
   * Requires billingAccountTermId, attrName
   * Returns 
   */
  Future<OfResult> updateBillingAccountTermAttr(BillingAccountTermAttr ent, ) =>
      client.invoke('updateBillingAccountTermAttr', ent, {  });

  /**
   * Update a Deduction record - Deduction
   *
   * Requires deductionId
   * Returns 
   */
  Future<OfResult> updateDeduction(Deduction ent, ) =>
      client.invoke('updateDeduction', ent, {  });

  /**
   * Update a Deduction Type record - DeductionType
   *
   * Requires deductionTypeId
   * Returns 
   */
  Future<OfResult> updateDeductionType(DeductionType ent, ) =>
      client.invoke('updateDeductionType', ent, {  });

  /**
   * Update a Payment - Payment
   *
   * Requires paymentId
   * Returns 
   */
  Future<OfResult> updatePayment(Payment ent, ) =>
      client.invoke('updatePayment', ent, {  });

  /**
   * 
            Apply a payment to a Invoice or other payment or Billing account or  Taxauthority,
            create/update paymentApplication records.
         - PaymentApplication
   *
   * Requires paymentId, paymentId
   * Returns 
   */
  Future<OfResult> updatePaymentApplication(PaymentApplication ent, {String invoiceProcessing}) =>
      client.invoke('updatePaymentApplication', ent, { 'invoiceProcessing': invoiceProcessing });

  /**
   * 
            Apply a payment to a Invoice or other payment or Billing account or Taxauthority,
            If no ammountApplied is supplied the system will calculate and use the maximum possible value.
         - PaymentApplication
   *
   * Requires paymentId, paymentId
   * Returns 
   */
  Future<OfResult> updatePaymentApplicationDef(PaymentApplication ent, {String invoiceProcessing}) =>
      client.invoke('updatePaymentApplicationDef', ent, { 'invoiceProcessing': invoiceProcessing });

  /**
   * Update a PaymentAttribute record - PaymentAttribute
   *
   * Requires paymentId, attrName
   * Returns 
   */
  Future<OfResult> updatePaymentAttribute(PaymentAttribute ent, ) =>
      client.invoke('updatePaymentAttribute', ent, {  });

  /**
   * Update a PaymentBudgetAllocation record - PaymentBudgetAllocation
   *
   * Requires budgetId, budgetItemSeqId, paymentId
   * Returns 
   */
  Future<OfResult> updatePaymentBudgetAllocation(PaymentBudgetAllocation ent, ) =>
      client.invoke('updatePaymentBudgetAllocation', ent, {  });

  /**
   * Update Content To Payment - PaymentContent
   *
   * Requires paymentId, paymentContentTypeId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> updatePaymentContent(PaymentContent ent, {String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin}) =>
      client.invoke('updatePaymentContent', ent, { 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin });

  /**
   * Update a PaymentContentType record - PaymentContentType
   *
   * Requires paymentContentTypeId
   * Returns 
   */
  Future<OfResult> updatePaymentContentType(PaymentContentType ent, ) =>
      client.invoke('updatePaymentContentType', ent, {  });

  /**
   * Update a PaymentGroupType record - PaymentGroupType
   *
   * Requires paymentGroupTypeId
   * Returns 
   */
  Future<OfResult> updatePaymentGroupType(PaymentGroupType ent, ) =>
      client.invoke('updatePaymentGroupType', ent, {  });

  /**
   * Update a PaymentType record - PaymentType
   *
   * Requires paymentTypeId
   * Returns 
   */
  Future<OfResult> updatePaymentType(PaymentType ent, ) =>
      client.invoke('updatePaymentType', ent, {  });

  /**
   * Update a PaymentTypeAttr record - PaymentTypeAttr
   *
   * Requires paymentTypeId, attrName
   * Returns 
   */
  Future<OfResult> updatePaymentTypeAttr(PaymentTypeAttr ent, ) =>
      client.invoke('updatePaymentTypeAttr', ent, {  });

  /**
   * Sets payment status to PMNT_VOID, removes all PaymentApplications, changes related invoice statuses to 
            INVOICE_READY if status is INVOICE_PAID, and reverses related AcctgTrans by calling copyAcctgTransAndEntries service - 
   *
   * Requires paymentId
   * Returns finAccountTransId[String], statusId[String]
   */
  Future<OfResult> voidPayment({@required String paymentId}) =>
      client.invoke('voidPayment', null, { 'paymentId': paymentId });

}