import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesCdyne{
  final SrvClient client;
  CommonServicesCdyne(this.client);

  /**
   * Use the CdyneReturnCityState service to fill in the County on a PostalAddress. Can be called as with a SECA rule. - 
   *
   * Requires contactMechId
   * Returns 
   */
  Future<OfResult> cdynePostalAddressFillInCounty({@required String contactMechId}) =>
      client.invoke('cdynePostalAddressFillInCounty', null, { 'contactMechId': contactMechId });

  /**
   * CDyne ReturnCityState - 
   *
   * Requires 
   * Returns ServiceError[String], AddressError[String], AddressFoundBeMoreSpecific[String], NeededCorrection[String], DeliveryAddress[String], City[String], StateAbbrev[String], ZipCode[String], County[String], CountyNum[String], PreferredCityName[String], DeliveryPoint[String], CheckDigit[String], CSKey[String], FIPS[String], FromLongitude[String], FromLatitude[String], ToLongitude[String], ToLatitude[String], AvgLongitude[String], AvgLatitude[String], CMSA[String], PMSA[String], MSA[String], MA[String], TimeZone[String], hasDaylightSavings[String], AreaCode[String], LLCertainty[String], CensusBlockNum[String], CensusTractNum[String]
   */
  Future<OfResult> cdyneReturnCityState({String zipcode}) =>
      client.invoke('cdyneReturnCityState', null, { 'zipcode': zipcode });

}