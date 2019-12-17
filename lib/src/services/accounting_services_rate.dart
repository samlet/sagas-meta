import 'package:sagas_meta/src/models/accounting_rate.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesRate{
  final SrvClient client;
  AccountingServicesRate(this.client);

  /**
   * Create a RateType - RateType
   *
   * Requires 
   * Returns rateTypeId[String]
   */
  Future<OfResult> createRateType(RateType ent, ) =>
      client.invoke('createRateType', ent, {  });

  /**
   * Deletes PartyRate - PartyRate
   *
   * Requires partyId, rateTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyRate(PartyRate ent, {DateTime rateAmountFromDate}) =>
      client.invoke('deletePartyRate', ent, { 'rateAmountFromDate': rateAmountFromDate });

  /**
   * Deprecated please use expireRateAmount - RateAmount
   *
   * Requires rateTypeId, fromDate, rateTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteRateAmount(RateAmount ent, ) =>
      client.invoke('deleteRateAmount', ent, {  });

  /**
   * Delete a RateType - RateType
   *
   * Requires rateTypeId
   * Returns 
   */
  Future<OfResult> deleteRateType(RateType ent, ) =>
      client.invoke('deleteRateType', ent, {  });

  /**
   * Expire PartyRate and expire related rateAmount - PartyRate
   *
   * Requires partyId, rateTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expirePartyRate(PartyRate ent, {DateTime rateAmountFromDate}) =>
      client.invoke('expirePartyRate', ent, { 'rateAmountFromDate': rateAmountFromDate });

  /**
   * expire Rate Amount - RateAmount
   *
   * Requires rateTypeId, fromDate, rateTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireRateAmount(RateAmount ent, ) =>
      client.invoke('expireRateAmount', ent, {  });

  /**
   * Get the most specific non-empty Rate Amount list from a list of Rate Amount, given the input parameters :
        workEffortId, partyId, emplPositionTypeId and rateTypeId - RateAmount
   *
   * Requires 
   * Returns filteredRatesList[List]
   */
  Future<OfResult> filterRateAmountList(RateAmount ent, {List<dynamic> ratesList}) =>
      client.invoke('filterRateAmountList', ent, { 'ratesList': ratesList });

  /**
   * Get Rate Amount - RateAmount
   *
   * Requires rateTypeId, rateTypeId
   * Returns level[String], rateAmount[BigDecimal], periodTypeId[String], rateCurrencyUomId[String], fromDate[Timestamp]
   */
  Future<OfResult> getRateAmount(RateAmount ent, ) =>
      client.invoke('getRateAmount', ent, {  });

  /**
   * Get all Rates Amounts for a given emplPositionTypeId - RateAmount
   *
   * Requires emplPositionTypeId, emplPositionTypeId
   * Returns periodTypeId[String], rateCurrencyUomId[String], ratesList[List]
   */
  Future<OfResult> getRatesAmountsFromEmplPositionTypeId(RateAmount ent, ) =>
      client.invoke('getRatesAmountsFromEmplPositionTypeId', ent, {  });

  /**
   * Get all Rates Amounts for a given partyId - RateAmount
   *
   * Requires partyId, partyId
   * Returns periodTypeId[String], rateCurrencyUomId[String], ratesList[List]
   */
  Future<OfResult> getRatesAmountsFromPartyId(RateAmount ent, ) =>
      client.invoke('getRatesAmountsFromPartyId', ent, {  });

  /**
   * Get all Rates Amounts for a given workEffortId - RateAmount
   *
   * Requires workEffortId, workEffortId
   * Returns periodTypeId[String], rateCurrencyUomId[String], ratesList[List]
   */
  Future<OfResult> getRatesAmountsFromWorkEffortId(RateAmount ent, ) =>
      client.invoke('getRatesAmountsFromWorkEffortId', ent, {  });

  /**
   * Creates PartyRate - PartyRate
   *
   * Requires partyId, rateTypeId, periodTypeId
   * Returns 
   */
  Future<OfResult> updatePartyRate(PartyRate ent, {String organizationPartyId, Decimal rateAmount, String rateCurrencyUomId, @required String periodTypeId}) =>
      client.invoke('updatePartyRate', ent, { 'organizationPartyId': organizationPartyId, 'rateAmount': rateAmount, 'rateCurrencyUomId': rateCurrencyUomId, 'periodTypeId': periodTypeId });

  /**
   * Create/update Rate Amount - RateAmount
   *
   * Requires rateTypeId, rateAmount, rateTypeId, rateAmount
   * Returns 
   */
  Future<OfResult> updateRateAmount(RateAmount ent, ) =>
      client.invoke('updateRateAmount', ent, {  });

  /**
   * Update a RateType - RateType
   *
   * Requires rateTypeId
   * Returns 
   */
  Future<OfResult> updateRateType(RateType ent, ) =>
      client.invoke('updateRateType', ent, {  });

}