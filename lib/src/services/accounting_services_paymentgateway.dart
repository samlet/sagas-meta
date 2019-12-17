import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesPaymentgateway{
  final SrvClient client;
  AccountingServicesPaymentgateway(this.client);

  /**
   * Create Payment Gateway Config - PaymentGatewayConfig
   *
   * Requires 
   * Returns paymentGatewayConfigId[String]
   */
  Future<OfResult> createPaymentGatewayConfig(PaymentGatewayConfig ent, ) =>
      client.invoke('createPaymentGatewayConfig', ent, {  });

  /**
   * Create Payment Gateway Config Authorize Dot Net - PaymentGatewayAuthorizeNet
   *
   * Requires 
   * Returns paymentGatewayConfigId[String]
   */
  Future<OfResult> createPaymentGatewayConfigAuthorizeNet(PaymentGatewayAuthorizeNet ent, ) =>
      client.invoke('createPaymentGatewayConfigAuthorizeNet', ent, {  });

  /**
   * Create Payment Gateway Config Clear Commerce - PaymentGatewayClearCommerce
   *
   * Requires 
   * Returns paymentGatewayConfigId[String]
   */
  Future<OfResult> createPaymentGatewayConfigClearCommerce(PaymentGatewayClearCommerce ent, ) =>
      client.invoke('createPaymentGatewayConfigClearCommerce', ent, {  });

  /**
   * Create Payment Gateway Config SagePay - PaymentGatewaySagePay
   *
   * Requires 
   * Returns paymentGatewayConfigId[String]
   */
  Future<OfResult> createPaymentGatewayConfigSagePay(PaymentGatewaySagePay ent, ) =>
      client.invoke('createPaymentGatewayConfigSagePay', ent, {  });

  /**
   * Delete Payment Gateway Config - PaymentGatewayConfig
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deletePaymentGatewayConfig(PaymentGatewayConfig ent, ) =>
      client.invoke('deletePaymentGatewayConfig', ent, {  });

  /**
   * Delete Payment Gateway Config Authorize Dot Net - PaymentGatewayAuthorizeNet
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deletePaymentGatewayConfigAuthorizeNet(PaymentGatewayAuthorizeNet ent, ) =>
      client.invoke('deletePaymentGatewayConfigAuthorizeNet', ent, {  });

  /**
   * Delete Payment Gateway Config Clear Commerce - PaymentGatewayClearCommerce
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deletePaymentGatewayConfigClearCommerce(PaymentGatewayClearCommerce ent, ) =>
      client.invoke('deletePaymentGatewayConfigClearCommerce', ent, {  });

  /**
   * Delete Payment Gateway Config SagePay - PaymentGatewaySagePay
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deletePaymentGatewayConfigSagePay(PaymentGatewaySagePay ent, ) =>
      client.invoke('deletePaymentGatewayConfigSagePay', ent, {  });

  /**
   * Update Payment Gateway Config - PaymentGatewayConfig
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfig(PaymentGatewayConfig ent, ) =>
      client.invoke('updatePaymentGatewayConfig', ent, {  });

  /**
   * Update Payment Gateway Config Authorize Dot Net - PaymentGatewayAuthorizeNet
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigAuthorizeNet(PaymentGatewayAuthorizeNet ent, ) =>
      client.invoke('updatePaymentGatewayConfigAuthorizeNet', ent, {  });

  /**
   * Update Payment Gateway Config Clear Commerce - PaymentGatewayClearCommerce
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigClearCommerce(PaymentGatewayClearCommerce ent, ) =>
      client.invoke('updatePaymentGatewayConfigClearCommerce', ent, {  });

  /**
   * Update Payment Gateway Config CyberSource - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigCyberSource({@required String paymentGatewayConfigId, String merchantId, String apiVersion, String production, String keysDir, String keysFile, String logEnabled, String logDir, String logFile, int logSize, String merchantDescr, String merchantContact, String autoBill, String enableDav, String fraudScore, String ignoreAvs, String disableBillAvs, String avsDeclineCodes}) =>
      client.invoke('updatePaymentGatewayConfigCyberSource', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'merchantId': merchantId, 'apiVersion': apiVersion, 'production': production, 'keysDir': keysDir, 'keysFile': keysFile, 'logEnabled': logEnabled, 'logDir': logDir, 'logFile': logFile, 'logSize': logSize, 'merchantDescr': merchantDescr, 'merchantContact': merchantContact, 'autoBill': autoBill, 'enableDav': enableDav, 'fraudScore': fraudScore, 'ignoreAvs': ignoreAvs, 'disableBillAvs': disableBillAvs, 'avsDeclineCodes': avsDeclineCodes });

  /**
   *  - PaymentGatewayEway
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigEway(PaymentGatewayEway ent, ) =>
      client.invoke('updatePaymentGatewayConfigEway', ent, {  });

  /**
   * Update Payment Gateway Config PayPal - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigPayPal({@required String paymentGatewayConfigId, String businessEmail, String apiUserName, String apiPassword, String apiSignature, String apiEnvironment, String notifyUrl, String returnUrl, String cancelReturnUrl, String imageUrl, String confirmTemplate, String redirectUrl, String confirmUrl, String shippingCallbackUrl, String requireConfirmedShipping}) =>
      client.invoke('updatePaymentGatewayConfigPayPal', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'businessEmail': businessEmail, 'apiUserName': apiUserName, 'apiPassword': apiPassword, 'apiSignature': apiSignature, 'apiEnvironment': apiEnvironment, 'notifyUrl': notifyUrl, 'returnUrl': returnUrl, 'cancelReturnUrl': cancelReturnUrl, 'imageUrl': imageUrl, 'confirmTemplate': confirmTemplate, 'redirectUrl': redirectUrl, 'confirmUrl': confirmUrl, 'shippingCallbackUrl': shippingCallbackUrl, 'requireConfirmedShipping': requireConfirmedShipping });

  /**
   * Update Payment Gateway Config Payflow Pro - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigPayflowPro({@required String paymentGatewayConfigId, String certsPath, String hostAddress, int hostPort, int timeout, String proxyAddress, int proxyPort, String proxyLogon, String proxyPassword, String vendor, String userId, String pwd, String partner, String checkAvs, String checkCvv2, String preAuth, String enableTransmit, String logFileName, int loggingLevel, int maxLogFileSize, String stackTraceOn, String redirectUrl, String returnUrl, String cancelReturnUrl}) =>
      client.invoke('updatePaymentGatewayConfigPayflowPro', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'certsPath': certsPath, 'hostAddress': hostAddress, 'hostPort': hostPort, 'timeout': timeout, 'proxyAddress': proxyAddress, 'proxyPort': proxyPort, 'proxyLogon': proxyLogon, 'proxyPassword': proxyPassword, 'vendor': vendor, 'userId': userId, 'pwd': pwd, 'partner': partner, 'checkAvs': checkAvs, 'checkCvv2': checkCvv2, 'preAuth': preAuth, 'enableTransmit': enableTransmit, 'logFileName': logFileName, 'loggingLevel': loggingLevel, 'maxLogFileSize': maxLogFileSize, 'stackTraceOn': stackTraceOn, 'redirectUrl': redirectUrl, 'returnUrl': returnUrl, 'cancelReturnUrl': cancelReturnUrl });

  /**
   * Update Payment Gateway Config SagePay - PaymentGatewaySagePay
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigSagePay(PaymentGatewaySagePay ent, ) =>
      client.invoke('updatePaymentGatewayConfigSagePay', ent, {  });

  /**
   * Update Payment Gateway Config SecurePay - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigSecurePay({@required String paymentGatewayConfigId, String merchantId, String pwd, String serverURL, int processTimeout, String enableAmountRound}) =>
      client.invoke('updatePaymentGatewayConfigSecurePay', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'merchantId': merchantId, 'pwd': pwd, 'serverURL': serverURL, 'processTimeout': processTimeout, 'enableAmountRound': enableAmountRound });

  /**
   * Update Payment Gateway Config Type - 
   *
   * Requires paymentGatewayConfigTypeId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigType({@required String paymentGatewayConfigTypeId, String parentTypeId, String hasTable, String description}) =>
      client.invoke('updatePaymentGatewayConfigType', null, { 'paymentGatewayConfigTypeId': paymentGatewayConfigTypeId, 'parentTypeId': parentTypeId, 'hasTable': hasTable, 'description': description });

  /**
   * Update Payment Gateway Config WorldPay - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigWorldPay({@required String paymentGatewayConfigId, String redirectUrl, String instId, String authMode, String fixContact, String hideContact, String hideCurrency, String langId, String noLanguageMenu, String withDelivery, int testMode}) =>
      client.invoke('updatePaymentGatewayConfigWorldPay', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'redirectUrl': redirectUrl, 'instId': instId, 'authMode': authMode, 'fixContact': fixContact, 'hideContact': hideContact, 'hideCurrency': hideCurrency, 'langId': langId, 'noLanguageMenu': noLanguageMenu, 'withDelivery': withDelivery, 'testMode': testMode });

  /**
   * Update Payment Gateway Config iDEAL - 
   *
   * Requires paymentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updatePaymentGatewayConfigiDEAL({@required String paymentGatewayConfigId, String merchantId, String merchantSubId, String merchantReturnURL, String acquirerURL, String acquirerTimeout, String privateCert, String acquirerKeyStoreFilename, String acquirerKeyStorePassword, String merchantKeyStoreFilename, String merchantKeyStorePassword, String expirationPeriod}) =>
      client.invoke('updatePaymentGatewayConfigiDEAL', null, { 'paymentGatewayConfigId': paymentGatewayConfigId, 'merchantId': merchantId, 'merchantSubId': merchantSubId, 'merchantReturnURL': merchantReturnURL, 'acquirerURL': acquirerURL, 'acquirerTimeout': acquirerTimeout, 'privateCert': privateCert, 'acquirerKeyStoreFilename': acquirerKeyStoreFilename, 'acquirerKeyStorePassword': acquirerKeyStorePassword, 'merchantKeyStoreFilename': merchantKeyStoreFilename, 'merchantKeyStorePassword': merchantKeyStorePassword, 'expirationPeriod': expirationPeriod });

}