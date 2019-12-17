import 'package:sagas_meta/src/models/accounting_finaccount.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesFinaccount{
  final SrvClient client;
  AccountingServicesFinaccount(this.client);

  /**
   * Add funds to a Gift Certificate - 
   *
   * Requires productStoreId, cardNumber, amount
   * Returns amount[BigDecimal], balance[BigDecimal], previousBalance[BigDecimal], processResult[Boolean], responseCode[String], referenceNum[String]
   */
  Future<OfResult> addFundsToGiftCertificate({@required String productStoreId, @required String cardNumber, String pinNumber, @required Decimal amount, String currency, String partyId}) =>
      client.invoke('addFundsToGiftCertificate', null, { 'productStoreId': productStoreId, 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'amount': amount, 'currency': currency, 'partyId': partyId });

  /**
   * Assignment of Gl Reconciliation to Fin Account Trans - 
   *
   * Requires finAccountTransId, glReconciliationId
   * Returns 
   */
  Future<OfResult> assignGlRecToFinAccTrans({@required String finAccountTransId, @required String glReconciliationId}) =>
      client.invoke('assignGlRecToFinAccTrans', null, { 'finAccountTransId': finAccountTransId, 'glReconciliationId': glReconciliationId });

  /**
   * Auto Reconciled FinAccountTrans entries - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> autoFinAccountReconciliation() =>
      client.invoke('autoFinAccountReconciliation', null, {  });

  /**
   * Cancel bank reconciliation. - 
   *
   * Requires glReconciliationId
   * Returns 
   */
  Future<OfResult> cancelBankReconciliation({@required String glReconciliationId}) =>
      client.invoke('cancelBankReconciliation', null, { 'glReconciliationId': glReconciliationId });

  /**
   * Checks the balance of the financial account - 
   *
   * Requires finAccountId
   * Returns availableBalance[BigDecimal], balance[BigDecimal], statusId[String]
   */
  Future<OfResult> checkFinAccountBalance({@required String finAccountId}) =>
      client.invoke('checkFinAccountBalance', null, { 'finAccountId': finAccountId });

  /**
   * Checks the status of the financial account; may set statusId to FNACT_MANFROZEN or FNACT_ACTIVE - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> checkFinAccountStatus({String finAccountAuthId, String finAccountId}) =>
      client.invoke('checkFinAccountStatus', null, { 'finAccountAuthId': finAccountAuthId, 'finAccountId': finAccountId });

  /**
   * Obtain the balanace of a Gift Certificate - 
   *
   * Requires cardNumber, pinNumber
   * Returns balance[BigDecimal]
   */
  Future<OfResult> checkGiftCertificateBalance({@required String cardNumber, @required String pinNumber, String currency}) =>
      client.invoke('checkGiftCertificateBalance', null, { 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'currency': currency });

  /**
   * Create a new Financial Account.  If no finAccountId is provided, an auto-sequenced one will be used. - FinAccount
   *
   * Requires 
   * Returns finAccountId[String]
   */
  Future<OfResult> createFinAccount(FinAccount ent, ) =>
      client.invoke('createFinAccount', ent, {  });

  /**
   *  - 
   *
   * Requires partyId, amount, finAccountTypeId
   * Returns finAccountId[String]
   */
  Future<OfResult> createFinAccountAndCredit({String finAccountId, String finAccountName, String reasonEnumId, String comments, @required String partyId, @required Decimal amount, String replenishPaymentId, Decimal replenishLevel, String currencyUomId, String productStoreId, @required String finAccountTypeId}) =>
      client.invoke('createFinAccountAndCredit', null, { 'finAccountId': finAccountId, 'finAccountName': finAccountName, 'reasonEnumId': reasonEnumId, 'comments': comments, 'partyId': partyId, 'amount': amount, 'replenishPaymentId': replenishPaymentId, 'replenishLevel': replenishLevel, 'currencyUomId': currencyUomId, 'productStoreId': productStoreId, 'finAccountTypeId': finAccountTypeId });

  /**
   * Create a FinAccountAttribute - FinAccountAttribute
   *
   * Requires finAccountId, attrName
   * Returns finAccountId[String], attrName[String]
   */
  Future<OfResult> createFinAccountAttribute(FinAccountAttribute ent, ) =>
      client.invoke('createFinAccountAttribute', ent, {  });

  /**
   * Lower level service for creating authorization against a fin account.  Will use current time for authorizationDate and thruDate if not supplied. - FinAccountAuth
   *
   * Requires 
   * Returns finAccountAuthId[String]
   */
  Future<OfResult> createFinAccountAuth(FinAccountAuth ent, ) =>
      client.invoke('createFinAccountAuth', ent, {  });

  /**
   * Creates a new FinAccount, using defaults from the ProductStoreFinActSetting for expiration date and to generate an automatic account code.
            Note this would override any user values for from, thru, and acount code - FinAccount
   *
   * Requires finAccountTypeId, productStoreId, finAccountTypeId
   * Returns finAccountId[String], finAccountCode[String], finAccountPin[String]
   */
  Future<OfResult> createFinAccountForStore(FinAccount ent, {@required String productStoreId}) =>
      client.invoke('createFinAccountForStore', ent, { 'productStoreId': productStoreId });

  /**
   * Create a new Financial Account Role - FinAccountRole
   *
   * Requires finAccountId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createFinAccountRole(FinAccountRole ent, ) =>
      client.invoke('createFinAccountRole', ent, {  });

  /**
   * Create a FinAccountStatus - FinAccountStatus
   *
   * Requires finAccountId, statusId
   * Returns 
   */
  Future<OfResult> createFinAccountStatus(FinAccountStatus ent, ) =>
      client.invoke('createFinAccountStatus', ent, {  });

  /**
   * Create a new Financial Account Transaction.  Will use current timestamp for entryDate and trasanctionDate if none is provided. - FinAccountTrans
   *
   * Requires 
   * Returns finAccountTransId[String]
   */
  Future<OfResult> createFinAccountTrans(FinAccountTrans ent, {String glAccountId}) =>
      client.invoke('createFinAccountTrans', ent, { 'glAccountId': glAccountId });

  /**
   * Create a FinAccountTransAttribute - FinAccountTransAttribute
   *
   * Requires finAccountTransId, attrName
   * Returns finAccountTransId[String], attrName[String]
   */
  Future<OfResult> createFinAccountTransAttribute(FinAccountTransAttribute ent, ) =>
      client.invoke('createFinAccountTransAttribute', ent, {  });

  /**
   * Create a FinAccountTransType record - FinAccountTransType
   *
   * Requires 
   * Returns finAccountTransTypeId[String]
   */
  Future<OfResult> createFinAccountTransType(FinAccountTransType ent, ) =>
      client.invoke('createFinAccountTransType', ent, {  });

  /**
   * Create a FinAccountTransTypeAttr - FinAccountTransTypeAttr
   *
   * Requires finAccountTransTypeId, attrName
   * Returns finAccountTransTypeId[String], attrName[String]
   */
  Future<OfResult> createFinAccountTransTypeAttr(FinAccountTransTypeAttr ent, ) =>
      client.invoke('createFinAccountTransTypeAttr', ent, {  });

  /**
   * Create a FinAccountType - FinAccountType
   *
   * Requires 
   * Returns finAccountTypeId[String]
   */
  Future<OfResult> createFinAccountType(FinAccountType ent, ) =>
      client.invoke('createFinAccountType', ent, {  });

  /**
   * Create a FinAccountTypeAttr - FinAccountTypeAttr
   *
   * Requires finAccountTypeId, attrName
   * Returns finAccountTypeId[String], attrName[String]
   */
  Future<OfResult> createFinAccountTypeAttr(FinAccountTypeAttr ent, ) =>
      client.invoke('createFinAccountTypeAttr', ent, {  });

  /**
   * Creates the fulfillment log - 
   *
   * Requires typeEnumId
   * Returns 
   */
  Future<OfResult> createGcFulFillmentRecord({@required String typeEnumId, String merchantId, String partyId, String orderId, String orderItemSeqId, String surveyResponseId, String cardNumber, String pinNumber, Decimal amount, String responseCode, String referenceNum, String authCode}) =>
      client.invoke('createGcFulFillmentRecord', null, { 'typeEnumId': typeEnumId, 'merchantId': merchantId, 'partyId': partyId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'surveyResponseId': surveyResponseId, 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'amount': amount, 'responseCode': responseCode, 'referenceNum': referenceNum, 'authCode': authCode });

  /**
   * Generate a Gift Certificate number/pin and store as a FinAccount - 
   *
   * Requires productStoreId, initialAmount
   * Returns initialAmount[BigDecimal], cardNumber[String], pinNumber[String], processResult[Boolean], responseCode[String], referenceNum[String]
   */
  Future<OfResult> createGiftCertificate({@required String productStoreId, @required Decimal initialAmount, String currency, String partyId}) =>
      client.invoke('createGiftCertificate', null, { 'productStoreId': productStoreId, 'initialAmount': initialAmount, 'currency': currency, 'partyId': partyId });

  /**
   *  - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns finAccountId[String]
   */
  Future<OfResult> createPartyFinAccountFromPurchase({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('createPartyFinAccountFromPurchase', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * create new payment and associate with respective financial account in FinAccountTrans Entity. - 
   *
   * Requires finAccountTransTypeId, paymentTypeId, partyIdFrom, partyIdTo, amount
   * Returns paymentId[String]
   */
  Future<OfResult> createPaymentAndFinAccountTrans({String isDepositWithDrawPayment, @required String finAccountTransTypeId, String paymentGroupTypeId, String paymentMethodId, String paymentId, @required String paymentTypeId, String paymentMethodTypeId, String paymentGatewayResponseId, String paymentPreferenceId, @required String partyIdFrom, @required String partyIdTo, String roleTypeIdTo, String statusId, DateTime effectiveDate, String paymentRefNum, @required Decimal amount, String currencyUomId, String comments, String finAccountTransId, String overrideGlAccountId, Decimal actualCurrencyAmount, String actualCurrencyUomId}) =>
      client.invoke('createPaymentAndFinAccountTrans', null, { 'isDepositWithDrawPayment': isDepositWithDrawPayment, 'finAccountTransTypeId': finAccountTransTypeId, 'paymentGroupTypeId': paymentGroupTypeId, 'paymentMethodId': paymentMethodId, 'paymentId': paymentId, 'paymentTypeId': paymentTypeId, 'paymentMethodTypeId': paymentMethodTypeId, 'paymentGatewayResponseId': paymentGatewayResponseId, 'paymentPreferenceId': paymentPreferenceId, 'partyIdFrom': partyIdFrom, 'partyIdTo': partyIdTo, 'roleTypeIdTo': roleTypeIdTo, 'statusId': statusId, 'effectiveDate': effectiveDate, 'paymentRefNum': paymentRefNum, 'amount': amount, 'currencyUomId': currencyUomId, 'comments': comments, 'finAccountTransId': finAccountTransId, 'overrideGlAccountId': overrideGlAccountId, 'actualCurrencyAmount': actualCurrencyAmount, 'actualCurrencyUomId': actualCurrencyUomId });

  /**
   *  - 
   *
   * Requires partyId, amount
   * Returns finAccountId[String]
   */
  Future<OfResult> createServiceCredit({String finAccountId, String finAccountName, String reasonEnumId, String comments, @required String partyId, @required Decimal amount, String currencyUomId, String productStoreId, String finAccountTypeId}) =>
      client.invoke('createServiceCredit', null, { 'finAccountId': finAccountId, 'finAccountName': finAccountName, 'reasonEnumId': reasonEnumId, 'comments': comments, 'partyId': partyId, 'amount': amount, 'currencyUomId': currencyUomId, 'productStoreId': productStoreId, 'finAccountTypeId': finAccountTypeId });

  /**
   * Delete a Financial Account - FinAccount
   *
   * Requires finAccountId
   * Returns 
   */
  Future<OfResult> deleteFinAccount(FinAccount ent, ) =>
      client.invoke('deleteFinAccount', ent, {  });

  /**
   * Delete a FinAccountAttribute - FinAccountAttribute
   *
   * Requires finAccountId, attrName
   * Returns 
   */
  Future<OfResult> deleteFinAccountAttribute(FinAccountAttribute ent, ) =>
      client.invoke('deleteFinAccountAttribute', ent, {  });

  /**
   * Delete a FinAccountRole - FinAccountRole
   *
   * Requires finAccountId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFinAccountRole(FinAccountRole ent, ) =>
      client.invoke('deleteFinAccountRole', ent, {  });

  /**
   * Delete a FinAccountTransAttribute - FinAccountTransAttribute
   *
   * Requires finAccountTransId, attrName
   * Returns 
   */
  Future<OfResult> deleteFinAccountTransAttribute(FinAccountTransAttribute ent, ) =>
      client.invoke('deleteFinAccountTransAttribute', ent, {  });

  /**
   * Delete a FinAccountTransType record - FinAccountTransType
   *
   * Requires finAccountTransTypeId
   * Returns 
   */
  Future<OfResult> deleteFinAccountTransType(FinAccountTransType ent, ) =>
      client.invoke('deleteFinAccountTransType', ent, {  });

  /**
   * Delete a FinAccountTransTypeAttr - FinAccountTransTypeAttr
   *
   * Requires finAccountTransTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteFinAccountTransTypeAttr(FinAccountTransTypeAttr ent, ) =>
      client.invoke('deleteFinAccountTransTypeAttr', ent, {  });

  /**
   * Delete a FinAccountType - FinAccountType
   *
   * Requires finAccountTypeId
   * Returns 
   */
  Future<OfResult> deleteFinAccountType(FinAccountType ent, ) =>
      client.invoke('deleteFinAccountType', ent, {  });

  /**
   * Delete a FinAccountTypeAttr - FinAccountTypeAttr
   *
   * Requires finAccountTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteFinAccountTypeAttr(FinAccountTypeAttr ent, ) =>
      client.invoke('deleteFinAccountTypeAttr', ent, {  });

  /**
   * Deposit withdraw payments - 
   *
   * Requires paymentIds, finAccountId
   * Returns finAccountTransId[String], paymentGroupId[String]
   */
  Future<OfResult> depositWithdrawPayments({@required List<dynamic> paymentIds, @required String finAccountId, String groupInOneTransaction, String paymentGroupTypeId, String paymentGroupName}) =>
      client.invoke('depositWithdrawPayments', null, { 'paymentIds': paymentIds, 'finAccountId': finAccountId, 'groupInOneTransaction': groupInOneTransaction, 'paymentGroupTypeId': paymentGroupTypeId, 'paymentGroupName': paymentGroupName });

  /**
   * Expires a fin account authorization.  Will use current time if no time is supplied in parameter - FinAccountAuth
   *
   * Requires finAccountAuthId
   * Returns 
   */
  Future<OfResult> expireFinAccountAuth(FinAccountAuth ent, {DateTime expireDateTime}) =>
      client.invoke('expireFinAccountAuth', ent, { 'expireDateTime': expireDateTime });

  /**
   * expire payment associations with paymentGroup on finAccountTrans cancel - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> expirePaymentAssociationsOnFinAccountTransCancel({String finAccountTransId}) =>
      client.invoke('expirePaymentAssociationsOnFinAccountTransCancel', null, { 'finAccountTransId': finAccountTransId });

  /**
   * Deposit Funds into a Financial Account - 
   *
   * Requires finAccountId, amount
   * Returns amount[BigDecimal], balance[BigDecimal], previousBalance[BigDecimal], processResult[Boolean], referenceNum[String]
   */
  Future<OfResult> finAccountDeposit({@required String finAccountId, String productStoreId, bool isRefund, String currency, String partyId, String orderId, String orderItemSeqId, String reasonEnumId, @required Decimal amount}) =>
      client.invoke('finAccountDeposit', null, { 'finAccountId': finAccountId, 'productStoreId': productStoreId, 'isRefund': isRefund, 'currency': currency, 'partyId': partyId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'reasonEnumId': reasonEnumId, 'amount': amount });

  /**
   * Refunds the deposits to a financial account back to the source - 
   *
   * Requires finAccountId
   * Returns 
   */
  Future<OfResult> finAccountRefund({@required String finAccountId}) =>
      client.invoke('finAccountRefund', null, { 'finAccountId': finAccountId });

  /**
   * Auto-replenish a financial account - 
   *
   * Requires finAccountId
   * Returns 
   */
  Future<OfResult> finAccountReplenish({@required String finAccountId, String productStoreId}) =>
      client.invoke('finAccountReplenish', null, { 'finAccountId': finAccountId, 'productStoreId': productStoreId });

  /**
   * Deposit Funds into a Financial Account - 
   *
   * Requires finAccountId, amount
   * Returns amount[BigDecimal], balance[BigDecimal], previousBalance[BigDecimal], processResult[Boolean], referenceNum[String]
   */
  Future<OfResult> finAccountWithdraw({@required String finAccountId, String productStoreId, bool requireBalance, String currency, String partyId, String orderId, String orderItemSeqId, String reasonEnumId, @required Decimal amount}) =>
      client.invoke('finAccountWithdraw', null, { 'finAccountId': finAccountId, 'productStoreId': productStoreId, 'requireBalance': requireBalance, 'currency': currency, 'partyId': partyId, 'orderId': orderId, 'orderItemSeqId': orderItemSeqId, 'reasonEnumId': reasonEnumId, 'amount': amount });

  /**
   * Get associated acctgTransEntries with finAccountTrans - 
   *
   * Requires finAccountTransId
   * Returns acctgTransAndEntries[List]
   */
  Future<OfResult> getAssociatedAcctgTransEntriesWithFinAccountTrans({@required String finAccountTransId}) =>
      client.invoke('getAssociatedAcctgTransEntriesWithFinAccountTrans', null, { 'finAccountTransId': finAccountTransId });

  /**
   * Financial Account Transaction List and Totals - 
   *
   * Requires finAccountId
   * Returns finAccountTransList[List], searchedNumberOfRecords[Integer], grandTotal[BigDecimal], createdGrandTotal[BigDecimal], totalCreatedTransactions[Long], approvedGrandTotal[BigDecimal], totalApprovedTransactions[Long], createdApprovedGrandTotal[BigDecimal], totalCreatedApprovedTransactions[Long], glReconciliationApprovedGrandTotal[BigDecimal]
   */
  Future<OfResult> getFinAccountTransListAndTotals({@required String finAccountId, String finAccountTransTypeId, String statusId, String glReconciliationId, DateTime fromTransactionDate, DateTime thruTransactionDate, DateTime fromEntryDate, DateTime thruEntryDate, Decimal openingBalance}) =>
      client.invoke('getFinAccountTransListAndTotals', null, { 'finAccountId': finAccountId, 'finAccountTransTypeId': finAccountTransTypeId, 'statusId': statusId, 'glReconciliationId': glReconciliationId, 'fromTransactionDate': fromTransactionDate, 'thruTransactionDate': thruTransactionDate, 'fromEntryDate': fromEntryDate, 'thruEntryDate': thruEntryDate, 'openingBalance': openingBalance });

  /**
   * Financial Account Running Total - 
   *
   * Requires finAccountTransId, organizationPartyId
   * Returns runningTotal[BigDecimal], numberOfTransactions[Long], finAccountTransRunningTotal[String], endingBalance[String]
   */
  Future<OfResult> getFinAccountTransRunningTotalAndBalances({@required String finAccountTransId, @required String organizationPartyId, Decimal openingBalance, Decimal reconciledBalance, Decimal runningTotal, int numberOfTransactions}) =>
      client.invoke('getFinAccountTransRunningTotalAndBalances', null, { 'finAccountTransId': finAccountTransId, 'organizationPartyId': organizationPartyId, 'openingBalance': openingBalance, 'reconciledBalance': reconciledBalance, 'runningTotal': runningTotal, 'numberOfTransactions': numberOfTransactions });

  /**
   * Service to Get Reconciliation closing balance. - 
   *
   * Requires glReconciliationId
   * Returns closingBalance[BigDecimal]
   */
  Future<OfResult> getReconciliationClosingBalance({@required String glReconciliationId}) =>
      client.invoke('getReconciliationClosingBalance', null, { 'glReconciliationId': glReconciliationId });

  /**
   * Transaction Total By GlReconcile Id - 
   *
   * Requires glReconciliationId
   * Returns grandTotal[BigDecimal]
   */
  Future<OfResult> getTransactionTotalByGlReconcileId({@required String glReconciliationId}) =>
      client.invoke('getTransactionTotalByGlReconcileId', null, { 'glReconciliationId': glReconciliationId });

  /**
   * Check GlReconciliation is Reconciled or not - 
   *
   * Requires glReconciliationId
   * Returns isReconciled[Boolean]
   */
  Future<OfResult> isGlReconciliationReconciled({@required String glReconciliationId}) =>
      client.invoke('isGlReconciliationReconciled', null, { 'glReconciliationId': glReconciliationId });

  /**
   * Authorize a potential transaction against a financial account - 
   *
   * Requires orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> ofbFaAuthorize({String finAccountCode, String finAccountPin, String finAccountId, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ofbFaAuthorize', null, { 'finAccountCode': finAccountCode, 'finAccountPin': finAccountPin, 'finAccountId': finAccountId, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Capture funds from a pre-authroized financial account transaction - 
   *
   * Requires orderPaymentPreference, captureAmount
   * Returns captureAmount[BigDecimal], captureResult[Boolean], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ofbFaCapture({@required Map<String,dynamic> orderPaymentPreference, @required Decimal captureAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('ofbFaCapture', null, { 'orderPaymentPreference': orderPaymentPreference, 'captureAmount': captureAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Return funds back to a financial account. - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ofbFaRefund({String finAccountId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ofbFaRefund', null, { 'finAccountId': finAccountId, 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Release authorizations back to a financial account. - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ofbFaRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('ofbFaRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Authorize a potential transaction against a Gift Certificate - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> ofbGcAuthorize({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ofbGcAuthorize', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Process a sale using FinAccount Gift Certificate - 
   *
   * Requires giftCard, orderId, orderPaymentPreference, processAmount, orderItems, billToParty
   * Returns processAmount[BigDecimal], authResult[Boolean], captureResult[Boolean], resultDeclined[Boolean], resultNsf[Boolean], resultBadExpire[Boolean], resultBadCardNumber[Boolean], authCode[String], authAltRefNum[String], authRefNum[String], authFlag[String], authMessage[String], cvCode[String], avsCode[String], scoreCode[String], captureAltRefNum[String], captureRefNum[String], captureCode[String], captureFlag[String], captureMessage[String], internalRespMsgs[List], customerRespMsgs[List]
   */
  Future<OfResult> ofbGcProcessor({@required Map<String,dynamic> giftCard, @required String orderId, @required Map<String,dynamic> orderPaymentPreference, @required Decimal processAmount, @required List<dynamic> orderItems, @required Map<String,dynamic> billToParty, Map<String,dynamic> billToEmail, Map<String,dynamic> billingAddress, Map<String,dynamic> shippingAddress, String customerIpAddress, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ofbGcProcessor', null, { 'giftCard': giftCard, 'orderId': orderId, 'orderPaymentPreference': orderPaymentPreference, 'processAmount': processAmount, 'orderItems': orderItems, 'billToParty': billToParty, 'billToEmail': billToEmail, 'billingAddress': billingAddress, 'shippingAddress': shippingAddress, 'customerIpAddress': customerIpAddress, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Automatic CG Purchase Fulfillment Service - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns 
   */
  Future<OfResult> ofbGcPurchase({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('ofbGcPurchase', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * Return funds back to a Gift Certificate.  Amounts are added back to the gift certificate. - 
   *
   * Requires orderPaymentPreference, refundAmount
   * Returns refundAmount[BigDecimal], refundResult[Boolean], refundAltRefNum[String], refundRefNum[String], refundCode[String], refundFlag[String], refundMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ofbGcRefund({@required Map<String,dynamic> orderPaymentPreference, @required Decimal refundAmount, String currency, String paymentConfig, String paymentGatewayConfigId}) =>
      client.invoke('ofbGcRefund', null, { 'orderPaymentPreference': orderPaymentPreference, 'refundAmount': refundAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Release authorizations back to a Gift Certificate.  No amount is added back, but an authorization is cancelled. - 
   *
   * Requires orderPaymentPreference, releaseAmount
   * Returns releaseAmount[BigDecimal], releaseResult[Boolean], releaseAltRefNum[String], releaseRefNum[String], releaseCode[String], releaseFlag[String], releaseMessage[String], internalRespMsgs[List]
   */
  Future<OfResult> ofbGcRelease({@required Map<String,dynamic> orderPaymentPreference, @required Decimal releaseAmount, String currency, String paymentConfig, Map<String,dynamic> authTrans, String paymentGatewayConfigId}) =>
      client.invoke('ofbGcRelease', null, { 'orderPaymentPreference': orderPaymentPreference, 'releaseAmount': releaseAmount, 'currency': currency, 'paymentConfig': paymentConfig, 'authTrans': authTrans, 'paymentGatewayConfigId': paymentGatewayConfigId });

  /**
   * Automatic GC Reload Service - 
   *
   * Requires productId, contentId, productContentTypeId, fromDate, orderItem
   * Returns 
   */
  Future<OfResult> ofbGcReload({@required String productId, @required String contentId, @required String productContentTypeId, @required DateTime fromDate, @required Map<String,dynamic> orderItem}) =>
      client.invoke('ofbGcReload', null, { 'productId': productId, 'contentId': contentId, 'productContentTypeId': productContentTypeId, 'fromDate': fromDate, 'orderItem': orderItem });

  /**
   * Post a Financial Account Transaction to the General Ledger; meant to be called as an SECA - 
   *
   * Requires finAccountTransId, glAccountId
   * Returns 
   */
  Future<OfResult> postFinAccountTransToGl({@required String finAccountTransId, @required String glAccountId}) =>
      client.invoke('postFinAccountTransToGl', null, { 'finAccountTransId': finAccountTransId, 'glAccountId': glAccountId });

  /**
   * Reconcile Financial Accounting Financial Transactions - 
   *
   * Requires finAccountTrans, organizationPartyId
   * Returns 
   */
  Future<OfResult> reconcileAdjustmentFinAcctgTrans({@required Map<String,dynamic> finAccountTrans, @required String organizationPartyId}) =>
      client.invoke('reconcileAdjustmentFinAcctgTrans', null, { 'finAccountTrans': finAccountTrans, 'organizationPartyId': organizationPartyId });

  /**
   * Reconcile Financial Accounting Financial Transactions - 
   *
   * Requires finAccountTrans
   * Returns 
   */
  Future<OfResult> reconcileDepositFinAcctgTrans({@required Map<String,dynamic> finAccountTrans}) =>
      client.invoke('reconcileDepositFinAcctgTrans', null, { 'finAccountTrans': finAccountTrans });

  /**
   * Reconcile Financial Accounting Financial Transactions - 
   *
   * Requires finAccountTransId, organizationPartyId
   * Returns 
   */
  Future<OfResult> reconcileFinAccountTrans({@required String finAccountTransId, @required String organizationPartyId, String glAccountId, String debitCreditFlag}) =>
      client.invoke('reconcileFinAccountTrans', null, { 'finAccountTransId': finAccountTransId, 'organizationPartyId': organizationPartyId, 'glAccountId': glAccountId, 'debitCreditFlag': debitCreditFlag });

  /**
   * Reconcile Financial Accounting Financial Transactions - 
   *
   * Requires finAccountTrans
   * Returns 
   */
  Future<OfResult> reconcileWithdrawalFinAcctgTrans({@required Map<String,dynamic> finAccountTrans}) =>
      client.invoke('reconcileWithdrawalFinAcctgTrans', null, { 'finAccountTrans': finAccountTrans });

  /**
   * Deduct funds from a Gift Certificate - 
   *
   * Requires productStoreId, cardNumber, pinNumber, amount
   * Returns amount[BigDecimal], balance[BigDecimal], previousBalance[BigDecimal], processResult[Boolean], responseCode[String], referenceNum[String]
   */
  Future<OfResult> redeemGiftCertificate({@required String productStoreId, @required String cardNumber, @required String pinNumber, @required Decimal amount, String currency, String partyId}) =>
      client.invoke('redeemGiftCertificate', null, { 'productStoreId': productStoreId, 'cardNumber': cardNumber, 'pinNumber': pinNumber, 'amount': amount, 'currency': currency, 'partyId': partyId });

  /**
   * Creates return for reload on failure - 
   *
   * Requires orderItem, partyId
   * Returns 
   */
  Future<OfResult> refundGcPurchase({@required Map<String,dynamic> orderItem, @required String partyId}) =>
      client.invoke('refundGcPurchase', null, { 'orderItem': orderItem, 'partyId': partyId });

  /**
   * Remove finaAccountTrans association with gl reconciliation - 
   *
   * Requires finAccountTransId
   * Returns 
   */
  Future<OfResult> removeFinAccountTransFromReconciliation({@required String finAccountTransId}) =>
      client.invoke('removeFinAccountTransFromReconciliation', null, { 'finAccountTransId': finAccountTransId });

  /**
   * Set financial account transaction status - 
   *
   * Requires 
   * Returns oldStatusId[String]
   */
  Future<OfResult> setFinAccountTransStatus({String finAccountTransId, String statusId}) =>
      client.invoke('setFinAccountTransStatus', null, { 'finAccountTransId': finAccountTransId, 'statusId': statusId });

  /**
   * Update a Financial Account - FinAccount
   *
   * Requires finAccountId
   * Returns finAccountId[String], oldStatusId[String], oldReplenishPaymentId[String], oldReplenishLevel[BigDecimal], replenishPaymentId[String], replenishLevel[BigDecimal]
   */
  Future<OfResult> updateFinAccount(FinAccount ent, ) =>
      client.invoke('updateFinAccount', ent, {  });

  /**
   * Update a FinAccountAttribute - FinAccountAttribute
   *
   * Requires finAccountId, attrName
   * Returns 
   */
  Future<OfResult> updateFinAccountAttribute(FinAccountAttribute ent, ) =>
      client.invoke('updateFinAccountAttribute', ent, {  });

  /**
   * Update FinAccount.availableBalance based on a new FinAccountAuth; meant to be called as an EECA as it is for data maintenance - 
   *
   * Requires finAccountAuthId
   * Returns 
   */
  Future<OfResult> updateFinAccountBalancesFromAuth({@required String finAccountAuthId}) =>
      client.invoke('updateFinAccountBalancesFromAuth', null, { 'finAccountAuthId': finAccountAuthId });

  /**
   * Update FinAccount.actualBalance and FinAccount.availableBalance based on a new FinAccountTrans; meant to be called as an EECA as it is for data maintenance - 
   *
   * Requires finAccountTransId
   * Returns 
   */
  Future<OfResult> updateFinAccountBalancesFromTrans({@required String finAccountTransId}) =>
      client.invoke('updateFinAccountBalancesFromTrans', null, { 'finAccountTransId': finAccountTransId });

  /**
   * Update a FinAccountRole - FinAccountRole
   *
   * Requires finAccountId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateFinAccountRole(FinAccountRole ent, ) =>
      client.invoke('updateFinAccountRole', ent, {  });

  /**
   * Update a FinAccountTransAttribute - FinAccountTransAttribute
   *
   * Requires finAccountTransId, attrName
   * Returns 
   */
  Future<OfResult> updateFinAccountTransAttribute(FinAccountTransAttribute ent, ) =>
      client.invoke('updateFinAccountTransAttribute', ent, {  });

  /**
   * Update a FinAccountTransType record - FinAccountTransType
   *
   * Requires finAccountTransTypeId
   * Returns 
   */
  Future<OfResult> updateFinAccountTransType(FinAccountTransType ent, ) =>
      client.invoke('updateFinAccountTransType', ent, {  });

  /**
   * Update a FinAccountTransType - FinAccountTransTypeAttr
   *
   * Requires finAccountTransTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateFinAccountTransTypeAttr(FinAccountTransTypeAttr ent, ) =>
      client.invoke('updateFinAccountTransTypeAttr', ent, {  });

  /**
   * Update a FinAccountType - FinAccountType
   *
   * Requires finAccountTypeId
   * Returns 
   */
  Future<OfResult> updateFinAccountType(FinAccountType ent, ) =>
      client.invoke('updateFinAccountType', ent, {  });

  /**
   * Update a FinAccountTypeAttr - FinAccountTypeAttr
   *
   * Requires finAccountTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateFinAccountTypeAttr(FinAccountTypeAttr ent, ) =>
      client.invoke('updateFinAccountTypeAttr', ent, {  });

  /**
   * Update payment when FinAccountTrans status is set to Cancle, remove finAccountTransId form Payment entity. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updatePaymentOnFinAccTransStatusSetToCancel({String finAccountTransId}) =>
      client.invoke('updatePaymentOnFinAccTransStatusSetToCancel', null, { 'finAccountTransId': finAccountTransId });

}