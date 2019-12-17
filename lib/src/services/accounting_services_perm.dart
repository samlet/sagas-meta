import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesPerm{
  final SrvClient client;
  AccountingServicesPerm(this.client);

  /**
   * Accounting Agreement Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgAgreementPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgAgreementPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Basic Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgBasePermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgBasePermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Basic Billing Account Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgBillingAcctCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgBillingAcctCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Commission Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgCommissionPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgCommissionPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Cost Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgCostPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgCostPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Financial Account Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgFinAcctPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgFinAcctPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Foreign Exchange Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgFxPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgFxPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Invoice Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgInvoicePermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgInvoicePermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Payment Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgPaymentPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgPaymentPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Accounting Preferences Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgPrefPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgPrefPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Basic General Ledger Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> acctgTransactionPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('acctgTransactionPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Basic General Ledger Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> basicGeneralLedgerPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('basicGeneralLedgerPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Fixed Asset Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> fixedAssetPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('fixedAssetPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

}