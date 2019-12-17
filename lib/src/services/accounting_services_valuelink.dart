import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesValuelink{
  final SrvClient client;
  AccountingServicesValuelink(this.client);

  /**
   * Activate (create new) gift card - 
   *
   * Requires paymentConfig, vlPromoCode, currency, amount
   * Returns amount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], cardNumber[String], pin[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> activateGiftCard({@required String paymentConfig, @required String vlPromoCode, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('activateGiftCard', null, { 'paymentConfig': paymentConfig, 'vlPromoCode': vlPromoCode, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Assign a new working key to ValueLink - 
   *
   * Requires paymentConfig
   * Returns 
   */
  Future<OfResult> assignWorkingKey({@required String paymentConfig, String desHexString}) =>
      client.invoke('assignWorkingKey', null, { 'paymentConfig': paymentConfig, 'desHexString': desHexString });

  /**
   * Inquire current card balance - 
   *
   * Requires paymentConfig, cardNumber, pin, currency
   * Returns processResult[Boolean], responseCode[String], balance[BigDecimal], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> balanceInquireGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId}) =>
      client.invoke('balanceInquireGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId });

  /**
   * Create Public/Private Keys + KEK and Display Them - 
   *
   * Requires paymentConfig
   * Returns output[String]
   */
  Future<OfResult> createVLKeys({@required String paymentConfig, bool kekOnly, String kekTest}) =>
      client.invoke('createVLKeys', null, { 'paymentConfig': paymentConfig, 'kekOnly': kekOnly, 'kekTest': kekTest });

  /**
   * Disable a gift card PIN - 
   *
   * Requires paymentConfig, cardNumber, pin
   * Returns processResult[Boolean], responseCode[String], balance[BigDecimal], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> disableGiftCardPin({@required String paymentConfig, @required String cardNumber, @required String pin, String orderId, String partyId}) =>
      client.invoke('disableGiftCardPin', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'orderId': orderId, 'partyId': partyId });

  /**
   * Link a physical card to a virtual account - 
   *
   * Requires paymentConfig, virtualCard, virtualPin, physicalCard, physicalPin
   * Returns processResult[Boolean], responseCode[String], authCode[String], amount[BigDecimal], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> linkPhysicalGiftCard({@required String paymentConfig, @required String virtualCard, @required String virtualPin, @required String physicalCard, @required String physicalPin, String partyId}) =>
      client.invoke('linkPhysicalGiftCard', null, { 'paymentConfig': paymentConfig, 'virtualCard': virtualCard, 'virtualPin': virtualPin, 'physicalCard': physicalCard, 'physicalPin': physicalPin, 'partyId': partyId });

  /**
   * Redeem (take money off) gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], cashBack[BigDecimal], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> redeemGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('redeemGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Refund a gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> refundGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('refundGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Reload (add money to) gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> reloadGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('reloadGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Test KEK Encryption - 
   *
   * Requires paymentConfig, kekTest, mode
   * Returns output[String]
   */
  Future<OfResult> testKekEncryption({@required String paymentConfig, @required String kekTest, @required int mode}) =>
      client.invoke('testKekEncryption', null, { 'paymentConfig': paymentConfig, 'kekTest': kekTest, 'mode': mode });

  /**
   * Obtain card transaction history - 
   *
   * Requires paymentConfig, cardNumber, pin
   * Returns processResult[Boolean], responseCode[String], balance[BigDecimal], history[List], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> transactionHistoryGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, String orderId, String partyId}) =>
      client.invoke('transactionHistoryGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'orderId': orderId, 'partyId': partyId });

  /**
   * Gift Card Payment Processing - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns 
   */
  Future<OfResult> valueLinkGcPurchase({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('valueLinkGcPurchase', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * Gift Card Payment Processing - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns 
   */
  Future<OfResult> valueLinkGcReload({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('valueLinkGcReload', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * Gift Card Payment Processing - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> valueLinkProcessor({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('valueLinkProcessor', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Gift Card Refund Payment - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> valueLinkRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('valueLinkRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Gift Card Release (reverse) Payment - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> valueLinkRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('valueLinkRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> vlTimeOutReversal() =>
      client.invoke('vlTimeOutReversal', null, {  });

  /**
   * Void a Activate (create new) gift card - 
   *
   * Requires paymentConfig, currency, amount
   * Returns amount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], cardNumber[String], pin[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> voidActivateGiftCard({@required String paymentConfig, @required String currency, String orderId, String partyId, @required Decimal amount, String cardNumber, String pin}) =>
      client.invoke('voidActivateGiftCard', null, { 'paymentConfig': paymentConfig, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount, 'cardNumber': cardNumber, 'pin': pin });

  /**
   * Void a Redeem (take money off) gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], cashBack[BigDecimal], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> voidRedeemGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('voidRedeemGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Refund a gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> voidRefundGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('voidRefundGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

  /**
   * Void a Reload (add money to) gift card - 
   *
   * Requires paymentConfig, cardNumber, pin, currency, amount
   * Returns amount[BigDecimal], previousAmount[BigDecimal], processResult[Boolean], responseCode[String], authCode[String], expireDate[String], cardClass[String], referenceNum[String]
   */
  Future<OfResult> voidReloadGiftCard({@required String paymentConfig, @required String cardNumber, @required String pin, @required String currency, String orderId, String partyId, @required Decimal amount}) =>
      client.invoke('voidReloadGiftCard', null, { 'paymentConfig': paymentConfig, 'cardNumber': cardNumber, 'pin': pin, 'currency': currency, 'orderId': orderId, 'partyId': partyId, 'amount': amount });

}