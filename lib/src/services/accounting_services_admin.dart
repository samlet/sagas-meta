import 'package:sagas_meta/src/models/accounting_ledger.dart';
import 'package:sagas_meta/src/models/accounting_payment.dart';
import 'package:sagas_meta/src/models/accounting_invoice.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesAdmin{
  final SrvClient client;
  AccountingServicesAdmin(this.client);

  /**
   * add a override GL account number to a invoice Itemtype for a certain organisation party. - InvoiceItemTypeGlAccount
   *
   * Requires invoiceItemTypeId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> addInvoiceItemTypeGlAssignment(InvoiceItemTypeGlAccount ent, ) =>
      client.invoke('addInvoiceItemTypeGlAssignment', ent, {  });

  /**
   * add a default GL account number to a payment method type. - PaymentMethodTypeGlAccount
   *
   * Requires paymentMethodTypeId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> addPaymentMethodTypeGlAssignment(PaymentMethodTypeGlAccount ent, ) =>
      client.invoke('addPaymentMethodTypeGlAssignment', ent, {  });

  /**
   * add a default GL account type to a payment type. - PaymentGlAccountTypeMap
   *
   * Requires paymentTypeId, organizationPartyId, glAccountTypeId
   * Returns 
   */
  Future<OfResult> addPaymentTypeGlAssignment(PaymentGlAccountTypeMap ent, ) =>
      client.invoke('addPaymentTypeGlAssignment', ent, {  });

  /**
   * Define a default GL account for an Account Type for a certain organisation party. - GlAccountTypeDefault
   *
   * Requires glAccountTypeId, organizationPartyId, glAccountId
   * Returns 
   */
  Future<OfResult> createGlAccountTypeDefault(GlAccountTypeDefault ent, ) =>
      client.invoke('createGlAccountTypeDefault', ent, {  });

  /**
   * Create accounting preferences for a party (organization) - PartyAcctgPreference
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> createPartyAcctgPreference(PartyAcctgPreference ent, ) =>
      client.invoke('createPartyAcctgPreference', ent, {  });

  /**
   * Create a documentType preference for a party (organization) - PartyPrefDocTypeTpl
   *
   * Requires partyId, partyId
   * Returns partyPrefDocTypeTplId[String]
   */
  Future<OfResult> createPartyPrefDocTypeTpl(PartyPrefDocTypeTpl ent, ) =>
      client.invoke('createPartyPrefDocTypeTpl', ent, {  });

  /**
   * Expire a documentType preference for a party (organization) - PartyPrefDocTypeTpl
   *
   * Requires partyPrefDocTypeTplId
   * Returns 
   */
  Future<OfResult> expirePartyPrefDocTypeTpl(PartyPrefDocTypeTpl ent, ) =>
      client.invoke('expirePartyPrefDocTypeTpl', ent, {  });

  /**
   * get the conversion rate - 
   *
   * Requires uomId, uomIdTo
   * Returns conversionRate[BigDecimal]
   */
  Future<OfResult> getFXConversion({@required String uomId, @required String uomIdTo, DateTime asOfTimestamp}) =>
      client.invoke('getFXConversion', null, { 'uomId': uomId, 'uomIdTo': uomIdTo, 'asOfTimestamp': asOfTimestamp });

  /**
   * Get accounting preferences for a party (organization) - PartyAcctgPreference
   *
   * Requires organizationPartyId
   * Returns partyAccountingPreference[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getPartyAccountingPreferences(PartyAcctgPreference ent, {@required String organizationPartyId}) =>
      client.invoke('getPartyAccountingPreferences', ent, { 'organizationPartyId': organizationPartyId });

  /**
   * Remove a default GL account for an Account Type for a certain organisation party. - GlAccountTypeDefault
   *
   * Requires glAccountTypeId, organizationPartyId
   * Returns 
   */
  Future<OfResult> removeGlAccountTypeDefault(GlAccountTypeDefault ent, ) =>
      client.invoke('removeGlAccountTypeDefault', ent, {  });

  /**
   * Remove a override GL account number to a invoice type for a certain organisation party. - InvoiceItemTypeGlAccount
   *
   * Requires invoiceItemTypeId, organizationPartyId
   * Returns 
   */
  Future<OfResult> removeInvoiceItemTypeGlAssignment(InvoiceItemTypeGlAccount ent, ) =>
      client.invoke('removeInvoiceItemTypeGlAssignment', ent, {  });

  /**
   * Remove a default GL account number from a payment method type. - PaymentMethodTypeGlAccount
   *
   * Requires paymentMethodTypeId, organizationPartyId
   * Returns 
   */
  Future<OfResult> removePaymentMethodTypeGlAssignment(PaymentMethodTypeGlAccount ent, ) =>
      client.invoke('removePaymentMethodTypeGlAssignment', ent, {  });

  /**
   * Remove a default GL account type from a payment type. - PaymentGlAccountTypeMap
   *
   * Requires paymentTypeId, organizationPartyId
   * Returns 
   */
  Future<OfResult> removePaymentTypeGlAssignment(PaymentGlAccountTypeMap ent, ) =>
      client.invoke('removePaymentTypeGlAssignment', ent, {  });

  /**
   * Set Accounting Company when select - 
   *
   * Requires 
   * Returns organizationPartyId[String]
   */
  Future<OfResult> setAcctgCompany({String organizationPartyId}) =>
      client.invoke('setAcctgCompany', null, { 'organizationPartyId': organizationPartyId });

  /**
   * Update the conversion rate between two currencies and expire the old conversion rates - 
   *
   * Requires uomId, uomIdTo, conversionFactor
   * Returns 
   */
  Future<OfResult> updateFXConversion({@required String uomId, @required String uomIdTo, @required Decimal conversionFactor, String purposeEnumId, DateTime asOfTimestamp, DateTime fromDate, DateTime thruDate}) =>
      client.invoke('updateFXConversion', null, { 'uomId': uomId, 'uomIdTo': uomIdTo, 'conversionFactor': conversionFactor, 'purposeEnumId': purposeEnumId, 'asOfTimestamp': asOfTimestamp, 'fromDate': fromDate, 'thruDate': thruDate });

  /**
   * Update accounting preferences for a party (organization) - PartyAcctgPreference
   *
   * Requires partyId
   * Returns 
   */
  Future<OfResult> updatePartyAcctgPreference(PartyAcctgPreference ent, ) =>
      client.invoke('updatePartyAcctgPreference', ent, {  });

}