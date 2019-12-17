import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipmentUps{
  final SrvClient client;
  ProductServicesShipmentUps(this.client);

  /**
   *  - 
   *
   * Requires 
   * Returns matches[List]
   */
  Future<OfResult> upsAddressValidation({String city, String stateProvinceGeoId, String postalCode}) =>
      client.invoke('upsAddressValidation', null, { 'city': city, 'stateProvinceGeoId': stateProvinceGeoId, 'postalCode': postalCode });

  /**
   * Email UPS Retrun Label - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> upsEmailReturnLabel({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('upsEmailReturnLabel', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * UPS On-Line rate inquire tool.  Also supports rate shopping by setting upsRateInquireMode to 'Shop', and upsRateCodeMap
                will return a Map of serviceCode -> rate - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns upsRateCodeMap[Map], shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> upsRateEstimate({String upsRateInquireMode, List<dynamic> packageWeights, String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('upsRateEstimate', null, { 'upsRateInquireMode': upsRateInquireMode, 'packageWeights': packageWeights, 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   * UPS On-Line rate inquire tool.  Also supports rate shopping by setting upsRateInquireMode to 'Shop', and upsRateCodeMap
            will return a Map of serviceCode -> rate - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns shippingEstimateAmount[BigDecimal], upsRateCodeMap[Map]
   */
  Future<OfResult> upsRateEstimateByPostalCode({String serviceConfigProps, Decimal initialEstimateAmt, String shippingPostalCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, @required String productStoreId, List<dynamic> packageWeights, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String upsRateInquireMode, String isResidentialAddress, String shippingCountryCode, Map<String,dynamic> shipFromAddress, String shipmentGatewayConfigId}) =>
      client.invoke('upsRateEstimateByPostalCode', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingPostalCode': shippingPostalCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreId': productStoreId, 'packageWeights': packageWeights, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'upsRateInquireMode': upsRateInquireMode, 'isResidentialAddress': isResidentialAddress, 'shippingCountryCode': shippingCountryCode, 'shipFromAddress': shipFromAddress, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   * UPS Shipment Accept - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> upsShipmentAccept({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('upsShipmentAccept', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * UPS On-Line rate inquire tool. Supports rate shopping where  upsRateInquireMode is set to 'Shop', and shippingRates 
                will return a List of Maps, of serviceCode -> rate for the shipping methods which are configured in ProductStoreShipmentMeth entity - 
   *
   * Requires productStoreId, shipmentId
   * Returns shippingRates[List]
   */
  Future<OfResult> upsShipmentAlternateRatesEstimate({@required String productStoreId, @required String shipmentId, String shipmentRouteSegmentId}) =>
      client.invoke('upsShipmentAlternateRatesEstimate', null, { 'productStoreId': productStoreId, 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * UPS Shipment Confirm - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> upsShipmentConfirm({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('upsShipmentConfirm', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * UPS Track Shipment - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> upsTrackShipment({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('upsTrackShipment', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * UPS Void Shipment - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> upsVoidShipment({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('upsVoidShipment', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

}