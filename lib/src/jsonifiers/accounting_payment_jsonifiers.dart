import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingPaymentJsonifier{
  static BillingAccount extractBillingAccount(dynamic json) {
    return BillingAccount(
        entityId: create_id_from('BillingAccount', ['billingAccountId'], json),
        fromDate: check_dt(json['fromDate']),
        accountLimit: json['accountLimit'] as double,
        externalAccountId: json['externalAccountId'] as String,
        accountCurrencyUomId: json['accountCurrencyUomId'] as String,
        description: json['description'] as String,
        billingAccountId: json['billingAccountId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccount overridesBillingAccount(Map<String, dynamic> map) {
    return BillingAccount(
        entityId: create_id_from('BillingAccount', ['billingAccountId'], map),
        fromDate: map['fromDate'],
        accountLimit: map['accountLimit'],
        externalAccountId: map['externalAccountId'],
        accountCurrencyUomId: map['accountCurrencyUomId'],
        description: map['description'],
        billingAccountId: map['billingAccountId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BillingAccountAndRole extractBillingAccountAndRole(dynamic json) {
    return BillingAccountAndRole(
        entityId: create_id_from('BillingAccountAndRole', ['billingAccountId', 'fromDate', 'roleTypeId', 'partyId'], json),
        fromDate: check_dt(json['fromDate']),
        accountFromDate: check_dt(json['accountFromDate']),
        roleTypeId: json['roleTypeId'] as String,
        accountLimit: json['accountLimit'] as double,
        accountCurrencyUomId: json['accountCurrencyUomId'] as String,
        accountThruDate: check_dt(json['accountThruDate']),
        description: json['description'] as String,
        billingAccountId: json['billingAccountId'] as String,
        partyId: json['partyId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccountAndRole overridesBillingAccountAndRole(Map<String, dynamic> map) {
    return BillingAccountAndRole(
        entityId: create_id_from('BillingAccountAndRole', ['billingAccountId', 'fromDate', 'roleTypeId', 'partyId'], map),
        fromDate: map['fromDate'],
        accountFromDate: map['accountFromDate'],
        roleTypeId: map['roleTypeId'],
        accountLimit: map['accountLimit'],
        accountCurrencyUomId: map['accountCurrencyUomId'],
        accountThruDate: map['accountThruDate'],
        description: map['description'],
        billingAccountId: map['billingAccountId'],
        partyId: map['partyId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BillingAccountRole extractBillingAccountRole(dynamic json) {
    return BillingAccountRole(
        entityId: create_id_from('BillingAccountRole', ['billingAccountId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccountRole overridesBillingAccountRole(Map<String, dynamic> map) {
    return BillingAccountRole(
        entityId: create_id_from('BillingAccountRole', ['billingAccountId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        billingAccountId: map['billingAccountId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BillingAccountRoleAndAddress extractBillingAccountRoleAndAddress(dynamic json) {
    return BillingAccountRoleAndAddress(
        entityId: create_id_from('BillingAccountRoleAndAddress', ['pcmFromDate', 'fromDate', 'roleTypeId', 'billingAccountId', 'partyId', 'contactMechId'], json),
        houseNumberExt: json['houseNumberExt'] as String,
        city: json['city'] as String,
        postalCode: json['postalCode'] as String,
        postalCodeGeoId: json['postalCodeGeoId'] as String,
        houseNumber: json['houseNumber'] as int,
        pcmFromDate: check_dt(json['pcmFromDate']),
        billingAccountId: json['billingAccountId'] as String,
        postalCodeExt: json['postalCodeExt'] as String,
        contactMechId: json['contactMechId'] as String,
        attnName: json['attnName'] as String,
        countyGeoId: json['countyGeoId'] as String,
        toName: json['toName'] as String,
        cityGeoId: json['cityGeoId'] as String,
        partyId: json['partyId'] as String,
        countryGeoId: json['countryGeoId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        pcmThruDate: check_dt(json['pcmThruDate']),
        address2: json['address2'] as String,
        address1: json['address1'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        directions: json['directions'] as String,
        municipalityGeoId: json['municipalityGeoId'] as String,
        stateProvinceGeoId: json['stateProvinceGeoId'] as String,
        geoPointId: json['geoPointId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccountRoleAndAddress overridesBillingAccountRoleAndAddress(Map<String, dynamic> map) {
    return BillingAccountRoleAndAddress(
        entityId: create_id_from('BillingAccountRoleAndAddress', ['pcmFromDate', 'fromDate', 'roleTypeId', 'billingAccountId', 'partyId', 'contactMechId'], map),
        houseNumberExt: map['houseNumberExt'],
        city: map['city'],
        postalCode: map['postalCode'],
        postalCodeGeoId: map['postalCodeGeoId'],
        houseNumber: map['houseNumber'],
        pcmFromDate: map['pcmFromDate'],
        billingAccountId: map['billingAccountId'],
        postalCodeExt: map['postalCodeExt'],
        contactMechId: map['contactMechId'],
        attnName: map['attnName'],
        countyGeoId: map['countyGeoId'],
        toName: map['toName'],
        cityGeoId: map['cityGeoId'],
        partyId: map['partyId'],
        countryGeoId: map['countryGeoId'],
        roleTypeId: map['roleTypeId'],
        pcmThruDate: map['pcmThruDate'],
        address2: map['address2'],
        address1: map['address1'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        directions: map['directions'],
        municipalityGeoId: map['municipalityGeoId'],
        stateProvinceGeoId: map['stateProvinceGeoId'],
        geoPointId: map['geoPointId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BillingAccountTerm extractBillingAccountTerm(dynamic json) {
    return BillingAccountTerm(
        entityId: create_id_from('BillingAccountTerm', ['billingAccountTermId'], json),
        billingAccountTermId: json['billingAccountTermId'] as String,
        termDays: json['termDays'] as int,
        termTypeId: json['termTypeId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        uomId: json['uomId'] as String,
        termValue: json['termValue'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccountTerm overridesBillingAccountTerm(Map<String, dynamic> map) {
    return BillingAccountTerm(
        entityId: create_id_from('BillingAccountTerm', ['billingAccountTermId'], map),
        billingAccountTermId: map['billingAccountTermId'],
        termDays: map['termDays'],
        termTypeId: map['termTypeId'],
        billingAccountId: map['billingAccountId'],
        uomId: map['uomId'],
        termValue: map['termValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BillingAccountTermAttr extractBillingAccountTermAttr(dynamic json) {
    return BillingAccountTermAttr(
        entityId: create_id_from('BillingAccountTermAttr', ['billingAccountTermId', 'attrName'], json),
        billingAccountTermId: json['billingAccountTermId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BillingAccountTermAttr overridesBillingAccountTermAttr(Map<String, dynamic> map) {
    return BillingAccountTermAttr(
        entityId: create_id_from('BillingAccountTermAttr', ['billingAccountTermId', 'attrName'], map),
        billingAccountTermId: map['billingAccountTermId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CheckAccount extractCheckAccount(dynamic json) {
    return CheckAccount(
        entityId: create_id_from('CheckAccount', ['paymentMethodId'], json),
        companyNameOnAccount: json['companyNameOnAccount'] as String,
        nameOnAccount: json['nameOnAccount'] as String,
        accountType: json['accountType'] as String,
        bankName: json['bankName'] as String,
        accountNumber: json['accountNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        branchCode: json['branchCode'] as String,
        routingNumber: json['routingNumber'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CheckAccount overridesCheckAccount(Map<String, dynamic> map) {
    return CheckAccount(
        entityId: create_id_from('CheckAccount', ['paymentMethodId'], map),
        companyNameOnAccount: map['companyNameOnAccount'],
        nameOnAccount: map['nameOnAccount'],
        accountType: map['accountType'],
        bankName: map['bankName'],
        accountNumber: map['accountNumber'],
        contactMechId: map['contactMechId'],
        branchCode: map['branchCode'],
        routingNumber: map['routingNumber'],
        paymentMethodId: map['paymentMethodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CreditCard extractCreditCard(dynamic json) {
    return CreditCard(
        entityId: create_id_from('CreditCard', ['paymentMethodId'], json),
        firstNameOnCard: json['firstNameOnCard'] as String,
        issueNumber: json['issueNumber'] as String,
        cardType: json['cardType'] as String,
        lastFailedAuthDate: check_dt(json['lastFailedAuthDate']),
        consecutiveFailedNsf: json['consecutiveFailedNsf'] as int,
        contactMechId: json['contactMechId'] as String,
        companyNameOnCard: json['companyNameOnCard'] as String,
        titleOnCard: json['titleOnCard'] as String,
        lastNameOnCard: json['lastNameOnCard'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        middleNameOnCard: json['middleNameOnCard'] as String,
        validFromDate: json['validFromDate'] as String,
        expireDate: json['expireDate'] as String,
        consecutiveFailedAuths: json['consecutiveFailedAuths'] as int,
        lastFailedNsfDate: check_dt(json['lastFailedNsfDate']),
        cardNumber: json['cardNumber'] as String,
        suffixOnCard: json['suffixOnCard'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CreditCard overridesCreditCard(Map<String, dynamic> map) {
    return CreditCard(
        entityId: create_id_from('CreditCard', ['paymentMethodId'], map),
        firstNameOnCard: map['firstNameOnCard'],
        issueNumber: map['issueNumber'],
        cardType: map['cardType'],
        lastFailedAuthDate: map['lastFailedAuthDate'],
        consecutiveFailedNsf: map['consecutiveFailedNsf'],
        contactMechId: map['contactMechId'],
        companyNameOnCard: map['companyNameOnCard'],
        titleOnCard: map['titleOnCard'],
        lastNameOnCard: map['lastNameOnCard'],
        paymentMethodId: map['paymentMethodId'],
        middleNameOnCard: map['middleNameOnCard'],
        validFromDate: map['validFromDate'],
        expireDate: map['expireDate'],
        consecutiveFailedAuths: map['consecutiveFailedAuths'],
        lastFailedNsfDate: map['lastFailedNsfDate'],
        cardNumber: map['cardNumber'],
        suffixOnCard: map['suffixOnCard'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CreditCardTypeGlAccount extractCreditCardTypeGlAccount(dynamic json) {
    return CreditCardTypeGlAccount(
        entityId: create_id_from('CreditCardTypeGlAccount', ['cardType', 'organizationPartyId'], json),
        cardType: json['cardType'] as String,
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CreditCardTypeGlAccount overridesCreditCardTypeGlAccount(Map<String, dynamic> map) {
    return CreditCardTypeGlAccount(
        entityId: create_id_from('CreditCardTypeGlAccount', ['cardType', 'organizationPartyId'], map),
        cardType: map['cardType'],
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Deduction extractDeduction(dynamic json) {
    return Deduction(
        entityId: create_id_from('Deduction', ['deductionId'], json),
        amount: json['amount'] as double,
        paymentId: json['paymentId'] as String,
        deductionTypeId: json['deductionTypeId'] as String,
        deductionId: json['deductionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Deduction overridesDeduction(Map<String, dynamic> map) {
    return Deduction(
        entityId: create_id_from('Deduction', ['deductionId'], map),
        amount: map['amount'],
        paymentId: map['paymentId'],
        deductionTypeId: map['deductionTypeId'],
        deductionId: map['deductionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DeductionType extractDeductionType(dynamic json) {
    return DeductionType(
        entityId: create_id_from('DeductionType', ['deductionTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        deductionTypeId: json['deductionTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DeductionType overridesDeductionType(Map<String, dynamic> map) {
    return DeductionType(
        entityId: create_id_from('DeductionType', ['deductionTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        deductionTypeId: map['deductionTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EftAccount extractEftAccount(dynamic json) {
    return EftAccount(
        entityId: create_id_from('EftAccount', ['paymentMethodId'], json),
        companyNameOnAccount: json['companyNameOnAccount'] as String,
        nameOnAccount: json['nameOnAccount'] as String,
        accountType: json['accountType'] as String,
        bankName: json['bankName'] as String,
        accountNumber: json['accountNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        routingNumber: json['routingNumber'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        yearsAtBank: json['yearsAtBank'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EftAccount overridesEftAccount(Map<String, dynamic> map) {
    return EftAccount(
        entityId: create_id_from('EftAccount', ['paymentMethodId'], map),
        companyNameOnAccount: map['companyNameOnAccount'],
        nameOnAccount: map['nameOnAccount'],
        accountType: map['accountType'],
        bankName: map['bankName'],
        accountNumber: map['accountNumber'],
        contactMechId: map['contactMechId'],
        routingNumber: map['routingNumber'],
        paymentMethodId: map['paymentMethodId'],
        yearsAtBank: map['yearsAtBank'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GiftCard extractGiftCard(dynamic json) {
    return GiftCard(
        entityId: create_id_from('GiftCard', ['paymentMethodId'], json),
        paymentMethodId: json['paymentMethodId'] as String,
        pinNumber: json['pinNumber'] as String,
        expireDate: json['expireDate'] as String,
        cardNumber: json['cardNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GiftCard overridesGiftCard(Map<String, dynamic> map) {
    return GiftCard(
        entityId: create_id_from('GiftCard', ['paymentMethodId'], map),
        paymentMethodId: map['paymentMethodId'],
        pinNumber: map['pinNumber'],
        expireDate: map['expireDate'],
        cardNumber: map['cardNumber'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static GiftCardFulfillment extractGiftCardFulfillment(dynamic json) {
    return GiftCardFulfillment(
        entityId: create_id_from('GiftCardFulfillment', ['fulfillmentId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        fulfillmentId: json['fulfillmentId'] as String,
        fulfillmentDate: check_dt(json['fulfillmentDate']),
        amount: json['amount'] as double,
        authCode: json['authCode'] as String,
        orderId: json['orderId'] as String,
        pinNumber: json['pinNumber'] as String,
        typeEnumId: json['typeEnumId'] as String,
        surveyResponseId: json['surveyResponseId'] as String,
        responseCode: json['responseCode'] as String,
        referenceNum: json['referenceNum'] as String,
        merchantId: json['merchantId'] as String,
        partyId: json['partyId'] as String,
        cardNumber: json['cardNumber'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static GiftCardFulfillment overridesGiftCardFulfillment(Map<String, dynamic> map) {
    return GiftCardFulfillment(
        entityId: create_id_from('GiftCardFulfillment', ['fulfillmentId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        fulfillmentId: map['fulfillmentId'],
        fulfillmentDate: map['fulfillmentDate'],
        amount: map['amount'],
        authCode: map['authCode'],
        orderId: map['orderId'],
        pinNumber: map['pinNumber'],
        typeEnumId: map['typeEnumId'],
        surveyResponseId: map['surveyResponseId'],
        responseCode: map['responseCode'],
        referenceNum: map['referenceNum'],
        merchantId: map['merchantId'],
        partyId: map['partyId'],
        cardNumber: map['cardNumber'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PayPalPaymentMethod extractPayPalPaymentMethod(dynamic json) {
    return PayPalPaymentMethod(
        entityId: create_id_from('PayPalPaymentMethod', ['paymentMethodId'], json),
        expressCheckoutToken: json['expressCheckoutToken'] as String,
        avsAddr: json['avsAddr'] as String,
        payerId: json['payerId'] as String,
        payerStatus: json['payerStatus'] as String,
        contactMechId: json['contactMechId'] as String,
        transactionId: json['transactionId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        avsZip: json['avsZip'] as String,
        correlationId: json['correlationId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PayPalPaymentMethod overridesPayPalPaymentMethod(Map<String, dynamic> map) {
    return PayPalPaymentMethod(
        entityId: create_id_from('PayPalPaymentMethod', ['paymentMethodId'], map),
        expressCheckoutToken: map['expressCheckoutToken'],
        avsAddr: map['avsAddr'],
        payerId: map['payerId'],
        payerStatus: map['payerStatus'],
        contactMechId: map['contactMechId'],
        transactionId: map['transactionId'],
        paymentMethodId: map['paymentMethodId'],
        avsZip: map['avsZip'],
        correlationId: map['correlationId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Payment extractPayment(dynamic json) {
    return Payment(
        entityId: create_id_from('Payment', ['paymentId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        amount: json['amount'] as double,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        comments: json['comments'] as String,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        paymentTypeId: json['paymentTypeId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        partyIdTo: json['partyIdTo'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Payment overridesPayment(Map<String, dynamic> map) {
    return Payment(
        entityId: create_id_from('Payment', ['paymentId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        partyIdFrom: map['partyIdFrom'],
        amount: map['amount'],
        paymentPreferenceId: map['paymentPreferenceId'],
        comments: map['comments'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        overrideGlAccountId: map['overrideGlAccountId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        paymentTypeId: map['paymentTypeId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentRefNum: map['paymentRefNum'],
        partyIdTo: map['partyIdTo'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentAndApplication extractPaymentAndApplication(dynamic json) {
    return PaymentAndApplication(
        entityId: create_id_from('PaymentAndApplication', ['paymentId', 'paymentApplicationId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        toPaymentId: json['toPaymentId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        paymentTypeId: json['paymentTypeId'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        amountApplied: json['amountApplied'] as double,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        paymentApplicationId: json['paymentApplicationId'] as String,
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        invoiceId: json['invoiceId'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentAndApplication overridesPaymentAndApplication(Map<String, dynamic> map) {
    return PaymentAndApplication(
        entityId: create_id_from('PaymentAndApplication', ['paymentId', 'paymentApplicationId'], map),
        partyIdFrom: map['partyIdFrom'],
        paymentPreferenceId: map['paymentPreferenceId'],
        toPaymentId: map['toPaymentId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        billingAccountId: map['billingAccountId'],
        paymentTypeId: map['paymentTypeId'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentRefNum: map['paymentRefNum'],
        taxAuthGeoId: map['taxAuthGeoId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        amount: map['amount'],
        comments: map['comments'],
        amountApplied: map['amountApplied'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        overrideGlAccountId: map['overrideGlAccountId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        paymentApplicationId: map['paymentApplicationId'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        invoiceId: map['invoiceId'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentAndType extractPaymentAndType(dynamic json) {
    return PaymentAndType(
        entityId: create_id_from('PaymentAndType', ['paymentId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        amount: json['amount'] as double,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        comments: json['comments'] as String,
        parentTypeId: json['parentTypeId'] as String,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        description: json['description'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        paymentTypeId: json['paymentTypeId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        hasTable: json['hasTable'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        partyIdTo: json['partyIdTo'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentAndType overridesPaymentAndType(Map<String, dynamic> map) {
    return PaymentAndType(
        entityId: create_id_from('PaymentAndType', ['paymentId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        partyIdFrom: map['partyIdFrom'],
        amount: map['amount'],
        paymentPreferenceId: map['paymentPreferenceId'],
        comments: map['comments'],
        parentTypeId: map['parentTypeId'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        overrideGlAccountId: map['overrideGlAccountId'],
        description: map['description'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        paymentTypeId: map['paymentTypeId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        hasTable: map['hasTable'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentRefNum: map['paymentRefNum'],
        partyIdTo: map['partyIdTo'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentAndTypeAndCreditCard extractPaymentAndTypeAndCreditCard(dynamic json) {
    return PaymentAndTypeAndCreditCard(
        entityId: create_id_from('PaymentAndTypeAndCreditCard', ['paymentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        issueNumber: json['issueNumber'] as String,
        description: json['description'] as String,
        contactMechId: json['contactMechId'] as String,
        paymentTypeId: json['paymentTypeId'] as String,
        titleOnCard: json['titleOnCard'] as String,
        hasTable: json['hasTable'] as String,
        lastNameOnCard: json['lastNameOnCard'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        expireDate: json['expireDate'] as String,
        consecutiveFailedAuths: json['consecutiveFailedAuths'] as int,
        lastFailedNsfDate: check_dt(json['lastFailedNsfDate']),
        suffixOnCard: json['suffixOnCard'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        parentTypeId: json['parentTypeId'] as String,
        firstNameOnCard: json['firstNameOnCard'] as String,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        cardType: json['cardType'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        lastFailedAuthDate: check_dt(json['lastFailedAuthDate']),
        consecutiveFailedNsf: json['consecutiveFailedNsf'] as int,
        companyNameOnCard: json['companyNameOnCard'] as String,
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        middleNameOnCard: json['middleNameOnCard'] as String,
        validFromDate: json['validFromDate'] as String,
        partyIdTo: json['partyIdTo'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        cardNumber: json['cardNumber'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentAndTypeAndCreditCard overridesPaymentAndTypeAndCreditCard(Map<String, dynamic> map) {
    return PaymentAndTypeAndCreditCard(
        entityId: create_id_from('PaymentAndTypeAndCreditCard', ['paymentId'], map),
        partyIdFrom: map['partyIdFrom'],
        paymentPreferenceId: map['paymentPreferenceId'],
        issueNumber: map['issueNumber'],
        description: map['description'],
        contactMechId: map['contactMechId'],
        paymentTypeId: map['paymentTypeId'],
        titleOnCard: map['titleOnCard'],
        hasTable: map['hasTable'],
        lastNameOnCard: map['lastNameOnCard'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentRefNum: map['paymentRefNum'],
        expireDate: map['expireDate'],
        consecutiveFailedAuths: map['consecutiveFailedAuths'],
        lastFailedNsfDate: map['lastFailedNsfDate'],
        suffixOnCard: map['suffixOnCard'],
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        amount: map['amount'],
        comments: map['comments'],
        parentTypeId: map['parentTypeId'],
        firstNameOnCard: map['firstNameOnCard'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        cardType: map['cardType'],
        overrideGlAccountId: map['overrideGlAccountId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        lastFailedAuthDate: map['lastFailedAuthDate'],
        consecutiveFailedNsf: map['consecutiveFailedNsf'],
        companyNameOnCard: map['companyNameOnCard'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        middleNameOnCard: map['middleNameOnCard'],
        validFromDate: map['validFromDate'],
        partyIdTo: map['partyIdTo'],
        effectiveDate: map['effectiveDate'],
        cardNumber: map['cardNumber'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentAndTypePartyNameView extractPaymentAndTypePartyNameView(dynamic json) {
    return PaymentAndTypePartyNameView(
        entityId: create_id_from('PaymentAndTypePartyNameView', ['paymentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        paymentPreferenceId: json['paymentPreferenceId'] as String,
        partyToGroupName: json['partyToGroupName'] as String,
        paymentTypeId: json['paymentTypeId'] as String,
        partyFromGroupName: json['partyFromGroupName'] as String,
        paymentId: json['paymentId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        partyToFirstName: json['partyToFirstName'] as String,
        paymentRefNum: json['paymentRefNum'] as String,
        parentPaymentTypeId: json['parentPaymentTypeId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        finAccountTransId: json['finAccountTransId'] as String,
        amount: json['amount'] as double,
        statusDesc: json['statusDesc'] as String,
        comments: json['comments'] as String,
        actualCurrencyAmount: json['actualCurrencyAmount'] as double,
        partyFromLastName: json['partyFromLastName'] as String,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        partyFromFirstName: json['partyFromFirstName'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        actualCurrencyUomId: json['actualCurrencyUomId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        paymentMethodTypeDesc: json['paymentMethodTypeDesc'] as String,
        statusId: json['statusId'] as String,
        paymentTypeDesc: json['paymentTypeDesc'] as String,
        partyToLastName: json['partyToLastName'] as String,
        partyIdTo: json['partyIdTo'] as String,
        effectiveDate: check_dt(json['effectiveDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentAndTypePartyNameView overridesPaymentAndTypePartyNameView(Map<String, dynamic> map) {
    return PaymentAndTypePartyNameView(
        entityId: create_id_from('PaymentAndTypePartyNameView', ['paymentId'], map),
        partyIdFrom: map['partyIdFrom'],
        paymentPreferenceId: map['paymentPreferenceId'],
        partyToGroupName: map['partyToGroupName'],
        paymentTypeId: map['paymentTypeId'],
        partyFromGroupName: map['partyFromGroupName'],
        paymentId: map['paymentId'],
        paymentMethodId: map['paymentMethodId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        partyToFirstName: map['partyToFirstName'],
        paymentRefNum: map['paymentRefNum'],
        parentPaymentTypeId: map['parentPaymentTypeId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        finAccountTransId: map['finAccountTransId'],
        amount: map['amount'],
        statusDesc: map['statusDesc'],
        comments: map['comments'],
        actualCurrencyAmount: map['actualCurrencyAmount'],
        partyFromLastName: map['partyFromLastName'],
        overrideGlAccountId: map['overrideGlAccountId'],
        partyFromFirstName: map['partyFromFirstName'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        actualCurrencyUomId: map['actualCurrencyUomId'],
        currencyUomId: map['currencyUomId'],
        paymentMethodTypeDesc: map['paymentMethodTypeDesc'],
        statusId: map['statusId'],
        paymentTypeDesc: map['paymentTypeDesc'],
        partyToLastName: map['partyToLastName'],
        partyIdTo: map['partyIdTo'],
        effectiveDate: map['effectiveDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentApplication extractPaymentApplication(dynamic json) {
    return PaymentApplication(
        entityId: create_id_from('PaymentApplication', ['paymentApplicationId'], json),
        toPaymentId: json['toPaymentId'] as String,
        amountApplied: json['amountApplied'] as double,
        overrideGlAccountId: json['overrideGlAccountId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        billingAccountId: json['billingAccountId'] as String,
        paymentApplicationId: json['paymentApplicationId'] as String,
        paymentId: json['paymentId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        invoiceId: json['invoiceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentApplication overridesPaymentApplication(Map<String, dynamic> map) {
    return PaymentApplication(
        entityId: create_id_from('PaymentApplication', ['paymentApplicationId'], map),
        toPaymentId: map['toPaymentId'],
        amountApplied: map['amountApplied'],
        overrideGlAccountId: map['overrideGlAccountId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        billingAccountId: map['billingAccountId'],
        paymentApplicationId: map['paymentApplicationId'],
        paymentId: map['paymentId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        invoiceId: map['invoiceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentAttribute extractPaymentAttribute(dynamic json) {
    return PaymentAttribute(
        entityId: create_id_from('PaymentAttribute', ['paymentId', 'attrName'], json),
        paymentId: json['paymentId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentAttribute overridesPaymentAttribute(Map<String, dynamic> map) {
    return PaymentAttribute(
        entityId: create_id_from('PaymentAttribute', ['paymentId', 'attrName'], map),
        paymentId: map['paymentId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentBudgetAllocation extractPaymentBudgetAllocation(dynamic json) {
    return PaymentBudgetAllocation(
        entityId: create_id_from('PaymentBudgetAllocation', ['budgetId', 'budgetItemSeqId', 'paymentId'], json),
        amount: json['amount'] as double,
        paymentId: json['paymentId'] as String,
        budgetItemSeqId: json['budgetItemSeqId'] as String,
        budgetId: json['budgetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentBudgetAllocation overridesPaymentBudgetAllocation(Map<String, dynamic> map) {
    return PaymentBudgetAllocation(
        entityId: create_id_from('PaymentBudgetAllocation', ['budgetId', 'budgetItemSeqId', 'paymentId'], map),
        amount: map['amount'],
        paymentId: map['paymentId'],
        budgetItemSeqId: map['budgetItemSeqId'],
        budgetId: map['budgetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentContent extractPaymentContent(dynamic json) {
    return PaymentContent(
        entityId: create_id_from('PaymentContent', ['contentId', 'paymentId', 'paymentContentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        paymentContentTypeId: json['paymentContentTypeId'] as String,
        paymentId: json['paymentId'] as String,
        contentId: json['contentId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentContent overridesPaymentContent(Map<String, dynamic> map) {
    return PaymentContent(
        entityId: create_id_from('PaymentContent', ['contentId', 'paymentId', 'paymentContentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        paymentContentTypeId: map['paymentContentTypeId'],
        paymentId: map['paymentId'],
        contentId: map['contentId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentContentAndInfo extractPaymentContentAndInfo(dynamic json) {
    return PaymentContentAndInfo(
        entityId: create_id_from('PaymentContentAndInfo', ['fromDate', 'paymentContentTypeId', 'paymentId', 'contentId', 'drDataResourceId'], json),
        drDataResourceId: json['drDataResourceId'] as String,
        drSurveyResponseId: json['drSurveyResponseId'] as String,
        ownerContentId: json['ownerContentId'] as String,
        drStatusId: json['drStatusId'] as String,
        contentId: json['contentId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        description: json['description'] as String,
        mimeTypeId: json['mimeTypeId'] as String,
        childLeafCount: json['childLeafCount'] as int,
        drRelatedDetailId: json['drRelatedDetailId'] as String,
        drDataCategoryId: json['drDataCategoryId'] as String,
        drIsPublic: json['drIsPublic'] as String,
        drDataResourceTypeId: json['drDataResourceTypeId'] as String,
        drCreatedByUserLogin: json['drCreatedByUserLogin'] as String,
        privilegeEnumId: json['privilegeEnumId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        drDataTemplateTypeId: json['drDataTemplateTypeId'] as String,
        paymentId: json['paymentId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        drSurveyId: json['drSurveyId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        drObjectInfo: json['drObjectInfo'] as String,
        templateDataResourceId: json['templateDataResourceId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        instanceOfContentId: json['instanceOfContentId'] as String,
        serviceName: json['serviceName'] as String,
        customMethodId: json['customMethodId'] as String,
        characterSetId: json['characterSetId'] as String,
        drCharacterSetId: json['drCharacterSetId'] as String,
        drLastModifiedByUserLogin: json['drLastModifiedByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        contentName: json['contentName'] as String,
        fromDate: check_dt(json['fromDate']),
        drCreatedDate: check_dt(json['drCreatedDate']),
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        paymentContentTypeId: json['paymentContentTypeId'] as String,
        localeString: json['localeString'] as String,
        drLastModifiedDate: check_dt(json['drLastModifiedDate']),
        drDataResourceName: json['drDataResourceName'] as String,
        drDataSourceId: json['drDataSourceId'] as String,
        decoratorContentId: json['decoratorContentId'] as String,
        drMimeTypeId: json['drMimeTypeId'] as String,
        drLocaleString: json['drLocaleString'] as String,
        childBranchCount: json['childBranchCount'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentContentAndInfo overridesPaymentContentAndInfo(Map<String, dynamic> map) {
    return PaymentContentAndInfo(
        entityId: create_id_from('PaymentContentAndInfo', ['fromDate', 'paymentContentTypeId', 'paymentId', 'contentId', 'drDataResourceId'], map),
        drDataResourceId: map['drDataResourceId'],
        drSurveyResponseId: map['drSurveyResponseId'],
        ownerContentId: map['ownerContentId'],
        drStatusId: map['drStatusId'],
        contentId: map['contentId'],
        contentTypeId: map['contentTypeId'],
        description: map['description'],
        mimeTypeId: map['mimeTypeId'],
        childLeafCount: map['childLeafCount'],
        drRelatedDetailId: map['drRelatedDetailId'],
        drDataCategoryId: map['drDataCategoryId'],
        drIsPublic: map['drIsPublic'],
        drDataResourceTypeId: map['drDataResourceTypeId'],
        drCreatedByUserLogin: map['drCreatedByUserLogin'],
        privilegeEnumId: map['privilegeEnumId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        drDataTemplateTypeId: map['drDataTemplateTypeId'],
        paymentId: map['paymentId'],
        dataResourceId: map['dataResourceId'],
        drSurveyId: map['drSurveyId'],
        createdByUserLogin: map['createdByUserLogin'],
        drObjectInfo: map['drObjectInfo'],
        templateDataResourceId: map['templateDataResourceId'],
        lastModifiedDate: map['lastModifiedDate'],
        instanceOfContentId: map['instanceOfContentId'],
        serviceName: map['serviceName'],
        customMethodId: map['customMethodId'],
        characterSetId: map['characterSetId'],
        drCharacterSetId: map['drCharacterSetId'],
        drLastModifiedByUserLogin: map['drLastModifiedByUserLogin'],
        thruDate: map['thruDate'],
        contentName: map['contentName'],
        fromDate: map['fromDate'],
        drCreatedDate: map['drCreatedDate'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        paymentContentTypeId: map['paymentContentTypeId'],
        localeString: map['localeString'],
        drLastModifiedDate: map['drLastModifiedDate'],
        drDataResourceName: map['drDataResourceName'],
        drDataSourceId: map['drDataSourceId'],
        decoratorContentId: map['decoratorContentId'],
        drMimeTypeId: map['drMimeTypeId'],
        drLocaleString: map['drLocaleString'],
        childBranchCount: map['childBranchCount'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentContentType extractPaymentContentType(dynamic json) {
    return PaymentContentType(
        entityId: create_id_from('PaymentContentType', ['paymentContentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        paymentContentTypeId: json['paymentContentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentContentType overridesPaymentContentType(Map<String, dynamic> map) {
    return PaymentContentType(
        entityId: create_id_from('PaymentContentType', ['paymentContentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        paymentContentTypeId: map['paymentContentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayAuthorizeNet extractPaymentGatewayAuthorizeNet(dynamic json) {
    return PaymentGatewayAuthorizeNet(
        entityId: create_id_from('PaymentGatewayAuthorizeNet', ['paymentGatewayConfigId'], json),
        cpVersion: json['cpVersion'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        method: json['method'] as String,
        transDescription: json['transDescription'] as String,
        cpMarketType: json['cpMarketType'] as String,
        certificateAlias: json['certificateAlias'] as String,
        delimiterChar: json['delimiterChar'] as String,
        emailCustomer: json['emailCustomer'] as String,
        transactionUrl: json['transactionUrl'] as String,
        userId: json['userId'] as String,
        delimitedData: json['delimitedData'] as String,
        tranKey: json['tranKey'] as String,
        apiVersion: json['apiVersion'] as String,
        emailMerchant: json['emailMerchant'] as String,
        testMode: json['testMode'] as String,
        relayResponse: json['relayResponse'] as String,
        pwd: json['pwd'] as String,
        duplicateWindow: json['duplicateWindow'] as int,
        cpDeviceType: json['cpDeviceType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayAuthorizeNet overridesPaymentGatewayAuthorizeNet(Map<String, dynamic> map) {
    return PaymentGatewayAuthorizeNet(
        entityId: create_id_from('PaymentGatewayAuthorizeNet', ['paymentGatewayConfigId'], map),
        cpVersion: map['cpVersion'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        method: map['method'],
        transDescription: map['transDescription'],
        cpMarketType: map['cpMarketType'],
        certificateAlias: map['certificateAlias'],
        delimiterChar: map['delimiterChar'],
        emailCustomer: map['emailCustomer'],
        transactionUrl: map['transactionUrl'],
        userId: map['userId'],
        delimitedData: map['delimitedData'],
        tranKey: map['tranKey'],
        apiVersion: map['apiVersion'],
        emailMerchant: map['emailMerchant'],
        testMode: map['testMode'],
        relayResponse: map['relayResponse'],
        pwd: map['pwd'],
        duplicateWindow: map['duplicateWindow'],
        cpDeviceType: map['cpDeviceType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayClearCommerce extractPaymentGatewayClearCommerce(dynamic json) {
    return PaymentGatewayClearCommerce(
        entityId: create_id_from('PaymentGatewayClearCommerce', ['paymentGatewayConfigId'], json),
        sourceId: json['sourceId'] as String,
        clientId: json['clientId'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        groupId: json['groupId'] as String,
        enableCVM: json['enableCVM'] as String,
        effectiveAlias: json['effectiveAlias'] as String,
        userAlias: json['userAlias'] as String,
        serverURL: json['serverURL'] as String,
        pwd: json['pwd'] as String,
        processMode: json['processMode'] as String,
        username: json['username'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayClearCommerce overridesPaymentGatewayClearCommerce(Map<String, dynamic> map) {
    return PaymentGatewayClearCommerce(
        entityId: create_id_from('PaymentGatewayClearCommerce', ['paymentGatewayConfigId'], map),
        sourceId: map['sourceId'],
        clientId: map['clientId'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        groupId: map['groupId'],
        enableCVM: map['enableCVM'],
        effectiveAlias: map['effectiveAlias'],
        userAlias: map['userAlias'],
        serverURL: map['serverURL'],
        pwd: map['pwd'],
        processMode: map['processMode'],
        username: map['username'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayConfig extractPaymentGatewayConfig(dynamic json) {
    return PaymentGatewayConfig(
        entityId: create_id_from('PaymentGatewayConfig', ['paymentGatewayConfigId'], json),
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        paymentGatewayConfigTypeId: json['paymentGatewayConfigTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayConfig overridesPaymentGatewayConfig(Map<String, dynamic> map) {
    return PaymentGatewayConfig(
        entityId: create_id_from('PaymentGatewayConfig', ['paymentGatewayConfigId'], map),
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        paymentGatewayConfigTypeId: map['paymentGatewayConfigTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayConfigType extractPaymentGatewayConfigType(dynamic json) {
    return PaymentGatewayConfigType(
        entityId: create_id_from('PaymentGatewayConfigType', ['paymentGatewayConfigTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        paymentGatewayConfigTypeId: json['paymentGatewayConfigTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayConfigType overridesPaymentGatewayConfigType(Map<String, dynamic> map) {
    return PaymentGatewayConfigType(
        entityId: create_id_from('PaymentGatewayConfigType', ['paymentGatewayConfigTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        paymentGatewayConfigTypeId: map['paymentGatewayConfigTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayCyberSource extractPaymentGatewayCyberSource(dynamic json) {
    return PaymentGatewayCyberSource(
        entityId: create_id_from('PaymentGatewayCyberSource', ['paymentGatewayConfigId'], json),
        fraudScore: json['fraudScore'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        production: json['production'] as String,
        keysDir: json['keysDir'] as String,
        merchantContact: json['merchantContact'] as String,
        autoBill: json['autoBill'] as String,
        enableDav: json['enableDav'] as String,
        apiVersion: json['apiVersion'] as String,
        keysFile: json['keysFile'] as String,
        merchantDescr: json['merchantDescr'] as String,
        logEnabled: json['logEnabled'] as String,
        merchantId: json['merchantId'] as String,
        logFile: json['logFile'] as String,
        logSize: json['logSize'] as int,
        ignoreAvs: json['ignoreAvs'] as String,
        disableBillAvs: json['disableBillAvs'] as String,
        logDir: json['logDir'] as String,
        avsDeclineCodes: json['avsDeclineCodes'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayCyberSource overridesPaymentGatewayCyberSource(Map<String, dynamic> map) {
    return PaymentGatewayCyberSource(
        entityId: create_id_from('PaymentGatewayCyberSource', ['paymentGatewayConfigId'], map),
        fraudScore: map['fraudScore'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        production: map['production'],
        keysDir: map['keysDir'],
        merchantContact: map['merchantContact'],
        autoBill: map['autoBill'],
        enableDav: map['enableDav'],
        apiVersion: map['apiVersion'],
        keysFile: map['keysFile'],
        merchantDescr: map['merchantDescr'],
        logEnabled: map['logEnabled'],
        merchantId: map['merchantId'],
        logFile: map['logFile'],
        logSize: map['logSize'],
        ignoreAvs: map['ignoreAvs'],
        disableBillAvs: map['disableBillAvs'],
        logDir: map['logDir'],
        avsDeclineCodes: map['avsDeclineCodes'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayEway extractPaymentGatewayEway(dynamic json) {
    return PaymentGatewayEway(
        entityId: create_id_from('PaymentGatewayEway', ['paymentGatewayConfigId'], json),
        enableCvn: json['enableCvn'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        testMode: json['testMode'] as String,
        enableBeagle: json['enableBeagle'] as String,
        customerId: json['customerId'] as String,
        refundPwd: json['refundPwd'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayEway overridesPaymentGatewayEway(Map<String, dynamic> map) {
    return PaymentGatewayEway(
        entityId: create_id_from('PaymentGatewayEway', ['paymentGatewayConfigId'], map),
        enableCvn: map['enableCvn'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        testMode: map['testMode'],
        enableBeagle: map['enableBeagle'],
        customerId: map['customerId'],
        refundPwd: map['refundPwd'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayOrbital extractPaymentGatewayOrbital(dynamic json) {
    return PaymentGatewayOrbital(
        entityId: create_id_from('PaymentGatewayOrbital', ['paymentGatewayConfigId'], json),
        engineClass: json['engineClass'] as String,
        hostName: json['hostName'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        portFailover: json['portFailover'] as int,
        readTimeoutSeconds: json['readTimeoutSeconds'] as int,
        hostNameFailover: json['hostNameFailover'] as String,
        authorizationURI: json['authorizationURI'] as String,
        sslSocketFactory: json['sslSocketFactory'] as String,
        responseType: json['responseType'] as String,
        merchantId: json['merchantId'] as String,
        port: json['port'] as int,
        connectionTimeoutSeconds: json['connectionTimeoutSeconds'] as int,
        sdkVersion: json['sdkVersion'] as String,
        connectionPassword: json['connectionPassword'] as String,
        username: json['username'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayOrbital overridesPaymentGatewayOrbital(Map<String, dynamic> map) {
    return PaymentGatewayOrbital(
        entityId: create_id_from('PaymentGatewayOrbital', ['paymentGatewayConfigId'], map),
        engineClass: map['engineClass'],
        hostName: map['hostName'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        portFailover: map['portFailover'],
        readTimeoutSeconds: map['readTimeoutSeconds'],
        hostNameFailover: map['hostNameFailover'],
        authorizationURI: map['authorizationURI'],
        sslSocketFactory: map['sslSocketFactory'],
        responseType: map['responseType'],
        merchantId: map['merchantId'],
        port: map['port'],
        connectionTimeoutSeconds: map['connectionTimeoutSeconds'],
        sdkVersion: map['sdkVersion'],
        connectionPassword: map['connectionPassword'],
        username: map['username'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayPayPal extractPaymentGatewayPayPal(dynamic json) {
    return PaymentGatewayPayPal(
        entityId: create_id_from('PaymentGatewayPayPal', ['paymentGatewayConfigId'], json),
        businessEmail: json['businessEmail'] as String,
        apiUserName: json['apiUserName'] as String,
        redirectUrl: json['redirectUrl'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        confirmTemplate: json['confirmTemplate'] as String,
        cancelReturnUrl: json['cancelReturnUrl'] as String,
        apiPassword: json['apiPassword'] as String,
        apiSignature: json['apiSignature'] as String,
        imageUrl: json['imageUrl'] as String,
        requireConfirmedShipping: json['requireConfirmedShipping'] as String,
        notifyUrl: json['notifyUrl'] as String,
        apiEnvironment: json['apiEnvironment'] as String,
        confirmUrl: json['confirmUrl'] as String,
        returnUrl: json['returnUrl'] as String,
        shippingCallbackUrl: json['shippingCallbackUrl'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayPayPal overridesPaymentGatewayPayPal(Map<String, dynamic> map) {
    return PaymentGatewayPayPal(
        entityId: create_id_from('PaymentGatewayPayPal', ['paymentGatewayConfigId'], map),
        businessEmail: map['businessEmail'],
        apiUserName: map['apiUserName'],
        redirectUrl: map['redirectUrl'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        confirmTemplate: map['confirmTemplate'],
        cancelReturnUrl: map['cancelReturnUrl'],
        apiPassword: map['apiPassword'],
        apiSignature: map['apiSignature'],
        imageUrl: map['imageUrl'],
        requireConfirmedShipping: map['requireConfirmedShipping'],
        notifyUrl: map['notifyUrl'],
        apiEnvironment: map['apiEnvironment'],
        confirmUrl: map['confirmUrl'],
        returnUrl: map['returnUrl'],
        shippingCallbackUrl: map['shippingCallbackUrl'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayPayflowPro extractPaymentGatewayPayflowPro(dynamic json) {
    return PaymentGatewayPayflowPro(
        entityId: create_id_from('PaymentGatewayPayflowPro', ['paymentGatewayConfigId'], json),
        redirectUrl: json['redirectUrl'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        cancelReturnUrl: json['cancelReturnUrl'] as String,
        enableTransmit: json['enableTransmit'] as String,
        timeout: json['timeout'] as int,
        proxyPort: json['proxyPort'] as int,
        proxyLogon: json['proxyLogon'] as String,
        certsPath: json['certsPath'] as String,
        vendor: json['vendor'] as String,
        logFileName: json['logFileName'] as String,
        hostPort: json['hostPort'] as int,
        preAuth: json['preAuth'] as String,
        proxyAddress: json['proxyAddress'] as String,
        returnUrl: json['returnUrl'] as String,
        maxLogFileSize: json['maxLogFileSize'] as int,
        proxyPassword: json['proxyPassword'] as String,
        checkAvs: json['checkAvs'] as String,
        stackTraceOn: json['stackTraceOn'] as String,
        userId: json['userId'] as String,
        checkCvv2: json['checkCvv2'] as String,
        partner: json['partner'] as String,
        hostAddress: json['hostAddress'] as String,
        pwd: json['pwd'] as String,
        loggingLevel: json['loggingLevel'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayPayflowPro overridesPaymentGatewayPayflowPro(Map<String, dynamic> map) {
    return PaymentGatewayPayflowPro(
        entityId: create_id_from('PaymentGatewayPayflowPro', ['paymentGatewayConfigId'], map),
        redirectUrl: map['redirectUrl'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        cancelReturnUrl: map['cancelReturnUrl'],
        enableTransmit: map['enableTransmit'],
        timeout: map['timeout'],
        proxyPort: map['proxyPort'],
        proxyLogon: map['proxyLogon'],
        certsPath: map['certsPath'],
        vendor: map['vendor'],
        logFileName: map['logFileName'],
        hostPort: map['hostPort'],
        preAuth: map['preAuth'],
        proxyAddress: map['proxyAddress'],
        returnUrl: map['returnUrl'],
        maxLogFileSize: map['maxLogFileSize'],
        proxyPassword: map['proxyPassword'],
        checkAvs: map['checkAvs'],
        stackTraceOn: map['stackTraceOn'],
        userId: map['userId'],
        checkCvv2: map['checkCvv2'],
        partner: map['partner'],
        hostAddress: map['hostAddress'],
        pwd: map['pwd'],
        loggingLevel: map['loggingLevel'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayRespMsg extractPaymentGatewayRespMsg(dynamic json) {
    return PaymentGatewayRespMsg(
        entityId: create_id_from('PaymentGatewayRespMsg', ['paymentGatewayRespMsgId'], json),
        paymentGatewayRespMsgId: json['paymentGatewayRespMsgId'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        pgrMessage: json['pgrMessage'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayRespMsg overridesPaymentGatewayRespMsg(Map<String, dynamic> map) {
    return PaymentGatewayRespMsg(
        entityId: create_id_from('PaymentGatewayRespMsg', ['paymentGatewayRespMsgId'], map),
        paymentGatewayRespMsgId: map['paymentGatewayRespMsgId'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        pgrMessage: map['pgrMessage'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayResponse extractPaymentGatewayResponse(dynamic json) {
    return PaymentGatewayResponse(
        entityId: create_id_from('PaymentGatewayResponse', ['paymentGatewayResponseId'], json),
        paymentServiceTypeEnumId: json['paymentServiceTypeEnumId'] as String,
        transCodeEnumId: json['transCodeEnumId'] as String,
        orderPaymentPreferenceId: json['orderPaymentPreferenceId'] as String,
        gatewayCode: json['gatewayCode'] as String,
        resultDeclined: json['resultDeclined'] as String,
        paymentGatewayResponseId: json['paymentGatewayResponseId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        subReference: json['subReference'] as String,
        gatewayFlag: json['gatewayFlag'] as String,
        gatewayCvResult: json['gatewayCvResult'] as String,
        gatewayMessage: json['gatewayMessage'] as String,
        gatewayScoreResult: json['gatewayScoreResult'] as String,
        resultBadExpire: json['resultBadExpire'] as String,
        amount: json['amount'] as double,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        transactionDate: check_dt(json['transactionDate']),
        resultNsf: json['resultNsf'] as String,
        referenceNum: json['referenceNum'] as String,
        currencyUomId: json['currencyUomId'] as String,
        gatewayAvsResult: json['gatewayAvsResult'] as String,
        resultBadCardNumber: json['resultBadCardNumber'] as String,
        altReference: json['altReference'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayResponse overridesPaymentGatewayResponse(Map<String, dynamic> map) {
    return PaymentGatewayResponse(
        entityId: create_id_from('PaymentGatewayResponse', ['paymentGatewayResponseId'], map),
        paymentServiceTypeEnumId: map['paymentServiceTypeEnumId'],
        transCodeEnumId: map['transCodeEnumId'],
        orderPaymentPreferenceId: map['orderPaymentPreferenceId'],
        gatewayCode: map['gatewayCode'],
        resultDeclined: map['resultDeclined'],
        paymentGatewayResponseId: map['paymentGatewayResponseId'],
        paymentMethodId: map['paymentMethodId'],
        subReference: map['subReference'],
        gatewayFlag: map['gatewayFlag'],
        gatewayCvResult: map['gatewayCvResult'],
        gatewayMessage: map['gatewayMessage'],
        gatewayScoreResult: map['gatewayScoreResult'],
        resultBadExpire: map['resultBadExpire'],
        amount: map['amount'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        transactionDate: map['transactionDate'],
        resultNsf: map['resultNsf'],
        referenceNum: map['referenceNum'],
        currencyUomId: map['currencyUomId'],
        gatewayAvsResult: map['gatewayAvsResult'],
        resultBadCardNumber: map['resultBadCardNumber'],
        altReference: map['altReference'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewaySagePay extractPaymentGatewaySagePay(dynamic json) {
    return PaymentGatewaySagePay(
        entityId: create_id_from('PaymentGatewaySagePay', ['paymentGatewayConfigId'], json),
        authenticationTransType: json['authenticationTransType'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        voidUrl: json['voidUrl'] as String,
        testingHost: json['testingHost'] as String,
        sagePayMode: json['sagePayMode'] as String,
        releaseTransType: json['releaseTransType'] as String,
        authoriseTransType: json['authoriseTransType'] as String,
        vendor: json['vendor'] as String,
        productionHost: json['productionHost'] as String,
        refundUrl: json['refundUrl'] as String,
        protocolVersion: json['protocolVersion'] as String,
        releaseUrl: json['releaseUrl'] as String,
        authenticationUrl: json['authenticationUrl'] as String,
        authoriseUrl: json['authoriseUrl'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewaySagePay overridesPaymentGatewaySagePay(Map<String, dynamic> map) {
    return PaymentGatewaySagePay(
        entityId: create_id_from('PaymentGatewaySagePay', ['paymentGatewayConfigId'], map),
        authenticationTransType: map['authenticationTransType'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        voidUrl: map['voidUrl'],
        testingHost: map['testingHost'],
        sagePayMode: map['sagePayMode'],
        releaseTransType: map['releaseTransType'],
        authoriseTransType: map['authoriseTransType'],
        vendor: map['vendor'],
        productionHost: map['productionHost'],
        refundUrl: map['refundUrl'],
        protocolVersion: map['protocolVersion'],
        releaseUrl: map['releaseUrl'],
        authenticationUrl: map['authenticationUrl'],
        authoriseUrl: map['authoriseUrl'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewaySecurePay extractPaymentGatewaySecurePay(dynamic json) {
    return PaymentGatewaySecurePay(
        entityId: create_id_from('PaymentGatewaySecurePay', ['paymentGatewayConfigId'], json),
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        merchantId: json['merchantId'] as String,
        serverURL: json['serverURL'] as String,
        pwd: json['pwd'] as String,
        processTimeout: json['processTimeout'] as int,
        enableAmountRound: json['enableAmountRound'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewaySecurePay overridesPaymentGatewaySecurePay(Map<String, dynamic> map) {
    return PaymentGatewaySecurePay(
        entityId: create_id_from('PaymentGatewaySecurePay', ['paymentGatewayConfigId'], map),
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        merchantId: map['merchantId'],
        serverURL: map['serverURL'],
        pwd: map['pwd'],
        processTimeout: map['processTimeout'],
        enableAmountRound: map['enableAmountRound'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayWorldPay extractPaymentGatewayWorldPay(dynamic json) {
    return PaymentGatewayWorldPay(
        entityId: create_id_from('PaymentGatewayWorldPay', ['paymentGatewayConfigId'], json),
        redirectUrl: json['redirectUrl'] as String,
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        noLanguageMenu: json['noLanguageMenu'] as String,
        authMode: json['authMode'] as String,
        instId: json['instId'] as String,
        hideContact: json['hideContact'] as String,
        testMode: json['testMode'] as int,
        fixContact: json['fixContact'] as String,
        langId: json['langId'] as String,
        hideCurrency: json['hideCurrency'] as String,
        withDelivery: json['withDelivery'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayWorldPay overridesPaymentGatewayWorldPay(Map<String, dynamic> map) {
    return PaymentGatewayWorldPay(
        entityId: create_id_from('PaymentGatewayWorldPay', ['paymentGatewayConfigId'], map),
        redirectUrl: map['redirectUrl'],
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        noLanguageMenu: map['noLanguageMenu'],
        authMode: map['authMode'],
        instId: map['instId'],
        hideContact: map['hideContact'],
        testMode: map['testMode'],
        fixContact: map['fixContact'],
        langId: map['langId'],
        hideCurrency: map['hideCurrency'],
        withDelivery: map['withDelivery'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGatewayiDEAL extractPaymentGatewayiDEAL(dynamic json) {
    return PaymentGatewayiDEAL(
        entityId: create_id_from('PaymentGatewayiDEAL', ['paymentGatewayConfigId'], json),
        paymentGatewayConfigId: json['paymentGatewayConfigId'] as String,
        merchantKeyStorePassword: json['merchantKeyStorePassword'] as String,
        expirationPeriod: json['expirationPeriod'] as String,
        merchantReturnURL: json['merchantReturnURL'] as String,
        merchantId: json['merchantId'] as String,
        acquirerKeyStoreFilename: json['acquirerKeyStoreFilename'] as String,
        merchantSubId: json['merchantSubId'] as String,
        acquirerURL: json['acquirerURL'] as String,
        acquirerTimeout: json['acquirerTimeout'] as String,
        privateCert: json['privateCert'] as String,
        acquirerKeyStorePassword: json['acquirerKeyStorePassword'] as String,
        merchantKeyStoreFilename: json['merchantKeyStoreFilename'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGatewayiDEAL overridesPaymentGatewayiDEAL(Map<String, dynamic> map) {
    return PaymentGatewayiDEAL(
        entityId: create_id_from('PaymentGatewayiDEAL', ['paymentGatewayConfigId'], map),
        paymentGatewayConfigId: map['paymentGatewayConfigId'],
        merchantKeyStorePassword: map['merchantKeyStorePassword'],
        expirationPeriod: map['expirationPeriod'],
        merchantReturnURL: map['merchantReturnURL'],
        merchantId: map['merchantId'],
        acquirerKeyStoreFilename: map['acquirerKeyStoreFilename'],
        merchantSubId: map['merchantSubId'],
        acquirerURL: map['acquirerURL'],
        acquirerTimeout: map['acquirerTimeout'],
        privateCert: map['privateCert'],
        acquirerKeyStorePassword: map['acquirerKeyStorePassword'],
        merchantKeyStoreFilename: map['merchantKeyStoreFilename'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGlAccountTypeMap extractPaymentGlAccountTypeMap(dynamic json) {
    return PaymentGlAccountTypeMap(
        entityId: create_id_from('PaymentGlAccountTypeMap', ['paymentTypeId', 'organizationPartyId'], json),
        paymentTypeId: json['paymentTypeId'] as String,
        glAccountTypeId: json['glAccountTypeId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGlAccountTypeMap overridesPaymentGlAccountTypeMap(Map<String, dynamic> map) {
    return PaymentGlAccountTypeMap(
        entityId: create_id_from('PaymentGlAccountTypeMap', ['paymentTypeId', 'organizationPartyId'], map),
        paymentTypeId: map['paymentTypeId'],
        glAccountTypeId: map['glAccountTypeId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGroup extractPaymentGroup(dynamic json) {
    return PaymentGroup(
        entityId: create_id_from('PaymentGroup', ['paymentGroupId'], json),
        paymentGroupId: json['paymentGroupId'] as String,
        paymentGroupName: json['paymentGroupName'] as String,
        paymentGroupTypeId: json['paymentGroupTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGroup overridesPaymentGroup(Map<String, dynamic> map) {
    return PaymentGroup(
        entityId: create_id_from('PaymentGroup', ['paymentGroupId'], map),
        paymentGroupId: map['paymentGroupId'],
        paymentGroupName: map['paymentGroupName'],
        paymentGroupTypeId: map['paymentGroupTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGroupMember extractPaymentGroupMember(dynamic json) {
    return PaymentGroupMember(
        entityId: create_id_from('PaymentGroupMember', ['paymentGroupId', 'paymentId', 'fromDate'], json),
        paymentGroupId: json['paymentGroupId'] as String,
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        paymentId: json['paymentId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGroupMember overridesPaymentGroupMember(Map<String, dynamic> map) {
    return PaymentGroupMember(
        entityId: create_id_from('PaymentGroupMember', ['paymentGroupId', 'paymentId', 'fromDate'], map),
        paymentGroupId: map['paymentGroupId'],
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        paymentId: map['paymentId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentGroupType extractPaymentGroupType(dynamic json) {
    return PaymentGroupType(
        entityId: create_id_from('PaymentGroupType', ['paymentGroupTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        paymentGroupTypeId: json['paymentGroupTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentGroupType overridesPaymentGroupType(Map<String, dynamic> map) {
    return PaymentGroupType(
        entityId: create_id_from('PaymentGroupType', ['paymentGroupTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        paymentGroupTypeId: map['paymentGroupTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethod extractPaymentMethod(dynamic json) {
    return PaymentMethod(
        entityId: create_id_from('PaymentMethod', ['paymentMethodId'], json),
        fromDate: check_dt(json['fromDate']),
        finAccountId: json['finAccountId'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        glAccountId: json['glAccountId'] as String,
        description: json['description'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethod overridesPaymentMethod(Map<String, dynamic> map) {
    return PaymentMethod(
        entityId: create_id_from('PaymentMethod', ['paymentMethodId'], map),
        fromDate: map['fromDate'],
        finAccountId: map['finAccountId'],
        paymentMethodId: map['paymentMethodId'],
        glAccountId: map['glAccountId'],
        description: map['description'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodAndCreditCard extractPaymentMethodAndCreditCard(dynamic json) {
    return PaymentMethodAndCreditCard(
        entityId: create_id_from('PaymentMethodAndCreditCard', ['paymentMethodId'], json),
        firstNameOnCard: json['firstNameOnCard'] as String,
        glAccountId: json['glAccountId'] as String,
        cardType: json['cardType'] as String,
        description: json['description'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        companyNameOnCard: json['companyNameOnCard'] as String,
        fromDate: check_dt(json['fromDate']),
        titleOnCard: json['titleOnCard'] as String,
        lastNameOnCard: json['lastNameOnCard'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        expireDate: json['expireDate'] as String,
        partyId: json['partyId'] as String,
        cardNumber: json['cardNumber'] as String,
        suffixOnCard: json['suffixOnCard'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodAndCreditCard overridesPaymentMethodAndCreditCard(Map<String, dynamic> map) {
    return PaymentMethodAndCreditCard(
        entityId: create_id_from('PaymentMethodAndCreditCard', ['paymentMethodId'], map),
        firstNameOnCard: map['firstNameOnCard'],
        glAccountId: map['glAccountId'],
        cardType: map['cardType'],
        description: map['description'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        companyNameOnCard: map['companyNameOnCard'],
        fromDate: map['fromDate'],
        titleOnCard: map['titleOnCard'],
        lastNameOnCard: map['lastNameOnCard'],
        paymentMethodId: map['paymentMethodId'],
        expireDate: map['expireDate'],
        partyId: map['partyId'],
        cardNumber: map['cardNumber'],
        suffixOnCard: map['suffixOnCard'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodAndEftAccount extractPaymentMethodAndEftAccount(dynamic json) {
    return PaymentMethodAndEftAccount(
        entityId: create_id_from('PaymentMethodAndEftAccount', ['paymentMethodId'], json),
        companyNameOnAccount: json['companyNameOnAccount'] as String,
        nameOnAccount: json['nameOnAccount'] as String,
        accountType: json['accountType'] as String,
        glAccountId: json['glAccountId'] as String,
        bankName: json['bankName'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        accountNumber: json['accountNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        routingNumber: json['routingNumber'] as String,
        paymentMethodId: json['paymentMethodId'] as String,
        yearsAtBank: json['yearsAtBank'] as int,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodAndEftAccount overridesPaymentMethodAndEftAccount(Map<String, dynamic> map) {
    return PaymentMethodAndEftAccount(
        entityId: create_id_from('PaymentMethodAndEftAccount', ['paymentMethodId'], map),
        companyNameOnAccount: map['companyNameOnAccount'],
        nameOnAccount: map['nameOnAccount'],
        accountType: map['accountType'],
        glAccountId: map['glAccountId'],
        bankName: map['bankName'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        accountNumber: map['accountNumber'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        routingNumber: map['routingNumber'],
        paymentMethodId: map['paymentMethodId'],
        yearsAtBank: map['yearsAtBank'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodAndGiftCard extractPaymentMethodAndGiftCard(dynamic json) {
    return PaymentMethodAndGiftCard(
        entityId: create_id_from('PaymentMethodAndGiftCard', ['paymentMethodId'], json),
        fromDate: check_dt(json['fromDate']),
        paymentMethodId: json['paymentMethodId'] as String,
        glAccountId: json['glAccountId'] as String,
        pinNumber: json['pinNumber'] as String,
        expireDate: json['expireDate'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        partyId: json['partyId'] as String,
        cardNumber: json['cardNumber'] as String,
        contactMechId: json['contactMechId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodAndGiftCard overridesPaymentMethodAndGiftCard(Map<String, dynamic> map) {
    return PaymentMethodAndGiftCard(
        entityId: create_id_from('PaymentMethodAndGiftCard', ['paymentMethodId'], map),
        fromDate: map['fromDate'],
        paymentMethodId: map['paymentMethodId'],
        glAccountId: map['glAccountId'],
        pinNumber: map['pinNumber'],
        expireDate: map['expireDate'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        partyId: map['partyId'],
        cardNumber: map['cardNumber'],
        contactMechId: map['contactMechId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodType extractPaymentMethodType(dynamic json) {
    return PaymentMethodType(
        entityId: create_id_from('PaymentMethodType', ['paymentMethodTypeId'], json),
        defaultGlAccountId: json['defaultGlAccountId'] as String,
        description: json['description'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodType overridesPaymentMethodType(Map<String, dynamic> map) {
    return PaymentMethodType(
        entityId: create_id_from('PaymentMethodType', ['paymentMethodTypeId'], map),
        defaultGlAccountId: map['defaultGlAccountId'],
        description: map['description'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentMethodTypeGlAccount extractPaymentMethodTypeGlAccount(dynamic json) {
    return PaymentMethodTypeGlAccount(
        entityId: create_id_from('PaymentMethodTypeGlAccount', ['paymentMethodTypeId', 'organizationPartyId'], json),
        glAccountId: json['glAccountId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentMethodTypeGlAccount overridesPaymentMethodTypeGlAccount(Map<String, dynamic> map) {
    return PaymentMethodTypeGlAccount(
        entityId: create_id_from('PaymentMethodTypeGlAccount', ['paymentMethodTypeId', 'organizationPartyId'], map),
        glAccountId: map['glAccountId'],
        organizationPartyId: map['organizationPartyId'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentType extractPaymentType(dynamic json) {
    return PaymentType(
        entityId: create_id_from('PaymentType', ['paymentTypeId'], json),
        paymentTypeId: json['paymentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentType overridesPaymentType(Map<String, dynamic> map) {
    return PaymentType(
        entityId: create_id_from('PaymentType', ['paymentTypeId'], map),
        paymentTypeId: map['paymentTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PaymentTypeAttr extractPaymentTypeAttr(dynamic json) {
    return PaymentTypeAttr(
        entityId: create_id_from('PaymentTypeAttr', ['paymentTypeId', 'attrName'], json),
        paymentTypeId: json['paymentTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PaymentTypeAttr overridesPaymentTypeAttr(Map<String, dynamic> map) {
    return PaymentTypeAttr(
        entityId: create_id_from('PaymentTypeAttr', ['paymentTypeId', 'attrName'], map),
        paymentTypeId: map['paymentTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ValueLinkKey extractValueLinkKey(dynamic json) {
    return ValueLinkKey(
        entityId: create_id_from('ValueLinkKey', ['merchantId'], json),
        workingKeyIndex: json['workingKeyIndex'] as int,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        publicKey: json['publicKey'] as String,
        privateKey: json['privateKey'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        merchantId: json['merchantId'] as String,
        workingKey: json['workingKey'] as String,
        lastWorkingKey: json['lastWorkingKey'] as String,
        exchangeKey: json['exchangeKey'] as String,
        lastModifiedByTerminal: json['lastModifiedByTerminal'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        createdByTerminal: json['createdByTerminal'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ValueLinkKey overridesValueLinkKey(Map<String, dynamic> map) {
    return ValueLinkKey(
        entityId: create_id_from('ValueLinkKey', ['merchantId'], map),
        workingKeyIndex: map['workingKeyIndex'],
        lastModifiedDate: map['lastModifiedDate'],
        publicKey: map['publicKey'],
        privateKey: map['privateKey'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        merchantId: map['merchantId'],
        workingKey: map['workingKey'],
        lastWorkingKey: map['lastWorkingKey'],
        exchangeKey: map['exchangeKey'],
        lastModifiedByTerminal: map['lastModifiedByTerminal'],
        createdByUserLogin: map['createdByUserLogin'],
        createdByTerminal: map['createdByTerminal'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}