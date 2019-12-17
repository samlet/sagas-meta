import 'package:sagas_meta/src/models/accounting_finaccount.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingFinaccountJsonifier{
  static FinAccount extractFinAccount(dynamic json) {
    return FinAccount(
        entityId: create_id_from('FinAccount', ['finAccountId'], json),
        finAccountTypeId: json['finAccountTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        isRefundable: json['isRefundable'] as String,
        availableBalance: json['availableBalance'] as double,
        fromDate: check_dt(json['fromDate']),
        ownerPartyId: json['ownerPartyId'] as String,
        finAccountId: json['finAccountId'] as String,
        postToGlAccountId: json['postToGlAccountId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        finAccountName: json['finAccountName'] as String,
        finAccountPin: json['finAccountPin'] as String,
        actualBalance: json['actualBalance'] as double,
        replenishLevel: json['replenishLevel'] as double,
        replenishPaymentId: json['replenishPaymentId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        finAccountCode: json['finAccountCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccount overridesFinAccount(Map<String, dynamic> map) {
    return FinAccount(
        entityId: create_id_from('FinAccount', ['finAccountId'], map),
        finAccountTypeId: map['finAccountTypeId'],
        thruDate: map['thruDate'],
        isRefundable: map['isRefundable'],
        availableBalance: map['availableBalance'],
        fromDate: map['fromDate'],
        ownerPartyId: map['ownerPartyId'],
        finAccountId: map['finAccountId'],
        postToGlAccountId: map['postToGlAccountId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        finAccountName: map['finAccountName'],
        finAccountPin: map['finAccountPin'],
        actualBalance: map['actualBalance'],
        replenishLevel: map['replenishLevel'],
        replenishPaymentId: map['replenishPaymentId'],
        organizationPartyId: map['organizationPartyId'],
        finAccountCode: map['finAccountCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountAndRole extractFinAccountAndRole(dynamic json) {
    return FinAccountAndRole(
        entityId: create_id_from('FinAccountAndRole', ['partyId', 'roleTypeId', 'roleFromDate', 'finAccountId'], json),
        roleTypeId: json['roleTypeId'] as String,
        roleFromDate: check_dt(json['roleFromDate']),
        finAccountTypeId: json['finAccountTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        isRefundable: json['isRefundable'] as String,
        availableBalance: json['availableBalance'] as double,
        fromDate: check_dt(json['fromDate']),
        ownerPartyId: json['ownerPartyId'] as String,
        finAccountId: json['finAccountId'] as String,
        postToGlAccountId: json['postToGlAccountId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        finAccountName: json['finAccountName'] as String,
        finAccountPin: json['finAccountPin'] as String,
        actualBalance: json['actualBalance'] as double,
        replenishLevel: json['replenishLevel'] as double,
        replenishPaymentId: json['replenishPaymentId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        partyId: json['partyId'] as String,
        finAccountCode: json['finAccountCode'] as String,
        roleThruDate: check_dt(json['roleThruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountAndRole overridesFinAccountAndRole(Map<String, dynamic> map) {
    return FinAccountAndRole(
        entityId: create_id_from('FinAccountAndRole', ['partyId', 'roleTypeId', 'roleFromDate', 'finAccountId'], map),
        roleTypeId: map['roleTypeId'],
        roleFromDate: map['roleFromDate'],
        finAccountTypeId: map['finAccountTypeId'],
        thruDate: map['thruDate'],
        isRefundable: map['isRefundable'],
        availableBalance: map['availableBalance'],
        fromDate: map['fromDate'],
        ownerPartyId: map['ownerPartyId'],
        finAccountId: map['finAccountId'],
        postToGlAccountId: map['postToGlAccountId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        finAccountName: map['finAccountName'],
        finAccountPin: map['finAccountPin'],
        actualBalance: map['actualBalance'],
        replenishLevel: map['replenishLevel'],
        replenishPaymentId: map['replenishPaymentId'],
        organizationPartyId: map['organizationPartyId'],
        partyId: map['partyId'],
        finAccountCode: map['finAccountCode'],
        roleThruDate: map['roleThruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountAttribute extractFinAccountAttribute(dynamic json) {
    return FinAccountAttribute(
        entityId: create_id_from('FinAccountAttribute', ['finAccountId', 'attrName'], json),
        finAccountId: json['finAccountId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountAttribute overridesFinAccountAttribute(Map<String, dynamic> map) {
    return FinAccountAttribute(
        entityId: create_id_from('FinAccountAttribute', ['finAccountId', 'attrName'], map),
        finAccountId: map['finAccountId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountAuth extractFinAccountAuth(dynamic json) {
    return FinAccountAuth(
        entityId: create_id_from('FinAccountAuth', ['finAccountAuthId'], json),
        fromDate: check_dt(json['fromDate']),
        finAccountAuthId: json['finAccountAuthId'] as String,
        finAccountId: json['finAccountId'] as String,
        amount: json['amount'] as double,
        currencyUomId: json['currencyUomId'] as String,
        authorizationDate: check_dt(json['authorizationDate']),
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountAuth overridesFinAccountAuth(Map<String, dynamic> map) {
    return FinAccountAuth(
        entityId: create_id_from('FinAccountAuth', ['finAccountAuthId'], map),
        fromDate: map['fromDate'],
        finAccountAuthId: map['finAccountAuthId'],
        finAccountId: map['finAccountId'],
        amount: map['amount'],
        currencyUomId: map['currencyUomId'],
        authorizationDate: map['authorizationDate'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountAuthSum extractFinAccountAuthSum(dynamic json) {
    return FinAccountAuthSum(
        entityId: create_id_from('FinAccountAuthSum', [], json),
        fromDate: check_dt(json['fromDate']),
        finAccountId: json['finAccountId'] as String,
        amount: json['amount'] as double,
        authorizationDate: check_dt(json['authorizationDate']),
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountAuthSum overridesFinAccountAuthSum(Map<String, dynamic> map) {
    return FinAccountAuthSum(
        entityId: create_id_from('FinAccountAuthSum', [], map),
        fromDate: map['fromDate'],
        finAccountId: map['finAccountId'],
        amount: map['amount'],
        authorizationDate: map['authorizationDate'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountRole extractFinAccountRole(dynamic json) {
    return FinAccountRole(
        entityId: create_id_from('FinAccountRole', ['finAccountId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        finAccountId: json['finAccountId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountRole overridesFinAccountRole(Map<String, dynamic> map) {
    return FinAccountRole(
        entityId: create_id_from('FinAccountRole', ['finAccountId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        finAccountId: map['finAccountId'],
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountStatus extractFinAccountStatus(dynamic json) {
    return FinAccountStatus(
        entityId: create_id_from('FinAccountStatus', ['finAccountId', 'statusId', 'statusDate'], json),
        statusDate: check_dt(json['statusDate']),
        finAccountId: json['finAccountId'] as String,
        statusId: json['statusId'] as String,
        statusEndDate: check_dt(json['statusEndDate']),
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountStatus overridesFinAccountStatus(Map<String, dynamic> map) {
    return FinAccountStatus(
        entityId: create_id_from('FinAccountStatus', ['finAccountId', 'statusId', 'statusDate'], map),
        statusDate: map['statusDate'],
        finAccountId: map['finAccountId'],
        statusId: map['statusId'],
        statusEndDate: map['statusEndDate'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTrans extractFinAccountTrans(dynamic json) {
    return FinAccountTrans(
        entityId: create_id_from('FinAccountTrans', ['finAccountTransId'], json),
        finAccountTransId: json['finAccountTransId'] as String,
        orderItemSeqId: json['orderItemSeqId'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        entryDate: check_dt(json['entryDate']),
        orderId: json['orderId'] as String,
        glReconciliationId: json['glReconciliationId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        finAccountId: json['finAccountId'] as String,
        finAccountTransTypeId: json['finAccountTransTypeId'] as String,
        statusId: json['statusId'] as String,
        paymentId: json['paymentId'] as String,
        performedByPartyId: json['performedByPartyId'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTrans overridesFinAccountTrans(Map<String, dynamic> map) {
    return FinAccountTrans(
        entityId: create_id_from('FinAccountTrans', ['finAccountTransId'], map),
        finAccountTransId: map['finAccountTransId'],
        orderItemSeqId: map['orderItemSeqId'],
        amount: map['amount'],
        comments: map['comments'],
        entryDate: map['entryDate'],
        orderId: map['orderId'],
        glReconciliationId: map['glReconciliationId'],
        transactionDate: map['transactionDate'],
        finAccountId: map['finAccountId'],
        finAccountTransTypeId: map['finAccountTransTypeId'],
        statusId: map['statusId'],
        paymentId: map['paymentId'],
        performedByPartyId: map['performedByPartyId'],
        reasonEnumId: map['reasonEnumId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTransAttribute extractFinAccountTransAttribute(dynamic json) {
    return FinAccountTransAttribute(
        entityId: create_id_from('FinAccountTransAttribute', ['finAccountTransId', 'attrName'], json),
        finAccountTransId: json['finAccountTransId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTransAttribute overridesFinAccountTransAttribute(Map<String, dynamic> map) {
    return FinAccountTransAttribute(
        entityId: create_id_from('FinAccountTransAttribute', ['finAccountTransId', 'attrName'], map),
        finAccountTransId: map['finAccountTransId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTransSum extractFinAccountTransSum(dynamic json) {
    return FinAccountTransSum(
        entityId: create_id_from('FinAccountTransSum', [], json),
        finAccountId: json['finAccountId'] as String,
        amount: json['amount'] as double,
        finAccountTransTypeId: json['finAccountTransTypeId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTransSum overridesFinAccountTransSum(Map<String, dynamic> map) {
    return FinAccountTransSum(
        entityId: create_id_from('FinAccountTransSum', [], map),
        finAccountId: map['finAccountId'],
        amount: map['amount'],
        finAccountTransTypeId: map['finAccountTransTypeId'],
        transactionDate: map['transactionDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTransType extractFinAccountTransType(dynamic json) {
    return FinAccountTransType(
        entityId: create_id_from('FinAccountTransType', ['finAccountTransTypeId'], json),
        finAccountTransTypeId: json['finAccountTransTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTransType overridesFinAccountTransType(Map<String, dynamic> map) {
    return FinAccountTransType(
        entityId: create_id_from('FinAccountTransType', ['finAccountTransTypeId'], map),
        finAccountTransTypeId: map['finAccountTransTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTransTypeAttr extractFinAccountTransTypeAttr(dynamic json) {
    return FinAccountTransTypeAttr(
        entityId: create_id_from('FinAccountTransTypeAttr', ['finAccountTransTypeId', 'attrName'], json),
        finAccountTransTypeId: json['finAccountTransTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTransTypeAttr overridesFinAccountTransTypeAttr(Map<String, dynamic> map) {
    return FinAccountTransTypeAttr(
        entityId: create_id_from('FinAccountTransTypeAttr', ['finAccountTransTypeId', 'attrName'], map),
        finAccountTransTypeId: map['finAccountTransTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountType extractFinAccountType(dynamic json) {
    return FinAccountType(
        entityId: create_id_from('FinAccountType', ['finAccountTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        replenishEnumId: json['replenishEnumId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        finAccountTypeId: json['finAccountTypeId'] as String,
        isRefundable: json['isRefundable'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountType overridesFinAccountType(Map<String, dynamic> map) {
    return FinAccountType(
        entityId: create_id_from('FinAccountType', ['finAccountTypeId'], map),
        parentTypeId: map['parentTypeId'],
        replenishEnumId: map['replenishEnumId'],
        hasTable: map['hasTable'],
        description: map['description'],
        finAccountTypeId: map['finAccountTypeId'],
        isRefundable: map['isRefundable'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTypeAttr extractFinAccountTypeAttr(dynamic json) {
    return FinAccountTypeAttr(
        entityId: create_id_from('FinAccountTypeAttr', ['finAccountTypeId', 'attrName'], json),
        description: json['description'] as String,
        attrValue: json['attrValue'] as String,
        finAccountTypeId: json['finAccountTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTypeAttr overridesFinAccountTypeAttr(Map<String, dynamic> map) {
    return FinAccountTypeAttr(
        entityId: create_id_from('FinAccountTypeAttr', ['finAccountTypeId', 'attrName'], map),
        description: map['description'],
        attrValue: map['attrValue'],
        finAccountTypeId: map['finAccountTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FinAccountTypeGlAccount extractFinAccountTypeGlAccount(dynamic json) {
    return FinAccountTypeGlAccount(
        entityId: create_id_from('FinAccountTypeGlAccount', ['finAccountTypeId', 'organizationPartyId'], json),
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        finAccountTypeId: json['finAccountTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FinAccountTypeGlAccount overridesFinAccountTypeGlAccount(Map<String, dynamic> map) {
    return FinAccountTypeGlAccount(
        entityId: create_id_from('FinAccountTypeGlAccount', ['finAccountTypeId', 'organizationPartyId'], map),
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        finAccountTypeId: map['finAccountTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodAndFinAccount extractPaymentMethodAndFinAccount(dynamic json) {
    return PaymentMethodAndFinAccount(
        entityId: create_id_from('PaymentMethodAndFinAccount', ['finAccountId', 'paymentMethodId'], json),
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        finAccountTypeId: json['finAccountTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        isRefundable: json['isRefundable'] as String,
        availableBalance: json['availableBalance'] as double,
        fromDate: check_dt(json['fromDate']),
        ownerPartyId: json['ownerPartyId'] as String,
        finAccountId: json['finAccountId'] as String,
        postToGlAccountId: json['postToGlAccountId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        finAccountName: json['finAccountName'] as String,
        finAccountPin: json['finAccountPin'] as String,
        actualBalance: json['actualBalance'] as double,
        paymentMethodId: json['paymentMethodId'] as String,
        replenishLevel: json['replenishLevel'] as double,
        replenishPaymentId: json['replenishPaymentId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        finAccountCode: json['finAccountCode'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodAndFinAccount overridesPaymentMethodAndFinAccount(Map<String, dynamic> map) {
    return PaymentMethodAndFinAccount(
        entityId: create_id_from('PaymentMethodAndFinAccount', ['finAccountId', 'paymentMethodId'], map),
        glAccountId: map['glAccountId'],
        description: map['description'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        finAccountTypeId: map['finAccountTypeId'],
        thruDate: map['thruDate'],
        isRefundable: map['isRefundable'],
        availableBalance: map['availableBalance'],
        fromDate: map['fromDate'],
        ownerPartyId: map['ownerPartyId'],
        finAccountId: map['finAccountId'],
        postToGlAccountId: map['postToGlAccountId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        finAccountName: map['finAccountName'],
        finAccountPin: map['finAccountPin'],
        actualBalance: map['actualBalance'],
        paymentMethodId: map['paymentMethodId'],
        replenishLevel: map['replenishLevel'],
        replenishPaymentId: map['replenishPaymentId'],
        organizationPartyId: map['organizationPartyId'],
        finAccountCode: map['finAccountCode'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PmtGrpMembrPaymentAndFinAcctTrans extractPmtGrpMembrPaymentAndFinAcctTrans(dynamic json) {
    return PmtGrpMembrPaymentAndFinAcctTrans(
        entityId: create_id_from('PmtGrpMembrPaymentAndFinAcctTrans', ['paymentGroupId', 'fromDate', 'paymentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        paymentTypeId: json['paymentTypeId'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        partyId: json['partyId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        finAccountTransStatusId: json['finAccountTransStatusId'] as String,
        glReconciliationId: json['glReconciliationId'] as String,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        finAccountTransAmount: json['finAccountTransAmount'] as double,
        thruDate: check_dt(json['thruDate']),
        paymentGroupId: json['paymentGroupId'] as String,
        fromDate: check_dt(json['fromDate']),
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        finAccountId: json['finAccountId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PmtGrpMembrPaymentAndFinAcctTrans overridesPmtGrpMembrPaymentAndFinAcctTrans(Map<String, dynamic> map) {
    return PmtGrpMembrPaymentAndFinAcctTrans(
        entityId: create_id_from('PmtGrpMembrPaymentAndFinAcctTrans', ['paymentGroupId', 'fromDate', 'paymentId'], map),
        partyIdFrom: map['partyIdFrom'],
        paymentPreferenceId: map['paymentPreferenceId'],
        sequenceNum: map['sequenceNum'],
        paymentTypeId: map['paymentTypeId'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentRefNum: map['paymentRefNum'],
        partyId: map['partyId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        amount: map['amount'],
        comments: map['comments'],
        finAccountTransStatusId: map['finAccountTransStatusId'],
        glReconciliationId: map['glReconciliationId'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        overrideGlAccountId: map['overrideGlAccountId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        finAccountTransAmount: map['finAccountTransAmount'],
        thruDate: map['thruDate'],
        paymentGroupId: map['paymentGroupId'],
        fromDate: map['fromDate'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        finAccountId: map['finAccountId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}