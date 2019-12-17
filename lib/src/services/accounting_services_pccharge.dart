import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesPccharge{
  final SrvClient client;
  AccountingServicesPccharge(this.client);

  /**
   * PCCharge Credit Card Pre-Authorization/Sale - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> pcChargeCCAuth({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('pcChargeCCAuth', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * PCCharge Credit Card Post-Authorization - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> pcChargeCCCapture({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('pcChargeCCCapture', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * PCCharge Credit Card Refund - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> pcChargeCCRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('pcChargeCCRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * PCCharge Credit Card Void - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> pcChargeCCRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('pcChargeCCRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

}