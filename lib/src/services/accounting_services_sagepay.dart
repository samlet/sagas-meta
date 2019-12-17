import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesSagepay{
  final SrvClient client;
  AccountingServicesSagepay(this.client);

  /**
   * For payment authentication - 
   *
   * Requires vendorTxCode, cardHolder, cardNumber, expiryDate, cardType, amount, currency, billingAddress, billingPostCode, description
   * Returns transactionType[String], vendorTxCode[String], amount[String], status[String], statusDetail[String], vpsTxId[String], securityKey[String], txAuthNo[String], avsCv2[String], addressResult[String], postCodeResult[String], cv2Result[String], cavv[String]
   */
  Future<OfResult> SagePayPaymentAuthentication({String paymentGatewayConfigId, @required String vendorTxCode, @required String cardHolder, @required String cardNumber, @required String expiryDate, @required String cardType, @required String amount, @required String currency, String billingSurname, String billingFirstnames, @required String billingAddress, String billingAddress2, String billingCity, @required String billingPostCode, String billingCountry, String billingState, String billingPhone, bool isBillingSameAsDelivery, String deliverySurname, String deliveryFirstnames, String deliveryAddress, String deliveryAddress2, String deliveryCity, String deliveryPostCode, String deliveryCountry, String deliveryState, String deliveryPhone, String cv2, String startDate, String issueNumber, String basket, @required String description, String clientIPAddress}) =>
      client.invoke('SagePayPaymentAuthentication', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'vendorTxCode': vendorTxCode, 'cardHolder': cardHolder, 'cardNumber': cardNumber, 'expiryDate': expiryDate, 'cardType': cardType, 'amount': amount, 'currency': currency, 'billingSurname': billingSurname, 'billingFirstnames': billingFirstnames, 'billingAddress': billingAddress, 'billingAddress2': billingAddress2, 'billingCity': billingCity, 'billingPostCode': billingPostCode, 'billingCountry': billingCountry, 'billingState': billingState, 'billingPhone': billingPhone, 'isBillingSameAsDelivery': isBillingSameAsDelivery, 'deliverySurname': deliverySurname, 'deliveryFirstnames': deliveryFirstnames, 'deliveryAddress': deliveryAddress, 'deliveryAddress2': deliveryAddress2, 'deliveryCity': deliveryCity, 'deliveryPostCode': deliveryPostCode, 'deliveryCountry': deliveryCountry, 'deliveryState': deliveryState, 'deliveryPhone': deliveryPhone, 'cv2': cv2, 'startDate': startDate, 'issueNumber': issueNumber, 'basket': basket, 'description': description, 'clientIPAddress': clientIPAddress });

  /**
   * For capturing the payment - 
   *
   * Requires vendorTxCode, amount
   * Returns status[String], statusDetail[String]
   */
  Future<OfResult> SagePayPaymentAuthorisation({String paymentGatewayConfigId, @required String vendorTxCode, String vpsTxId, String securityKey, String txAuthNo, @required String amount}) =>
      client.invoke('SagePayPaymentAuthorisation', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'vendorTxCode': vendorTxCode, 'vpsTxId': vpsTxId, 'securityKey': securityKey, 'txAuthNo': txAuthNo, 'amount': amount });

  /**
   * For refunding the payment - 
   *
   * Requires vendorTxCode, amount, currency, description, relatedVPSTxId, relatedVendorTxCode, relatedSecurityKey, relatedTxAuthNo
   * Returns status[String], statusDetail[String], vpsTxId[String], txAuthNo[String]
   */
  Future<OfResult> SagePayPaymentRefund({String paymentGatewayConfigId, @required String vendorTxCode, @required String amount, @required String currency, @required String description, @required String relatedVPSTxId, @required String relatedVendorTxCode, @required String relatedSecurityKey, @required String relatedTxAuthNo}) =>
      client.invoke('SagePayPaymentRefund', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'vendorTxCode': vendorTxCode, 'amount': amount, 'currency': currency, 'description': description, 'relatedVPSTxId': relatedVPSTxId, 'relatedVendorTxCode': relatedVendorTxCode, 'relatedSecurityKey': relatedSecurityKey, 'relatedTxAuthNo': relatedTxAuthNo });

  /**
   * For releasing (cancel) the payment - 
   *
   * Requires vendorTxCode, vpsTxId, securityKey, txAuthNo, releaseAmount
   * Returns status[String], statusDetail[String]
   */
  Future<OfResult> SagePayPaymentRelease({String paymentGatewayConfigId, @required String vendorTxCode, @required String vpsTxId, @required String securityKey, @required String txAuthNo, @required String releaseAmount}) =>
      client.invoke('SagePayPaymentRelease', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'vendorTxCode': vendorTxCode, 'vpsTxId': vpsTxId, 'securityKey': securityKey, 'txAuthNo': txAuthNo, 'releaseAmount': releaseAmount });

  /**
   * For voiding the payment - 
   *
   * Requires vendorTxCode, vpsTxId, securityKey, txAuthNo
   * Returns status[String], statusDetail[String]
   */
  Future<OfResult> SagePayPaymentVoid({String paymentGatewayConfigId, @required String vendorTxCode, @required String vpsTxId, @required String securityKey, @required String txAuthNo}) =>
      client.invoke('SagePayPaymentVoid', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'vendorTxCode': vendorTxCode, 'vpsTxId': vpsTxId, 'securityKey': securityKey, 'txAuthNo': txAuthNo });

  /**
   * SagePay Payment Authorization Service - 
   *
   * Requires creditCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> sagepayCCAuth({@required Map<String,dynamic> creditCard, String cardSecurityCode, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('sagepayCCAuth', null, { 'creditCard': creditCard, 'cardSecurityCode': cardSecurityCode, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * SagePay Payment Capture Service - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> sagepayCCCapture({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('sagepayCCCapture', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * SagePay Payment Refund Service - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> sagepayCCRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('sagepayCCRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * SagePay Payment Release - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> sagepayCCRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('sagepayCCRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

}