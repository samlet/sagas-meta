import 'package:sagas_meta/src/models/common_geo.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesGeo{
  final SrvClient client;
  CommonServicesGeo(this.client);

  /**
   * Create a Country Address Format - CountryAddressFormat
   *
   * Requires geoId
   * Returns 
   */
  Future<OfResult> createCountryAddressFormat(CountryAddressFormat ent, ) =>
      client.invoke('createCountryAddressFormat', ent, {  });

  /**
   * Create a Country Capital - CountryCapital
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> createCountryCapital(CountryCapital ent, ) =>
      client.invoke('createCountryCapital', ent, {  });

  /**
   * Create a Country Code - CountryCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> createCountryCode(CountryCode ent, ) =>
      client.invoke('createCountryCode', ent, {  });

  /**
   * Create a Country Tele Code - CountryTeleCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> createCountryTeleCode(CountryTeleCode ent, ) =>
      client.invoke('createCountryTeleCode', ent, {  });

  /**
   * Delete a Country Address Format - CountryAddressFormat
   *
   * Requires geoId
   * Returns 
   */
  Future<OfResult> deleteCountryAddressFormat(CountryAddressFormat ent, ) =>
      client.invoke('deleteCountryAddressFormat', ent, {  });

  /**
   * Delete a Country Capital - CountryCapital
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> deleteCountryCapital(CountryCapital ent, ) =>
      client.invoke('deleteCountryCapital', ent, {  });

  /**
   * Delete a Country Code - CountryCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> deleteCountryCode(CountryCode ent, ) =>
      client.invoke('deleteCountryCode', ent, {  });

  /**
   * Delete a Country Tele Code - CountryTeleCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> deleteCountryTeleCode(CountryTeleCode ent, ) =>
      client.invoke('deleteCountryTeleCode', ent, {  });

  /**
   * Update a Country Address Format - CountryAddressFormat
   *
   * Requires geoId
   * Returns 
   */
  Future<OfResult> updateCountryAddressFormat(CountryAddressFormat ent, ) =>
      client.invoke('updateCountryAddressFormat', ent, {  });

  /**
   * Update a Country Capital - CountryCapital
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> updateCountryCapital(CountryCapital ent, ) =>
      client.invoke('updateCountryCapital', ent, {  });

  /**
   * Update a Country Code - CountryCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> updateCountryCode(CountryCode ent, ) =>
      client.invoke('updateCountryCode', ent, {  });

  /**
   * Update a Country Tele Code - CountryTeleCode
   *
   * Requires countryCode
   * Returns 
   */
  Future<OfResult> updateCountryTeleCode(CountryTeleCode ent, ) =>
      client.invoke('updateCountryTeleCode', ent, {  });

}