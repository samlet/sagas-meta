import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesOrbital{
  final SrvClient client;
  AccountingServicesOrbital(this.client);

  /**
   * Orbital Payment Authorization - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> orbitalCCAuth({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('orbitalCCAuth', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Orbital Payment Authorize and Capture service - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> orbitalCCAuthCapture({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('orbitalCCAuthCapture', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Orbital Payment Capture Service - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> orbitalCCCapture({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('orbitalCCCapture', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Orbital Payment Refund Service - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> orbitalCCRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('orbitalCCRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Orbital Payment Release Service - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> orbitalCCRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('orbitalCCRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

}