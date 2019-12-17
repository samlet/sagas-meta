import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity BillingAccount, Billing Account
class BillingAccount extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final double accountLimit;
  final String externalAccountId;
  final String accountCurrencyUomId;
  final String description;
  final String billingAccountId; // pk
  final String contactMechId;
  final DateTime thruDate;
  BillingAccount({entityId,
    this.fromDate, this.accountLimit, this.externalAccountId, this.accountCurrencyUomId, this.description, @required this.billingAccountId, this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'accountLimit':accountLimit, 'externalAccountId':externalAccountId, 'accountCurrencyUomId':accountCurrencyUomId, 'description':description, 'billingAccountId':billingAccountId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity BillingAccountAndRole, Billing Account and Role
class BillingAccountAndRole extends EntityBase {

  final DateTime fromDate; // pk
  final DateTime accountFromDate;
  final String roleTypeId; // pk
  final double accountLimit;
  final String accountCurrencyUomId;
  final DateTime accountThruDate;
  final String description;
  final String billingAccountId; // pk
  final String partyId; // pk
  final String contactMechId;
  final DateTime thruDate;
  BillingAccountAndRole({entityId,
    @required this.fromDate, this.accountFromDate, @required this.roleTypeId, this.accountLimit, this.accountCurrencyUomId, this.accountThruDate, this.description, @required this.billingAccountId, @required this.partyId, this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccountAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'accountFromDate':accountFromDate, 'roleTypeId':roleTypeId, 'accountLimit':accountLimit, 'accountCurrencyUomId':accountCurrencyUomId, 'accountThruDate':accountThruDate, 'description':description, 'billingAccountId':billingAccountId, 'partyId':partyId, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity BillingAccountRole, Billing Account Role
class BillingAccountRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String billingAccountId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  BillingAccountRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.billingAccountId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccountRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'billingAccountId':billingAccountId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity BillingAccountRoleAndAddress, Billing Account Role and Address
class BillingAccountRoleAndAddress extends EntityBase {

  final String houseNumberExt;
  final String city;
  final String postalCode;
  final String postalCodeGeoId;
  final int houseNumber;
  final DateTime pcmFromDate; // pk
  final String billingAccountId; // pk
  final String postalCodeExt;
  final String contactMechId; // pk
  final String attnName;
  final String countyGeoId;
  final String toName;
  final String cityGeoId;
  final String partyId; // pk
  final String countryGeoId;
  final String roleTypeId; // pk
  final DateTime pcmThruDate;
  final String address2;
  final String address1;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String directions;
  final String municipalityGeoId;
  final String stateProvinceGeoId;
  final String geoPointId;
  BillingAccountRoleAndAddress({entityId,
    this.houseNumberExt, this.city, this.postalCode, this.postalCodeGeoId, this.houseNumber, @required this.pcmFromDate, @required this.billingAccountId, this.postalCodeExt, @required this.contactMechId, this.attnName, this.countyGeoId, this.toName, this.cityGeoId, @required this.partyId, this.countryGeoId, @required this.roleTypeId, this.pcmThruDate, this.address2, this.address1, this.thruDate, @required this.fromDate, this.directions, this.municipalityGeoId, this.stateProvinceGeoId, this.geoPointId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccountRoleAndAddress { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'houseNumberExt':houseNumberExt, 'city':city, 'postalCode':postalCode, 'postalCodeGeoId':postalCodeGeoId, 'houseNumber':houseNumber, 'pcmFromDate':pcmFromDate, 'billingAccountId':billingAccountId, 'postalCodeExt':postalCodeExt, 'contactMechId':contactMechId, 'attnName':attnName, 'countyGeoId':countyGeoId, 'toName':toName, 'cityGeoId':cityGeoId, 'partyId':partyId, 'countryGeoId':countryGeoId, 'roleTypeId':roleTypeId, 'pcmThruDate':pcmThruDate, 'address2':address2, 'address1':address1, 'thruDate':thruDate, 'fromDate':fromDate, 'directions':directions, 'municipalityGeoId':municipalityGeoId, 'stateProvinceGeoId':stateProvinceGeoId, 'geoPointId':geoPointId};
  }

}

/// Entity BillingAccountTerm, Billing Account Term
class BillingAccountTerm extends EntityBase {

  /// this entity has only one pk
  final String billingAccountTermId; // pk
  final int termDays;
  final String termTypeId;
  final String billingAccountId;
  final String uomId;
  final double termValue;
  BillingAccountTerm({entityId,
    @required this.billingAccountTermId, this.termDays, this.termTypeId, this.billingAccountId, this.uomId, this.termValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccountTerm { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'billingAccountTermId':billingAccountTermId, 'termDays':termDays, 'termTypeId':termTypeId, 'billingAccountId':billingAccountId, 'uomId':uomId, 'termValue':termValue};
  }

}

/// Entity BillingAccountTermAttr, Billing Account Term Attribute
class BillingAccountTermAttr extends EntityBase {

  final String billingAccountTermId; // pk
  final String attrValue;
  final String attrName; // pk
  BillingAccountTermAttr({entityId,
    @required this.billingAccountTermId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BillingAccountTermAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'billingAccountTermId':billingAccountTermId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity CheckAccount, Check Information
class CheckAccount extends EntityBase {

  /// this entity has only one pk
  final String companyNameOnAccount;
  final String nameOnAccount;
  final String accountType;
  final String bankName;
  final String accountNumber;
  final String contactMechId;
  final String branchCode;
  final String routingNumber;
  final String paymentMethodId; // pk
  CheckAccount({entityId,
    this.companyNameOnAccount, this.nameOnAccount, this.accountType, this.bankName, this.accountNumber, this.contactMechId, this.branchCode, this.routingNumber, @required this.paymentMethodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CheckAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'companyNameOnAccount':companyNameOnAccount, 'nameOnAccount':nameOnAccount, 'accountType':accountType, 'bankName':bankName, 'accountNumber':accountNumber, 'contactMechId':contactMechId, 'branchCode':branchCode, 'routingNumber':routingNumber, 'paymentMethodId':paymentMethodId};
  }

}

/// Entity CreditCard, Credit Card Information
class CreditCard extends EntityBase {

  /// this entity has only one pk
  final String firstNameOnCard;
  final String issueNumber;
  final String cardType;
  final DateTime lastFailedAuthDate;
  final int consecutiveFailedNsf;
  final String contactMechId;
  final String companyNameOnCard;
  final String titleOnCard;
  final String lastNameOnCard;
  final String paymentMethodId; // pk
  final String middleNameOnCard;
  final String validFromDate;
  final String expireDate;
  final int consecutiveFailedAuths;
  final DateTime lastFailedNsfDate;
  final String cardNumber;
  final String suffixOnCard;
  CreditCard({entityId,
    this.firstNameOnCard, this.issueNumber, this.cardType, this.lastFailedAuthDate, this.consecutiveFailedNsf, this.contactMechId, this.companyNameOnCard, this.titleOnCard, this.lastNameOnCard, @required this.paymentMethodId, this.middleNameOnCard, this.validFromDate, this.expireDate, this.consecutiveFailedAuths, this.lastFailedNsfDate, this.cardNumber, this.suffixOnCard,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CreditCard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstNameOnCard':firstNameOnCard, 'issueNumber':issueNumber, 'cardType':cardType, 'lastFailedAuthDate':lastFailedAuthDate, 'consecutiveFailedNsf':consecutiveFailedNsf, 'contactMechId':contactMechId, 'companyNameOnCard':companyNameOnCard, 'titleOnCard':titleOnCard, 'lastNameOnCard':lastNameOnCard, 'paymentMethodId':paymentMethodId, 'middleNameOnCard':middleNameOnCard, 'validFromDate':validFromDate, 'expireDate':expireDate, 'consecutiveFailedAuths':consecutiveFailedAuths, 'lastFailedNsfDate':lastFailedNsfDate, 'cardNumber':cardNumber, 'suffixOnCard':suffixOnCard};
  }

}

/// Entity CreditCardTypeGlAccount, Credit Card Type GL Account
class CreditCardTypeGlAccount extends EntityBase {

  final String cardType; // pk
  final String glAccountId;
  final String organizationPartyId; // pk
  CreditCardTypeGlAccount({entityId,
    @required this.cardType, this.glAccountId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CreditCardTypeGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'cardType':cardType, 'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity Deduction, Deduction
class Deduction extends EntityBase {

  /// this entity has only one pk
  final double amount;
  final String paymentId;
  final String deductionTypeId;
  final String deductionId; // pk
  Deduction({entityId,
    this.amount, this.paymentId, this.deductionTypeId, @required this.deductionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Deduction { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'paymentId':paymentId, 'deductionTypeId':deductionTypeId, 'deductionId':deductionId};
  }

}

/// Entity DeductionType, Deduction Type
class DeductionType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String deductionTypeId; // pk
  final String description;
  DeductionType({entityId,
    this.parentTypeId, this.hasTable, @required this.deductionTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DeductionType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'deductionTypeId':deductionTypeId, 'description':description};
  }

}

/// Entity EftAccount, EFT Account Information
class EftAccount extends EntityBase {

  /// this entity has only one pk
  final String companyNameOnAccount;
  final String nameOnAccount;
  final String accountType;
  final String bankName;
  final String accountNumber;
  final String contactMechId;
  final String routingNumber;
  final String paymentMethodId; // pk
  final int yearsAtBank;
  EftAccount({entityId,
    this.companyNameOnAccount, this.nameOnAccount, this.accountType, this.bankName, this.accountNumber, this.contactMechId, this.routingNumber, @required this.paymentMethodId, this.yearsAtBank,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EftAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'companyNameOnAccount':companyNameOnAccount, 'nameOnAccount':nameOnAccount, 'accountType':accountType, 'bankName':bankName, 'accountNumber':accountNumber, 'contactMechId':contactMechId, 'routingNumber':routingNumber, 'paymentMethodId':paymentMethodId, 'yearsAtBank':yearsAtBank};
  }

}

/// Entity GiftCard, Gift Card Information
class GiftCard extends EntityBase {

  /// this entity has only one pk
  final String paymentMethodId; // pk
  final String pinNumber;
  final String expireDate;
  final String cardNumber;
  final String contactMechId;
  GiftCard({entityId,
    @required this.paymentMethodId, this.pinNumber, this.expireDate, this.cardNumber, this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GiftCard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentMethodId':paymentMethodId, 'pinNumber':pinNumber, 'expireDate':expireDate, 'cardNumber':cardNumber, 'contactMechId':contactMechId};
  }

}

/// Entity GiftCardFulfillment, Gift Card Fulfillment History
class GiftCardFulfillment extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String fulfillmentId; // pk
  final DateTime fulfillmentDate;
  final double amount;
  final String authCode;
  final String orderId;
  final String pinNumber;
  final String typeEnumId;
  final String surveyResponseId;
  final String responseCode;
  final String referenceNum;
  final String merchantId;
  final String partyId;
  final String cardNumber;
  GiftCardFulfillment({entityId,
    this.orderItemSeqId, @required this.fulfillmentId, this.fulfillmentDate, this.amount, this.authCode, this.orderId, this.pinNumber, this.typeEnumId, this.surveyResponseId, this.responseCode, this.referenceNum, this.merchantId, this.partyId, this.cardNumber,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'GiftCardFulfillment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'fulfillmentId':fulfillmentId, 'fulfillmentDate':fulfillmentDate, 'amount':amount, 'authCode':authCode, 'orderId':orderId, 'pinNumber':pinNumber, 'typeEnumId':typeEnumId, 'surveyResponseId':surveyResponseId, 'responseCode':responseCode, 'referenceNum':referenceNum, 'merchantId':merchantId, 'partyId':partyId, 'cardNumber':cardNumber};
  }

}

/// Entity PayPalPaymentMethod, PayPalPaymentMethod
class PayPalPaymentMethod extends EntityBase {

  /// this entity has only one pk
  final String expressCheckoutToken;
  final String avsAddr;
  final String payerId;
  final String payerStatus;
  final String contactMechId;
  final String transactionId;
  final String paymentMethodId; // pk
  final String avsZip;
  final String correlationId;
  PayPalPaymentMethod({entityId,
    this.expressCheckoutToken, this.avsAddr, this.payerId, this.payerStatus, this.contactMechId, this.transactionId, @required this.paymentMethodId, this.avsZip, this.correlationId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PayPalPaymentMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'expressCheckoutToken':expressCheckoutToken, 'avsAddr':avsAddr, 'payerId':payerId, 'payerStatus':payerStatus, 'contactMechId':contactMechId, 'transactionId':transactionId, 'paymentMethodId':paymentMethodId, 'avsZip':avsZip, 'correlationId':correlationId};
  }

}

/// Entity Payment, Payment
class Payment extends EntityBase {

  /// this entity has only one pk
  final String roleTypeIdTo;
  final String finAccountTransId;
  final String partyIdFrom;
  final double amount;
  final String paymentPreferenceId;
  final String comments;
  final double actualCurrencyAmount;
  final String overrideGlAccountId;
  final String paymentMethodTypeId;
  final String actualCurrencyUomId;
  final String paymentTypeId;
  final String currencyUomId;
  final String statusId;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String paymentRefNum;
  final String partyIdTo;
  final DateTime effectiveDate;
  Payment({entityId,
    this.roleTypeIdTo, this.finAccountTransId, this.partyIdFrom, this.amount, this.paymentPreferenceId, this.comments, this.actualCurrencyAmount, this.overrideGlAccountId, this.paymentMethodTypeId, this.actualCurrencyUomId, this.paymentTypeId, this.currencyUomId, this.statusId, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.paymentRefNum, this.partyIdTo, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Payment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'partyIdFrom':partyIdFrom, 'amount':amount, 'paymentPreferenceId':paymentPreferenceId, 'comments':comments, 'actualCurrencyAmount':actualCurrencyAmount, 'overrideGlAccountId':overrideGlAccountId, 'paymentMethodTypeId':paymentMethodTypeId, 'actualCurrencyUomId':actualCurrencyUomId, 'paymentTypeId':paymentTypeId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentRefNum':paymentRefNum, 'partyIdTo':partyIdTo, 'effectiveDate':effectiveDate};
  }

}

/// Entity PaymentAndApplication, Payment and Application View
class PaymentAndApplication extends EntityBase {

  final String partyIdFrom;
  final String paymentPreferenceId;
  final String toPaymentId;
  final String invoiceItemSeqId;
  final String billingAccountId;
  final String paymentTypeId;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String paymentRefNum;
  final String taxAuthGeoId;
  final String roleTypeIdTo;
  final String finAccountTransId;
  final double amount;
  final String comments;
  final double amountApplied;
  final double actualCurrencyAmount;
  final String overrideGlAccountId;
  final String paymentMethodTypeId;
  final String paymentApplicationId; // pk
  final String actualCurrencyUomId;
  final String currencyUomId;
  final String statusId;
  final String partyIdTo;
  final String invoiceId;
  final DateTime effectiveDate;
  PaymentAndApplication({entityId,
    this.partyIdFrom, this.paymentPreferenceId, this.toPaymentId, this.invoiceItemSeqId, this.billingAccountId, this.paymentTypeId, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.paymentRefNum, this.taxAuthGeoId, this.roleTypeIdTo, this.finAccountTransId, this.amount, this.comments, this.amountApplied, this.actualCurrencyAmount, this.overrideGlAccountId, this.paymentMethodTypeId, @required this.paymentApplicationId, this.actualCurrencyUomId, this.currencyUomId, this.statusId, this.partyIdTo, this.invoiceId, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentAndApplication { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'paymentPreferenceId':paymentPreferenceId, 'toPaymentId':toPaymentId, 'invoiceItemSeqId':invoiceItemSeqId, 'billingAccountId':billingAccountId, 'paymentTypeId':paymentTypeId, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentRefNum':paymentRefNum, 'taxAuthGeoId':taxAuthGeoId, 'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'amount':amount, 'comments':comments, 'amountApplied':amountApplied, 'actualCurrencyAmount':actualCurrencyAmount, 'overrideGlAccountId':overrideGlAccountId, 'paymentMethodTypeId':paymentMethodTypeId, 'paymentApplicationId':paymentApplicationId, 'actualCurrencyUomId':actualCurrencyUomId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'partyIdTo':partyIdTo, 'invoiceId':invoiceId, 'effectiveDate':effectiveDate};
  }

}

/// Entity PaymentAndType, Payment and Payment type View
class PaymentAndType extends EntityBase {

  /// this entity has only one pk
  final String roleTypeIdTo;
  final String finAccountTransId;
  final String partyIdFrom;
  final double amount;
  final String paymentPreferenceId;
  final String comments;
  final String parentTypeId;
  final double actualCurrencyAmount;
  final String overrideGlAccountId;
  final String description;
  final String paymentMethodTypeId;
  final String actualCurrencyUomId;
  final String paymentTypeId;
  final String currencyUomId;
  final String statusId;
  final String hasTable;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String paymentRefNum;
  final String partyIdTo;
  final DateTime effectiveDate;
  PaymentAndType({entityId,
    this.roleTypeIdTo, this.finAccountTransId, this.partyIdFrom, this.amount, this.paymentPreferenceId, this.comments, this.parentTypeId, this.actualCurrencyAmount, this.overrideGlAccountId, this.description, this.paymentMethodTypeId, this.actualCurrencyUomId, this.paymentTypeId, this.currencyUomId, this.statusId, this.hasTable, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.paymentRefNum, this.partyIdTo, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'partyIdFrom':partyIdFrom, 'amount':amount, 'paymentPreferenceId':paymentPreferenceId, 'comments':comments, 'parentTypeId':parentTypeId, 'actualCurrencyAmount':actualCurrencyAmount, 'overrideGlAccountId':overrideGlAccountId, 'description':description, 'paymentMethodTypeId':paymentMethodTypeId, 'actualCurrencyUomId':actualCurrencyUomId, 'paymentTypeId':paymentTypeId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'hasTable':hasTable, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentRefNum':paymentRefNum, 'partyIdTo':partyIdTo, 'effectiveDate':effectiveDate};
  }

}

/// Entity PaymentAndTypeAndCreditCard, Payment, Payment type and CreadiCard View
class PaymentAndTypeAndCreditCard extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String paymentPreferenceId;
  final String issueNumber;
  final String description;
  final String contactMechId;
  final String paymentTypeId;
  final String titleOnCard;
  final String hasTable;
  final String lastNameOnCard;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String paymentRefNum;
  final String expireDate;
  final int consecutiveFailedAuths;
  final DateTime lastFailedNsfDate;
  final String suffixOnCard;
  final String roleTypeIdTo;
  final String finAccountTransId;
  final double amount;
  final String comments;
  final String parentTypeId;
  final String firstNameOnCard;
  final double actualCurrencyAmount;
  final String cardType;
  final String overrideGlAccountId;
  final String paymentMethodTypeId;
  final DateTime lastFailedAuthDate;
  final int consecutiveFailedNsf;
  final String companyNameOnCard;
  final String actualCurrencyUomId;
  final String currencyUomId;
  final String statusId;
  final String middleNameOnCard;
  final String validFromDate;
  final String partyIdTo;
  final DateTime effectiveDate;
  final String cardNumber;
  PaymentAndTypeAndCreditCard({entityId,
    this.partyIdFrom, this.paymentPreferenceId, this.issueNumber, this.description, this.contactMechId, this.paymentTypeId, this.titleOnCard, this.hasTable, this.lastNameOnCard, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.paymentRefNum, this.expireDate, this.consecutiveFailedAuths, this.lastFailedNsfDate, this.suffixOnCard, this.roleTypeIdTo, this.finAccountTransId, this.amount, this.comments, this.parentTypeId, this.firstNameOnCard, this.actualCurrencyAmount, this.cardType, this.overrideGlAccountId, this.paymentMethodTypeId, this.lastFailedAuthDate, this.consecutiveFailedNsf, this.companyNameOnCard, this.actualCurrencyUomId, this.currencyUomId, this.statusId, this.middleNameOnCard, this.validFromDate, this.partyIdTo, this.effectiveDate, this.cardNumber,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentAndTypeAndCreditCard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'paymentPreferenceId':paymentPreferenceId, 'issueNumber':issueNumber, 'description':description, 'contactMechId':contactMechId, 'paymentTypeId':paymentTypeId, 'titleOnCard':titleOnCard, 'hasTable':hasTable, 'lastNameOnCard':lastNameOnCard, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentRefNum':paymentRefNum, 'expireDate':expireDate, 'consecutiveFailedAuths':consecutiveFailedAuths, 'lastFailedNsfDate':lastFailedNsfDate, 'suffixOnCard':suffixOnCard, 'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'amount':amount, 'comments':comments, 'parentTypeId':parentTypeId, 'firstNameOnCard':firstNameOnCard, 'actualCurrencyAmount':actualCurrencyAmount, 'cardType':cardType, 'overrideGlAccountId':overrideGlAccountId, 'paymentMethodTypeId':paymentMethodTypeId, 'lastFailedAuthDate':lastFailedAuthDate, 'consecutiveFailedNsf':consecutiveFailedNsf, 'companyNameOnCard':companyNameOnCard, 'actualCurrencyUomId':actualCurrencyUomId, 'currencyUomId':currencyUomId, 'statusId':statusId, 'middleNameOnCard':middleNameOnCard, 'validFromDate':validFromDate, 'partyIdTo':partyIdTo, 'effectiveDate':effectiveDate, 'cardNumber':cardNumber};
  }

}

/// Entity PaymentAndTypePartyNameView, Payment PaymentType PaymentMethodType StatusItem and Party Name View
class PaymentAndTypePartyNameView extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final String paymentPreferenceId;
  final String partyToGroupName;
  final String paymentTypeId;
  final String partyFromGroupName;
  final String paymentId; // pk
  final String paymentMethodId;
  final String paymentGatewayResponseId;
  final String partyToFirstName;
  final String paymentRefNum;
  final String parentPaymentTypeId;
  final String roleTypeIdTo;
  final String finAccountTransId;
  final double amount;
  final String statusDesc;
  final String comments;
  final double actualCurrencyAmount;
  final String partyFromLastName;
  final String overrideGlAccountId;
  final String partyFromFirstName;
  final String paymentMethodTypeId;
  final String actualCurrencyUomId;
  final String currencyUomId;
  final String paymentMethodTypeDesc;
  final String statusId;
  final String paymentTypeDesc;
  final String partyToLastName;
  final String partyIdTo;
  final DateTime effectiveDate;
  PaymentAndTypePartyNameView({entityId,
    this.partyIdFrom, this.paymentPreferenceId, this.partyToGroupName, this.paymentTypeId, this.partyFromGroupName, @required this.paymentId, this.paymentMethodId, this.paymentGatewayResponseId, this.partyToFirstName, this.paymentRefNum, this.parentPaymentTypeId, this.roleTypeIdTo, this.finAccountTransId, this.amount, this.statusDesc, this.comments, this.actualCurrencyAmount, this.partyFromLastName, this.overrideGlAccountId, this.partyFromFirstName, this.paymentMethodTypeId, this.actualCurrencyUomId, this.currencyUomId, this.paymentMethodTypeDesc, this.statusId, this.paymentTypeDesc, this.partyToLastName, this.partyIdTo, this.effectiveDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentAndTypePartyNameView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'paymentPreferenceId':paymentPreferenceId, 'partyToGroupName':partyToGroupName, 'paymentTypeId':paymentTypeId, 'partyFromGroupName':partyFromGroupName, 'paymentId':paymentId, 'paymentMethodId':paymentMethodId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'partyToFirstName':partyToFirstName, 'paymentRefNum':paymentRefNum, 'parentPaymentTypeId':parentPaymentTypeId, 'roleTypeIdTo':roleTypeIdTo, 'finAccountTransId':finAccountTransId, 'amount':amount, 'statusDesc':statusDesc, 'comments':comments, 'actualCurrencyAmount':actualCurrencyAmount, 'partyFromLastName':partyFromLastName, 'overrideGlAccountId':overrideGlAccountId, 'partyFromFirstName':partyFromFirstName, 'paymentMethodTypeId':paymentMethodTypeId, 'actualCurrencyUomId':actualCurrencyUomId, 'currencyUomId':currencyUomId, 'paymentMethodTypeDesc':paymentMethodTypeDesc, 'statusId':statusId, 'paymentTypeDesc':paymentTypeDesc, 'partyToLastName':partyToLastName, 'partyIdTo':partyIdTo, 'effectiveDate':effectiveDate};
  }

}

/// Entity PaymentApplication, Payment Application
class PaymentApplication extends EntityBase {

  /// this entity has only one pk
  final String toPaymentId;
  final double amountApplied;
  final String overrideGlAccountId;
  final String invoiceItemSeqId;
  final String billingAccountId;
  final String paymentApplicationId; // pk
  final String paymentId;
  final String taxAuthGeoId;
  final String invoiceId;
  PaymentApplication({entityId,
    this.toPaymentId, this.amountApplied, this.overrideGlAccountId, this.invoiceItemSeqId, this.billingAccountId, @required this.paymentApplicationId, this.paymentId, this.taxAuthGeoId, this.invoiceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentApplication { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'toPaymentId':toPaymentId, 'amountApplied':amountApplied, 'overrideGlAccountId':overrideGlAccountId, 'invoiceItemSeqId':invoiceItemSeqId, 'billingAccountId':billingAccountId, 'paymentApplicationId':paymentApplicationId, 'paymentId':paymentId, 'taxAuthGeoId':taxAuthGeoId, 'invoiceId':invoiceId};
  }

}

/// Entity PaymentAttribute, Payment Attribute
class PaymentAttribute extends EntityBase {

  final String paymentId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  PaymentAttribute({entityId,
    @required this.paymentId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentId':paymentId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity PaymentBudgetAllocation, Payment Budget Allocation
class PaymentBudgetAllocation extends EntityBase {

  final double amount;
  final String paymentId; // pk
  final String budgetItemSeqId; // pk
  final String budgetId; // pk
  PaymentBudgetAllocation({entityId,
    this.amount, @required this.paymentId, @required this.budgetItemSeqId, @required this.budgetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentBudgetAllocation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'paymentId':paymentId, 'budgetItemSeqId':budgetItemSeqId, 'budgetId':budgetId};
  }

}

/// Entity PaymentContent, Payment Content
class PaymentContent extends EntityBase {

  final DateTime fromDate; // pk
  final String paymentContentTypeId; // pk
  final String paymentId; // pk
  final String contentId; // pk
  final DateTime thruDate;
  PaymentContent({entityId,
    @required this.fromDate, @required this.paymentContentTypeId, @required this.paymentId, @required this.contentId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'paymentContentTypeId':paymentContentTypeId, 'paymentId':paymentId, 'contentId':contentId, 'thruDate':thruDate};
  }

}

/// Entity PaymentContentAndInfo, PaymentContent Content and DataResource View
class PaymentContentAndInfo extends EntityBase {

  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String paymentId; // pk
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String paymentContentTypeId; // pk
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  PaymentContentAndInfo({entityId,
    @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, @required this.paymentId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, this.contentName, @required this.fromDate, this.drCreatedDate, this.createdDate, this.statusId, @required this.paymentContentTypeId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'paymentId':paymentId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'paymentContentTypeId':paymentContentTypeId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity PaymentContentType, Payment Content Type
class PaymentContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String paymentContentTypeId; // pk
  final String hasTable;
  final String description;
  PaymentContentType({entityId,
    this.parentTypeId, @required this.paymentContentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'paymentContentTypeId':paymentContentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PaymentGatewayAuthorizeNet, Authorize Dot Net Payment Gateway Configuration
class PaymentGatewayAuthorizeNet extends EntityBase {

  /// this entity has only one pk
  final String cpVersion;
  final String paymentGatewayConfigId; // pk
  final String method;
  final String transDescription;
  final String cpMarketType;
  final String certificateAlias;
  final String delimiterChar;
  final String emailCustomer;
  final String transactionUrl;
  final String userId;
  final String delimitedData;
  final String tranKey;
  final String apiVersion;
  final String emailMerchant;
  final String testMode;
  final String relayResponse;
  final String pwd;
  final int duplicateWindow;
  final String cpDeviceType;
  PaymentGatewayAuthorizeNet({entityId,
    this.cpVersion, @required this.paymentGatewayConfigId, this.method, this.transDescription, this.cpMarketType, this.certificateAlias, this.delimiterChar, this.emailCustomer, this.transactionUrl, this.userId, this.delimitedData, this.tranKey, this.apiVersion, this.emailMerchant, this.testMode, this.relayResponse, this.pwd, this.duplicateWindow, this.cpDeviceType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayAuthorizeNet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'cpVersion':cpVersion, 'paymentGatewayConfigId':paymentGatewayConfigId, 'method':method, 'transDescription':transDescription, 'cpMarketType':cpMarketType, 'certificateAlias':certificateAlias, 'delimiterChar':delimiterChar, 'emailCustomer':emailCustomer, 'transactionUrl':transactionUrl, 'userId':userId, 'delimitedData':delimitedData, 'tranKey':tranKey, 'apiVersion':apiVersion, 'emailMerchant':emailMerchant, 'testMode':testMode, 'relayResponse':relayResponse, 'pwd':pwd, 'duplicateWindow':duplicateWindow, 'cpDeviceType':cpDeviceType};
  }

}

/// Entity PaymentGatewayClearCommerce, Clear Commerce Payment Gateway Config
class PaymentGatewayClearCommerce extends EntityBase {

  /// this entity has only one pk
  final String sourceId;
  final String clientId;
  final String paymentGatewayConfigId; // pk
  final String groupId;
  final String enableCVM;
  final String effectiveAlias;
  final String userAlias;
  final String serverURL;
  final String pwd;
  final String processMode;
  final String username;
  PaymentGatewayClearCommerce({entityId,
    this.sourceId, this.clientId, @required this.paymentGatewayConfigId, this.groupId, this.enableCVM, this.effectiveAlias, this.userAlias, this.serverURL, this.pwd, this.processMode, this.username,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayClearCommerce { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sourceId':sourceId, 'clientId':clientId, 'paymentGatewayConfigId':paymentGatewayConfigId, 'groupId':groupId, 'enableCVM':enableCVM, 'effectiveAlias':effectiveAlias, 'userAlias':userAlias, 'serverURL':serverURL, 'pwd':pwd, 'processMode':processMode, 'username':username};
  }

}

/// Entity PaymentGatewayConfig, Payment Gateway Config
class PaymentGatewayConfig extends EntityBase {

  /// this entity has only one pk
  final String paymentGatewayConfigId; // pk
  final String paymentGatewayConfigTypeId;
  final String description;
  PaymentGatewayConfig({entityId,
    @required this.paymentGatewayConfigId, this.paymentGatewayConfigTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayConfig { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGatewayConfigId':paymentGatewayConfigId, 'paymentGatewayConfigTypeId':paymentGatewayConfigTypeId, 'description':description};
  }

}

/// Entity PaymentGatewayConfigType, Payment Gateway Config Type
class PaymentGatewayConfigType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String paymentGatewayConfigTypeId; // pk
  final String description;
  PaymentGatewayConfigType({entityId,
    this.parentTypeId, this.hasTable, @required this.paymentGatewayConfigTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayConfigType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'paymentGatewayConfigTypeId':paymentGatewayConfigTypeId, 'description':description};
  }

}

/// Entity PaymentGatewayCyberSource, CyberSource Payment Gateway Configuration
class PaymentGatewayCyberSource extends EntityBase {

  /// this entity has only one pk
  final String fraudScore;
  final String paymentGatewayConfigId; // pk
  final String production;
  final String keysDir;
  final String merchantContact;
  final String autoBill;
  final String enableDav;
  final String apiVersion;
  final String keysFile;
  final String merchantDescr;
  final String logEnabled;
  final String merchantId;
  final String logFile;
  final int logSize;
  final String ignoreAvs;
  final String disableBillAvs;
  final String logDir;
  final String avsDeclineCodes;
  PaymentGatewayCyberSource({entityId,
    this.fraudScore, @required this.paymentGatewayConfigId, this.production, this.keysDir, this.merchantContact, this.autoBill, this.enableDav, this.apiVersion, this.keysFile, this.merchantDescr, this.logEnabled, this.merchantId, this.logFile, this.logSize, this.ignoreAvs, this.disableBillAvs, this.logDir, this.avsDeclineCodes,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayCyberSource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fraudScore':fraudScore, 'paymentGatewayConfigId':paymentGatewayConfigId, 'production':production, 'keysDir':keysDir, 'merchantContact':merchantContact, 'autoBill':autoBill, 'enableDav':enableDav, 'apiVersion':apiVersion, 'keysFile':keysFile, 'merchantDescr':merchantDescr, 'logEnabled':logEnabled, 'merchantId':merchantId, 'logFile':logFile, 'logSize':logSize, 'ignoreAvs':ignoreAvs, 'disableBillAvs':disableBillAvs, 'logDir':logDir, 'avsDeclineCodes':avsDeclineCodes};
  }

}

/// Entity PaymentGatewayEway, eWay Payment Gateway Configuration
class PaymentGatewayEway extends EntityBase {

  /// this entity has only one pk
  final String enableCvn;
  final String paymentGatewayConfigId; // pk
  final String testMode;
  final String enableBeagle;
  final String customerId;
  final String refundPwd;
  PaymentGatewayEway({entityId,
    this.enableCvn, @required this.paymentGatewayConfigId, this.testMode, this.enableBeagle, this.customerId, this.refundPwd,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayEway { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'enableCvn':enableCvn, 'paymentGatewayConfigId':paymentGatewayConfigId, 'testMode':testMode, 'enableBeagle':enableBeagle, 'customerId':customerId, 'refundPwd':refundPwd};
  }

}

/// Entity PaymentGatewayOrbital, Orbital Payment Gateway Config
class PaymentGatewayOrbital extends EntityBase {

  /// this entity has only one pk
  final String engineClass;
  final String hostName;
  final String paymentGatewayConfigId; // pk
  final int portFailover;
  final int readTimeoutSeconds;
  final String hostNameFailover;
  final String authorizationURI;
  final String sslSocketFactory;
  final String responseType;
  final String merchantId;
  final int port;
  final int connectionTimeoutSeconds;
  final String sdkVersion;
  final String connectionPassword;
  final String username;
  PaymentGatewayOrbital({entityId,
    this.engineClass, this.hostName, @required this.paymentGatewayConfigId, this.portFailover, this.readTimeoutSeconds, this.hostNameFailover, this.authorizationURI, this.sslSocketFactory, this.responseType, this.merchantId, this.port, this.connectionTimeoutSeconds, this.sdkVersion, this.connectionPassword, this.username,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayOrbital { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'engineClass':engineClass, 'hostName':hostName, 'paymentGatewayConfigId':paymentGatewayConfigId, 'portFailover':portFailover, 'readTimeoutSeconds':readTimeoutSeconds, 'hostNameFailover':hostNameFailover, 'authorizationURI':authorizationURI, 'sslSocketFactory':sslSocketFactory, 'responseType':responseType, 'merchantId':merchantId, 'port':port, 'connectionTimeoutSeconds':connectionTimeoutSeconds, 'sdkVersion':sdkVersion, 'connectionPassword':connectionPassword, 'username':username};
  }

}

/// Entity PaymentGatewayPayPal, PayPal Payment Gateway Config
class PaymentGatewayPayPal extends EntityBase {

  /// this entity has only one pk
  final String businessEmail;
  final String apiUserName;
  final String redirectUrl;
  final String paymentGatewayConfigId; // pk
  final String confirmTemplate;
  final String cancelReturnUrl;
  final String apiPassword;
  final String apiSignature;
  final String imageUrl;
  final String requireConfirmedShipping;
  final String notifyUrl;
  final String apiEnvironment;
  final String confirmUrl;
  final String returnUrl;
  final String shippingCallbackUrl;
  PaymentGatewayPayPal({entityId,
    this.businessEmail, this.apiUserName, this.redirectUrl, @required this.paymentGatewayConfigId, this.confirmTemplate, this.cancelReturnUrl, this.apiPassword, this.apiSignature, this.imageUrl, this.requireConfirmedShipping, this.notifyUrl, this.apiEnvironment, this.confirmUrl, this.returnUrl, this.shippingCallbackUrl,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayPayPal { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'businessEmail':businessEmail, 'apiUserName':apiUserName, 'redirectUrl':redirectUrl, 'paymentGatewayConfigId':paymentGatewayConfigId, 'confirmTemplate':confirmTemplate, 'cancelReturnUrl':cancelReturnUrl, 'apiPassword':apiPassword, 'apiSignature':apiSignature, 'imageUrl':imageUrl, 'requireConfirmedShipping':requireConfirmedShipping, 'notifyUrl':notifyUrl, 'apiEnvironment':apiEnvironment, 'confirmUrl':confirmUrl, 'returnUrl':returnUrl, 'shippingCallbackUrl':shippingCallbackUrl};
  }

}

/// Entity PaymentGatewayPayflowPro, Payflow Pro Payment Gateway Config
class PaymentGatewayPayflowPro extends EntityBase {

  /// this entity has only one pk
  final String redirectUrl;
  final String paymentGatewayConfigId; // pk
  final String cancelReturnUrl;
  final String enableTransmit;
  final int timeout;
  final int proxyPort;
  final String proxyLogon;
  final String certsPath;
  final String vendor;
  final String logFileName;
  final int hostPort;
  final String preAuth;
  final String proxyAddress;
  final String returnUrl;
  final int maxLogFileSize;
  final String proxyPassword;
  final String checkAvs;
  final String stackTraceOn;
  final String userId;
  final String checkCvv2;
  final String partner;
  final String hostAddress;
  final String pwd;
  final int loggingLevel;
  PaymentGatewayPayflowPro({entityId,
    this.redirectUrl, @required this.paymentGatewayConfigId, this.cancelReturnUrl, this.enableTransmit, this.timeout, this.proxyPort, this.proxyLogon, this.certsPath, this.vendor, this.logFileName, this.hostPort, this.preAuth, this.proxyAddress, this.returnUrl, this.maxLogFileSize, this.proxyPassword, this.checkAvs, this.stackTraceOn, this.userId, this.checkCvv2, this.partner, this.hostAddress, this.pwd, this.loggingLevel,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayPayflowPro { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'redirectUrl':redirectUrl, 'paymentGatewayConfigId':paymentGatewayConfigId, 'cancelReturnUrl':cancelReturnUrl, 'enableTransmit':enableTransmit, 'timeout':timeout, 'proxyPort':proxyPort, 'proxyLogon':proxyLogon, 'certsPath':certsPath, 'vendor':vendor, 'logFileName':logFileName, 'hostPort':hostPort, 'preAuth':preAuth, 'proxyAddress':proxyAddress, 'returnUrl':returnUrl, 'maxLogFileSize':maxLogFileSize, 'proxyPassword':proxyPassword, 'checkAvs':checkAvs, 'stackTraceOn':stackTraceOn, 'userId':userId, 'checkCvv2':checkCvv2, 'partner':partner, 'hostAddress':hostAddress, 'pwd':pwd, 'loggingLevel':loggingLevel};
  }

}

/// Entity PaymentGatewayRespMsg, Payment Gateway Response Message
class PaymentGatewayRespMsg extends EntityBase {

  /// this entity has only one pk
  final String paymentGatewayRespMsgId; // pk
  final String paymentGatewayResponseId;
  final String pgrMessage;
  PaymentGatewayRespMsg({entityId,
    @required this.paymentGatewayRespMsgId, this.paymentGatewayResponseId, this.pgrMessage,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayRespMsg { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGatewayRespMsgId':paymentGatewayRespMsgId, 'paymentGatewayResponseId':paymentGatewayResponseId, 'pgrMessage':pgrMessage};
  }

}

/// Entity PaymentGatewayResponse, Payment Gateway Response
class PaymentGatewayResponse extends EntityBase {

  /// this entity has only one pk
  final String paymentServiceTypeEnumId;
  final String transCodeEnumId;
  final String orderPaymentPreferenceId;
  final String gatewayCode;
  final String resultDeclined;
  final String paymentGatewayResponseId; // pk
  final String paymentMethodId;
  final String subReference;
  final String gatewayFlag;
  final String gatewayCvResult;
  final String gatewayMessage;
  final String gatewayScoreResult;
  final String resultBadExpire;
  final double amount;
  final String paymentMethodTypeId;
  final DateTime transactionDate;
  final String resultNsf;
  final String referenceNum;
  final String currencyUomId;
  final String gatewayAvsResult;
  final String resultBadCardNumber;
  final String altReference;
  PaymentGatewayResponse({entityId,
    this.paymentServiceTypeEnumId, this.transCodeEnumId, this.orderPaymentPreferenceId, this.gatewayCode, this.resultDeclined, @required this.paymentGatewayResponseId, this.paymentMethodId, this.subReference, this.gatewayFlag, this.gatewayCvResult, this.gatewayMessage, this.gatewayScoreResult, this.resultBadExpire, this.amount, this.paymentMethodTypeId, this.transactionDate, this.resultNsf, this.referenceNum, this.currencyUomId, this.gatewayAvsResult, this.resultBadCardNumber, this.altReference,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayResponse { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentServiceTypeEnumId':paymentServiceTypeEnumId, 'transCodeEnumId':transCodeEnumId, 'orderPaymentPreferenceId':orderPaymentPreferenceId, 'gatewayCode':gatewayCode, 'resultDeclined':resultDeclined, 'paymentGatewayResponseId':paymentGatewayResponseId, 'paymentMethodId':paymentMethodId, 'subReference':subReference, 'gatewayFlag':gatewayFlag, 'gatewayCvResult':gatewayCvResult, 'gatewayMessage':gatewayMessage, 'gatewayScoreResult':gatewayScoreResult, 'resultBadExpire':resultBadExpire, 'amount':amount, 'paymentMethodTypeId':paymentMethodTypeId, 'transactionDate':transactionDate, 'resultNsf':resultNsf, 'referenceNum':referenceNum, 'currencyUomId':currencyUomId, 'gatewayAvsResult':gatewayAvsResult, 'resultBadCardNumber':resultBadCardNumber, 'altReference':altReference};
  }

}

/// Entity PaymentGatewaySagePay, SagePay Payment Gateway Configuration
class PaymentGatewaySagePay extends EntityBase {

  /// this entity has only one pk
  final String authenticationTransType;
  final String paymentGatewayConfigId; // pk
  final String voidUrl;
  final String testingHost;
  final String sagePayMode;
  final String releaseTransType;
  final String authoriseTransType;
  final String vendor;
  final String productionHost;
  final String refundUrl;
  final String protocolVersion;
  final String releaseUrl;
  final String authenticationUrl;
  final String authoriseUrl;
  PaymentGatewaySagePay({entityId,
    this.authenticationTransType, @required this.paymentGatewayConfigId, this.voidUrl, this.testingHost, this.sagePayMode, this.releaseTransType, this.authoriseTransType, this.vendor, this.productionHost, this.refundUrl, this.protocolVersion, this.releaseUrl, this.authenticationUrl, this.authoriseUrl,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewaySagePay { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'authenticationTransType':authenticationTransType, 'paymentGatewayConfigId':paymentGatewayConfigId, 'voidUrl':voidUrl, 'testingHost':testingHost, 'sagePayMode':sagePayMode, 'releaseTransType':releaseTransType, 'authoriseTransType':authoriseTransType, 'vendor':vendor, 'productionHost':productionHost, 'refundUrl':refundUrl, 'protocolVersion':protocolVersion, 'releaseUrl':releaseUrl, 'authenticationUrl':authenticationUrl, 'authoriseUrl':authoriseUrl};
  }

}

/// Entity PaymentGatewaySecurePay, SecurePay Payment Gateway Config
class PaymentGatewaySecurePay extends EntityBase {

  /// this entity has only one pk
  final String paymentGatewayConfigId; // pk
  final String merchantId;
  final String serverURL;
  final String pwd;
  final int processTimeout;
  final String enableAmountRound;
  PaymentGatewaySecurePay({entityId,
    @required this.paymentGatewayConfigId, this.merchantId, this.serverURL, this.pwd, this.processTimeout, this.enableAmountRound,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewaySecurePay { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGatewayConfigId':paymentGatewayConfigId, 'merchantId':merchantId, 'serverURL':serverURL, 'pwd':pwd, 'processTimeout':processTimeout, 'enableAmountRound':enableAmountRound};
  }

}

/// Entity PaymentGatewayWorldPay, RBS WorldPay Payment Gateway Config
class PaymentGatewayWorldPay extends EntityBase {

  /// this entity has only one pk
  final String redirectUrl;
  final String paymentGatewayConfigId; // pk
  final String noLanguageMenu;
  final String authMode;
  final String instId;
  final String hideContact;
  final int testMode;
  final String fixContact;
  final String langId;
  final String hideCurrency;
  final String withDelivery;
  PaymentGatewayWorldPay({entityId,
    this.redirectUrl, @required this.paymentGatewayConfigId, this.noLanguageMenu, this.authMode, this.instId, this.hideContact, this.testMode, this.fixContact, this.langId, this.hideCurrency, this.withDelivery,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayWorldPay { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'redirectUrl':redirectUrl, 'paymentGatewayConfigId':paymentGatewayConfigId, 'noLanguageMenu':noLanguageMenu, 'authMode':authMode, 'instId':instId, 'hideContact':hideContact, 'testMode':testMode, 'fixContact':fixContact, 'langId':langId, 'hideCurrency':hideCurrency, 'withDelivery':withDelivery};
  }

}

/// Entity PaymentGatewayiDEAL, iDEAL Payment Gateway Config
class PaymentGatewayiDEAL extends EntityBase {

  /// this entity has only one pk
  final String paymentGatewayConfigId; // pk
  final String merchantKeyStorePassword;
  final String expirationPeriod;
  final String merchantReturnURL;
  final String merchantId;
  final String acquirerKeyStoreFilename;
  final String merchantSubId;
  final String acquirerURL;
  final String acquirerTimeout;
  final String privateCert;
  final String acquirerKeyStorePassword;
  final String merchantKeyStoreFilename;
  PaymentGatewayiDEAL({entityId,
    @required this.paymentGatewayConfigId, this.merchantKeyStorePassword, this.expirationPeriod, this.merchantReturnURL, this.merchantId, this.acquirerKeyStoreFilename, this.merchantSubId, this.acquirerURL, this.acquirerTimeout, this.privateCert, this.acquirerKeyStorePassword, this.merchantKeyStoreFilename,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGatewayiDEAL { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGatewayConfigId':paymentGatewayConfigId, 'merchantKeyStorePassword':merchantKeyStorePassword, 'expirationPeriod':expirationPeriod, 'merchantReturnURL':merchantReturnURL, 'merchantId':merchantId, 'acquirerKeyStoreFilename':acquirerKeyStoreFilename, 'merchantSubId':merchantSubId, 'acquirerURL':acquirerURL, 'acquirerTimeout':acquirerTimeout, 'privateCert':privateCert, 'acquirerKeyStorePassword':acquirerKeyStorePassword, 'merchantKeyStoreFilename':merchantKeyStoreFilename};
  }

}

/// Entity PaymentGlAccountTypeMap, Maps PaymentTypes to GlAccountTypes, allowing user to configure payments and gl accounts
class PaymentGlAccountTypeMap extends EntityBase {

  final String paymentTypeId; // pk
  final String glAccountTypeId;
  final String organizationPartyId; // pk
  PaymentGlAccountTypeMap({entityId,
    @required this.paymentTypeId, this.glAccountTypeId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGlAccountTypeMap { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentTypeId':paymentTypeId, 'glAccountTypeId':glAccountTypeId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity PaymentGroup, Payment Group
class PaymentGroup extends EntityBase {

  /// this entity has only one pk
  final String paymentGroupId; // pk
  final String paymentGroupName;
  final String paymentGroupTypeId;
  PaymentGroup({entityId,
    @required this.paymentGroupId, this.paymentGroupName, this.paymentGroupTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGroupId':paymentGroupId, 'paymentGroupName':paymentGroupName, 'paymentGroupTypeId':paymentGroupTypeId};
  }

}

/// Entity PaymentGroupMember, Payment Group Member
class PaymentGroupMember extends EntityBase {

  final String paymentGroupId; // pk
  final DateTime fromDate; // pk
  final int sequenceNum;
  final String paymentId; // pk
  final DateTime thruDate;
  PaymentGroupMember({entityId,
    @required this.paymentGroupId, @required this.fromDate, this.sequenceNum, @required this.paymentId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGroupMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentGroupId':paymentGroupId, 'fromDate':fromDate, 'sequenceNum':sequenceNum, 'paymentId':paymentId, 'thruDate':thruDate};
  }

}

/// Entity PaymentGroupType, Payment Group Type
class PaymentGroupType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String paymentGroupTypeId; // pk
  PaymentGroupType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.paymentGroupTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentGroupType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'paymentGroupTypeId':paymentGroupTypeId};
  }

}

/// Entity PaymentMethod, Payment Method
class PaymentMethod extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String finAccountId;
  final String paymentMethodId; // pk
  final String glAccountId;
  final String description;
  final String paymentMethodTypeId;
  final String partyId;
  final DateTime thruDate;
  PaymentMethod({entityId,
    this.fromDate, this.finAccountId, @required this.paymentMethodId, this.glAccountId, this.description, this.paymentMethodTypeId, this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'finAccountId':finAccountId, 'paymentMethodId':paymentMethodId, 'glAccountId':glAccountId, 'description':description, 'paymentMethodTypeId':paymentMethodTypeId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PaymentMethodAndCreditCard, PaymentMethod and CreditCard View
class PaymentMethodAndCreditCard extends EntityBase {

  /// this entity has only one pk
  final String firstNameOnCard;
  final String glAccountId;
  final String cardType;
  final String description;
  final String paymentMethodTypeId;
  final String contactMechId;
  final DateTime thruDate;
  final String companyNameOnCard;
  final DateTime fromDate;
  final String titleOnCard;
  final String lastNameOnCard;
  final String paymentMethodId; // pk
  final String expireDate;
  final String partyId;
  final String cardNumber;
  final String suffixOnCard;
  PaymentMethodAndCreditCard({entityId,
    this.firstNameOnCard, this.glAccountId, this.cardType, this.description, this.paymentMethodTypeId, this.contactMechId, this.thruDate, this.companyNameOnCard, this.fromDate, this.titleOnCard, this.lastNameOnCard, @required this.paymentMethodId, this.expireDate, this.partyId, this.cardNumber, this.suffixOnCard,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodAndCreditCard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstNameOnCard':firstNameOnCard, 'glAccountId':glAccountId, 'cardType':cardType, 'description':description, 'paymentMethodTypeId':paymentMethodTypeId, 'contactMechId':contactMechId, 'thruDate':thruDate, 'companyNameOnCard':companyNameOnCard, 'fromDate':fromDate, 'titleOnCard':titleOnCard, 'lastNameOnCard':lastNameOnCard, 'paymentMethodId':paymentMethodId, 'expireDate':expireDate, 'partyId':partyId, 'cardNumber':cardNumber, 'suffixOnCard':suffixOnCard};
  }

}

/// Entity PaymentMethodAndEftAccount, PaymentMethod and EftAccount View
class PaymentMethodAndEftAccount extends EntityBase {

  /// this entity has only one pk
  final String companyNameOnAccount;
  final String nameOnAccount;
  final String accountType;
  final String glAccountId;
  final String bankName;
  final String paymentMethodTypeId;
  final String accountNumber;
  final String contactMechId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String routingNumber;
  final String paymentMethodId; // pk
  final int yearsAtBank;
  final String partyId;
  PaymentMethodAndEftAccount({entityId,
    this.companyNameOnAccount, this.nameOnAccount, this.accountType, this.glAccountId, this.bankName, this.paymentMethodTypeId, this.accountNumber, this.contactMechId, this.thruDate, this.fromDate, this.routingNumber, @required this.paymentMethodId, this.yearsAtBank, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodAndEftAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'companyNameOnAccount':companyNameOnAccount, 'nameOnAccount':nameOnAccount, 'accountType':accountType, 'glAccountId':glAccountId, 'bankName':bankName, 'paymentMethodTypeId':paymentMethodTypeId, 'accountNumber':accountNumber, 'contactMechId':contactMechId, 'thruDate':thruDate, 'fromDate':fromDate, 'routingNumber':routingNumber, 'paymentMethodId':paymentMethodId, 'yearsAtBank':yearsAtBank, 'partyId':partyId};
  }

}

/// Entity PaymentMethodAndGiftCard, PaymentMethod and GiftCard View
class PaymentMethodAndGiftCard extends EntityBase {

  /// this entity has only one pk
  final DateTime fromDate;
  final String paymentMethodId; // pk
  final String glAccountId;
  final String pinNumber;
  final String expireDate;
  final String paymentMethodTypeId;
  final String partyId;
  final String cardNumber;
  final String contactMechId;
  final DateTime thruDate;
  PaymentMethodAndGiftCard({entityId,
    this.fromDate, @required this.paymentMethodId, this.glAccountId, this.pinNumber, this.expireDate, this.paymentMethodTypeId, this.partyId, this.cardNumber, this.contactMechId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodAndGiftCard { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'paymentMethodId':paymentMethodId, 'glAccountId':glAccountId, 'pinNumber':pinNumber, 'expireDate':expireDate, 'paymentMethodTypeId':paymentMethodTypeId, 'partyId':partyId, 'cardNumber':cardNumber, 'contactMechId':contactMechId, 'thruDate':thruDate};
  }

}

/// Entity PaymentMethodType, PaymentMethodType
class PaymentMethodType extends EntityBase {

  /// this entity has only one pk
  final String defaultGlAccountId;
  final String description;
  final String paymentMethodTypeId; // pk
  PaymentMethodType({entityId,
    this.defaultGlAccountId, this.description, @required this.paymentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'defaultGlAccountId':defaultGlAccountId, 'description':description, 'paymentMethodTypeId':paymentMethodTypeId};
  }

}

/// Entity PaymentMethodTypeGlAccount, Payment Method Type GL Account
class PaymentMethodTypeGlAccount extends EntityBase {

  final String glAccountId;
  final String organizationPartyId; // pk
  final String paymentMethodTypeId; // pk
  PaymentMethodTypeGlAccount({entityId,
    this.glAccountId, @required this.organizationPartyId, @required this.paymentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentMethodTypeGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'glAccountId':glAccountId, 'organizationPartyId':organizationPartyId, 'paymentMethodTypeId':paymentMethodTypeId};
  }

}

/// Entity PaymentType, Payment Type
class PaymentType extends EntityBase {

  /// this entity has only one pk
  final String paymentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  PaymentType({entityId,
    @required this.paymentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentTypeId':paymentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PaymentTypeAttr, Payment Type Attribute
class PaymentTypeAttr extends EntityBase {

  final String paymentTypeId; // pk
  final String description;
  final String attrName; // pk
  PaymentTypeAttr({entityId,
    @required this.paymentTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PaymentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'paymentTypeId':paymentTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity ValueLinkKey, Value Link Key Store
class ValueLinkKey extends EntityBase {

  /// this entity has only one pk
  final int workingKeyIndex;
  final DateTime lastModifiedDate;
  final String publicKey;
  final String privateKey;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String merchantId; // pk
  final String workingKey;
  final String lastWorkingKey;
  final String exchangeKey;
  final String lastModifiedByTerminal;
  final String createdByUserLogin;
  final String createdByTerminal;
  ValueLinkKey({entityId,
    this.workingKeyIndex, this.lastModifiedDate, this.publicKey, this.privateKey, this.lastModifiedByUserLogin, this.createdDate, @required this.merchantId, this.workingKey, this.lastWorkingKey, this.exchangeKey, this.lastModifiedByTerminal, this.createdByUserLogin, this.createdByTerminal,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ValueLinkKey { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workingKeyIndex':workingKeyIndex, 'lastModifiedDate':lastModifiedDate, 'publicKey':publicKey, 'privateKey':privateKey, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'merchantId':merchantId, 'workingKey':workingKey, 'lastWorkingKey':lastWorkingKey, 'exchangeKey':exchangeKey, 'lastModifiedByTerminal':lastModifiedByTerminal, 'createdByUserLogin':createdByUserLogin, 'createdByTerminal':createdByTerminal};
  }

}