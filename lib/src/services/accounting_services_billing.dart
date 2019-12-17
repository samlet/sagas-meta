import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesBilling{
  final SrvClient client;
  AccountingServicesBilling(this.client);

  /**
   * Calculate the balance of a Billing Account - 
   *
   * Requires billingAccountId
   * Returns accountBalance[BigDecimal], netAccountBalance[BigDecimal], availableBalance[BigDecimal], availableToCapture[BigDecimal], billingAccount[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> calcBillingAccountBalance({@required String billingAccountId}) =>
      client.invoke('calcBillingAccountBalance', null, { 'billingAccountId': billingAccountId });

  /**
   * Create a Billing Account - BillingAccount
   *
   * Requires 
   * Returns billingAccountId[String]
   */
  Future<OfResult> createBillingAccount(BillingAccount ent, ) =>
      client.invoke('createBillingAccount', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns billingAccountId[String]
   */
  Future<OfResult> createBillingAccountAndRole({Decimal accountLimit, String accountCurrencyUomId, String contactMechId, DateTime fromDate, DateTime thruDate, String description, String externalAccountId, String partyId, String roleTypeId, String billingAccountId}) =>
      client.invoke('createBillingAccountAndRole', null, { 'accountLimit': accountLimit, 'accountCurrencyUomId': accountCurrencyUomId, 'contactMechId': contactMechId, 'fromDate': fromDate, 'thruDate': thruDate, 'description': description, 'externalAccountId': externalAccountId, 'partyId': partyId, 'roleTypeId': roleTypeId, 'billingAccountId': billingAccountId });

  /**
   * Create a Billing Account Role - BillingAccountRole
   *
   * Requires billingAccountId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createBillingAccountRole(BillingAccountRole ent, ) =>
      client.invoke('createBillingAccountRole', ent, {  });

  /**
   * Create a Billing Account Term - BillingAccountTerm
   *
   * Requires billingAccountId, termTypeId, termTypeId, billingAccountId
   * Returns billingAccountTermId[String]
   */
  Future<OfResult> createBillingAccountTerm(BillingAccountTerm ent, ) =>
      client.invoke('createBillingAccountTerm', ent, {  });

  /**
   * Remove a Billing Account Role - BillingAccountRole
   *
   * Requires billingAccountId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeBillingAccountRole(BillingAccountRole ent, ) =>
      client.invoke('removeBillingAccountRole', ent, {  });

  /**
   * Remove a Billing Account Term - BillingAccountTerm
   *
   * Requires billingAccountTermId
   * Returns 
   */
  Future<OfResult> removeBillingAccountTerm(BillingAccountTerm ent, ) =>
      client.invoke('removeBillingAccountTerm', ent, {  });

  /**
   * Update a Billing Account - BillingAccount
   *
   * Requires billingAccountId
   * Returns 
   */
  Future<OfResult> updateBillingAccount(BillingAccount ent, ) =>
      client.invoke('updateBillingAccount', ent, {  });

  /**
   * Update a Billing Account Role - BillingAccountRole
   *
   * Requires billingAccountId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateBillingAccountRole(BillingAccountRole ent, ) =>
      client.invoke('updateBillingAccountRole', ent, {  });

  /**
   * Update a Billing Account Term - BillingAccountTerm
   *
   * Requires billingAccountTermId, billingAccountId, termTypeId, termTypeId, billingAccountId
   * Returns 
   */
  Future<OfResult> updateBillingAccountTerm(BillingAccountTerm ent, ) =>
      client.invoke('updateBillingAccountTerm', ent, {  });

}