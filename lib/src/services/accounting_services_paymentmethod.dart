import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesPaymentmethod{
  final SrvClient client;
  AccountingServicesPaymentmethod(this.client);

  /**
   * Test Credit Card Auth Processing: always approve the auth request - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysApproveCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysApproveCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * EFT Account Processing - 
   *
   * Requires eftAccount, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysApproveEFTProcessor({@required Map<String,dynamic> eftAccount, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysApproveEFTProcessor', null, { 'eftAccount': eftAccount, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Gift Card Processing - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysApproveGCProcessor({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysApproveGCProcessor', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always approve with capture auth request - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysApproveWithCaptureCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysApproveWithCaptureCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always decline the auth request for bad card number - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysBadCardNumberCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysBadCardNumberCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always fail/bad expire date processor - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysBadExpireCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysBadExpireCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always decline the auth request - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysDeclineCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysDeclineCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * EFT Account Processing - 
   *
   * Requires eftAccount, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysDeclineEFTProcessor({@required Map<String,dynamic> eftAccount, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysDeclineEFTProcessor', null, { 'eftAccount': eftAccount, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Gift Card Processing - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysDeclineGCProcessor({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysDeclineGCProcessor', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always fail (error) the auth transaction request - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysFailCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysFailCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: always decline for NSF (not sufficient funds) auth request - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> alwaysNsfCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('alwaysNsfCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Process (authorizes/re-authorizes) a single payment for an order with an optional overrideAmount - 
   *
   * Requires orderPaymentPreferenceId
   * Returns finished[Boolean], errors[Boolean], messages[List], processAmount[BigDecimal], authCode[String]
   */
  Future<OfResult> authOrderPaymentPreference({@required String orderPaymentPreferenceId, Decimal overrideAmount}) =>
      client.invoke('authOrderPaymentPreference', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId, 'overrideAmount': overrideAmount });

  /**
   * Process (authorizes/re-authorizes) payments for an order - 
   *
   * Requires orderId
   * Returns processResult[String], authResultMsgs[List], authCode[String]
   */
  Future<OfResult> authOrderPayments({@required String orderId, bool reAuth}) =>
      client.invoke('authOrderPayments', null, { 'orderId': orderId, 'reAuth': reAuth });

  /**
   * Test Credit Card Auth Processing: fail/bad expire date when year is even processor - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> badExpireEvenCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('badExpireEvenCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Makes a Expire Date - 
   *
   * Requires expMonth, expYear
   * Returns expireDate[String]
   */
  Future<OfResult> buildCcExpireDate({@required String expMonth, @required String expYear}) =>
      client.invoke('buildCcExpireDate', null, { 'expMonth': expMonth, 'expYear': expYear });

  /**
   * Records a settlement or payment of an invoice by a billing account for the given captureAmount - 
   *
   * Requires invoiceId, billingAccountId, captureAmount
   * Returns paymentId[String], paymentGatewayResponseId[String]
   */
  Future<OfResult> captureBillingAccountPayment({@required String invoiceId, @required String billingAccountId, @required Decimal captureAmount, String orderId}) =>
      client.invoke('captureBillingAccountPayment', null, { 'invoiceId': invoiceId, 'billingAccountId': billingAccountId, 'captureAmount': captureAmount, 'orderId': orderId });

  /**
   * Applies (part of) the unapplied payment applications associated to the billing account to the given invoice. - 
   *
   * Requires billingAccountId, invoiceId, captureAmount
   * Returns captureAmount[BigDecimal]
   */
  Future<OfResult> captureBillingAccountPayments({@required String billingAccountId, @required String invoiceId, @required Decimal captureAmount, String orderId}) =>
      client.invoke('captureBillingAccountPayments', null, { 'billingAccountId': billingAccountId, 'invoiceId': invoiceId, 'captureAmount': captureAmount, 'orderId': orderId });

  /**
   * Captures (settles) pre-authorized order payments, re-authorizing any remaining balance.  If the order involves billing accounts,
            capture to it in full before proceeding to other payment preferences. - 
   *
   * Requires orderId, captureAmount
   * Returns processResult[String]
   */
  Future<OfResult> captureOrderPayments({@required String orderId, String invoiceId, String billingAccountId, @required Decimal captureAmount}) =>
      client.invoke('captureOrderPayments', null, { 'orderId': orderId, 'invoiceId': invoiceId, 'billingAccountId': billingAccountId, 'captureAmount': captureAmount });

  /**
   * Captures (settles) pre-authorized order payments by invoice - 
   *
   * Requires invoiceId
   * Returns processResult[String]
   */
  Future<OfResult> capturePaymentsByInvoice({@required String invoiceId}) =>
      client.invoke('capturePaymentsByInvoice', null, { 'invoiceId': invoiceId });

  /**
   * Credit Card Authorization Interface - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> ccAuthInterface({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ccAuthInterface', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Credit Card Capture Interface - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ccCaptureInterface({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('ccCaptureInterface', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Credit Card 'Credit' Inteface - 
   *
   * Requires creditCard, referenceCode, creditAmount, billToParty
   * Returns creditAmount[BigDecimal], creditResult[Boolean], creditAltRefNum[String], creditRefNum[String], creditCode[String], creditFlag[String], creditMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ccCreditInterface({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String referenceCode, @required Decimal creditAmount, List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ccCreditInterface', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'referenceCode': referenceCode, 'creditAmount': creditAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Clears the credit card number out of the value object and expires the payment method - 
   *
   * Requires paymentMethodId
   * Returns 
   */
  Future<OfResult> clearCreditCardDataAndExpire({@required String paymentMethodId}) =>
      client.invoke('clearCreditCardDataAndExpire', null, { 'paymentMethodId': paymentMethodId });

  /**
   * Create Check - 
   *
   * Requires bankName, paymentMethodTypeId, nameOnAccount
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createCheckAccount({String partyId, @required String bankName, @required String paymentMethodTypeId, String description, String routingNumber, String accountType, String accountNumber, @required String nameOnAccount, String companyNameOnAccount, String contactMechId, String paymentMethodId}) =>
      client.invoke('createCheckAccount', null, { 'partyId': partyId, 'bankName': bankName, 'paymentMethodTypeId': paymentMethodTypeId, 'description': description, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId });

  /**
   * Create CreditCard - CreditCard
   *
   * Requires cardType, cardNumber, expireDate, firstNameOnCard, lastNameOnCard, firstNameOnCard, lastNameOnCard, cardType, cardNumber, expireDate
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createCreditCard(CreditCard ent, {String partyId, String description, DateTime fromDate, DateTime thruDate, String expMonth, String expYear, String productStoreId}) =>
      client.invoke('createCreditCard', ent, { 'partyId': partyId, 'description': description, 'fromDate': fromDate, 'thruDate': thruDate, 'expMonth': expMonth, 'expYear': expYear, 'productStoreId': productStoreId });

  /**
   * Creates a CreditCard and PostalAddress - 
   *
   * Requires address1, city, postalCode, cardType, cardNumber, expireDate, firstNameOnCard, lastNameOnCard
   * Returns contactMechId[String], paymentMethodId[String]
   */
  Future<OfResult> createCreditCardAndAddress({String contactMechId, String paymentMethodId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, @required String cardType, @required String cardNumber, String validFromDate, @required String expireDate, String issueNumber, String companyNameOnCard, String titleOnCard, @required String firstNameOnCard, String middleNameOnCard, @required String lastNameOnCard, String suffixOnCard, int consecutiveFailedAuths, DateTime lastFailedAuthDate, int consecutiveFailedNsf, DateTime lastFailedNsfDate, String partyId, String description, DateTime fromDate, DateTime thruDate, String expMonth, String expYear, String productStoreId, String contactMechTypeId, String infoString, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String contactMechPurposeTypeId}) =>
      client.invoke('createCreditCardAndAddress', null, { 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'cardType': cardType, 'cardNumber': cardNumber, 'validFromDate': validFromDate, 'expireDate': expireDate, 'issueNumber': issueNumber, 'companyNameOnCard': companyNameOnCard, 'titleOnCard': titleOnCard, 'firstNameOnCard': firstNameOnCard, 'middleNameOnCard': middleNameOnCard, 'lastNameOnCard': lastNameOnCard, 'suffixOnCard': suffixOnCard, 'consecutiveFailedAuths': consecutiveFailedAuths, 'lastFailedAuthDate': lastFailedAuthDate, 'consecutiveFailedNsf': consecutiveFailedNsf, 'lastFailedNsfDate': lastFailedNsfDate, 'partyId': partyId, 'description': description, 'fromDate': fromDate, 'thruDate': thruDate, 'expMonth': expMonth, 'expYear': expYear, 'productStoreId': productStoreId, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechPurposeTypeId': contactMechPurposeTypeId });

  /**
   * create a Credit Card Gl Account - CreditCardTypeGlAccount
   *
   * Requires cardType, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> createCreditCardTypeGlAccount(CreditCardTypeGlAccount ent, ) =>
      client.invoke('createCreditCardTypeGlAccount', ent, {  });

  /**
   * Create EftAccount - 
   *
   * Requires bankName, routingNumber, accountType, accountNumber, nameOnAccount
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createEftAccount({String partyId, DateTime fromDate, DateTime thruDate, String description, @required String bankName, @required String routingNumber, @required String accountType, @required String accountNumber, @required String nameOnAccount, String companyNameOnAccount, String contactMechId, String paymentMethodId}) =>
      client.invoke('createEftAccount', null, { 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'bankName': bankName, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount, 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId });

  /**
   * Creates an EftAccount and PostalAddress - 
   *
   * Requires address1, city, postalCode, bankName, routingNumber, accountType, accountNumber, nameOnAccount
   * Returns contactMechId[String], paymentMethodId[String]
   */
  Future<OfResult> createEftAccountAndAddress({String contactMechId, String paymentMethodId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String partyId, DateTime fromDate, DateTime thruDate, String description, @required String bankName, @required String routingNumber, @required String accountType, @required String accountNumber, @required String nameOnAccount, String companyNameOnAccount}) =>
      client.invoke('createEftAccountAndAddress', null, { 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'bankName': bankName, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount });

  /**
   * Create GiftCard - 
   *
   * Requires cardNumber
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createGiftCard({String partyId, DateTime fromDate, DateTime thruDate, String description, @required String cardNumber, String pinNumber, String expireDate, String expMonth, String expYear, String paymentMethodId}) =>
      client.invoke('createGiftCard', null, { 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'expireDate': expireDate, 'expMonth': expMonth, 'expYear': expYear, 'paymentMethodId': paymentMethodId });

  /**
   * Create a PayPal Payment Method - 
   *
   * Requires 
   * Returns paymentMethodId[String]
   */
  Future<OfResult> createPayPalPaymentMethod({String paymentMethodId, String payerId, String expressCheckoutToken, String payerStatus, String avsAddr, String avsZip, String correlationId, String contactMechId, String transactionId, String partyId, String description, DateTime fromDate, DateTime thruDate}) =>
      client.invoke('createPayPalPaymentMethod', null, { 'paymentMethodId': paymentMethodId, 'payerId': payerId, 'expressCheckoutToken': expressCheckoutToken, 'payerStatus': payerStatus, 'avsAddr': avsAddr, 'avsZip': avsZip, 'correlationId': correlationId, 'contactMechId': contactMechId, 'transactionId': transactionId, 'partyId': partyId, 'description': description, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Create a Payment Group - PaymentGroup
   *
   * Requires paymentGroupTypeId, paymentGroupName, paymentGroupTypeId, paymentGroupName
   * Returns paymentGroupId[String]
   */
  Future<OfResult> createPaymentGroup(PaymentGroup ent, ) =>
      client.invoke('createPaymentGroup', ent, {  });

  /**
   * Check For Outgoing/Incoming Payment And Create Payment Group Member - PaymentGroupMember
   *
   * Requires paymentGroupId, paymentId
   * Returns 
   */
  Future<OfResult> createPaymentGroupMember(PaymentGroupMember ent, ) =>
      client.invoke('createPaymentGroupMember', ent, {  });

  /**
   * Create a PaymentMethodType record - PaymentMethodType
   *
   * Requires 
   * Returns paymentMethodTypeId[String]
   */
  Future<OfResult> createPaymentMethodType(PaymentMethodType ent, ) =>
      client.invoke('createPaymentMethodType', ent, {  });

  /**
   * Credit payment authorization for a single OrderPaymentPreference - 
   *
   * Requires orderPaymentPreferenceId
   * Returns 
   */
  Future<OfResult> creditOrderPaymentPreference({@required String orderPaymentPreferenceId}) =>
      client.invoke('creditOrderPaymentPreference', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId });

  /**
   * delete a Credit Card Gl Account - CreditCardTypeGlAccount
   *
   * Requires cardType, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteCreditCardTypeGlAccount(CreditCardTypeGlAccount ent, ) =>
      client.invoke('deleteCreditCardTypeGlAccount', ent, {  });

  /**
   * Delete a Payment Group - PaymentGroup
   *
   * Requires paymentGroupId
   * Returns 
   */
  Future<OfResult> deletePaymentGroup(PaymentGroup ent, ) =>
      client.invoke('deletePaymentGroup', ent, {  });

  /**
   * Delete a Payment Group Member - PaymentGroupMember
   *
   * Requires paymentGroupId, paymentId, fromDate
   * Returns 
   */
  Future<OfResult> deletePaymentGroupMember(PaymentGroupMember ent, ) =>
      client.invoke('deletePaymentGroupMember', ent, {  });

  /**
   * Delete PaymentMethod - 
   *
   * Requires paymentMethodId
   * Returns 
   */
  Future<OfResult> deletePaymentMethod({String partyId, @required String paymentMethodId}) =>
      client.invoke('deletePaymentMethod', null, { 'partyId': partyId, 'paymentMethodId': paymentMethodId });

  /**
   * Delete a PaymentMethodType record - PaymentMethodType
   *
   * Requires paymentMethodTypeId
   * Returns 
   */
  Future<OfResult> deletePaymentMethodType(PaymentMethodType ent, ) =>
      client.invoke('deletePaymentMethodType', ent, {  });

  /**
   * EFT Account Processing Interface - 
   *
   * Requires eftAccount, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> eftProcessInterface({@required Map<String,dynamic> eftAccount, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('eftProcessInterface', null, { 'eftAccount': eftAccount, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * expire a Payment Group Member - PaymentGroupMember
   *
   * Requires paymentGroupId, paymentId, fromDate
   * Returns 
   */
  Future<OfResult> expirePaymentGroupMember(PaymentGroupMember ent, ) =>
      client.invoke('expirePaymentGroupMember', ent, {  });

  /**
   * Gift Card Processing Interface - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> giftCardProcessInterface({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('giftCardProcessInterface', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Direct link to payment processors to force manual CC authorizations; not logged in system - 
   *
   * Requires paymentMethodId, productStoreId, amount
   * Returns 
   */
  Future<OfResult> manualForcedCcAuthTransaction({@required String paymentMethodId, @required String productStoreId, String securityCode, @required Decimal amount}) =>
      client.invoke('manualForcedCcAuthTransaction', null, { 'paymentMethodId': paymentMethodId, 'productStoreId': productStoreId, 'securityCode': securityCode, 'amount': amount });

  /**
   * Direct link to payment processors to force manual transactions; not logged in system - 
   *
   * Requires paymentMethodTypeId, productStoreId, transactionType, firstNameOnCard, lastNameOnCard, cardType, cardNumber, expMonth, expYear, infoString, address1, city, postalCode, countryGeoId, amount, orderPaymentPreferenceId
   * Returns referenceNum[String], tranRespMsgs[List]
   */
  Future<OfResult> manualForcedCcTransaction({@required String paymentMethodTypeId, @required String productStoreId, @required String transactionType, String companyNameOnCard, String titleOnCard, @required String firstNameOnCard, String middleNameOnCard, @required String lastNameOnCard, String suffixOnCard, @required String cardType, @required String cardNumber, String cardSecurityCode, @required String expMonth, @required String expYear, @required String infoString, @required String address1, String address2, @required String city, String stateProvinceGeoId, @required String postalCode, @required String countryGeoId, @required Decimal amount, String referenceCode, @required String orderPaymentPreferenceId}) =>
      client.invoke('manualForcedCcTransaction', null, { 'paymentMethodTypeId': paymentMethodTypeId, 'productStoreId': productStoreId, 'transactionType': transactionType, 'companyNameOnCard': companyNameOnCard, 'titleOnCard': titleOnCard, 'firstNameOnCard': firstNameOnCard, 'middleNameOnCard': middleNameOnCard, 'lastNameOnCard': lastNameOnCard, 'suffixOnCard': suffixOnCard, 'cardType': cardType, 'cardNumber': cardNumber, 'cardSecurityCode': cardSecurityCode, 'expMonth': expMonth, 'expYear': expYear, 'infoString': infoString, 'address1': address1, 'address2': address2, 'city': city, 'stateProvinceGeoId': stateProvinceGeoId, 'postalCode': postalCode, 'countryGeoId': countryGeoId, 'amount': amount, 'referenceCode': referenceCode, 'orderPaymentPreferenceId': orderPaymentPreferenceId });

  /**
   * PayPal Capture Interface - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> payPalCaptureInterface({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('payPalCaptureInterface', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Interface for services performing the PayPal doExpressCheckout operation - 
   *
   * Requires orderPaymentPreference
   * Returns 
   */
  Future<OfResult> payPalDoExpressCheckoutInterface({@required Map<String,dynamic> orderPaymentPreference}) =>
      client.invoke('payPalDoExpressCheckoutInterface', null, { 'orderPaymentPreference': orderPaymentPreference });

  /**
   * PayPal authorize Interface - 
   *
   * Requires payPalPaymentMethod, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> payPalProcessInterface({@required Map<String,dynamic> payPalPaymentMethod, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('payPalProcessInterface', null, { 'payPalPaymentMethod': payPalPaymentMethod, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Generic Payment Credit Interface - 
   *
   * Requires referenceCode, creditAmount, billToParty
   * Returns creditAmount[BigDecimal], creditResult[Boolean], creditAltRefNum[String], creditRefNum[String], creditCode[String], creditFlag[String], creditMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> paymentCreditInterface({@required String referenceCode, @required Decimal creditAmount, List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('paymentCreditInterface', null, { 'referenceCode': referenceCode, 'creditAmount': creditAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Generic Payment Processing Interface - 
   *
   * Requires orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> paymentProcessInterface({@required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('paymentProcessInterface', null, { 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Generic Payment Refund Interface - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> paymentRefundInterface({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('paymentRefundInterface', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Generic Payment Release (reverse) Interface - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> paymentReleaseInterface({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('paymentReleaseInterface', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Process the payment authorization result(s) - 
   *
   * Requires orderPaymentPreference, processAmount, authResult, authRefNum
   * Returns 
   */
  Future<OfResult> processAuthResult({@required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, String currencyUomId, @required bool authResult, String serviceTypeEnum, String authCode, String authAltRefNum, @required String authRefNum, String authFlag, String authMessage, String cvCode, String avsCode, String scoreCode, List<dynamic> internalRespMsgs}) =>
      client.invoke('processAuthResult', null, { 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'currencyUomId': currencyUomId, 'authResult': authResult, 'serviceTypeEnum': serviceTypeEnum, 'authCode': authCode, 'authAltRefNum': authAltRefNum, 'authRefNum': authRefNum, 'authFlag': authFlag, 'authMessage': authMessage, 'cvCode': cvCode, 'avsCode': avsCode, 'scoreCode': scoreCode, 'internalRespMsgs': internalRespMsgs });

  /**
   * Process the payment capture result(s) - 
   *
   * Requires orderPaymentPreference, captureAmount, captureResult, captureRefNum
   * Returns 
   */
  Future<OfResult> processCaptureResult({@required Map<String,dynamic> orderPaymentPreference, String serviceTypeEnum, String payToPartyId, String invoiceId, @required Decimal captureAmount, String currencyUomId, @required bool captureResult, String captureAltRefNum, @required String captureRefNum, String captureCode, String captureFlag, String captureMessage, List<dynamic> internalRespMsgs}) =>
      client.invoke('processCaptureResult', null, { 'orderPaymentPreference': orderPaymentPreference, 'serviceTypeEnum': serviceTypeEnum, 'payToPartyId': payToPartyId, 'invoiceId': invoiceId, 'captureAmount': captureAmount, 'currencyUomId': currencyUomId, 'captureResult': captureResult, 'captureAltRefNum': captureAltRefNum, 'captureRefNum': captureRefNum, 'captureCode': captureCode, 'captureFlag': captureFlag, 'captureMessage': captureMessage, 'internalRespMsgs': internalRespMsgs });

  /**
   * Handles the creation of new OrderPaymentPreference record (and Auth) for partial captures - 
   *
   * Requires orderPaymentPreference, splitAmount
   * Returns 
   */
  Future<OfResult> processCaptureSplitPayment({@required Map<String,dynamic> orderPaymentPreference, @required Decimal splitAmount}) =>
      client.invoke('processCaptureSplitPayment', null, { 'orderPaymentPreference': orderPaymentPreference, 'splitAmount': splitAmount });

  /**
   * Process the payment credit result(s) - 
   *
   * Requires orderPaymentPreference, creditAmount, creditResult, creditRefNum
   * Returns 
   */
  Future<OfResult> processCreditResult({@required Map<String,dynamic> orderPaymentPreference, @required Decimal creditAmount, String currencyUomId, @required bool creditResult, String creditAltRefNum, @required String creditRefNum, String creditCode, String creditFlag, String creditMessage, List<dynamic> internalRespMsgs}) =>
      client.invoke('processCreditResult', null, { 'orderPaymentPreference': orderPaymentPreference, 'creditAmount': creditAmount, 'currencyUomId': currencyUomId, 'creditResult': creditResult, 'creditAltRefNum': creditAltRefNum, 'creditRefNum': creditRefNum, 'creditCode': creditCode, 'creditFlag': creditFlag, 'creditMessage': creditMessage, 'internalRespMsgs': internalRespMsgs });

  /**
   * Process the payment refund result(s) - 
   *
   * Requires orderPaymentPreference, refundAmount, refundResult, refundRefNum
   * Returns refundAmount[BigDecimal], paymentId[String]
   */
  Future<OfResult> processRefundResult({@required Map<String,dynamic> orderPaymentPreference, String serviceTypeEnum, String payFromPartyId, String payToPartyId, String invoiceId, @required Decimal refundAmount, String currencyUomId, @required bool refundResult, String refundAltRefNum, @required String refundRefNum, String refundCode, String refundFlag, String refundMessage, List<dynamic> internalRespMsgs}) =>
      client.invoke('processRefundResult', null, { 'orderPaymentPreference': orderPaymentPreference, 'serviceTypeEnum': serviceTypeEnum, 'payFromPartyId': payFromPartyId, 'payToPartyId': payToPartyId, 'invoiceId': invoiceId, 'refundAmount': refundAmount, 'currencyUomId': currencyUomId, 'refundResult': refundResult, 'refundAltRefNum': refundAltRefNum, 'refundRefNum': refundRefNum, 'refundCode': refundCode, 'refundFlag': refundFlag, 'refundMessage': refundMessage, 'internalRespMsgs': internalRespMsgs });

  /**
   * Process the payment release result(s) - 
   *
   * Requires orderPaymentPreference, releaseAmount, releaseResult, releaseRefNum
   * Returns 
   */
  Future<OfResult> processReleaseResult({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currencyUomId, @required bool releaseResult, String releaseAltRefNum, @required String releaseRefNum, String releaseCode, String releaseFlag, String releaseMessage, List<dynamic> internalRespMsgs}) =>
      client.invoke('processReleaseResult', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currencyUomId': currencyUomId, 'releaseResult': releaseResult, 'releaseAltRefNum': releaseAltRefNum, 'releaseRefNum': releaseRefNum, 'releaseCode': releaseCode, 'releaseFlag': releaseFlag, 'releaseMessage': releaseMessage, 'internalRespMsgs': internalRespMsgs });

  /**
   * Refund payment authorization for a single OrderPaymentPreference - 
   *
   * Requires orderPaymentPreferenceId, amount
   * Returns refundAmount[BigDecimal], paymentId[String]
   */
  Future<OfResult> refundOrderPaymentPreference({@required String orderPaymentPreferenceId, @required Decimal amount}) =>
      client.invoke('refundOrderPaymentPreference', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId, 'amount': amount });

  /**
   * Refunds A Payment - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], paymentId[String]
   */
  Future<OfResult> refundPayment({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount}) =>
      client.invoke('refundPayment', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount });

  /**
   * Releases payment authorization for a single OrderPaymentPreference - 
   *
   * Requires orderPaymentPreferenceId
   * Returns 
   */
  Future<OfResult> releaseOrderPaymentPreference({@required String orderPaymentPreferenceId}) =>
      client.invoke('releaseOrderPaymentPreference', null, { 'orderPaymentPreferenceId': orderPaymentPreferenceId });

  /**
   * Releases all payment authorizations for an order - 
   *
   * Requires orderId
   * Returns processResult[String]
   */
  Future<OfResult> releaseOrderPayments({@required String orderId, String orderPaymentPreferenceId}) =>
      client.invoke('releaseOrderPayments', null, { 'orderId': orderId, 'orderPaymentPreferenceId': orderPaymentPreferenceId });

  /**
   * (Batch) Retries failed authorizations due to NSF (Not Sufficient Funds); these are for auto-orders - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> retryFailedAuthNsfs() =>
      client.invoke('retryFailedAuthNsfs', null, {  });

  /**
   * (Batch) Retries failed authorizations due to processor/connection problems - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> retryFailedAuths() =>
      client.invoke('retryFailedAuths', null, {  });

  /**
   * Retries failed authorization due to processor/connection problems, or NSF (Not Sufficient Funds) failure, for an order - 
   *
   * Requires orderId
   * Returns processResult[String], authResultMsgs[List]
   */
  Future<OfResult> retryFailedOrderAuth({@required String orderId}) =>
      client.invoke('retryFailedOrderAuth', null, { 'orderId': orderId });

  /**
   * Method to make sure PaymentGatewayResponse records get stored (uses XA wrapper on rollback) - 
   *
   * Requires paymentGatewayResponse
   * Returns 
   */
  Future<OfResult> savePaymentGatewayResponse({@required Map<String,dynamic> paymentGatewayResponse}) =>
      client.invoke('savePaymentGatewayResponse', null, { 'paymentGatewayResponse': paymentGatewayResponse });

  /**
   * Method to make sure PaymentGatewayResponse records get stored (uses XA wrapper on rollback) - 
   *
   * Requires paymentGatewayResponse, messages
   * Returns 
   */
  Future<OfResult> savePaymentGatewayResponseAndMessages({@required Map<String,dynamic> paymentGatewayResponse, @required List<dynamic> messages}) =>
      client.invoke('savePaymentGatewayResponseAndMessages', null, { 'paymentGatewayResponse': paymentGatewayResponse, 'messages': messages });

  /**
   * Set the inital payment method address. - 
   *
   * Requires paymentMethodId, contactMechId
   * Returns 
   */
  Future<OfResult> setPaymentMethodAddress({@required String paymentMethodId, @required String contactMechId}) =>
      client.invoke('setPaymentMethodAddress', null, { 'paymentMethodId': paymentMethodId, 'contactMechId': contactMechId });

  /**
   * Test Credit Card Capture Processing: always approve the capture request - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCCapture({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testCCCapture', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Capture Processing: always approve with reauth the capture request - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCCaptureWithReAuth({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testCCCaptureWithReAuth', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: declines auth requests for all orders less than 100.00; approves auth requests for all orders greater than or equal to 100.00 - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> testCCProcessor({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testCCProcessor', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Capture Processing: always decline a cc capture request - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCProcessorCaptureAlwaysDecline({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testCCProcessorCaptureAlwaysDecline', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: declines auth requests for all orders less than 100.00; approves auth requests for all orders greater than or equal to 100.00 - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> testCCProcessorWithCapture({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testCCProcessorWithCapture', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Refund Processing: always approve the refund request - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testCCRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Credit Card Test Refund Failure - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCRefundFailure({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testCCRefundFailure', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Release Processing: always approve the release request - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testCCRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testCCRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * EFT Account Processing - 
   *
   * Requires eftAccount, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> testEFTProcessor({@required Map<String,dynamic> eftAccount, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testEFTProcessor', null, { 'eftAccount': eftAccount, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * EFT Account Test Release - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testEFTRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testEFTRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Gift Card Test Release - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> testGCRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('testGCRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Test Credit Card Auth Processing: does random auth declines - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> testRandomAuthorize({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('testRandomAuthorize', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Update Check Account - 
   *
   * Requires paymentMethodTypeId, paymentMethodId, nameOnAccount
   * Returns paymentMethodId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateCheckAccount({String partyId, DateTime fromDate, @required String paymentMethodTypeId, String description, @required String paymentMethodId, String bankName, String routingNumber, String accountType, String accountNumber, @required String nameOnAccount, String companyNameOnAccount, String contactMechId}) =>
      client.invoke('updateCheckAccount', null, { 'partyId': partyId, 'fromDate': fromDate, 'paymentMethodTypeId': paymentMethodTypeId, 'description': description, 'paymentMethodId': paymentMethodId, 'bankName': bankName, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount, 'contactMechId': contactMechId });

  /**
   * Update CreditCard - CreditCard
   *
   * Requires paymentMethodId
   * Returns paymentMethodId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateCreditCard(CreditCard ent, {String partyId, DateTime fromDate, DateTime thruDate, String description, String expMonth, String expYear, String productStoreId}) =>
      client.invoke('updateCreditCard', ent, { 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'expMonth': expMonth, 'expYear': expYear, 'productStoreId': productStoreId });

  /**
   * Updates a CreditCard and PostalAddress - 
   *
   * Requires address1, city, postalCode
   * Returns contactMechId[String], paymentMethodId[String], oldContactMechId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateCreditCardAndAddress({String contactMechId, String paymentMethodId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String partyId, String latitude, String longitude, String contactMechTypeId, String infoString, DateTime fromDate, DateTime thruDate, String roleTypeId, String allowSolicitation, String extension, String verified, String comments, int yearsWithContactMech, int monthsWithContactMech, String contactMechPurposeTypeId, String cardType, String cardNumber, String validFromDate, String expireDate, String issueNumber, String companyNameOnCard, String titleOnCard, String firstNameOnCard, String middleNameOnCard, String lastNameOnCard, String suffixOnCard, int consecutiveFailedAuths, DateTime lastFailedAuthDate, int consecutiveFailedNsf, DateTime lastFailedNsfDate, String description, String expMonth, String expYear, String productStoreId}) =>
      client.invoke('updateCreditCardAndAddress', null, { 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'partyId': partyId, 'latitude': latitude, 'longitude': longitude, 'contactMechTypeId': contactMechTypeId, 'infoString': infoString, 'fromDate': fromDate, 'thruDate': thruDate, 'roleTypeId': roleTypeId, 'allowSolicitation': allowSolicitation, 'extension': extension, 'verified': verified, 'comments': comments, 'yearsWithContactMech': yearsWithContactMech, 'monthsWithContactMech': monthsWithContactMech, 'contactMechPurposeTypeId': contactMechPurposeTypeId, 'cardType': cardType, 'cardNumber': cardNumber, 'validFromDate': validFromDate, 'expireDate': expireDate, 'issueNumber': issueNumber, 'companyNameOnCard': companyNameOnCard, 'titleOnCard': titleOnCard, 'firstNameOnCard': firstNameOnCard, 'middleNameOnCard': middleNameOnCard, 'lastNameOnCard': lastNameOnCard, 'suffixOnCard': suffixOnCard, 'consecutiveFailedAuths': consecutiveFailedAuths, 'lastFailedAuthDate': lastFailedAuthDate, 'consecutiveFailedNsf': consecutiveFailedNsf, 'lastFailedNsfDate': lastFailedNsfDate, 'description': description, 'expMonth': expMonth, 'expYear': expYear, 'productStoreId': productStoreId });

  /**
   * Update a Credit Card Gl Account  - CreditCardTypeGlAccount
   *
   * Requires cardType, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> updateCreditCardTypeGlAccount(CreditCardTypeGlAccount ent, ) =>
      client.invoke('updateCreditCardTypeGlAccount', ent, {  });

  /**
   * Update EftAccount - 
   *
   * Requires paymentMethodId, bankName, routingNumber, accountType, accountNumber, nameOnAccount
   * Returns paymentMethodId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateEftAccount({String partyId, DateTime fromDate, DateTime thruDate, String description, @required String paymentMethodId, @required String bankName, @required String routingNumber, @required String accountType, @required String accountNumber, @required String nameOnAccount, String companyNameOnAccount, String contactMechId}) =>
      client.invoke('updateEftAccount', null, { 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'paymentMethodId': paymentMethodId, 'bankName': bankName, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount, 'contactMechId': contactMechId });

  /**
   * Updates an EftAccount and PostalAddress - 
   *
   * Requires address1, city, postalCode, bankName, routingNumber, accountType, accountNumber, nameOnAccount
   * Returns contactMechId[String], paymentMethodId[String], oldContactMechId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateEftAccountAndAddress({String contactMechId, String paymentMethodId, String toName, String attnName, @required String address1, String address2, int houseNumber, String houseNumberExt, String directions, @required String city, String cityGeoId, @required String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String partyId, String latitude, String longitude, DateTime fromDate, DateTime thruDate, String description, @required String bankName, @required String routingNumber, @required String accountType, @required String accountNumber, @required String nameOnAccount, String companyNameOnAccount}) =>
      client.invoke('updateEftAccountAndAddress', null, { 'contactMechId': contactMechId, 'paymentMethodId': paymentMethodId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'partyId': partyId, 'latitude': latitude, 'longitude': longitude, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'bankName': bankName, 'routingNumber': routingNumber, 'accountType': accountType, 'accountNumber': accountNumber, 'nameOnAccount': nameOnAccount, 'companyNameOnAccount': companyNameOnAccount });

  /**
   * Update GiftCard - 
   *
   * Requires paymentMethodId, cardNumber
   * Returns paymentMethodId[String], oldPaymentMethodId[String]
   */
  Future<OfResult> updateGiftCard({String partyId, DateTime fromDate, DateTime thruDate, String description, @required String paymentMethodId, @required String cardNumber, String pinNumber, String expireDate, String expMonth, String expYear}) =>
      client.invoke('updateGiftCard', null, { 'partyId': partyId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'paymentMethodId': paymentMethodId, 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'expireDate': expireDate, 'expMonth': expMonth, 'expYear': expYear });

  /**
   * Update a PayPal Payment Method - PayPalPaymentMethod
   *
   * Requires paymentMethodId
   * Returns paymentMethodId[String]
   */
  Future<OfResult> updatePayPalPaymentMethod(PayPalPaymentMethod ent, ) =>
      client.invoke('updatePayPalPaymentMethod', ent, {  });

  /**
   * Update a Payment Group - PaymentGroup
   *
   * Requires paymentGroupId
   * Returns 
   */
  Future<OfResult> updatePaymentGroup(PaymentGroup ent, ) =>
      client.invoke('updatePaymentGroup', ent, {  });

  /**
   * Update a Payment Group Member - PaymentGroupMember
   *
   * Requires paymentGroupId, paymentId, fromDate
   * Returns 
   */
  Future<OfResult> updatePaymentGroupMember(PaymentGroupMember ent, ) =>
      client.invoke('updatePaymentGroupMember', ent, {  });

  /**
   * Finds CreditCards and EftAccounts that use the oldContactMechId and updates to the contactMechId - 
   *
   * Requires contactMechId, oldContactMechId
   * Returns 
   */
  Future<OfResult> updatePaymentMethodAddress({@required String contactMechId, @required String oldContactMechId, String partyId}) =>
      client.invoke('updatePaymentMethodAddress', null, { 'contactMechId': contactMechId, 'oldContactMechId': oldContactMechId, 'partyId': partyId });

  /**
   * Update a Payment Method Type - PaymentMethodType
   *
   * Requires paymentMethodTypeId
   * Returns 
   */
  Future<OfResult> updatePaymentMethodType(PaymentMethodType ent, ) =>
      client.invoke('updatePaymentMethodType', ent, {  });

  /**
   *  - 
   *
   * Requires paymentMethodId, mode
   * Returns 
   */
  Future<OfResult> verifyCreditCard({@required String paymentMethodId, String oldPaymentMethodId, String productStoreId, @required String mode}) =>
      client.invoke('verifyCreditCard', null, { 'paymentMethodId': paymentMethodId, 'oldPaymentMethodId': oldPaymentMethodId, 'productStoreId': productStoreId, 'mode': mode });

}