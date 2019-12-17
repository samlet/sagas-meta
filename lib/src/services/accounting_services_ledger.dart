import 'package:sagas_meta/src/models/accounting_ledger.dart';
import 'package:sagas_meta/src/models/accounting_finaccount.dart';
import 'package:sagas_meta/src/models/common_period.dart';
import 'package:sagas_meta/src/models/product_inventory.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesLedger{
  final SrvClient client;
  AccountingServicesLedger(this.client);

  /**
   * Calculate Trial Balance for a AcctgTrans - AcctgTrans
   *
   * Requires acctgTransId
   * Returns debitTotal[BigDecimal], creditTotal[BigDecimal], debitCreditDifference[BigDecimal]
   */
  Future<OfResult> calculateAcctgTransTrialBalance(AcctgTrans ent, ) =>
      client.invoke('calculateAcctgTransTrialBalance', ent, {  });

  /**
   * Calculate Trial Balance for a GlAccount - GlAccount
   *
   * Requires glAccountId, fromDate, thruDate
   * Returns openingBalanceDebit[BigDecimal], openingBalanceCredit[BigDecimal], debitCreditDifference[BigDecimal]
   */
  Future<OfResult> calculateGlAccountTrialBalance(GlAccount ent, {String isPosted, @required DateTime fromDate, @required DateTime thruDate}) =>
      client.invoke('calculateGlAccountTrialBalance', ent, { 'isPosted': isPosted, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Calculate Trial Balance for a GlJournal - GlJournal
   *
   * Requires glJournalId
   * Returns debitTotal[BigDecimal], creditTotal[BigDecimal], debitCreditDifference[BigDecimal]
   */
  Future<OfResult> calculateGlJournalTrialBalance(GlJournal ent, ) =>
      client.invoke('calculateGlJournalTrialBalance', ent, {  });

  /**
   * Close a financial time period - CustomTimePeriod
   *
   * Requires customTimePeriodId
   * Returns 
   */
  Future<OfResult> closeFinancialTimePeriod(CustomTimePeriod ent, ) =>
      client.invoke('closeFinancialTimePeriod', ent, {  });

  /**
   * Completes, if possible, the AcctgTransEntries using the mappings defined in the gl setup - AcctgTrans
   *
   * Requires acctgTransId
   * Returns 
   */
  Future<OfResult> completeAcctgTransEntries(AcctgTrans ent, ) =>
      client.invoke('completeAcctgTransEntries', ent, {  });

  /**
   * Compute and store in a GlAccountHistory record the total debits, total credits, opening, ending balances of an account in a financial period - 
   *
   * Requires glAccountId, organizationPartyId, customTimePeriodId
   * Returns 
   */
  Future<OfResult> computeAndStoreGlAccountHistoryBalance({@required String glAccountId, @required String organizationPartyId, @required String customTimePeriodId}) =>
      client.invoke('computeAndStoreGlAccountHistoryBalance', null, { 'glAccountId': glAccountId, 'organizationPartyId': organizationPartyId, 'customTimePeriodId': customTimePeriodId });

  /**
   * Compute the total debits, total credits, opening, ending balances of an account in a financial period - 
   *
   * Requires organizationPartyId, customTimePeriodId, glAccountId
   * Returns openingBalance[BigDecimal], postedDebits[BigDecimal], postedCredits[BigDecimal], endingBalance[BigDecimal]
   */
  Future<OfResult> computeGlAccountBalanceForTimePeriod({@required String organizationPartyId, @required String customTimePeriodId, @required String glAccountId}) =>
      client.invoke('computeGlAccountBalanceForTimePeriod', null, { 'organizationPartyId': organizationPartyId, 'customTimePeriodId': customTimePeriodId, 'glAccountId': glAccountId });

  /**
   * Create an Acctg Trans And Entry(Duplicate or revert) - 
   *
   * Requires fromAcctgTransId
   * Returns acctgTransId[String]
   */
  Future<OfResult> copyAcctgTransAndEntries({@required String fromAcctgTransId, String revert}) =>
      client.invoke('copyAcctgTransAndEntries', null, { 'fromAcctgTransId': fromAcctgTransId, 'revert': revert });

  /**
   * Create a AcctgTrans record.  isPosted is forced to "N" - AcctgTrans
   *
   * Requires acctgTransTypeId, transactionDate, glFiscalTypeId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTrans(AcctgTrans ent, ) =>
      client.invoke('createAcctgTrans', ent, {  });

  /**
   * 
            Takes a list of AcctgTransEntry entries, verifies that the list of entries are valid (GL account and organizationParty exist),
            and then creates an AcctgTrans entry and stores all the AcctgTransEntries with the acctgTransId.  Note that this does not actually
            check that the debits and credits balance out.  The idea is that unbalanced transactions can be created here, but they will need
            to be created before they are actually posted, and a later posting service will actually check that the transaction is balanced.
         - AcctgTrans
   *
   * Requires acctgTransEntries
   * Returns acctgTransId[String], acctgTransId[String]
   */
  Future<OfResult> createAcctgTransAndEntries(AcctgTrans ent, {@required List<dynamic> acctgTransEntries}) =>
      client.invoke('createAcctgTransAndEntries', ent, { 'acctgTransEntries': acctgTransEntries });

  /**
   * Create an accounting transaction for a payment application - 
   *
   * Requires paymentApplicationId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransAndEntriesForCustomerRefundPaymentApplication({@required String paymentApplicationId}) =>
      client.invoke('createAcctgTransAndEntriesForCustomerRefundPaymentApplication', null, { 'paymentApplicationId': paymentApplicationId });

  /**
   * Create an accounting transaction for an incoming payment - 
   *
   * Requires paymentId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransAndEntriesForIncomingPayment({@required String paymentId}) =>
      client.invoke('createAcctgTransAndEntriesForIncomingPayment', null, { 'paymentId': paymentId });

  /**
   * Create an accounting transaction for an outgoing payment - 
   *
   * Requires paymentId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransAndEntriesForOutgoingPayment({@required String paymentId}) =>
      client.invoke('createAcctgTransAndEntriesForOutgoingPayment', null, { 'paymentId': paymentId });

  /**
   * Create an accounting transaction for a payment application - 
   *
   * Requires paymentApplicationId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransAndEntriesForPaymentApplication({@required String paymentApplicationId}) =>
      client.invoke('createAcctgTransAndEntriesForPaymentApplication', null, { 'paymentApplicationId': paymentApplicationId });

  /**
   * Create AcctgTransAttribute - AcctgTransAttribute
   *
   * Requires acctgTransId, attrName
   * Returns 
   */
  Future<OfResult> createAcctgTransAttribute(AcctgTransAttribute ent, ) =>
      client.invoke('createAcctgTransAttribute', ent, {  });

  /**
   * Add an Entry to a AcctgTrans.  Will use baseCurrencyUomId in PartyAcctgPreference if no currencyUomId is in parameters. - AcctgTransEntry
   *
   * Requires acctgTransId, organizationPartyId, debitCreditFlag
   * Returns acctgTransEntrySeqId[String], acctgTransEntrySeqId[String]
   */
  Future<OfResult> createAcctgTransEntry(AcctgTransEntry ent, {String purposeEnumId}) =>
      client.invoke('createAcctgTransEntry', ent, { 'purposeEnumId': purposeEnumId });

  /**
   *  - AcctgTransEntryType
   *
   * Requires 
   * Returns acctgTransEntryTypeId[String]
   */
  Future<OfResult> createAcctgTransEntryType(AcctgTransEntryType ent, ) =>
      client.invoke('createAcctgTransEntryType', ent, {  });

  /**
   * Create an accounting transaction for a canceled sales shipment issuance (D: INVENTORY_ACCOUNT, C: COGS_ACCOUNT) - 
   *
   * Requires itemIssuanceId, canceledQuantity
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForCanceledSalesShipmentIssuance({@required String itemIssuanceId, @required Decimal canceledQuantity}) =>
      client.invoke('createAcctgTransForCanceledSalesShipmentIssuance', null, { 'itemIssuanceId': itemIssuanceId, 'canceledQuantity': canceledQuantity });

  /**
   * Create an accounting transaction for a Customer Return invoice - 
   *
   * Requires invoiceId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForCustomerReturnInvoice({@required String invoiceId}) =>
      client.invoke('createAcctgTransForCustomerReturnInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Create an accounting transaction for inventory that is issued for fixed asset maintenance (Type: INVENTORY D: INVENTORY_ACCOUNT, C: FIXED_ASSET_MAINT) - 
   *
   * Requires itemIssuanceId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForFixedAssetMaintIssuance({@required String itemIssuanceId}) =>
      client.invoke('createAcctgTransForFixedAssetMaintIssuance', null, { 'itemIssuanceId': itemIssuanceId });

  /**
   * Create accounting transaction when item cost is changed (D: INV_ADJ_VAL, C: INVENTORY_ACCOUNT) - 
   *
   * Requires inventoryItemId, inventoryItemDetailSeqId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForInventoryItemCostChange({@required String inventoryItemId, @required String inventoryItemDetailSeqId}) =>
      client.invoke('createAcctgTransForInventoryItemCostChange', null, { 'inventoryItemId': inventoryItemId, 'inventoryItemDetailSeqId': inventoryItemDetailSeqId });

  /**
   * Create an accounting transactions for Inventory Item Owner Change (D: INVENTORY_ACCOUNT(old Owner) INVENTORY_ACCOUNT(new Owner), C: INVENTORY_XFER_IN(oldOwner) INVENTORY_XFER_OUT(new Owner)) - 
   *
   * Requires inventoryItemId, oldOwnerPartyId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForInventoryItemOwnerChange({@required String inventoryItemId, @required String oldOwnerPartyId}) =>
      client.invoke('createAcctgTransForInventoryItemOwnerChange', null, { 'inventoryItemId': inventoryItemId, 'oldOwnerPartyId': oldOwnerPartyId });

  /**
   * Create an AcctgEntry for Physical Inventory variance - 
   *
   * Requires physicalInventoryId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForPhysicalInventoryVariance({@required String physicalInventoryId}) =>
      client.invoke('createAcctgTransForPhysicalInventoryVariance', null, { 'physicalInventoryId': physicalInventoryId });

  /**
   * Create an accounting transaction for a purchase invoice - 
   *
   * Requires invoiceId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForPurchaseInvoice({@required String invoiceId}) =>
      client.invoke('createAcctgTransForPurchaseInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Create an accounting transaction for a sales invoice - 
   *
   * Requires invoiceId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForSalesInvoice({@required String invoiceId}) =>
      client.invoke('createAcctgTransForSalesInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Create an accounting transaction for a sales shipment issuance (D: INVENTORY_ACCOUNT, C: COGS_ACCOUNT) - 
   *
   * Requires itemIssuanceId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForSalesShipmentIssuance({@required String itemIssuanceId}) =>
      client.invoke('createAcctgTransForSalesShipmentIssuance', null, { 'itemIssuanceId': itemIssuanceId });

  /**
   * Create an accounting transactions for a shipment receipt (D: INVENTORY_ACCOUNT, C: UNINVOICED_SHIP_RCPT or COGS_ACCOUNT for returns) - 
   *
   * Requires receiptId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForShipmentReceipt({@required String receiptId}) =>
      client.invoke('createAcctgTransForShipmentReceipt', null, { 'receiptId': receiptId });

  /**
   * Create an accounting transaction for cost record created for a work effort - 
   *
   * Requires workEffortId, costComponentId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForWorkEffortCost({@required String workEffortId, @required String costComponentId}) =>
      client.invoke('createAcctgTransForWorkEffortCost', null, { 'workEffortId': workEffortId, 'costComponentId': costComponentId });

  /**
   * Create an accounting transaction for inventory that is produced by a work effort (Type: INVENTORY D: RAWMAT_INVENTORY, C: WIP_INVENTORY) - 
   *
   * Requires workEffortId, inventoryItemId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForWorkEffortInventoryProduced({@required String workEffortId, @required String inventoryItemId}) =>
      client.invoke('createAcctgTransForWorkEffortInventoryProduced', null, { 'workEffortId': workEffortId, 'inventoryItemId': inventoryItemId });

  /**
   * Create an accounting transaction for inventory that is issued to a work effort (Type: INVENTORY D: RAWMAT_INVENTORY, C: WIP_INVENTORY) - 
   *
   * Requires workEffortId, inventoryItemId
   * Returns acctgTransId[String]
   */
  Future<OfResult> createAcctgTransForWorkEffortIssuance({@required String workEffortId, @required String inventoryItemId}) =>
      client.invoke('createAcctgTransForWorkEffortIssuance', null, { 'workEffortId': workEffortId, 'inventoryItemId': inventoryItemId });

  /**
   * Create an AcctgTransType - AcctgTransType
   *
   * Requires 
   * Returns acctgTransTypeId[String]
   */
  Future<OfResult> createAcctgTransType(AcctgTransType ent, ) =>
      client.invoke('createAcctgTransType', ent, {  });

  /**
   * Create a AcctgTransTypeAttr entry - AcctgTransTypeAttr
   *
   * Requires acctgTransTypeId, attrName
   * Returns 
   */
  Future<OfResult> createAcctgTransTypeAttr(AcctgTransTypeAttr ent, ) =>
      client.invoke('createAcctgTransTypeAttr', ent, {  });

  /**
   * Create a FinAccountTypeGlAccount - FinAccountTypeGlAccount
   *
   * Requires finAccountTypeId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> createFinAccountTypeGlAccount(FinAccountTypeGlAccount ent, ) =>
      client.invoke('createFinAccountTypeGlAccount', ent, {  });

  /**
   * Create a GlAccount record - GlAccount
   *
   * Requires glAccountTypeId, glAccountClassId, glResourceTypeId, accountName, glAccountTypeId, glAccountClassId, glResourceTypeId, accountName
   * Returns glAccountId[String]
   */
  Future<OfResult> createGlAccount(GlAccount ent, ) =>
      client.invoke('createGlAccount', ent, {  });

  /**
   * Create GL Account Category - GlAccountCategory
   *
   * Requires 
   * Returns glAccountCategoryId[String]
   */
  Future<OfResult> createGlAccountCategory(GlAccountCategory ent, ) =>
      client.invoke('createGlAccountCategory', ent, {  });

  /**
   * Create GL Account Category Member - GlAccountCategoryMember
   *
   * Requires glAccountId, glAccountCategoryId
   * Returns 
   */
  Future<OfResult> createGlAccountCategoryMember(GlAccountCategoryMember ent, ) =>
      client.invoke('createGlAccountCategoryMember', ent, {  });

  /**
   * Create GlAccountCategoryType - GlAccountCategoryType
   *
   * Requires 
   * Returns glAccountCategoryTypeId[String]
   */
  Future<OfResult> createGlAccountCategoryType(GlAccountCategoryType ent, ) =>
      client.invoke('createGlAccountCategoryType', ent, {  });

  /**
   * Create a GlAccountClass - GlAccountClass
   *
   * Requires 
   * Returns glAccountClassId[String]
   */
  Future<OfResult> createGlAccountClass(GlAccountClass ent, ) =>
      client.invoke('createGlAccountClass', ent, {  });

  /**
   * Create a GlAccountGroup - GlAccountGroup
   *
   * Requires 
   * Returns glAccountGroupId[String]
   */
  Future<OfResult> createGlAccountGroup(GlAccountGroup ent, ) =>
      client.invoke('createGlAccountGroup', ent, {  });

  /**
   * Create a GlAccountGroupMember - GlAccountGroupMember
   *
   * Requires glAccountId, glAccountGroupTypeId
   * Returns glAccountId[String], glAccountGroupTypeId[String]
   */
  Future<OfResult> createGlAccountGroupMember(GlAccountGroupMember ent, ) =>
      client.invoke('createGlAccountGroupMember', ent, {  });

  /**
   * Create a GlAccountGroupType - GlAccountGroupType
   *
   * Requires 
   * Returns glAccountGroupTypeId[String]
   */
  Future<OfResult> createGlAccountGroupType(GlAccountGroupType ent, ) =>
      client.invoke('createGlAccountGroupType', ent, {  });

  /**
   * Create a GlAccount record - GlAccountOrganization
   *
   * Requires glAccountId, organizationPartyId
   * Returns 
   */
  Future<OfResult> createGlAccountOrganization(GlAccountOrganization ent, ) =>
      client.invoke('createGlAccountOrganization', ent, {  });

  /**
   * Create a GlAccountRole - GlAccountRole
   *
   * Requires glAccountId, partyId, roleTypeId, fromDate
   * Returns glAccountId[String], partyId[String], roleTypeId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createGlAccountRole(GlAccountRole ent, ) =>
      client.invoke('createGlAccountRole', ent, {  });

  /**
   * Create a GlAccountType - GlAccountType
   *
   * Requires 
   * Returns glAccountTypeId[String]
   */
  Future<OfResult> createGlAccountType(GlAccountType ent, ) =>
      client.invoke('createGlAccountType', ent, {  });

  /**
   * Create GlAccountCategoryMember from CostCenters - GlAccountCategoryMember
   *
   * Requires glAccountId, glAccountCategoryId
   * Returns 
   */
  Future<OfResult> createGlAcctCatMemFromCostCenters(GlAccountCategoryMember ent, {Decimal totalAmountPercentage}) =>
      client.invoke('createGlAcctCatMemFromCostCenters', ent, { 'totalAmountPercentage': totalAmountPercentage });

  /**
   * Create a GlBudgetXref - GlBudgetXref
   *
   * Requires glAccountId, budgetItemTypeId, fromDate
   * Returns glAccountId[String], budgetItemTypeId[String], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createGlBudgetXref(GlBudgetXref ent, ) =>
      client.invoke('createGlBudgetXref', ent, {  });

  /**
   * Create a GlFiscalType - GlFiscalType
   *
   * Requires 
   * Returns glFiscalTypeId[String]
   */
  Future<OfResult> createGlFiscalType(GlFiscalType ent, ) =>
      client.invoke('createGlFiscalType', ent, {  });

  /**
   * Create a GlJournal record - GlJournal
   *
   * Requires organizationPartyId, organizationPartyId
   * Returns glJournalId[String]
   */
  Future<OfResult> createGlJournal(GlJournal ent, ) =>
      client.invoke('createGlJournal', ent, {  });

  /**
   * Create a GlReconciliation record - GlReconciliation
   *
   * Requires glReconciliationName, glReconciliationName
   * Returns glReconciliationId[String]
   */
  Future<OfResult> createGlReconciliation(GlReconciliation ent, ) =>
      client.invoke('createGlReconciliation', ent, {  });

  /**
   * Add an Entry to a GlReconciliation - GlReconciliationEntry
   *
   * Requires glReconciliationId, acctgTransId, acctgTransEntrySeqId, reconciledAmount
   * Returns statusId[String]
   */
  Future<OfResult> createGlReconciliationEntry(GlReconciliationEntry ent, ) =>
      client.invoke('createGlReconciliationEntry', ent, {  });

  /**
   * Create a GlResourceType - GlResourceType
   *
   * Requires 
   * Returns glResourceTypeId[String]
   */
  Future<OfResult> createGlResourceType(GlResourceType ent, ) =>
      client.invoke('createGlResourceType', ent, {  });

  /**
   * Create a GlXbrlClass - GlXbrlClass
   *
   * Requires 
   * Returns glXbrlClassId[String]
   */
  Future<OfResult> createGlXbrlClass(GlXbrlClass ent, ) =>
      client.invoke('createGlXbrlClass', ent, {  });

  /**
   * Associate a party to a General Ledger Account - PartyGlAccount
   *
   * Requires organizationPartyId, partyId, roleTypeId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> createPartyGlAccount(PartyGlAccount ent, ) =>
      client.invoke('createPartyGlAccount', ent, {  });

  /**
   * Create a ProductAverageCostType - ProductAverageCostType
   *
   * Requires 
   * Returns productAverageCostTypeId[String]
   */
  Future<OfResult> createProductAverageCostType(ProductAverageCostType ent, ) =>
      client.invoke('createProductAverageCostType', ent, {  });

  /**
   * Create a SettlementTerm - SettlementTerm
   *
   * Requires 
   * Returns settlementTermId[String]
   */
  Future<OfResult> createSettlementTerm(SettlementTerm ent, ) =>
      client.invoke('createSettlementTerm', ent, {  });

  /**
   * create a Variance Reason Gl Account - VarianceReasonGlAccount
   *
   * Requires varianceReasonId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> createVarianceReasonGlAccount(VarianceReasonGlAccount ent, ) =>
      client.invoke('createVarianceReasonGlAccount', ent, {  });

  /**
   * Delete a AcctgTrans record - AcctgTrans
   *
   * Requires acctgTransId
   * Returns 
   */
  Future<OfResult> deleteAcctgTrans(AcctgTrans ent, ) =>
      client.invoke('deleteAcctgTrans', ent, {  });

  /**
   * Delete AcctgTransAttribute - AcctgTransAttribute
   *
   * Requires acctgTransId, attrName
   * Returns 
   */
  Future<OfResult> deleteAcctgTransAttribute(AcctgTransAttribute ent, ) =>
      client.invoke('deleteAcctgTransAttribute', ent, {  });

  /**
   * Remove an Entry from a AcctgTrans - AcctgTransEntry
   *
   * Requires acctgTransId, acctgTransEntrySeqId
   * Returns 
   */
  Future<OfResult> deleteAcctgTransEntry(AcctgTransEntry ent, ) =>
      client.invoke('deleteAcctgTransEntry', ent, {  });

  /**
   *  - AcctgTransEntryType
   *
   * Requires acctgTransEntryTypeId
   * Returns 
   */
  Future<OfResult> deleteAcctgTransEntryType(AcctgTransEntryType ent, ) =>
      client.invoke('deleteAcctgTransEntryType', ent, {  });

  /**
   * Delete a AcctgTransTypeAttr record - AcctgTransTypeAttr
   *
   * Requires acctgTransTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteAcctgTransTypeAttr(AcctgTransTypeAttr ent, ) =>
      client.invoke('deleteAcctgTransTypeAttr', ent, {  });

  /**
   * Delete a FinAccountTypeGlAccount - FinAccountTypeGlAccount
   *
   * Requires finAccountTypeId, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteFinAccountTypeGlAccount(FinAccountTypeGlAccount ent, ) =>
      client.invoke('deleteFinAccountTypeGlAccount', ent, {  });

  /**
   * Delete a GlAccount record - GlAccount
   *
   * Requires glAccountId
   * Returns 
   */
  Future<OfResult> deleteGlAccount(GlAccount ent, ) =>
      client.invoke('deleteGlAccount', ent, {  });

  /**
   * Delete GL Account Category Member - GlAccountCategoryMember
   *
   * Requires glAccountId, glAccountCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> deleteGlAccountCategoryMember(GlAccountCategoryMember ent, ) =>
      client.invoke('deleteGlAccountCategoryMember', ent, {  });

  /**
   * Delete GlAccountCategoryType - GlAccountCategoryType
   *
   * Requires glAccountCategoryTypeId
   * Returns 
   */
  Future<OfResult> deleteGlAccountCategoryType(GlAccountCategoryType ent, ) =>
      client.invoke('deleteGlAccountCategoryType', ent, {  });

  /**
   * Delete a GlAccountClass - GlAccountClass
   *
   * Requires glAccountClassId
   * Returns 
   */
  Future<OfResult> deleteGlAccountClass(GlAccountClass ent, ) =>
      client.invoke('deleteGlAccountClass', ent, {  });

  /**
   * Delete a GlAccountGroup - GlAccountGroup
   *
   * Requires glAccountGroupId
   * Returns 
   */
  Future<OfResult> deleteGlAccountGroup(GlAccountGroup ent, ) =>
      client.invoke('deleteGlAccountGroup', ent, {  });

  /**
   * Delete a GlAccountGroupMember - GlAccountGroupMember
   *
   * Requires glAccountId, glAccountGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteGlAccountGroupMember(GlAccountGroupMember ent, ) =>
      client.invoke('deleteGlAccountGroupMember', ent, {  });

  /**
   * Delete a GlAccountGroupType - GlAccountGroupType
   *
   * Requires glAccountGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteGlAccountGroupType(GlAccountGroupType ent, ) =>
      client.invoke('deleteGlAccountGroupType', ent, {  });

  /**
   * Delete a GlAccount record - GlAccountOrganization
   *
   * Requires glAccountId, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteGlAccountOrganization(GlAccountOrganization ent, ) =>
      client.invoke('deleteGlAccountOrganization', ent, {  });

  /**
   * Delete a GlAccountType - GlAccountType
   *
   * Requires glAccountTypeId
   * Returns 
   */
  Future<OfResult> deleteGlAccountType(GlAccountType ent, ) =>
      client.invoke('deleteGlAccountType', ent, {  });

  /**
   * Delete a GlFiscalType - GlFiscalType
   *
   * Requires glFiscalTypeId
   * Returns 
   */
  Future<OfResult> deleteGlFiscalType(GlFiscalType ent, ) =>
      client.invoke('deleteGlFiscalType', ent, {  });

  /**
   * Delete a GlJournal record - GlJournal
   *
   * Requires glJournalId
   * Returns 
   */
  Future<OfResult> deleteGlJournal(GlJournal ent, ) =>
      client.invoke('deleteGlJournal', ent, {  });

  /**
   * Delete a GlReconciliation record - GlReconciliation
   *
   * Requires glReconciliationId
   * Returns 
   */
  Future<OfResult> deleteGlReconciliation(GlReconciliation ent, ) =>
      client.invoke('deleteGlReconciliation', ent, {  });

  /**
   * Remove an Entry from a GlReconciliation - GlReconciliationEntry
   *
   * Requires glReconciliationId, acctgTransId, acctgTransEntrySeqId
   * Returns 
   */
  Future<OfResult> deleteGlReconciliationEntry(GlReconciliationEntry ent, ) =>
      client.invoke('deleteGlReconciliationEntry', ent, {  });

  /**
   * Delete a GlResourceType - GlResourceType
   *
   * Requires glResourceTypeId
   * Returns 
   */
  Future<OfResult> deleteGlResourceType(GlResourceType ent, ) =>
      client.invoke('deleteGlResourceType', ent, {  });

  /**
   * Delete a GlXbrlClass - GlXbrlClass
   *
   * Requires glXbrlClassId
   * Returns 
   */
  Future<OfResult> deleteGlXbrlClass(GlXbrlClass ent, ) =>
      client.invoke('deleteGlXbrlClass', ent, {  });

  /**
   * Delete an existing General Ledger Account of a Party - PartyGlAccount
   *
   * Requires organizationPartyId, partyId, roleTypeId, glAccountTypeId
   * Returns 
   */
  Future<OfResult> deletePartyGlAccount(PartyGlAccount ent, ) =>
      client.invoke('deletePartyGlAccount', ent, {  });

  /**
   * Delete a ProductAverageCostType - ProductAverageCostType
   *
   * Requires productAverageCostTypeId
   * Returns 
   */
  Future<OfResult> deleteProductAverageCostType(ProductAverageCostType ent, ) =>
      client.invoke('deleteProductAverageCostType', ent, {  });

  /**
   * Delete a SettlementTerm - SettlementTerm
   *
   * Requires settlementTermId
   * Returns 
   */
  Future<OfResult> deleteSettlementTerm(SettlementTerm ent, ) =>
      client.invoke('deleteSettlementTerm', ent, {  });

  /**
   * delete a Variance Reason Gl Account - VarianceReasonGlAccount
   *
   * Requires varianceReasonId, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteVarianceReasonGlAccount(VarianceReasonGlAccount ent, ) =>
      client.invoke('deleteVarianceReasonGlAccount', ent, {  });

  /**
   * Expire a GlAccountRole - GlAccountRole
   *
   * Requires glAccountId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireGlAccountRole(GlAccountRole ent, ) =>
      client.invoke('expireGlAccountRole', ent, {  });

  /**
   * Expire a GlBudgetXref - GlBudgetXref
   *
   * Requires glAccountId, budgetItemTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireGlBudgetXref(GlBudgetXref ent, ) =>
      client.invoke('expireGlBudgetXref', ent, {  });

  /**
   * Find CustomTimePeriod records, returns both general ones and those for the organizationPartyId passed - 
   *
   * Requires findDate
   * Returns customTimePeriodList[List]
   */
  Future<OfResult> findCustomTimePeriods({@required DateTime findDate, String organizationPartyId, String excludeNoOrganizationPeriods, List<dynamic> onlyIncludePeriodTypeIdList}) =>
      client.invoke('findCustomTimePeriods', null, { 'findDate': findDate, 'organizationPartyId': organizationPartyId, 'excludeNoOrganizationPeriods': excludeNoOrganizationPeriods, 'onlyIncludePeriodTypeIdList': onlyIncludePeriodTypeIdList });

  /**
   * Find the last date before findDate whose TimePeriod is marked isClosed="Y" for organizationPartyId and periodTypeId combination.
            If none are found, ie, no closed CustomTimePeriod exists, then return the earliest date available for any
            CustomTimePeriod of the organizationPartyId and periodTypeId.
            If no findDate is given, then use the current moment (nowTimestamp).
         - 
   *
   * Requires 
   * Returns lastClosedDate[Timestamp], lastClosedTimePeriod[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> findLastClosedDate({String organizationPartyId, DateTime findDate, String periodTypeId}) =>
      client.invoke('findLastClosedDate', null, { 'organizationPartyId': organizationPartyId, 'findDate': findDate, 'periodTypeId': periodTypeId });

  /**
   * Given AcctgTransAndEntire and Calculate acctg trans total for specific time period. - 
   *
   * Requires customTimePeriodStartDate, customTimePeriodEndDate, organizationPartyId, glAccountId
   * Returns acctgTransAndEntries[List], debitTotal[BigDecimal], creditTotal[BigDecimal], debitCreditDifference[BigDecimal]
   */
  Future<OfResult> getAcctgTransEntriesAndTransTotal({@required DateTime customTimePeriodStartDate, @required DateTime customTimePeriodEndDate, @required String organizationPartyId, String isPosted, @required String glAccountId}) =>
      client.invoke('getAcctgTransEntriesAndTransTotal', null, { 'customTimePeriodStartDate': customTimePeriodStartDate, 'customTimePeriodEndDate': customTimePeriodEndDate, 'organizationPartyId': organizationPartyId, 'isPosted': isPosted, 'glAccountId': glAccountId });

  /**
   * Look up a GlAccountId first in ProductGlAccount by productId and productGlAccountTypeId, if not found,
            then in organizationPartyId and glAccountTypeId  - 
   *
   * Requires organizationPartyId
   * Returns glAccountId[String]
   */
  Future<OfResult> getGlAccountFromAccountType({@required String organizationPartyId, String glAccountTypeId, String acctgTransTypeId, String debitCreditFlag, String partyId, String roleTypeId, String productId, String paymentId, String invoiceId, String fixedAssetId}) =>
      client.invoke('getGlAccountFromAccountType', null, { 'organizationPartyId': organizationPartyId, 'glAccountTypeId': glAccountTypeId, 'acctgTransTypeId': acctgTransTypeId, 'debitCreditFlag': debitCreditFlag, 'partyId': partyId, 'roleTypeId': roleTypeId, 'productId': productId, 'paymentId': paymentId, 'invoiceId': invoiceId, 'fixedAssetId': fixedAssetId });

  /**
   * Get amount percentage and glAccount for cost center - 
   *
   * Requires organizationPartyId
   * Returns glAcctgAndAmountPercentageList[List], glAccountCategories[List]
   */
  Future<OfResult> getGlAcctgAndAmountPercentage({@required String organizationPartyId}) =>
      client.invoke('getGlAcctgAndAmountPercentage', null, { 'organizationPartyId': organizationPartyId });

  /**
   * get an ownerPartyId from inventoryItemId  - InventoryItem
   *
   * Requires inventoryItemId
   * Returns ownerPartyId[String]
   */
  Future<OfResult> getInventoryItemOwner(InventoryItem ent, ) =>
      client.invoke('getInventoryItemOwner', ent, {  });

  /**
   * Inventory Valuation List - 
   *
   * Requires 
   * Returns inventoryValuationList[List]
   */
  Future<OfResult> getInventoryValuationList({String productId, String facilityId, String productCategoryId, String cogsMethodId, DateTime fromDate, DateTime thruDate}) =>
      client.invoke('getInventoryValuationList', null, { 'productId': productId, 'facilityId': facilityId, 'productCategoryId': productCategoryId, 'cogsMethodId': cogsMethodId, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Return previous year with respect to the given year and if none found then return null. - 
   *
   * Requires customTimePeriodId
   * Returns previousTimePeriod[Map]
   */
  Future<OfResult> getPreviousTimePeriod({@required String customTimePeriodId}) =>
      client.invoke('getPreviousTimePeriod', null, { 'customTimePeriodId': customTimePeriodId });

  /**
   *  - AcctgTrans
   *
   * Requires acctgTransTypeId, transactionDate, glFiscalTypeId, acctgTransTypeId, transactionDate, glFiscalTypeId
   * Returns 
   */
  Future<OfResult> interfaceAcctgTrans(AcctgTrans ent, ) =>
      client.invoke('interfaceAcctgTrans', ent, {  });

  /**
   *  - AcctgTransEntry
   *
   * Requires organizationPartyId, debitCreditFlag, organizationPartyId, debitCreditFlag
   * Returns 
   */
  Future<OfResult> interfaceAcctgTransEntry(AcctgTransEntry ent, ) =>
      client.invoke('interfaceAcctgTransEntry', ent, {  });

  /**
   * Post a AcctgTrans and related entries.  This will make sure that the time period is not closed and that
         the sum of the debits and credits are equal.
         - AcctgTrans
   *
   * Requires acctgTransId
   * Returns 
   */
  Future<OfResult> postAcctgTrans(AcctgTrans ent, {String verifyOnly}) =>
      client.invoke('postAcctgTrans', ent, { 'verifyOnly': verifyOnly });

  /**
   * Post a GlJournal - GlJournal
   *
   * Requires glJournalId
   * Returns 
   */
  Future<OfResult> postGlJournal(GlJournal ent, ) =>
      client.invoke('postGlJournal', ent, {  });

  /**
   * Prepare the data for the Income Statement - 
   *
   * Requires organizationPartyId, fromDate, thruDate, glFiscalTypeId
   * Returns totalNetIncome[BigDecimal], glAccountTotalsMap[Map]
   */
  Future<OfResult> prepareIncomeStatement({@required String organizationPartyId, @required DateTime fromDate, @required DateTime thruDate, @required String glFiscalTypeId}) =>
      client.invoke('prepareIncomeStatement', null, { 'organizationPartyId': organizationPartyId, 'fromDate': fromDate, 'thruDate': thruDate, 'glFiscalTypeId': glFiscalTypeId });

  /**
   * Creates an AcctgTrans and two offsetting AcctgTransEntry records - 
   *
   * Requires amount, debitGlAccountId, creditGlAccountId, amount
   * Returns acctgTransId[String]
   */
  Future<OfResult> quickCreateAcctgTransAndEntries({String acctgTransTypeId, String description, DateTime transactionDate, String isPosted, DateTime postedDate, DateTime scheduledPostingDate, String glJournalId, String glFiscalTypeId, String voucherRef, DateTime voucherDate, String groupStatusId, String fixedAssetId, String inventoryItemId, String physicalInventoryId, String partyId, String roleTypeId, String invoiceId, String paymentId, String finAccountTransId, String shipmentId, String receiptId, String workEffortId, String theirAcctgTransId, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String acctgTransEntryTypeId, String theirPartyId, String productId, String theirProductId, String glAccountTypeId, String organizationPartyId, @required Decimal amount, String currencyUomId, Decimal origAmount, String origCurrencyUomId, DateTime dueDate, String groupId, String taxId, String reconcileStatusId, String settlementTermId, String isSummary, @required String debitGlAccountId, @required String creditGlAccountId}) =>
      client.invoke('quickCreateAcctgTransAndEntries', null, { 'acctgTransTypeId': acctgTransTypeId, 'description': description, 'transactionDate': transactionDate, 'isPosted': isPosted, 'postedDate': postedDate, 'scheduledPostingDate': scheduledPostingDate, 'glJournalId': glJournalId, 'glFiscalTypeId': glFiscalTypeId, 'voucherRef': voucherRef, 'voucherDate': voucherDate, 'groupStatusId': groupStatusId, 'fixedAssetId': fixedAssetId, 'inventoryItemId': inventoryItemId, 'physicalInventoryId': physicalInventoryId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'invoiceId': invoiceId, 'paymentId': paymentId, 'finAccountTransId': finAccountTransId, 'shipmentId': shipmentId, 'receiptId': receiptId, 'workEffortId': workEffortId, 'theirAcctgTransId': theirAcctgTransId, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'acctgTransEntryTypeId': acctgTransEntryTypeId, 'theirPartyId': theirPartyId, 'productId': productId, 'theirProductId': theirProductId, 'glAccountTypeId': glAccountTypeId, 'organizationPartyId': organizationPartyId, 'amount': amount, 'currencyUomId': currencyUomId, 'origAmount': origAmount, 'origCurrencyUomId': origCurrencyUomId, 'dueDate': dueDate, 'groupId': groupId, 'taxId': taxId, 'reconcileStatusId': reconcileStatusId, 'settlementTermId': settlementTermId, 'isSummary': isSummary, 'debitGlAccountId': debitGlAccountId, 'creditGlAccountId': creditGlAccountId });

  /**
   * Remove an AcctgTransType - AcctgTransType
   *
   * Requires acctgTransTypeId
   * Returns 
   */
  Future<OfResult> removeAcctgTransType(AcctgTransType ent, ) =>
      client.invoke('removeAcctgTransType', ent, {  });

  /**
   * Reverting Accounting Transaction And Entries on Canceling an Invoice - 
   *
   * Requires invoiceId
   * Returns 
   */
  Future<OfResult> revertAcctgTransOnCancelInvoice({@required String invoiceId}) =>
      client.invoke('revertAcctgTransOnCancelInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Create Reverse Accounting Transaction and Entries on removing PaymentApplication records. - 
   *
   * Requires paymentApplicationId
   * Returns 
   */
  Future<OfResult> revertAcctgTransOnRemovePaymentApplications({@required String paymentApplicationId}) =>
      client.invoke('revertAcctgTransOnRemovePaymentApplications', null, { 'paymentApplicationId': paymentApplicationId });

  /**
   * Set Gl Reconciliation status - 
   *
   * Requires glReconciliationId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setGlReconciliationStatus({@required String glReconciliationId, @required String statusId}) =>
      client.invoke('setGlReconciliationStatus', null, { 'glReconciliationId': glReconciliationId, 'statusId': statusId });

  /**
   * Update a AcctgTrans record - AcctgTrans
   *
   * Requires acctgTransId
   * Returns 
   */
  Future<OfResult> updateAcctgTrans(AcctgTrans ent, ) =>
      client.invoke('updateAcctgTrans', ent, {  });

  /**
   * Update AcctgTransAttribute - AcctgTransAttribute
   *
   * Requires acctgTransId, attrName
   * Returns 
   */
  Future<OfResult> updateAcctgTransAttribute(AcctgTransAttribute ent, ) =>
      client.invoke('updateAcctgTransAttribute', ent, {  });

  /**
   * Update an Entry to a AcctgTrans record - AcctgTransEntry
   *
   * Requires acctgTransId, acctgTransEntrySeqId
   * Returns 
   */
  Future<OfResult> updateAcctgTransEntry(AcctgTransEntry ent, ) =>
      client.invoke('updateAcctgTransEntry', ent, {  });

  /**
   *  - AcctgTransEntryType
   *
   * Requires acctgTransEntryTypeId
   * Returns 
   */
  Future<OfResult> updateAcctgTransEntryType(AcctgTransEntryType ent, ) =>
      client.invoke('updateAcctgTransEntryType', ent, {  });

  /**
   * Update an AcctgTransType - AcctgTransType
   *
   * Requires acctgTransTypeId
   * Returns 
   */
  Future<OfResult> updateAcctgTransType(AcctgTransType ent, ) =>
      client.invoke('updateAcctgTransType', ent, {  });

  /**
   * Update a AcctgTransTypeAttr record - AcctgTransTypeAttr
   *
   * Requires acctgTransTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateAcctgTransTypeAttr(AcctgTransTypeAttr ent, ) =>
      client.invoke('updateAcctgTransTypeAttr', ent, {  });

  /**
   * Update a FinAccountTypeGlAccount - FinAccountTypeGlAccount
   *
   * Requires finAccountTypeId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> updateFinAccountTypeGlAccount(FinAccountTypeGlAccount ent, ) =>
      client.invoke('updateFinAccountTypeGlAccount', ent, {  });

  /**
   * Update a GlAccount record - GlAccount
   *
   * Requires glAccountId
   * Returns 
   */
  Future<OfResult> updateGlAccount(GlAccount ent, ) =>
      client.invoke('updateGlAccount', ent, {  });

  /**
   * Update GL Account Category - GlAccountCategory
   *
   * Requires glAccountCategoryId
   * Returns 
   */
  Future<OfResult> updateGlAccountCategory(GlAccountCategory ent, ) =>
      client.invoke('updateGlAccountCategory', ent, {  });

  /**
   * Update GL Account Category Member - GlAccountCategoryMember
   *
   * Requires glAccountId, glAccountCategoryId, fromDate
   * Returns 
   */
  Future<OfResult> updateGlAccountCategoryMember(GlAccountCategoryMember ent, ) =>
      client.invoke('updateGlAccountCategoryMember', ent, {  });

  /**
   * Update GlAccountCategoryType - GlAccountCategoryType
   *
   * Requires glAccountCategoryTypeId
   * Returns 
   */
  Future<OfResult> updateGlAccountCategoryType(GlAccountCategoryType ent, ) =>
      client.invoke('updateGlAccountCategoryType', ent, {  });

  /**
   * Update a GlAccountClass - GlAccountClass
   *
   * Requires glAccountClassId
   * Returns 
   */
  Future<OfResult> updateGlAccountClass(GlAccountClass ent, ) =>
      client.invoke('updateGlAccountClass', ent, {  });

  /**
   * Update a GlAccountGroup - GlAccountGroup
   *
   * Requires glAccountGroupId
   * Returns 
   */
  Future<OfResult> updateGlAccountGroup(GlAccountGroup ent, ) =>
      client.invoke('updateGlAccountGroup', ent, {  });

  /**
   * Update a GlAccountGroupMember - GlAccountGroupMember
   *
   * Requires glAccountId, glAccountGroupTypeId
   * Returns 
   */
  Future<OfResult> updateGlAccountGroupMember(GlAccountGroupMember ent, ) =>
      client.invoke('updateGlAccountGroupMember', ent, {  });

  /**
   * Update a GlAccountGroupType - GlAccountGroupType
   *
   * Requires glAccountGroupTypeId
   * Returns 
   */
  Future<OfResult> updateGlAccountGroupType(GlAccountGroupType ent, ) =>
      client.invoke('updateGlAccountGroupType', ent, {  });

  /**
   * Update a GlAccount record - GlAccountOrganization
   *
   * Requires glAccountId, organizationPartyId
   * Returns 
   */
  Future<OfResult> updateGlAccountOrganization(GlAccountOrganization ent, ) =>
      client.invoke('updateGlAccountOrganization', ent, {  });

  /**
   * Update a GlAccountType - GlAccountType
   *
   * Requires glAccountTypeId
   * Returns 
   */
  Future<OfResult> updateGlAccountType(GlAccountType ent, ) =>
      client.invoke('updateGlAccountType', ent, {  });

  /**
   * Update a GlBudgetXref - GlBudgetXref
   *
   * Requires glAccountId, budgetItemTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateGlBudgetXref(GlBudgetXref ent, ) =>
      client.invoke('updateGlBudgetXref', ent, {  });

  /**
   * Update a GlFiscalType - GlFiscalType
   *
   * Requires glFiscalTypeId
   * Returns 
   */
  Future<OfResult> updateGlFiscalType(GlFiscalType ent, ) =>
      client.invoke('updateGlFiscalType', ent, {  });

  /**
   * Update a GlJournal record - GlJournal
   *
   * Requires glJournalId
   * Returns 
   */
  Future<OfResult> updateGlJournal(GlJournal ent, ) =>
      client.invoke('updateGlJournal', ent, {  });

  /**
   * Update a GlReconciliation record - GlReconciliation
   *
   * Requires glReconciliationId
   * Returns 
   */
  Future<OfResult> updateGlReconciliation(GlReconciliation ent, ) =>
      client.invoke('updateGlReconciliation', ent, {  });

  /**
   * Update an Entry to a GlReconciliation record - GlReconciliationEntry
   *
   * Requires glReconciliationId, acctgTransId, acctgTransEntrySeqId, reconciledAmount
   * Returns 
   */
  Future<OfResult> updateGlReconciliationEntry(GlReconciliationEntry ent, ) =>
      client.invoke('updateGlReconciliationEntry', ent, {  });

  /**
   * Update a GlResourceType - GlResourceType
   *
   * Requires glResourceTypeId
   * Returns 
   */
  Future<OfResult> updateGlResourceType(GlResourceType ent, ) =>
      client.invoke('updateGlResourceType', ent, {  });

  /**
   * Update a GlXbrlClass - GlXbrlClass
   *
   * Requires glXbrlClassId
   * Returns 
   */
  Future<OfResult> updateGlXbrlClass(GlXbrlClass ent, ) =>
      client.invoke('updateGlXbrlClass', ent, {  });

  /**
   * Update an existing General Ledger Account of a Party - PartyGlAccount
   *
   * Requires organizationPartyId, partyId, roleTypeId, glAccountTypeId, glAccountId
   * Returns 
   */
  Future<OfResult> updatePartyGlAccount(PartyGlAccount ent, ) =>
      client.invoke('updatePartyGlAccount', ent, {  });

  /**
   * Update a ProductAverageCostType - ProductAverageCostType
   *
   * Requires productAverageCostTypeId
   * Returns 
   */
  Future<OfResult> updateProductAverageCostType(ProductAverageCostType ent, ) =>
      client.invoke('updateProductAverageCostType', ent, {  });

  /**
   * Update a SettlementTerm - SettlementTerm
   *
   * Requires settlementTermId
   * Returns 
   */
  Future<OfResult> updateSettlementTerm(SettlementTerm ent, ) =>
      client.invoke('updateSettlementTerm', ent, {  });

  /**
   * Update a Variance Reason Gl Account - VarianceReasonGlAccount
   *
   * Requires varianceReasonId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> updateVarianceReasonGlAccount(VarianceReasonGlAccount ent, ) =>
      client.invoke('updateVarianceReasonGlAccount', ent, {  });

}