import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity FinAccount, Financial Account
class FinAccount extends EntityBase {

  /// this entity has only one pk
  final String finAccountTypeId;
  final DateTime thruDate;
  final String isRefundable;
  final double availableBalance;
  final DateTime fromDate;
  final String ownerPartyId;
  final String finAccountId; // pk
  final String postToGlAccountId;
  final String currencyUomId;
  final String statusId;
  final String finAccountName;
  final String finAccountPin;
  final double actualBalance;
  final double replenishLevel;
  final String replenishPaymentId;
  final String organizationPartyId;
  final String finAccountCode;
  FinAccount({entityId,
    this.finAccountTypeId, this.thruDate, this.isRefundable, this.availableBalance, this.fromDate, this.ownerPartyId, @required this.finAccountId, this.postToGlAccountId, this.currencyUomId, this.statusId, this.finAccountName, this.finAccountPin, this.actualBalance, this.replenishLevel, this.replenishPaymentId, this.organizationPartyId, this.finAccountCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountTypeId':finAccountTypeId, 'thruDate':thruDate, 'isRefundable':isRefundable, 'availableBalance':availableBalance, 'fromDate':fromDate, 'ownerPartyId':ownerPartyId, 'finAccountId':finAccountId, 'postToGlAccountId':postToGlAccountId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'finAccountName':finAccountName, 'finAccountPin':finAccountPin, 'actualBalance':actualBalance, 'replenishLevel':replenishLevel, 'replenishPaymentId':replenishPaymentId, 'organizationPartyId':organizationPartyId, 'finAccountCode':finAccountCode};
  }

}

/// Entity FinAccountAndRole, Financial Account and Role View
class FinAccountAndRole extends EntityBase {

  final String roleTypeId; // pk
  final DateTime roleFromDate; // pk
  final String finAccountTypeId;
  final DateTime thruDate;
  final String isRefundable;
  final double availableBalance;
  final DateTime fromDate;
  final String ownerPartyId;
  final String finAccountId; // pk
  final String postToGlAccountId;
  final String currencyUomId;
  final String statusId;
  final String finAccountName;
  final String finAccountPin;
  final double actualBalance;
  final double replenishLevel;
  final String replenishPaymentId;
  final String organizationPartyId;
  final String partyId; // pk
  final String finAccountCode;
  final DateTime roleThruDate;
  FinAccountAndRole({entityId,
    @required this.roleTypeId, @required this.roleFromDate, this.finAccountTypeId, this.thruDate, this.isRefundable, this.availableBalance, this.fromDate, this.ownerPartyId, @required this.finAccountId, this.postToGlAccountId, this.currencyUomId, this.statusId, this.finAccountName, this.finAccountPin, this.actualBalance, this.replenishLevel, this.replenishPaymentId, this.organizationPartyId, @required this.partyId, this.finAccountCode, this.roleThruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'roleFromDate':roleFromDate, 'finAccountTypeId':finAccountTypeId, 'thruDate':thruDate, 'isRefundable':isRefundable, 'availableBalance':availableBalance, 'fromDate':fromDate, 'ownerPartyId':ownerPartyId, 'finAccountId':finAccountId, 'postToGlAccountId':postToGlAccountId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'finAccountName':finAccountName, 'finAccountPin':finAccountPin, 'actualBalance':actualBalance, 'replenishLevel':replenishLevel, 'replenishPaymentId':replenishPaymentId, 'organizationPartyId':organizationPartyId, 'partyId':partyId, 'finAccountCode':finAccountCode, 'roleThruDate':roleThruDate};
  }

}

/// Entity FinAccountAttribute, Financial Account Attribute
class FinAccountAttribute extends EntityBase {

  final String finAccountId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  FinAccountAttribute({entityId,
    @required this.finAccountId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountId':finAccountId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity FinAccountAuth, Financial Account Authorizations record
class FinAccountAuth extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String finAccountAuthId; // pk
  final String finAccountId;
  final double amount;
  final String currencyUomId;
  final DateTime authorizationDate;
  final DateTime thruDate;
  FinAccountAuth({entityId,
    this.fromDate, @required this.finAccountAuthId, this.finAccountId, this.amount, this.currencyUomId, this.authorizationDate, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountAuth { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'finAccountAuthId':finAccountAuthId, 'finAccountId':finAccountId, 'amount':amount, 'currencyUomId':currencyUomId, 'authorizationDate':authorizationDate, 'thruDate':thruDate};
  }

}

/// Entity FinAccountAuthSum, Financial Account Authorization Sum
class FinAccountAuthSum extends EntityBase {

  final DateTime fromDate;
  final String finAccountId;
  final double amount;
  final DateTime authorizationDate;
  final DateTime thruDate;
  FinAccountAuthSum({entityId,
    this.fromDate, this.finAccountId, this.amount, this.authorizationDate, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountAuthSum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'finAccountId':finAccountId, 'amount':amount, 'authorizationDate':authorizationDate, 'thruDate':thruDate};
  }

}

/// Entity FinAccountRole, Financial Account Role
class FinAccountRole extends EntityBase {

  final DateTime fromDate; // pk
  final String finAccountId; // pk
  final String roleTypeId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  FinAccountRole({entityId,
    @required this.fromDate, @required this.finAccountId, @required this.roleTypeId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'finAccountId':finAccountId, 'roleTypeId':roleTypeId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity FinAccountStatus, Financial Account Status
class FinAccountStatus extends EntityBase {

  final DateTime statusDate; // pk
  final String finAccountId; // pk
  final String statusId; // pk
  final DateTime statusEndDate;
  final String changeByUserLoginId;
  FinAccountStatus({entityId,
    @required this.statusDate, @required this.finAccountId, @required this.statusId, this.statusEndDate, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'finAccountId':finAccountId, 'statusId':statusId, 'statusEndDate':statusEndDate, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity FinAccountTrans, Financial Account Transaction
class FinAccountTrans extends EntityBase {

  /// this entity has only one pk
  final String finAccountTransId; // pk
  final String orderItemSeqId;
  final double amount;
  final String comments;
  final DateTime entryDate;
  final String orderId;
  final String glReconciliationId;
  final DateTime transactionDate;
  final String finAccountId;
  final String finAccountTransTypeId;
  final String statusId;
  final String paymentId;
  final String performedByPartyId;
  final String reasonEnumId;
  final String partyId;
  FinAccountTrans({entityId,
    @required this.finAccountTransId, this.orderItemSeqId, this.amount, this.comments, this.entryDate, this.orderId, this.glReconciliationId, this.transactionDate, this.finAccountId, this.finAccountTransTypeId, this.statusId, this.paymentId, this.performedByPartyId, this.reasonEnumId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTrans { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountTransId':finAccountTransId, 'orderItemSeqId':orderItemSeqId, 'amount':amount, 'comments':comments, 'entryDate':entryDate, 'orderId':orderId, 'glReconciliationId':glReconciliationId, 'transactionDate':transactionDate, 'finAccountId':finAccountId, 'finAccountTransTypeId':finAccountTransTypeId, 'statusId':statusId, 'paymentId':paymentId, 'performedByPartyId':performedByPartyId, 'reasonEnumId':reasonEnumId, 'partyId':partyId};
  }

}

/// Entity FinAccountTransAttribute, Financial Account Transaction Attribute
class FinAccountTransAttribute extends EntityBase {

  final String finAccountTransId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  FinAccountTransAttribute({entityId,
    @required this.finAccountTransId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTransAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountTransId':finAccountTransId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity FinAccountTransSum, Financial Account Transactio Sum
class FinAccountTransSum extends EntityBase {

  final String finAccountId;
  final double amount;
  final String finAccountTransTypeId;
  final DateTime transactionDate;
  FinAccountTransSum({entityId,
    this.finAccountId, this.amount, this.finAccountTransTypeId, this.transactionDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTransSum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountId':finAccountId, 'amount':amount, 'finAccountTransTypeId':finAccountTransTypeId, 'transactionDate':transactionDate};
  }

}

/// Entity FinAccountTransType, Financial Account Transaction Type
class FinAccountTransType extends EntityBase {

  /// this entity has only one pk
  final String finAccountTransTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  FinAccountTransType({entityId,
    @required this.finAccountTransTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTransType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountTransTypeId':finAccountTransTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity FinAccountTransTypeAttr, Financial Account Transaction Type Attribute
class FinAccountTransTypeAttr extends EntityBase {

  final String finAccountTransTypeId; // pk
  final String description;
  final String attrName; // pk
  FinAccountTransTypeAttr({entityId,
    @required this.finAccountTransTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTransTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'finAccountTransTypeId':finAccountTransTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity FinAccountType, Financial Account Type
class FinAccountType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String replenishEnumId;
  final String hasTable;
  final String description;
  final String finAccountTypeId; // pk
  final String isRefundable;
  FinAccountType({entityId,
    this.parentTypeId, this.replenishEnumId, this.hasTable, this.description, @required this.finAccountTypeId, this.isRefundable,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'replenishEnumId':replenishEnumId, 'hasTable':hasTable, 'description':description, 'finAccountTypeId':finAccountTypeId, 'isRefundable':isRefundable};
  }

}

/// Entity FinAccountTypeAttr, Financial Account Type Attribute
class FinAccountTypeAttr extends EntityBase {

  final String description;
  final String attrValue;
  final String finAccountTypeId; // pk
  final String attrName; // pk
  FinAccountTypeAttr({entityId,
    this.description, this.attrValue, @required this.finAccountTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'attrValue':attrValue, 'finAccountTypeId':finAccountTypeId, 'attrName':attrName};
  }

}

/// Entity FinAccountTypeGlAccount, Financial Account Type GL Account
class FinAccountTypeGlAccount extends EntityBase {

  final String glAccountId;
  final String organizationPartyId; // pk
  final String finAccountTypeId; // pk
  FinAccountTypeGlAccount({entityId,
    this.glAccountId, @required this.organizationPartyId, @required this.finAccountTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FinAccountTypeGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'finAccountTypeId':finAccountTypeId};
  }

}

/// Entity PaymentMethodAndFinAccount, PaymentMethod and FinAccount view
class PaymentMethodAndFinAccount extends EntityBase {

  final String glAccountId;
  final String description;
  final String paymentMethodTypeId;
  final String finAccountTypeId;
  final DateTime thruDate;
  final String isRefundable;
  final double availableBalance;
  final DateTime fromDate;
  final String ownerPartyId;
  final String finAccountId; // pk
  final String postToGlAccountId;
  final String currencyUomId;
  final String statusId;
  final String finAccountName;
  final String finAccountPin;
  final double actualBalance;
  final String paymentMethodId; // pk
  final double replenishLevel;
  final String replenishPaymentId;
  final String organizationPartyId;
  final String finAccountCode;
  final String partyId;
  PaymentMethodAndFinAccount({entityId,
    this.glAccountId, this.description, this.paymentMethodTypeId, this.finAccountTypeId, this.thruDate, this.isRefundable, this.availableBalance, this.fromDate, this.ownerPartyId, @required this.finAccountId, this.postToGlAccountId, this.currencyUomId, this.statusId, this.finAccountName, this.finAccountPin, this.actualBalance, @required this.paymentMethodId, this.replenishLevel, this.replenishPaymentId, this.organizationPartyId, this.finAccountCode, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodAndFinAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountId':glAccountId, 'description':description, 'paymentMethodTypeId':paymentMethodTypeId, 'finAccountTypeId':finAccountTypeId, 'thruDate':thruDate, 'isRefundable':isRefundable, 'availableBalance':availableBalance, 'fromDate':fromDate, 'ownerPartyId':ownerPartyId, 'finAccountId':finAccountId, 'postToGlAccountId':postToGlAccountId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'finAccountName':finAccountName, 'finAccountPin':finAccountPin, 'actualBalance':actualBalance, 'paymentMethodId':paymentMethodId, 'replenishLevel':replenishLevel, 'replenishPaymentId':replenishPaymentId, 'organizationPartyId':organizationPartyId, 'finAccountCode':finAccountCode, 'partyId':partyId};
  }

}

/// Entity PmtGrpMembrPaymentAndFinAcctTrans, Payment Group Member, Payment and FinAccountTrans view
class PmtGrpMembrPaymentAndFinAcctTrans extends EntityBase {

  final String partyIdFrom;
  final String paymentPreferenceId;
  final int sequenceNum;
  final String paymentTypeId;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String paymentRefNum;
  final String partyId;
  final String roleTypeIdTo;
  final String finAccountTransId;
  final double amount;
  final String comments;
  final String finAccountTransStatusId;
  final String glReconciliationId;
  final double actualCurrencyAmount;
  final String overrideGlAccountId;
  final String paymentMethodTypeId;
  final double finAccountTransAmount;
  final DateTime thruDate;
  final String paymentGroupId; // pk
  final DateTime fromDate; // pk
  final String actualCurrencyUomId;
  final String finAccountId;
  final String currencyUomId;
  final String statusId;
  final String partyIdTo;
  final DateTime effectiveDate;
  PmtGrpMembrPaymentAndFinAcctTrans({entityId,
    this.partyIdFrom, this.paymentPreferenceId, this.sequenceNum, this.paymentTypeId, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.paymentRefNum, this.partyId, this.roleTypeIdTo, this.finAccountTransId, this.amount, this.comments, this.finAccountTransStatusId, this.glReconciliationId, this.actualCurrencyAmount, this.overrideGlAccountId, this.paymentMethodTypeId, this.finAccountTransAmount, this.thruDate, @required this.paymentGroupId, @required this.fromDate, this.actualCurrencyUomId, this.finAccountId, this.currencyUomId, this.statusId, this.partyIdTo, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PmtGrpMembrPaymentAndFinAcctTrans { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'paymentPreferenceId':paymentPreferenceId, 'sequenceNum':sequenceNum, 'paymentTypeId':paymentTypeId, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentRefNum':paymentRefNum, 'partyId':partyId, 'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'amount':amount, 'comments':comments, 'finAccountTransStatusId':finAccountTransStatusId, 'glReconciliationId':glReconciliationId, 'actualCurrencyAmount':actualCurrencyAmount, 'overrideGlAccountId':overrideGlAccountId, 'paymentMethodTypeId':paymentMethodTypeId, 'finAccountTransAmount':finAccountTransAmount, 'thruDate':thruDate, 'paymentGroupId':paymentGroupId, 'fromDate':fromDate, 'actualCurrencyUomId':actualCurrencyUomId, 'finAccountId':finAccountId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'partyIdTo':partyIdTo, 'effectiveDate':effectiveDate};
  }

}