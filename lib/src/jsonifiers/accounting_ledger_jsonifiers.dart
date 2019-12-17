import 'package:sagas_meta/src/models/accounting_ledger.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingLedgerJsonifier{
  static AcctgTrans extractAcctgTrans(dynamic json) {
    return AcctgTrans(
        entityId: create_id_from('AcctgTrans', ['acctgTransId'], json),
        workEffortId: json['workEffortId'] as String,
        theirAcctgTransId: json['theirAcctgTransId'] as String,
        description: json['description'] as String,
        postedDate: check_dt(json['postedDate']),
        physicalInventoryId: json['physicalInventoryId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        isPosted: json['isPosted'] as String,
        paymentId: json['paymentId'] as String,
        voucherDate: check_dt(json['voucherDate']),
        partyId: json['partyId'] as String,
        receiptId: json['receiptId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        acctgTransTypeId: json['acctgTransTypeId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        glFiscalTypeId: json['glFiscalTypeId'] as String,
        glJournalId: json['glJournalId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        scheduledPostingDate: check_dt(json['scheduledPostingDate']),
        acctgTransId: json['acctgTransId'] as String,
        voucherRef: json['voucherRef'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        createdDate: check_dt(json['createdDate']),
        shipmentId: json['shipmentId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        invoiceId: json['invoiceId'] as String,
        groupStatusId: json['groupStatusId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTrans overridesAcctgTrans(Map<String, dynamic> map) {
    return AcctgTrans(
        entityId: create_id_from('AcctgTrans', ['acctgTransId'], map),
        workEffortId: map['workEffortId'],
        theirAcctgTransId: map['theirAcctgTransId'],
        description: map['description'],
        postedDate: map['postedDate'],
        physicalInventoryId: map['physicalInventoryId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        isPosted: map['isPosted'],
        paymentId: map['paymentId'],
        voucherDate: map['voucherDate'],
        partyId: map['partyId'],
        receiptId: map['receiptId'],
        createdByUserLogin: map['createdByUserLogin'],
        finAccountTransId: map['finAccountTransId'],
        roleTypeId: map['roleTypeId'],
        acctgTransTypeId: map['acctgTransTypeId'],
        lastModifiedDate: map['lastModifiedDate'],
        glFiscalTypeId: map['glFiscalTypeId'],
        glJournalId: map['glJournalId'],
        transactionDate: map['transactionDate'],
        scheduledPostingDate: map['scheduledPostingDate'],
        acctgTransId: map['acctgTransId'],
        voucherRef: map['voucherRef'],
        inventoryItemId: map['inventoryItemId'],
        createdDate: map['createdDate'],
        shipmentId: map['shipmentId'],
        fixedAssetId: map['fixedAssetId'],
        invoiceId: map['invoiceId'],
        groupStatusId: map['groupStatusId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransAndEntries extractAcctgTransAndEntries(dynamic json) {
    return AcctgTransAndEntries(
        entityId: create_id_from('AcctgTransAndEntries', ['acctgTransId', 'acctgTransEntrySeqId', 'glAccountClassId'], json),
        transTypeDescription: json['transTypeDescription'] as String,
        workEffortId: json['workEffortId'] as String,
        accountName: json['accountName'] as String,
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        acctgTransEntryTypeId: json['acctgTransEntryTypeId'] as String,
        postedDate: check_dt(json['postedDate']),
        physicalInventoryId: json['physicalInventoryId'] as String,
        isPosted: json['isPosted'] as String,
        debitCreditFlag: json['debitCreditFlag'] as String,
        origAmount: json['origAmount'] as double,
        paymentId: json['paymentId'] as String,
        partyId: json['partyId'] as String,
        receiptId: json['receiptId'] as String,
        amount: json['amount'] as double,
        accountCode: json['accountCode'] as String,
        transDescription: json['transDescription'] as String,
        productId: json['productId'] as String,
        acctgTransTypeId: json['acctgTransTypeId'] as String,
        glFiscalTypeId: json['glFiscalTypeId'] as String,
        reconcileStatusId: json['reconcileStatusId'] as String,
        glJournalId: json['glJournalId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        acctgTransId: json['acctgTransId'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        shipmentId: json['shipmentId'] as String,
        origCurrencyUomId: json['origCurrencyUomId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        invoiceId: json['invoiceId'] as String,
        acctgTransEntrySeqId: json['acctgTransEntrySeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransAndEntries overridesAcctgTransAndEntries(Map<String, dynamic> map) {
    return AcctgTransAndEntries(
        entityId: create_id_from('AcctgTransAndEntries', ['acctgTransId', 'acctgTransEntrySeqId', 'glAccountClassId'], map),
        transTypeDescription: map['transTypeDescription'],
        workEffortId: map['workEffortId'],
        accountName: map['accountName'],
        glAccountId: map['glAccountId'],
        description: map['description'],
        acctgTransEntryTypeId: map['acctgTransEntryTypeId'],
        postedDate: map['postedDate'],
        physicalInventoryId: map['physicalInventoryId'],
        isPosted: map['isPosted'],
        debitCreditFlag: map['debitCreditFlag'],
        origAmount: map['origAmount'],
        paymentId: map['paymentId'],
        partyId: map['partyId'],
        receiptId: map['receiptId'],
        amount: map['amount'],
        accountCode: map['accountCode'],
        transDescription: map['transDescription'],
        productId: map['productId'],
        acctgTransTypeId: map['acctgTransTypeId'],
        glFiscalTypeId: map['glFiscalTypeId'],
        reconcileStatusId: map['reconcileStatusId'],
        glJournalId: map['glJournalId'],
        transactionDate: map['transactionDate'],
        acctgTransId: map['acctgTransId'],
        inventoryItemId: map['inventoryItemId'],
        currencyUomId: map['currencyUomId'],
        glAccountTypeId: map['glAccountTypeId'],
        shipmentId: map['shipmentId'],
        origCurrencyUomId: map['origCurrencyUomId'],
        glAccountClassId: map['glAccountClassId'],
        fixedAssetId: map['fixedAssetId'],
        organizationPartyId: map['organizationPartyId'],
        invoiceId: map['invoiceId'],
        acctgTransEntrySeqId: map['acctgTransEntrySeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransAttribute extractAcctgTransAttribute(dynamic json) {
    return AcctgTransAttribute(
        entityId: create_id_from('AcctgTransAttribute', ['acctgTransId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        acctgTransId: json['acctgTransId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransAttribute overridesAcctgTransAttribute(Map<String, dynamic> map) {
    return AcctgTransAttribute(
        entityId: create_id_from('AcctgTransAttribute', ['acctgTransId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        acctgTransId: map['acctgTransId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransEntry extractAcctgTransEntry(dynamic json) {
    return AcctgTransEntry(
        entityId: create_id_from('AcctgTransEntry', ['acctgTransId', 'acctgTransEntrySeqId'], json),
        dueDate: check_dt(json['dueDate']),
        groupId: json['groupId'] as String,
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        theirPartyId: json['theirPartyId'] as String,
        acctgTransEntryTypeId: json['acctgTransEntryTypeId'] as String,
        origAmount: json['origAmount'] as double,
        debitCreditFlag: json['debitCreditFlag'] as String,
        partyId: json['partyId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        theirProductId: json['theirProductId'] as String,
        amount: json['amount'] as double,
        productId: json['productId'] as String,
        settlementTermId: json['settlementTermId'] as String,
        reconcileStatusId: json['reconcileStatusId'] as String,
        isSummary: json['isSummary'] as String,
        acctgTransId: json['acctgTransId'] as String,
        voucherRef: json['voucherRef'] as String,
        inventoryItemId: json['inventoryItemId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        taxId: json['taxId'] as String,
        origCurrencyUomId: json['origCurrencyUomId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        acctgTransEntrySeqId: json['acctgTransEntrySeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransEntry overridesAcctgTransEntry(Map<String, dynamic> map) {
    return AcctgTransEntry(
        entityId: create_id_from('AcctgTransEntry', ['acctgTransId', 'acctgTransEntrySeqId'], map),
        dueDate: map['dueDate'],
        groupId: map['groupId'],
        glAccountId: map['glAccountId'],
        description: map['description'],
        theirPartyId: map['theirPartyId'],
        acctgTransEntryTypeId: map['acctgTransEntryTypeId'],
        origAmount: map['origAmount'],
        debitCreditFlag: map['debitCreditFlag'],
        partyId: map['partyId'],
        roleTypeId: map['roleTypeId'],
        theirProductId: map['theirProductId'],
        amount: map['amount'],
        productId: map['productId'],
        settlementTermId: map['settlementTermId'],
        reconcileStatusId: map['reconcileStatusId'],
        isSummary: map['isSummary'],
        acctgTransId: map['acctgTransId'],
        voucherRef: map['voucherRef'],
        inventoryItemId: map['inventoryItemId'],
        currencyUomId: map['currencyUomId'],
        glAccountTypeId: map['glAccountTypeId'],
        taxId: map['taxId'],
        origCurrencyUomId: map['origCurrencyUomId'],
        organizationPartyId: map['organizationPartyId'],
        acctgTransEntrySeqId: map['acctgTransEntrySeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransEntrySums extractAcctgTransEntrySums(dynamic json) {
    return AcctgTransEntrySums(
        entityId: create_id_from('AcctgTransEntrySums', [], json),
        accountCode: json['accountCode'] as String,
        amount: json['amount'] as double,
        glAccountTypeId: json['glAccountTypeId'] as String,
        debitCreditFlag: json['debitCreditFlag'] as String,
        isPosted: json['isPosted'] as String,
        accountName: json['accountName'] as String,
        acctgTransTypeId: json['acctgTransTypeId'] as String,
        glFiscalTypeId: json['glFiscalTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransEntrySums overridesAcctgTransEntrySums(Map<String, dynamic> map) {
    return AcctgTransEntrySums(
        entityId: create_id_from('AcctgTransEntrySums', [], map),
        accountCode: map['accountCode'],
        amount: map['amount'],
        glAccountTypeId: map['glAccountTypeId'],
        debitCreditFlag: map['debitCreditFlag'],
        isPosted: map['isPosted'],
        accountName: map['accountName'],
        acctgTransTypeId: map['acctgTransTypeId'],
        glFiscalTypeId: map['glFiscalTypeId'],
        glAccountId: map['glAccountId'],
        glAccountClassId: map['glAccountClassId'],
        organizationPartyId: map['organizationPartyId'],
        transactionDate: map['transactionDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransEntryType extractAcctgTransEntryType(dynamic json) {
    return AcctgTransEntryType(
        entityId: create_id_from('AcctgTransEntryType', ['acctgTransEntryTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        acctgTransEntryTypeId: json['acctgTransEntryTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransEntryType overridesAcctgTransEntryType(Map<String, dynamic> map) {
    return AcctgTransEntryType(
        entityId: create_id_from('AcctgTransEntryType', ['acctgTransEntryTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        acctgTransEntryTypeId: map['acctgTransEntryTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransType extractAcctgTransType(dynamic json) {
    return AcctgTransType(
        entityId: create_id_from('AcctgTransType', ['acctgTransTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        acctgTransTypeId: json['acctgTransTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransType overridesAcctgTransType(Map<String, dynamic> map) {
    return AcctgTransType(
        entityId: create_id_from('AcctgTransType', ['acctgTransTypeId'], map),
        parentTypeId: map['parentTypeId'],
        acctgTransTypeId: map['acctgTransTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static AcctgTransTypeAttr extractAcctgTransTypeAttr(dynamic json) {
    return AcctgTransTypeAttr(
        entityId: create_id_from('AcctgTransTypeAttr', ['acctgTransTypeId', 'attrName'], json),
        acctgTransTypeId: json['acctgTransTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AcctgTransTypeAttr overridesAcctgTransTypeAttr(Map<String, dynamic> map) {
    return AcctgTransTypeAttr(
        entityId: create_id_from('AcctgTransTypeAttr', ['acctgTransTypeId', 'attrName'], map),
        acctgTransTypeId: map['acctgTransTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccOrgAndAcctgTransAndEntry extractGlAccOrgAndAcctgTransAndEntry(dynamic json) {
    return GlAccOrgAndAcctgTransAndEntry(
        entityId: create_id_from('GlAccOrgAndAcctgTransAndEntry', ['glAccountId', 'acctgTransId'], json),
        fromDate: check_dt(json['fromDate']),
        totalAmount: json['totalAmount'] as double,
        debitCreditFlag: json['debitCreditFlag'] as String,
        isPosted: json['isPosted'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        acctgTransId: json['acctgTransId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccOrgAndAcctgTransAndEntry overridesGlAccOrgAndAcctgTransAndEntry(Map<String, dynamic> map) {
    return GlAccOrgAndAcctgTransAndEntry(
        entityId: create_id_from('GlAccOrgAndAcctgTransAndEntry', ['glAccountId', 'acctgTransId'], map),
        fromDate: map['fromDate'],
        totalAmount: map['totalAmount'],
        debitCreditFlag: map['debitCreditFlag'],
        isPosted: map['isPosted'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        transactionDate: map['transactionDate'],
        acctgTransId: map['acctgTransId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccount extractGlAccount(dynamic json) {
    return GlAccount(
        entityId: create_id_from('GlAccount', ['glAccountId'], json),
        accountCode: json['accountCode'] as String,
        productId: json['productId'] as String,
        accountName: json['accountName'] as String,
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        externalId: json['externalId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        glResourceTypeId: json['glResourceTypeId'] as String,
        parentGlAccountId: json['parentGlAccountId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        glXbrlClassId: json['glXbrlClassId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccount overridesGlAccount(Map<String, dynamic> map) {
    return GlAccount(
        entityId: create_id_from('GlAccount', ['glAccountId'], map),
        accountCode: map['accountCode'],
        productId: map['productId'],
        accountName: map['accountName'],
        glAccountId: map['glAccountId'],
        description: map['description'],
        externalId: map['externalId'],
        glAccountTypeId: map['glAccountTypeId'],
        glResourceTypeId: map['glResourceTypeId'],
        parentGlAccountId: map['parentGlAccountId'],
        glAccountClassId: map['glAccountClassId'],
        glXbrlClassId: map['glXbrlClassId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountAndHistory extractGlAccountAndHistory(dynamic json) {
    return GlAccountAndHistory(
        entityId: create_id_from('GlAccountAndHistory', ['glAccountClassId', 'glAccountId', 'organizationPartyId', 'customTimePeriodId'], json),
        postedCredits: json['postedCredits'] as double,
        accountCode: json['accountCode'] as String,
        productId: json['productId'] as String,
        accountName: json['accountName'] as String,
        glAccountId: json['glAccountId'] as String,
        postedDebits: json['postedDebits'] as double,
        endingBalance: json['endingBalance'] as double,
        description: json['description'] as String,
        externalId: json['externalId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        glResourceTypeId: json['glResourceTypeId'] as String,
        parentGlAccountId: json['parentGlAccountId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        glXbrlClassId: json['glXbrlClassId'] as String,
        customTimePeriodId: json['customTimePeriodId'] as String,
        openingBalance: json['openingBalance'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountAndHistory overridesGlAccountAndHistory(Map<String, dynamic> map) {
    return GlAccountAndHistory(
        entityId: create_id_from('GlAccountAndHistory', ['glAccountClassId', 'glAccountId', 'organizationPartyId', 'customTimePeriodId'], map),
        postedCredits: map['postedCredits'],
        accountCode: map['accountCode'],
        productId: map['productId'],
        accountName: map['accountName'],
        glAccountId: map['glAccountId'],
        postedDebits: map['postedDebits'],
        endingBalance: map['endingBalance'],
        description: map['description'],
        externalId: map['externalId'],
        glAccountTypeId: map['glAccountTypeId'],
        glResourceTypeId: map['glResourceTypeId'],
        parentGlAccountId: map['parentGlAccountId'],
        glAccountClassId: map['glAccountClassId'],
        organizationPartyId: map['organizationPartyId'],
        glXbrlClassId: map['glXbrlClassId'],
        customTimePeriodId: map['customTimePeriodId'],
        openingBalance: map['openingBalance'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountAndHistoryTotals extractGlAccountAndHistoryTotals(dynamic json) {
    return GlAccountAndHistoryTotals(
        entityId: create_id_from('GlAccountAndHistoryTotals', ['glAccountId', 'organizationPartyId', 'customTimePeriodId'], json),
        postedCredits: json['postedCredits'] as double,
        accountCode: json['accountCode'] as String,
        totalPostedDebits: json['totalPostedDebits'] as double,
        productId: json['productId'] as String,
        accountName: json['accountName'] as String,
        glAccountId: json['glAccountId'] as String,
        postedDebits: json['postedDebits'] as double,
        endingBalance: json['endingBalance'] as double,
        description: json['description'] as String,
        externalId: json['externalId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        glResourceTypeId: json['glResourceTypeId'] as String,
        parentGlAccountId: json['parentGlAccountId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        totalEndingBalance: json['totalEndingBalance'] as double,
        glXbrlClassId: json['glXbrlClassId'] as String,
        customTimePeriodId: json['customTimePeriodId'] as String,
        openingBalance: json['openingBalance'] as double,
        totalPostedCredits: json['totalPostedCredits'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountAndHistoryTotals overridesGlAccountAndHistoryTotals(Map<String, dynamic> map) {
    return GlAccountAndHistoryTotals(
        entityId: create_id_from('GlAccountAndHistoryTotals', ['glAccountId', 'organizationPartyId', 'customTimePeriodId'], map),
        postedCredits: map['postedCredits'],
        accountCode: map['accountCode'],
        totalPostedDebits: map['totalPostedDebits'],
        productId: map['productId'],
        accountName: map['accountName'],
        glAccountId: map['glAccountId'],
        postedDebits: map['postedDebits'],
        endingBalance: map['endingBalance'],
        description: map['description'],
        externalId: map['externalId'],
        glAccountTypeId: map['glAccountTypeId'],
        glResourceTypeId: map['glResourceTypeId'],
        parentGlAccountId: map['parentGlAccountId'],
        glAccountClassId: map['glAccountClassId'],
        organizationPartyId: map['organizationPartyId'],
        totalEndingBalance: map['totalEndingBalance'],
        glXbrlClassId: map['glXbrlClassId'],
        customTimePeriodId: map['customTimePeriodId'],
        openingBalance: map['openingBalance'],
        totalPostedCredits: map['totalPostedCredits'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountCategory extractGlAccountCategory(dynamic json) {
    return GlAccountCategory(
        entityId: create_id_from('GlAccountCategory', ['glAccountCategoryId'], json),
        glAccountCategoryTypeId: json['glAccountCategoryTypeId'] as String,
        glAccountCategoryId: json['glAccountCategoryId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountCategory overridesGlAccountCategory(Map<String, dynamic> map) {
    return GlAccountCategory(
        entityId: create_id_from('GlAccountCategory', ['glAccountCategoryId'], map),
        glAccountCategoryTypeId: map['glAccountCategoryTypeId'],
        glAccountCategoryId: map['glAccountCategoryId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountCategoryMember extractGlAccountCategoryMember(dynamic json) {
    return GlAccountCategoryMember(
        entityId: create_id_from('GlAccountCategoryMember', ['glAccountId', 'glAccountCategoryId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        amountPercentage: json['amountPercentage'] as double,
        glAccountId: json['glAccountId'] as String,
        glAccountCategoryId: json['glAccountCategoryId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountCategoryMember overridesGlAccountCategoryMember(Map<String, dynamic> map) {
    return GlAccountCategoryMember(
        entityId: create_id_from('GlAccountCategoryMember', ['glAccountId', 'glAccountCategoryId', 'fromDate'], map),
        fromDate: map['fromDate'],
        amountPercentage: map['amountPercentage'],
        glAccountId: map['glAccountId'],
        glAccountCategoryId: map['glAccountCategoryId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountCategoryType extractGlAccountCategoryType(dynamic json) {
    return GlAccountCategoryType(
        entityId: create_id_from('GlAccountCategoryType', ['glAccountCategoryTypeId'], json),
        glAccountCategoryTypeId: json['glAccountCategoryTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountCategoryType overridesGlAccountCategoryType(Map<String, dynamic> map) {
    return GlAccountCategoryType(
        entityId: create_id_from('GlAccountCategoryType', ['glAccountCategoryTypeId'], map),
        glAccountCategoryTypeId: map['glAccountCategoryTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountClass extractGlAccountClass(dynamic json) {
    return GlAccountClass(
        entityId: create_id_from('GlAccountClass', ['glAccountClassId'], json),
        parentClassId: json['parentClassId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        glAccountClassId: json['glAccountClassId'] as String,
        description: json['description'] as String,
        isAssetClass: json['isAssetClass'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountClass overridesGlAccountClass(Map<String, dynamic> map) {
    return GlAccountClass(
        entityId: create_id_from('GlAccountClass', ['glAccountClassId'], map),
        parentClassId: map['parentClassId'],
        sequenceNum: map['sequenceNum'],
        glAccountClassId: map['glAccountClassId'],
        description: map['description'],
        isAssetClass: map['isAssetClass'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountGroup extractGlAccountGroup(dynamic json) {
    return GlAccountGroup(
        entityId: create_id_from('GlAccountGroup', ['glAccountGroupId'], json),
        glAccountGroupTypeId: json['glAccountGroupTypeId'] as String,
        description: json['description'] as String,
        glAccountGroupId: json['glAccountGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountGroup overridesGlAccountGroup(Map<String, dynamic> map) {
    return GlAccountGroup(
        entityId: create_id_from('GlAccountGroup', ['glAccountGroupId'], map),
        glAccountGroupTypeId: map['glAccountGroupTypeId'],
        description: map['description'],
        glAccountGroupId: map['glAccountGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountGroupMember extractGlAccountGroupMember(dynamic json) {
    return GlAccountGroupMember(
        entityId: create_id_from('GlAccountGroupMember', ['glAccountId', 'glAccountGroupTypeId'], json),
        glAccountId: json['glAccountId'] as String,
        glAccountGroupTypeId: json['glAccountGroupTypeId'] as String,
        glAccountGroupId: json['glAccountGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountGroupMember overridesGlAccountGroupMember(Map<String, dynamic> map) {
    return GlAccountGroupMember(
        entityId: create_id_from('GlAccountGroupMember', ['glAccountId', 'glAccountGroupTypeId'], map),
        glAccountId: map['glAccountId'],
        glAccountGroupTypeId: map['glAccountGroupTypeId'],
        glAccountGroupId: map['glAccountGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountGroupType extractGlAccountGroupType(dynamic json) {
    return GlAccountGroupType(
        entityId: create_id_from('GlAccountGroupType', ['glAccountGroupTypeId'], json),
        glAccountGroupTypeId: json['glAccountGroupTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountGroupType overridesGlAccountGroupType(Map<String, dynamic> map) {
    return GlAccountGroupType(
        entityId: create_id_from('GlAccountGroupType', ['glAccountGroupTypeId'], map),
        glAccountGroupTypeId: map['glAccountGroupTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountHistory extractGlAccountHistory(dynamic json) {
    return GlAccountHistory(
        entityId: create_id_from('GlAccountHistory', ['glAccountId', 'organizationPartyId', 'customTimePeriodId'], json),
        postedCredits: json['postedCredits'] as double,
        glAccountId: json['glAccountId'] as String,
        postedDebits: json['postedDebits'] as double,
        endingBalance: json['endingBalance'] as double,
        organizationPartyId: json['organizationPartyId'] as String,
        customTimePeriodId: json['customTimePeriodId'] as String,
        openingBalance: json['openingBalance'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountHistory overridesGlAccountHistory(Map<String, dynamic> map) {
    return GlAccountHistory(
        entityId: create_id_from('GlAccountHistory', ['glAccountId', 'organizationPartyId', 'customTimePeriodId'], map),
        postedCredits: map['postedCredits'],
        glAccountId: map['glAccountId'],
        postedDebits: map['postedDebits'],
        endingBalance: map['endingBalance'],
        organizationPartyId: map['organizationPartyId'],
        customTimePeriodId: map['customTimePeriodId'],
        openingBalance: map['openingBalance'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountOrganization extractGlAccountOrganization(dynamic json) {
    return GlAccountOrganization(
        entityId: create_id_from('GlAccountOrganization', ['glAccountId', 'organizationPartyId'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountOrganization overridesGlAccountOrganization(Map<String, dynamic> map) {
    return GlAccountOrganization(
        entityId: create_id_from('GlAccountOrganization', ['glAccountId', 'organizationPartyId'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountOrganizationAndClass extractGlAccountOrganizationAndClass(dynamic json) {
    return GlAccountOrganizationAndClass(
        entityId: create_id_from('GlAccountOrganizationAndClass', ['glAccountId', 'organizationPartyId'], json),
        roleTypeId: json['roleTypeId'] as String,
        accountCode: json['accountCode'] as String,
        productId: json['productId'] as String,
        accountName: json['accountName'] as String,
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        externalId: json['externalId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        glAccountTypeId: json['glAccountTypeId'] as String,
        glResourceTypeId: json['glResourceTypeId'] as String,
        parentGlAccountId: json['parentGlAccountId'] as String,
        glAccountClassId: json['glAccountClassId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        glXbrlClassId: json['glXbrlClassId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountOrganizationAndClass overridesGlAccountOrganizationAndClass(Map<String, dynamic> map) {
    return GlAccountOrganizationAndClass(
        entityId: create_id_from('GlAccountOrganizationAndClass', ['glAccountId', 'organizationPartyId'], map),
        roleTypeId: map['roleTypeId'],
        accountCode: map['accountCode'],
        productId: map['productId'],
        accountName: map['accountName'],
        glAccountId: map['glAccountId'],
        description: map['description'],
        externalId: map['externalId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        glAccountTypeId: map['glAccountTypeId'],
        glResourceTypeId: map['glResourceTypeId'],
        parentGlAccountId: map['parentGlAccountId'],
        glAccountClassId: map['glAccountClassId'],
        organizationPartyId: map['organizationPartyId'],
        glXbrlClassId: map['glXbrlClassId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountRole extractGlAccountRole(dynamic json) {
    return GlAccountRole(
        entityId: create_id_from('GlAccountRole', ['glAccountId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountRole overridesGlAccountRole(Map<String, dynamic> map) {
    return GlAccountRole(
        entityId: create_id_from('GlAccountRole', ['glAccountId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        glAccountId: map['glAccountId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountType extractGlAccountType(dynamic json) {
    return GlAccountType(
        entityId: create_id_from('GlAccountType', ['glAccountTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountType overridesGlAccountType(Map<String, dynamic> map) {
    return GlAccountType(
        entityId: create_id_from('GlAccountType', ['glAccountTypeId'], map),
        parentTypeId: map['parentTypeId'],
        glAccountTypeId: map['glAccountTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlAccountTypeDefault extractGlAccountTypeDefault(dynamic json) {
    return GlAccountTypeDefault(
        entityId: create_id_from('GlAccountTypeDefault', ['glAccountTypeId', 'organizationPartyId'], json),
        glAccountTypeId: json['glAccountTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlAccountTypeDefault overridesGlAccountTypeDefault(Map<String, dynamic> map) {
    return GlAccountTypeDefault(
        entityId: create_id_from('GlAccountTypeDefault', ['glAccountTypeId', 'organizationPartyId'], map),
        glAccountTypeId: map['glAccountTypeId'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlBudgetXref extractGlBudgetXref(dynamic json) {
    return GlBudgetXref(
        entityId: create_id_from('GlBudgetXref', ['glAccountId', 'budgetItemTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        allocationPercentage: json['allocationPercentage'] as double,
        glAccountId: json['glAccountId'] as String,
        budgetItemTypeId: json['budgetItemTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlBudgetXref overridesGlBudgetXref(Map<String, dynamic> map) {
    return GlBudgetXref(
        entityId: create_id_from('GlBudgetXref', ['glAccountId', 'budgetItemTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        allocationPercentage: map['allocationPercentage'],
        glAccountId: map['glAccountId'],
        budgetItemTypeId: map['budgetItemTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlFiscalType extractGlFiscalType(dynamic json) {
    return GlFiscalType(
        entityId: create_id_from('GlFiscalType', ['glFiscalTypeId'], json),
        glFiscalTypeId: json['glFiscalTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlFiscalType overridesGlFiscalType(Map<String, dynamic> map) {
    return GlFiscalType(
        entityId: create_id_from('GlFiscalType', ['glFiscalTypeId'], map),
        glFiscalTypeId: map['glFiscalTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlJournal extractGlJournal(dynamic json) {
    return GlJournal(
        entityId: create_id_from('GlJournal', ['glJournalId'], json),
        isPosted: json['isPosted'] as String,
        glJournalName: json['glJournalName'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        glJournalId: json['glJournalId'] as String,
        postedDate: check_dt(json['postedDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlJournal overridesGlJournal(Map<String, dynamic> map) {
    return GlJournal(
        entityId: create_id_from('GlJournal', ['glJournalId'], map),
        isPosted: map['isPosted'],
        glJournalName: map['glJournalName'],
        organizationPartyId: map['organizationPartyId'],
        glJournalId: map['glJournalId'],
        postedDate: map['postedDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlReconciliation extractGlReconciliation(dynamic json) {
    return GlReconciliation(
        entityId: create_id_from('GlReconciliation', ['glReconciliationId'], json),
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        glReconciliationId: json['glReconciliationId'] as String,
        glAccountId: json['glAccountId'] as String,
        glReconciliationName: json['glReconciliationName'] as String,
        description: json['description'] as String,
        reconciledDate: check_dt(json['reconciledDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        reconciledBalance: json['reconciledBalance'] as double,
        statusId: json['statusId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        openingBalance: json['openingBalance'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlReconciliation overridesGlReconciliation(Map<String, dynamic> map) {
    return GlReconciliation(
        entityId: create_id_from('GlReconciliation', ['glReconciliationId'], map),
        lastModifiedDate: map['lastModifiedDate'],
        glReconciliationId: map['glReconciliationId'],
        glAccountId: map['glAccountId'],
        glReconciliationName: map['glReconciliationName'],
        description: map['description'],
        reconciledDate: map['reconciledDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        reconciledBalance: map['reconciledBalance'],
        statusId: map['statusId'],
        organizationPartyId: map['organizationPartyId'],
        createdByUserLogin: map['createdByUserLogin'],
        openingBalance: map['openingBalance'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlReconciliationEntry extractGlReconciliationEntry(dynamic json) {
    return GlReconciliationEntry(
        entityId: create_id_from('GlReconciliationEntry', ['glReconciliationId', 'acctgTransId', 'acctgTransEntrySeqId'], json),
        glReconciliationId: json['glReconciliationId'] as String,
        reconciledAmount: json['reconciledAmount'] as double,
        acctgTransEntrySeqId: json['acctgTransEntrySeqId'] as String,
        acctgTransId: json['acctgTransId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlReconciliationEntry overridesGlReconciliationEntry(Map<String, dynamic> map) {
    return GlReconciliationEntry(
        entityId: create_id_from('GlReconciliationEntry', ['glReconciliationId', 'acctgTransId', 'acctgTransEntrySeqId'], map),
        glReconciliationId: map['glReconciliationId'],
        reconciledAmount: map['reconciledAmount'],
        acctgTransEntrySeqId: map['acctgTransEntrySeqId'],
        acctgTransId: map['acctgTransId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlResourceType extractGlResourceType(dynamic json) {
    return GlResourceType(
        entityId: create_id_from('GlResourceType', ['glResourceTypeId'], json),
        glResourceTypeId: json['glResourceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlResourceType overridesGlResourceType(Map<String, dynamic> map) {
    return GlResourceType(
        entityId: create_id_from('GlResourceType', ['glResourceTypeId'], map),
        glResourceTypeId: map['glResourceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GlXbrlClass extractGlXbrlClass(dynamic json) {
    return GlXbrlClass(
        entityId: create_id_from('GlXbrlClass', ['glXbrlClassId'], json),
        description: json['description'] as String,
        glXbrlClassId: json['glXbrlClassId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GlXbrlClass overridesGlXbrlClass(Map<String, dynamic> map) {
    return GlXbrlClass(
        entityId: create_id_from('GlXbrlClass', ['glXbrlClassId'], map),
        description: map['description'],
        glXbrlClassId: map['glXbrlClassId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyAcctgPreference extractPartyAcctgPreference(dynamic json) {
    return PartyAcctgPreference(
        entityId: create_id_from('PartyAcctgPreference', ['partyId'], json),
        cogsMethodId: json['cogsMethodId'] as String,
        oldInvoiceSequenceEnumId: json['oldInvoiceSequenceEnumId'] as String,
        quoteSeqCustMethId: json['quoteSeqCustMethId'] as String,
        lastQuoteNumber: json['lastQuoteNumber'] as int,
        fiscalYearStartDay: json['fiscalYearStartDay'] as int,
        lastInvoiceNumber: json['lastInvoiceNumber'] as int,
        taxFormId: json['taxFormId'] as String,
        refundPaymentMethodId: json['refundPaymentMethodId'] as String,
        useInvoiceIdForReturns: json['useInvoiceIdForReturns'] as String,
        invoiceIdPrefix: json['invoiceIdPrefix'] as String,
        lastOrderNumber: json['lastOrderNumber'] as int,
        orderSeqCustMethId: json['orderSeqCustMethId'] as String,
        fiscalYearStartMonth: json['fiscalYearStartMonth'] as int,
        enableAccounting: json['enableAccounting'] as String,
        partyId: json['partyId'] as String,
        oldOrderSequenceEnumId: json['oldOrderSequenceEnumId'] as String,
        invoiceSeqCustMethId: json['invoiceSeqCustMethId'] as String,
        baseCurrencyUomId: json['baseCurrencyUomId'] as String,
        lastInvoiceRestartDate: check_dt(json['lastInvoiceRestartDate']),
        errorGlJournalId: json['errorGlJournalId'] as String,
        orderIdPrefix: json['orderIdPrefix'] as String,
        oldQuoteSequenceEnumId: json['oldQuoteSequenceEnumId'] as String,
        quoteIdPrefix: json['quoteIdPrefix'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyAcctgPreference overridesPartyAcctgPreference(Map<String, dynamic> map) {
    return PartyAcctgPreference(
        entityId: create_id_from('PartyAcctgPreference', ['partyId'], map),
        cogsMethodId: map['cogsMethodId'],
        oldInvoiceSequenceEnumId: map['oldInvoiceSequenceEnumId'],
        quoteSeqCustMethId: map['quoteSeqCustMethId'],
        lastQuoteNumber: map['lastQuoteNumber'],
        fiscalYearStartDay: map['fiscalYearStartDay'],
        lastInvoiceNumber: map['lastInvoiceNumber'],
        taxFormId: map['taxFormId'],
        refundPaymentMethodId: map['refundPaymentMethodId'],
        useInvoiceIdForReturns: map['useInvoiceIdForReturns'],
        invoiceIdPrefix: map['invoiceIdPrefix'],
        lastOrderNumber: map['lastOrderNumber'],
        orderSeqCustMethId: map['orderSeqCustMethId'],
        fiscalYearStartMonth: map['fiscalYearStartMonth'],
        enableAccounting: map['enableAccounting'],
        partyId: map['partyId'],
        oldOrderSequenceEnumId: map['oldOrderSequenceEnumId'],
        invoiceSeqCustMethId: map['invoiceSeqCustMethId'],
        baseCurrencyUomId: map['baseCurrencyUomId'],
        lastInvoiceRestartDate: map['lastInvoiceRestartDate'],
        errorGlJournalId: map['errorGlJournalId'],
        orderIdPrefix: map['orderIdPrefix'],
        oldQuoteSequenceEnumId: map['oldQuoteSequenceEnumId'],
        quoteIdPrefix: map['quoteIdPrefix'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyGlAccount extractPartyGlAccount(dynamic json) {
    return PartyGlAccount(
        entityId: create_id_from('PartyGlAccount', ['organizationPartyId', 'partyId', 'roleTypeId', 'glAccountTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyGlAccount overridesPartyGlAccount(Map<String, dynamic> map) {
    return PartyGlAccount(
        entityId: create_id_from('PartyGlAccount', ['organizationPartyId', 'partyId', 'roleTypeId', 'glAccountTypeId'], map),
        roleTypeId: map['roleTypeId'],
        glAccountTypeId: map['glAccountTypeId'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyPrefDocTypeTpl extractPartyPrefDocTypeTpl(dynamic json) {
    return PartyPrefDocTypeTpl(
        entityId: create_id_from('PartyPrefDocTypeTpl', ['partyPrefDocTypeTplId'], json),
        fromDate: check_dt(json['fromDate']),
        quoteTypeId: json['quoteTypeId'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        partyPrefDocTypeTplId: json['partyPrefDocTypeTplId'] as String,
        orderTypeId: json['orderTypeId'] as String,
        customScreenId: json['customScreenId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyPrefDocTypeTpl overridesPartyPrefDocTypeTpl(Map<String, dynamic> map) {
    return PartyPrefDocTypeTpl(
        entityId: create_id_from('PartyPrefDocTypeTpl', ['partyPrefDocTypeTplId'], map),
        fromDate: map['fromDate'],
        quoteTypeId: map['quoteTypeId'],
        invoiceTypeId: map['invoiceTypeId'],
        partyPrefDocTypeTplId: map['partyPrefDocTypeTplId'],
        orderTypeId: map['orderTypeId'],
        customScreenId: map['customScreenId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyPrefDocTypeTplAndCustomScreen extractPartyPrefDocTypeTplAndCustomScreen(dynamic json) {
    return PartyPrefDocTypeTplAndCustomScreen(
        entityId: create_id_from('PartyPrefDocTypeTplAndCustomScreen', ['partyPrefDocTypeTplId'], json),
        fromDate: check_dt(json['fromDate']),
        quoteTypeId: json['quoteTypeId'] as String,
        customScreenLocation: json['customScreenLocation'] as String,
        invoiceTypeId: json['invoiceTypeId'] as String,
        customScreenTypeId: json['customScreenTypeId'] as String,
        partyPrefDocTypeTplId: json['partyPrefDocTypeTplId'] as String,
        orderTypeId: json['orderTypeId'] as String,
        description: json['description'] as String,
        customScreenId: json['customScreenId'] as String,
        partyId: json['partyId'] as String,
        customScreenName: json['customScreenName'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyPrefDocTypeTplAndCustomScreen overridesPartyPrefDocTypeTplAndCustomScreen(Map<String, dynamic> map) {
    return PartyPrefDocTypeTplAndCustomScreen(
        entityId: create_id_from('PartyPrefDocTypeTplAndCustomScreen', ['partyPrefDocTypeTplId'], map),
        fromDate: map['fromDate'],
        quoteTypeId: map['quoteTypeId'],
        customScreenLocation: map['customScreenLocation'],
        invoiceTypeId: map['invoiceTypeId'],
        customScreenTypeId: map['customScreenTypeId'],
        partyPrefDocTypeTplId: map['partyPrefDocTypeTplId'],
        orderTypeId: map['orderTypeId'],
        description: map['description'],
        customScreenId: map['customScreenId'],
        partyId: map['partyId'],
        customScreenName: map['customScreenName'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAverageCost extractProductAverageCost(dynamic json) {
    return ProductAverageCost(
        entityId: create_id_from('ProductAverageCost', ['productAverageCostTypeId', 'organizationPartyId', 'productId', 'facilityId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        productAverageCostTypeId: json['productAverageCostTypeId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        averageCost: json['averageCost'] as double,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAverageCost overridesProductAverageCost(Map<String, dynamic> map) {
    return ProductAverageCost(
        entityId: create_id_from('ProductAverageCost', ['productAverageCostTypeId', 'organizationPartyId', 'productId', 'facilityId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        productAverageCostTypeId: map['productAverageCostTypeId'],
        organizationPartyId: map['organizationPartyId'],
        averageCost: map['averageCost'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductAverageCostType extractProductAverageCostType(dynamic json) {
    return ProductAverageCostType(
        entityId: create_id_from('ProductAverageCostType', ['productAverageCostTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        productAverageCostTypeId: json['productAverageCostTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductAverageCostType overridesProductAverageCostType(Map<String, dynamic> map) {
    return ProductAverageCostType(
        entityId: create_id_from('ProductAverageCostType', ['productAverageCostTypeId'], map),
        parentTypeId: map['parentTypeId'],
        productAverageCostTypeId: map['productAverageCostTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SettlementTerm extractSettlementTerm(dynamic json) {
    return SettlementTerm(
        entityId: create_id_from('SettlementTerm', ['settlementTermId'], json),
        settlementTermId: json['settlementTermId'] as String,
        uomId: json['uomId'] as String,
        termName: json['termName'] as String,
        termValue: json['termValue'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SettlementTerm overridesSettlementTerm(Map<String, dynamic> map) {
    return SettlementTerm(
        entityId: create_id_from('SettlementTerm', ['settlementTermId'], map),
        settlementTermId: map['settlementTermId'],
        uomId: map['uomId'],
        termName: map['termName'],
        termValue: map['termValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VarianceReasonGlAccount extractVarianceReasonGlAccount(dynamic json) {
    return VarianceReasonGlAccount(
        entityId: create_id_from('VarianceReasonGlAccount', ['varianceReasonId', 'organizationPartyId'], json),
        varianceReasonId: json['varianceReasonId'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VarianceReasonGlAccount overridesVarianceReasonGlAccount(Map<String, dynamic> map) {
    return VarianceReasonGlAccount(
        entityId: create_id_from('VarianceReasonGlAccount', ['varianceReasonId', 'organizationPartyId'], map),
        varianceReasonId: map['varianceReasonId'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}