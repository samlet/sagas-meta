import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AcctgTrans, Accounting Transaction
class AcctgTrans extends EntityBase {

  /// this entity has only one pk
  final String workEffortId;
  final String theirAcctgTransId;
  final String description;
  final DateTime postedDate;
  final String physicalInventoryId;
  final String lastModifiedByUserLogin;
  final String isPosted;
  final String paymentId;
  final DateTime voucherDate;
  final String partyId;
  final String receiptId;
  final String createdByUserLogin;
  final String finAccountTransId;
  final String roleTypeId;
  final String acctgTransTypeId;
  final DateTime lastModifiedDate;
  final String glFiscalTypeId;
  final String glJournalId;
  final DateTime transactionDate;
  final DateTime scheduledPostingDate;
  final String acctgTransId; // pk
  final String voucherRef;
  final String inventoryItemId;
  final DateTime createdDate;
  final String shipmentId;
  final String fixedAssetId;
  final String invoiceId;
  final String groupStatusId;
  AcctgTrans({entityId,
    this.workEffortId, this.theirAcctgTransId, this.description, this.postedDate, this.physicalInventoryId, this.lastModifiedByUserLogin, this.isPosted, this.paymentId, this.voucherDate, this.partyId, this.receiptId, this.createdByUserLogin, this.finAccountTransId, this.roleTypeId, this.acctgTransTypeId, this.lastModifiedDate, this.glFiscalTypeId, this.glJournalId, this.transactionDate, this.scheduledPostingDate, @required this.acctgTransId, this.voucherRef, this.inventoryItemId, this.createdDate, this.shipmentId, this.fixedAssetId, this.invoiceId, this.groupStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTrans { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'theirAcctgTransId':theirAcctgTransId, 'description':description, 'postedDate':postedDate, 'physicalInventoryId':physicalInventoryId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'isPosted':isPosted, 'paymentId':paymentId, 'voucherDate':voucherDate, 'partyId':partyId, 'receiptId':receiptId, 'createdByUserLogin':createdByUserLogin, 'finAccountTransId':finAccountTransId, 'roleTypeId':roleTypeId, 'acctgTransTypeId':acctgTransTypeId, 'lastModifiedDate':lastModifiedDate, 'glFiscalTypeId':glFiscalTypeId, 'glJournalId':glJournalId, 'transactionDate':transactionDate, 'scheduledPostingDate':scheduledPostingDate, 'acctgTransId':acctgTransId, 'voucherRef':voucherRef, 'inventoryItemId':inventoryItemId, 'createdDate':createdDate, 'shipmentId':shipmentId, 'fixedAssetId':fixedAssetId, 'invoiceId':invoiceId, 'groupStatusId':groupStatusId};
  }

}

/// Entity AcctgTransAndEntries, View of AcctgTrans and Entries, for easier lookup and calculation
class AcctgTransAndEntries extends EntityBase {

  final String transTypeDescription;
  final String workEffortId;
  final String accountName;
  final String glAccountId;
  final String description;
  final String acctgTransEntryTypeId;
  final DateTime postedDate;
  final String physicalInventoryId;
  final String isPosted;
  final String debitCreditFlag;
  final double origAmount;
  final String paymentId;
  final String partyId;
  final String receiptId;
  final double amount;
  final String accountCode;
  final String transDescription;
  final String productId;
  final String acctgTransTypeId;
  final String glFiscalTypeId;
  final String reconcileStatusId;
  final String glJournalId;
  final DateTime transactionDate;
  final String acctgTransId; // pk
  final String inventoryItemId;
  final String currencyUomId;
  final String glAccountTypeId;
  final String shipmentId;
  final String origCurrencyUomId;
  final String glAccountClassId; // pk
  final String fixedAssetId;
  final String organizationPartyId;
  final String invoiceId;
  final String acctgTransEntrySeqId; // pk
  AcctgTransAndEntries({entityId,
    this.transTypeDescription, this.workEffortId, this.accountName, this.glAccountId, this.description, this.acctgTransEntryTypeId, this.postedDate, this.physicalInventoryId, this.isPosted, this.debitCreditFlag, this.origAmount, this.paymentId, this.partyId, this.receiptId, this.amount, this.accountCode, this.transDescription, this.productId, this.acctgTransTypeId, this.glFiscalTypeId, this.reconcileStatusId, this.glJournalId, this.transactionDate, @required this.acctgTransId, this.inventoryItemId, this.currencyUomId, this.glAccountTypeId, this.shipmentId, this.origCurrencyUomId, @required this.glAccountClassId, this.fixedAssetId, this.organizationPartyId, this.invoiceId, @required this.acctgTransEntrySeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransAndEntries { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'transTypeDescription':transTypeDescription, 'workEffortId':workEffortId, 'accountName':accountName, 'glAccountId':glAccountId, 'description':description, 'acctgTransEntryTypeId':acctgTransEntryTypeId, 'postedDate':postedDate, 'physicalInventoryId':physicalInventoryId, 'isPosted':isPosted, 'debitCreditFlag':debitCreditFlag, 'origAmount':origAmount, 'paymentId':paymentId, 'partyId':partyId, 'receiptId':receiptId, 'amount':amount, 'accountCode':accountCode, 'transDescription':transDescription, 'productId':productId, 'acctgTransTypeId':acctgTransTypeId, 'glFiscalTypeId':glFiscalTypeId, 'reconcileStatusId':reconcileStatusId, 'glJournalId':glJournalId, 'transactionDate':transactionDate, 'acctgTransId':acctgTransId, 'inventoryItemId':inventoryItemId, 'currencyUomId':currencyUomId, 'glAccountTypeId':glAccountTypeId, 'shipmentId':shipmentId, 'origCurrencyUomId':origCurrencyUomId, 'glAccountClassId':glAccountClassId, 'fixedAssetId':fixedAssetId, 'organizationPartyId':organizationPartyId, 'invoiceId':invoiceId, 'acctgTransEntrySeqId':acctgTransEntrySeqId};
  }

}

/// Entity AcctgTransAttribute, Accounting Transaction Attribute
class AcctgTransAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String acctgTransId; // pk
  final String attrName; // pk
  AcctgTransAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.acctgTransId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'acctgTransId':acctgTransId, 'attrName':attrName};
  }

}

/// Entity AcctgTransEntry, Transaction Entry
class AcctgTransEntry extends EntityBase {

  final DateTime dueDate;
  final String groupId;
  final String glAccountId;
  final String description;
  final String theirPartyId;
  final String acctgTransEntryTypeId;
  final double origAmount;
  final String debitCreditFlag;
  final String partyId;
  final String roleTypeId;
  final String theirProductId;
  final double amount;
  final String productId;
  final String settlementTermId;
  final String reconcileStatusId;
  final String isSummary;
  final String acctgTransId; // pk
  final String voucherRef;
  final String inventoryItemId;
  final String currencyUomId;
  final String glAccountTypeId;
  final String taxId;
  final String origCurrencyUomId;
  final String organizationPartyId;
  final String acctgTransEntrySeqId; // pk
  AcctgTransEntry({entityId,
    this.dueDate, this.groupId, this.glAccountId, this.description, this.theirPartyId, this.acctgTransEntryTypeId, this.origAmount, this.debitCreditFlag, this.partyId, this.roleTypeId, this.theirProductId, this.amount, this.productId, this.settlementTermId, this.reconcileStatusId, this.isSummary, @required this.acctgTransId, this.voucherRef, this.inventoryItemId, this.currencyUomId, this.glAccountTypeId, this.taxId, this.origCurrencyUomId, this.organizationPartyId, @required this.acctgTransEntrySeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dueDate':dueDate, 'groupId':groupId, 'glAccountId':glAccountId, 'description':description, 'theirPartyId':theirPartyId, 'acctgTransEntryTypeId':acctgTransEntryTypeId, 'origAmount':origAmount, 'debitCreditFlag':debitCreditFlag, 'partyId':partyId, 'roleTypeId':roleTypeId, 'theirProductId':theirProductId, 'amount':amount, 'productId':productId, 'settlementTermId':settlementTermId, 'reconcileStatusId':reconcileStatusId, 'isSummary':isSummary, 'acctgTransId':acctgTransId, 'voucherRef':voucherRef, 'inventoryItemId':inventoryItemId, 'currencyUomId':currencyUomId, 'glAccountTypeId':glAccountTypeId, 'taxId':taxId, 'origCurrencyUomId':origCurrencyUomId, 'organizationPartyId':organizationPartyId, 'acctgTransEntrySeqId':acctgTransEntrySeqId};
  }

}

/// Entity AcctgTransEntrySums, Sum of AcctgTransEntry entity amounts grouped by glAccountId, debitCreditFlag
class AcctgTransEntrySums extends EntityBase {

  final String accountCode;
  final double amount;
  final String glAccountTypeId;
  final String debitCreditFlag;
  final String isPosted;
  final String accountName;
  final String acctgTransTypeId;
  final String glFiscalTypeId;
  final String glAccountId;
  final String glAccountClassId;
  final String organizationPartyId;
  final DateTime transactionDate;
  AcctgTransEntrySums({entityId,
    this.accountCode, this.amount, this.glAccountTypeId, this.debitCreditFlag, this.isPosted, this.accountName, this.acctgTransTypeId, this.glFiscalTypeId, this.glAccountId, this.glAccountClassId, this.organizationPartyId, this.transactionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransEntrySums { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'accountCode':accountCode, 'amount':amount, 'glAccountTypeId':glAccountTypeId, 'debitCreditFlag':debitCreditFlag, 'isPosted':isPosted, 'accountName':accountName, 'acctgTransTypeId':acctgTransTypeId, 'glFiscalTypeId':glFiscalTypeId, 'glAccountId':glAccountId, 'glAccountClassId':glAccountClassId, 'organizationPartyId':organizationPartyId, 'transactionDate':transactionDate};
  }

}

/// Entity AcctgTransEntryType, Accounting Transaction Entry Type
class AcctgTransEntryType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String acctgTransEntryTypeId; // pk
  AcctgTransEntryType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.acctgTransEntryTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransEntryType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'acctgTransEntryTypeId':acctgTransEntryTypeId};
  }

}

/// Entity AcctgTransType, Accounting Transaction Type
class AcctgTransType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String acctgTransTypeId; // pk
  final String hasTable;
  final String description;
  AcctgTransType({entityId,
    this.parentTypeId, @required this.acctgTransTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'acctgTransTypeId':acctgTransTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity AcctgTransTypeAttr, Accounting Transaction Type Attribute
class AcctgTransTypeAttr extends EntityBase {

  final String acctgTransTypeId; // pk
  final String description;
  final String attrName; // pk
  AcctgTransTypeAttr({entityId,
    @required this.acctgTransTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AcctgTransTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'acctgTransTypeId':acctgTransTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity GlAccOrgAndAcctgTransAndEntry, GlAccountOrganization, AcctgTransEntry, and AccTrans View Entity Group-By organizationPartyId, glAccountId, debitCreditFlag
class GlAccOrgAndAcctgTransAndEntry extends EntityBase {

  final DateTime fromDate;
  final double totalAmount;
  final String debitCreditFlag;
  final String isPosted;
  final String glAccountId; // pk
  final String organizationPartyId;
  final DateTime transactionDate;
  final String acctgTransId; // pk
  final DateTime thruDate;
  GlAccOrgAndAcctgTransAndEntry({entityId,
    this.fromDate, this.totalAmount, this.debitCreditFlag, this.isPosted, @required this.glAccountId, this.organizationPartyId, this.transactionDate, @required this.acctgTransId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccOrgAndAcctgTransAndEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'totalAmount':totalAmount, 'debitCreditFlag':debitCreditFlag, 'isPosted':isPosted, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'transactionDate':transactionDate, 'acctgTransId':acctgTransId, 'thruDate':thruDate};
  }

}

/// Entity GlAccount, General Ledger Account
class GlAccount extends EntityBase {

  /// this entity has only one pk
  final String accountCode;
  final String productId;
  final String accountName;
  final String glAccountId; // pk
  final String description;
  final String externalId;
  final String glAccountTypeId;
  final String glResourceTypeId;
  final String parentGlAccountId;
  final String glAccountClassId;
  final String glXbrlClassId;
  GlAccount({entityId,
    this.accountCode, this.productId, this.accountName, @required this.glAccountId, this.description, this.externalId, this.glAccountTypeId, this.glResourceTypeId, this.parentGlAccountId, this.glAccountClassId, this.glXbrlClassId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'accountCode':accountCode, 'productId':productId, 'accountName':accountName, 'glAccountId':glAccountId, 'description':description, 'externalId':externalId, 'glAccountTypeId':glAccountTypeId, 'glResourceTypeId':glResourceTypeId, 'parentGlAccountId':parentGlAccountId, 'glAccountClassId':glAccountClassId, 'glXbrlClassId':glXbrlClassId};
  }

}

/// Entity GlAccountAndHistory, View of GL Account and its History, for lookup and calculation
class GlAccountAndHistory extends EntityBase {

  final double postedCredits;
  final String accountCode;
  final String productId;
  final String accountName;
  final String glAccountId; // pk
  final double postedDebits;
  final double endingBalance;
  final String description;
  final String externalId;
  final String glAccountTypeId;
  final String glResourceTypeId;
  final String parentGlAccountId;
  final String glAccountClassId; // pk
  final String organizationPartyId; // pk
  final String glXbrlClassId;
  final String customTimePeriodId; // pk
  final double openingBalance;
  GlAccountAndHistory({entityId,
    this.postedCredits, this.accountCode, this.productId, this.accountName, @required this.glAccountId, this.postedDebits, this.endingBalance, this.description, this.externalId, this.glAccountTypeId, this.glResourceTypeId, this.parentGlAccountId, @required this.glAccountClassId, @required this.organizationPartyId, this.glXbrlClassId, @required this.customTimePeriodId, this.openingBalance,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountAndHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'postedCredits':postedCredits, 'accountCode':accountCode, 'productId':productId, 'accountName':accountName, 'glAccountId':glAccountId, 'postedDebits':postedDebits, 'endingBalance':endingBalance, 'description':description, 'externalId':externalId, 'glAccountTypeId':glAccountTypeId, 'glResourceTypeId':glResourceTypeId, 'parentGlAccountId':parentGlAccountId, 'glAccountClassId':glAccountClassId, 'organizationPartyId':organizationPartyId, 'glXbrlClassId':glXbrlClassId, 'customTimePeriodId':customTimePeriodId, 'openingBalance':openingBalance};
  }

}

/// Entity GlAccountAndHistoryTotals, View of GL Account and its History totals
class GlAccountAndHistoryTotals extends EntityBase {

  final double postedCredits;
  final String accountCode;
  final double totalPostedDebits;
  final String productId;
  final String accountName;
  final String glAccountId; // pk
  final double postedDebits;
  final double endingBalance;
  final String description;
  final String externalId;
  final String glAccountTypeId;
  final String glResourceTypeId;
  final String parentGlAccountId;
  final String glAccountClassId;
  final String organizationPartyId; // pk
  final double totalEndingBalance;
  final String glXbrlClassId;
  final String customTimePeriodId; // pk
  final double openingBalance;
  final double totalPostedCredits;
  GlAccountAndHistoryTotals({entityId,
    this.postedCredits, this.accountCode, this.totalPostedDebits, this.productId, this.accountName, @required this.glAccountId, this.postedDebits, this.endingBalance, this.description, this.externalId, this.glAccountTypeId, this.glResourceTypeId, this.parentGlAccountId, this.glAccountClassId, @required this.organizationPartyId, this.totalEndingBalance, this.glXbrlClassId, @required this.customTimePeriodId, this.openingBalance, this.totalPostedCredits,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountAndHistoryTotals { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'postedCredits':postedCredits, 'accountCode':accountCode, 'totalPostedDebits':totalPostedDebits, 'productId':productId, 'accountName':accountName, 'glAccountId':glAccountId, 'postedDebits':postedDebits, 'endingBalance':endingBalance, 'description':description, 'externalId':externalId, 'glAccountTypeId':glAccountTypeId, 'glResourceTypeId':glResourceTypeId, 'parentGlAccountId':parentGlAccountId, 'glAccountClassId':glAccountClassId, 'organizationPartyId':organizationPartyId, 'totalEndingBalance':totalEndingBalance, 'glXbrlClassId':glXbrlClassId, 'customTimePeriodId':customTimePeriodId, 'openingBalance':openingBalance, 'totalPostedCredits':totalPostedCredits};
  }

}

/// Entity GlAccountCategory, General Ledger Account Category
class GlAccountCategory extends EntityBase {

  /// this entity has only one pk
  final String glAccountCategoryTypeId;
  final String glAccountCategoryId; // pk
  final String description;
  GlAccountCategory({entityId,
    this.glAccountCategoryTypeId, @required this.glAccountCategoryId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountCategoryTypeId':glAccountCategoryTypeId, 'glAccountCategoryId':glAccountCategoryId, 'description':description};
  }

}

/// Entity GlAccountCategoryMember, General Ledger Account Category Member
class GlAccountCategoryMember extends EntityBase {

  final DateTime fromDate; // pk
  final double amountPercentage;
  final String glAccountId; // pk
  final String glAccountCategoryId; // pk
  final DateTime thruDate;
  GlAccountCategoryMember({entityId,
    @required this.fromDate, this.amountPercentage, @required this.glAccountId, @required this.glAccountCategoryId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountCategoryMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'amountPercentage':amountPercentage, 'glAccountId':glAccountId, 'glAccountCategoryId':glAccountCategoryId, 'thruDate':thruDate};
  }

}

/// Entity GlAccountCategoryType, General Ledger Account Category Type
class GlAccountCategoryType extends EntityBase {

  /// this entity has only one pk
  final String glAccountCategoryTypeId; // pk
  final String description;
  GlAccountCategoryType({entityId,
    @required this.glAccountCategoryTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountCategoryType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountCategoryTypeId':glAccountCategoryTypeId, 'description':description};
  }

}

/// Entity GlAccountClass, General Ledger Account Class
class GlAccountClass extends EntityBase {

  /// this entity has only one pk
  final String parentClassId;
  final int sequenceNum;
  final String glAccountClassId; // pk
  final String description;
  final String isAssetClass;
  GlAccountClass({entityId,
    this.parentClassId, this.sequenceNum, @required this.glAccountClassId, this.description, this.isAssetClass,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountClass { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentClassId':parentClassId, 'sequenceNum':sequenceNum, 'glAccountClassId':glAccountClassId, 'description':description, 'isAssetClass':isAssetClass};
  }

}

/// Entity GlAccountGroup, General Ledger Account Group
class GlAccountGroup extends EntityBase {

  /// this entity has only one pk
  final String glAccountGroupTypeId;
  final String description;
  final String glAccountGroupId; // pk
  GlAccountGroup({entityId,
    this.glAccountGroupTypeId, this.description, @required this.glAccountGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountGroupTypeId':glAccountGroupTypeId, 'description':description, 'glAccountGroupId':glAccountGroupId};
  }

}

/// Entity GlAccountGroupMember, General Ledger Account Group Member
class GlAccountGroupMember extends EntityBase {

  final String glAccountId; // pk
  final String glAccountGroupTypeId; // pk
  final String glAccountGroupId;
  GlAccountGroupMember({entityId,
    @required this.glAccountId, @required this.glAccountGroupTypeId, this.glAccountGroupId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountGroupMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountId':glAccountId, 'glAccountGroupTypeId':glAccountGroupTypeId, 'glAccountGroupId':glAccountGroupId};
  }

}

/// Entity GlAccountGroupType, General Ledger Account Group Type
class GlAccountGroupType extends EntityBase {

  /// this entity has only one pk
  final String glAccountGroupTypeId; // pk
  final String description;
  GlAccountGroupType({entityId,
    @required this.glAccountGroupTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountGroupTypeId':glAccountGroupTypeId, 'description':description};
  }

}

/// Entity GlAccountHistory, GL Account History
class GlAccountHistory extends EntityBase {

  final double postedCredits;
  final String glAccountId; // pk
  final double postedDebits;
  final double endingBalance;
  final String organizationPartyId; // pk
  final String customTimePeriodId; // pk
  final double openingBalance;
  GlAccountHistory({entityId,
    this.postedCredits, @required this.glAccountId, this.postedDebits, this.endingBalance, @required this.organizationPartyId, @required this.customTimePeriodId, this.openingBalance,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'postedCredits':postedCredits, 'glAccountId':glAccountId, 'postedDebits':postedDebits, 'endingBalance':endingBalance, 'organizationPartyId':organizationPartyId, 'customTimePeriodId':customTimePeriodId, 'openingBalance':openingBalance};
  }

}

/// Entity GlAccountOrganization, GL Account Organization
class GlAccountOrganization extends EntityBase {

  final DateTime fromDate;
  final String roleTypeId;
  final String glAccountId; // pk
  final String organizationPartyId; // pk
  final DateTime thruDate;
  GlAccountOrganization({entityId,
    this.fromDate, this.roleTypeId, @required this.glAccountId, @required this.organizationPartyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountOrganization { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'thruDate':thruDate};
  }

}

/// Entity GlAccountOrganizationAndClass, View of GL Account Organization and the GlAccount and class, for lookup and calculation
class GlAccountOrganizationAndClass extends EntityBase {

  final String roleTypeId;
  final String accountCode;
  final String productId;
  final String accountName;
  final String glAccountId; // pk
  final String description;
  final String externalId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String glAccountTypeId;
  final String glResourceTypeId;
  final String parentGlAccountId;
  final String glAccountClassId;
  final String organizationPartyId; // pk
  final String glXbrlClassId;
  GlAccountOrganizationAndClass({entityId,
    this.roleTypeId, this.accountCode, this.productId, this.accountName, @required this.glAccountId, this.description, this.externalId, this.thruDate, this.fromDate, this.glAccountTypeId, this.glResourceTypeId, this.parentGlAccountId, this.glAccountClassId, @required this.organizationPartyId, this.glXbrlClassId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountOrganizationAndClass { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'accountCode':accountCode, 'productId':productId, 'accountName':accountName, 'glAccountId':glAccountId, 'description':description, 'externalId':externalId, 'thruDate':thruDate, 'fromDate':fromDate, 'glAccountTypeId':glAccountTypeId, 'glResourceTypeId':glResourceTypeId, 'parentGlAccountId':parentGlAccountId, 'glAccountClassId':glAccountClassId, 'organizationPartyId':organizationPartyId, 'glXbrlClassId':glXbrlClassId};
  }

}

/// Entity GlAccountRole, GL Account Role
class GlAccountRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String glAccountId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  GlAccountRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.glAccountId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'glAccountId':glAccountId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity GlAccountType, General Ledger Account Type
class GlAccountType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String glAccountTypeId; // pk
  final String hasTable;
  final String description;
  GlAccountType({entityId,
    this.parentTypeId, @required this.glAccountTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'glAccountTypeId':glAccountTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity GlAccountTypeDefault, GL Account Organization
class GlAccountTypeDefault extends EntityBase {

  final String glAccountTypeId; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  GlAccountTypeDefault({entityId,
    @required this.glAccountTypeId, this.glAccountId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlAccountTypeDefault { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountTypeId':glAccountTypeId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity GlBudgetXref, General Ledger Budget Cross Reference
class GlBudgetXref extends EntityBase {

  final DateTime fromDate; // pk
  final double allocationPercentage;
  final String glAccountId; // pk
  final String budgetItemTypeId; // pk
  final DateTime thruDate;
  GlBudgetXref({entityId,
    @required this.fromDate, this.allocationPercentage, @required this.glAccountId, @required this.budgetItemTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlBudgetXref { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'allocationPercentage':allocationPercentage, 'glAccountId':glAccountId, 'budgetItemTypeId':budgetItemTypeId, 'thruDate':thruDate};
  }

}

/// Entity GlFiscalType, General Ledger Fiscal
class GlFiscalType extends EntityBase {

  /// this entity has only one pk
  final String glFiscalTypeId; // pk
  final String description;
  GlFiscalType({entityId,
    @required this.glFiscalTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlFiscalType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glFiscalTypeId':glFiscalTypeId, 'description':description};
  }

}

/// Entity GlJournal, General Ledger Journal
class GlJournal extends EntityBase {

  /// this entity has only one pk
  final String isPosted;
  final String glJournalName;
  final String organizationPartyId;
  final String glJournalId; // pk
  final DateTime postedDate;
  GlJournal({entityId,
    this.isPosted, this.glJournalName, this.organizationPartyId, @required this.glJournalId, this.postedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlJournal { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'isPosted':isPosted, 'glJournalName':glJournalName, 'organizationPartyId':organizationPartyId, 'glJournalId':glJournalId, 'postedDate':postedDate};
  }

}

/// Entity GlReconciliation, General Ledger Reconciliation
class GlReconciliation extends EntityBase {

  /// this entity has only one pk
  final DateTime lastModifiedDate;
  final String glReconciliationId; // pk
  final String glAccountId;
  final String glReconciliationName;
  final String description;
  final DateTime reconciledDate;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final double reconciledBalance;
  final String statusId;
  final String organizationPartyId;
  final String createdByUserLogin;
  final double openingBalance;
  GlReconciliation({entityId,
    this.lastModifiedDate, @required this.glReconciliationId, this.glAccountId, this.glReconciliationName, this.description, this.reconciledDate, this.lastModifiedByUserLogin, this.createdDate, this.reconciledBalance, this.statusId, this.organizationPartyId, this.createdByUserLogin, this.openingBalance,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlReconciliation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lastModifiedDate':lastModifiedDate, 'glReconciliationId':glReconciliationId, 'glAccountId':glAccountId, 'glReconciliationName':glReconciliationName, 'description':description, 'reconciledDate':reconciledDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'reconciledBalance':reconciledBalance, 'statusId':statusId, 'organizationPartyId':organizationPartyId, 'createdByUserLogin':createdByUserLogin, 'openingBalance':openingBalance};
  }

}

/// Entity GlReconciliationEntry, General Ledger Reconciliation Entry
class GlReconciliationEntry extends EntityBase {

  final String glReconciliationId; // pk
  final double reconciledAmount;
  final String acctgTransEntrySeqId; // pk
  final String acctgTransId; // pk
  GlReconciliationEntry({entityId,
    @required this.glReconciliationId, this.reconciledAmount, @required this.acctgTransEntrySeqId, @required this.acctgTransId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlReconciliationEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glReconciliationId':glReconciliationId, 'reconciledAmount':reconciledAmount, 'acctgTransEntrySeqId':acctgTransEntrySeqId, 'acctgTransId':acctgTransId};
  }

}

/// Entity GlResourceType, General Ledger Resource
class GlResourceType extends EntityBase {

  /// this entity has only one pk
  final String glResourceTypeId; // pk
  final String description;
  GlResourceType({entityId,
    @required this.glResourceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlResourceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glResourceTypeId':glResourceTypeId, 'description':description};
  }

}

/// Entity GlXbrlClass, General Ledger XBRL Class
class GlXbrlClass extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String glXbrlClassId; // pk
  GlXbrlClass({entityId,
    this.description, @required this.glXbrlClassId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GlXbrlClass { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'glXbrlClassId':glXbrlClassId};
  }

}

/// Entity PartyAcctgPreference, Party (organization) accounting preferences
class PartyAcctgPreference extends EntityBase {

  /// this entity has only one pk
  final String cogsMethodId;
  final String oldInvoiceSequenceEnumId;
  final String quoteSeqCustMethId;
  final int lastQuoteNumber;
  final int fiscalYearStartDay;
  final int lastInvoiceNumber;
  final String taxFormId;
  final String refundPaymentMethodId;
  final String useInvoiceIdForReturns;
  final String invoiceIdPrefix;
  final int lastOrderNumber;
  final String orderSeqCustMethId;
  final int fiscalYearStartMonth;
  final String enableAccounting;
  final String partyId; // pk
  final String oldOrderSequenceEnumId;
  final String invoiceSeqCustMethId;
  final String baseCurrencyUomId;
  final DateTime lastInvoiceRestartDate;
  final String errorGlJournalId;
  final String orderIdPrefix;
  final String oldQuoteSequenceEnumId;
  final String quoteIdPrefix;
  PartyAcctgPreference({entityId,
    this.cogsMethodId, this.oldInvoiceSequenceEnumId, this.quoteSeqCustMethId, this.lastQuoteNumber, this.fiscalYearStartDay, this.lastInvoiceNumber, this.taxFormId, this.refundPaymentMethodId, this.useInvoiceIdForReturns, this.invoiceIdPrefix, this.lastOrderNumber, this.orderSeqCustMethId, this.fiscalYearStartMonth, this.enableAccounting, @required this.partyId, this.oldOrderSequenceEnumId, this.invoiceSeqCustMethId, this.baseCurrencyUomId, this.lastInvoiceRestartDate, this.errorGlJournalId, this.orderIdPrefix, this.oldQuoteSequenceEnumId, this.quoteIdPrefix,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyAcctgPreference { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'cogsMethodId':cogsMethodId, 'oldInvoiceSequenceEnumId':oldInvoiceSequenceEnumId, 'quoteSeqCustMethId':quoteSeqCustMethId, 'lastQuoteNumber':lastQuoteNumber, 'fiscalYearStartDay':fiscalYearStartDay, 'lastInvoiceNumber':lastInvoiceNumber, 'taxFormId':taxFormId, 'refundPaymentMethodId':refundPaymentMethodId, 'useInvoiceIdForReturns':useInvoiceIdForReturns, 'invoiceIdPrefix':invoiceIdPrefix, 'lastOrderNumber':lastOrderNumber, 'orderSeqCustMethId':orderSeqCustMethId, 'fiscalYearStartMonth':fiscalYearStartMonth, 'enableAccounting':enableAccounting, 'partyId':partyId, 'oldOrderSequenceEnumId':oldOrderSequenceEnumId, 'invoiceSeqCustMethId':invoiceSeqCustMethId, 'baseCurrencyUomId':baseCurrencyUomId, 'lastInvoiceRestartDate':lastInvoiceRestartDate, 'errorGlJournalId':errorGlJournalId, 'orderIdPrefix':orderIdPrefix, 'oldQuoteSequenceEnumId':oldQuoteSequenceEnumId, 'quoteIdPrefix':quoteIdPrefix};
  }

}

/// Entity PartyGlAccount, Party Gl Account
class PartyGlAccount extends EntityBase {

  final String roleTypeId; // pk
  final String glAccountTypeId; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  final String partyId; // pk
  PartyGlAccount({entityId,
    @required this.roleTypeId, @required this.glAccountTypeId, this.glAccountId, @required this.organizationPartyId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'glAccountTypeId':glAccountTypeId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'partyId':partyId};
  }

}

/// Entity PartyPrefDocTypeTpl, Party (organization) preferences for document type template
class PartyPrefDocTypeTpl extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String quoteTypeId;
  final String invoiceTypeId;
  final String partyPrefDocTypeTplId; // pk
  final String orderTypeId;
  final String customScreenId;
  final String partyId;
  final DateTime thruDate;
  PartyPrefDocTypeTpl({entityId,
    this.fromDate, this.quoteTypeId, this.invoiceTypeId, @required this.partyPrefDocTypeTplId, this.orderTypeId, this.customScreenId, this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyPrefDocTypeTpl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'quoteTypeId':quoteTypeId, 'invoiceTypeId':invoiceTypeId, 'partyPrefDocTypeTplId':partyPrefDocTypeTplId, 'orderTypeId':orderTypeId, 'customScreenId':customScreenId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PartyPrefDocTypeTplAndCustomScreen, Party (organization) accounting preferences for document type template and custom screen view
class PartyPrefDocTypeTplAndCustomScreen extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String quoteTypeId;
  final String customScreenLocation;
  final String invoiceTypeId;
  final String customScreenTypeId;
  final String partyPrefDocTypeTplId; // pk
  final String orderTypeId;
  final String description;
  final String customScreenId;
  final String partyId;
  final String customScreenName;
  final DateTime thruDate;
  PartyPrefDocTypeTplAndCustomScreen({entityId,
    this.fromDate, this.quoteTypeId, this.customScreenLocation, this.invoiceTypeId, this.customScreenTypeId, @required this.partyPrefDocTypeTplId, this.orderTypeId, this.description, this.customScreenId, this.partyId, this.customScreenName, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyPrefDocTypeTplAndCustomScreen { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'quoteTypeId':quoteTypeId, 'customScreenLocation':customScreenLocation, 'invoiceTypeId':invoiceTypeId, 'customScreenTypeId':customScreenTypeId, 'partyPrefDocTypeTplId':partyPrefDocTypeTplId, 'orderTypeId':orderTypeId, 'description':description, 'customScreenId':customScreenId, 'partyId':partyId, 'customScreenName':customScreenName, 'thruDate':thruDate};
  }

}

/// Entity ProductAverageCost, Running tally of average cost
class ProductAverageCost extends EntityBase {

  final DateTime fromDate; // pk
  final String facilityId; // pk
  final String productId; // pk
  final String productAverageCostTypeId; // pk
  final String organizationPartyId; // pk
  final double averageCost;
  final DateTime thruDate;
  ProductAverageCost({entityId,
    @required this.fromDate, @required this.facilityId, @required this.productId, @required this.productAverageCostTypeId, @required this.organizationPartyId, this.averageCost, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAverageCost { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'facilityId':facilityId, 'productId':productId, 'productAverageCostTypeId':productAverageCostTypeId, 'organizationPartyId':organizationPartyId, 'averageCost':averageCost, 'thruDate':thruDate};
  }

}

/// Entity ProductAverageCostType, Product average cost type
class ProductAverageCostType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String productAverageCostTypeId; // pk
  final String hasTable;
  final String description;
  ProductAverageCostType({entityId,
    this.parentTypeId, @required this.productAverageCostTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductAverageCostType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'productAverageCostTypeId':productAverageCostTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity SettlementTerm, Settlement Term
class SettlementTerm extends EntityBase {

  /// this entity has only one pk
  final String settlementTermId; // pk
  final String uomId;
  final String termName;
  final int termValue;
  SettlementTerm({entityId,
    @required this.settlementTermId, this.uomId, this.termName, this.termValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SettlementTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'settlementTermId':settlementTermId, 'uomId':uomId, 'termName':termName, 'termValue':termValue};
  }

}

/// Entity VarianceReasonGlAccount, Defines GL Accounts for Inventory Variance Reasons
class VarianceReasonGlAccount extends EntityBase {

  final String varianceReasonId; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  VarianceReasonGlAccount({entityId,
    @required this.varianceReasonId, this.glAccountId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VarianceReasonGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'varianceReasonId':varianceReasonId, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId};
  }

}