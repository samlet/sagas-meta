import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipmentUsps{
  final SrvClient client;
  ProductServicesShipmentUsps(this.client);

  /**
   *  - 
   *
   * Requires address1, shipmentGatewayConfigId, configProps
   * Returns firmName[String], address1[String], address2[String], city[String], state[String], zip5[String], zip4[String], returnText[String]
   */
  Future<OfResult> uspsAddressValidation({String firmName, @required String address1, String address2, String city, String state, String zip5, String zip4, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsAddressValidation', null, { 'firmName': firmName, 'address1': address1, 'address2': address2, 'city': city, 'state': state, 'zip5': zip5, 'zip4': zip4, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires zip5, shipmentGatewayConfigId, configProps
   * Returns city[String], state[String]
   */
  Future<OfResult> uspsCityStateLookup({@required String zip5, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsCityStateLookup', null, { 'zip5': zip5, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> uspsDeliveryConfirmation({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('uspsDeliveryConfirmation', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   *  - 
   *
   * Requires service, originZip, destinationZip, pounds, ounces, shipmentGatewayConfigId, configProps
   * Returns zone[String], postage[String], restrictionCodes[String], restrictionDesc[String]
   */
  Future<OfResult> uspsDomesticRate({@required String service, @required String originZip, @required String destinationZip, @required String pounds, @required String ounces, String container, String size, String machinable, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsDomesticRate', null, { 'service': service, 'originZip': originZip, 'destinationZip': destinationZip, 'pounds': pounds, 'ounces': ounces, 'container': container, 'size': size, 'machinable': machinable, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> uspsInternationalRateInquire({String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('uspsInternationalRateInquire', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   *  - 
   *
   * Requires originZip, destinationZip, shipmentGatewayConfigId, configProps
   * Returns days[String]
   */
  Future<OfResult> uspsPackageServicesStandard({@required String originZip, @required String destinationZip, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsPackageServicesStandard', null, { 'originZip': originZip, 'destinationZip': destinationZip, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires originZip, destinationZip, shipmentGatewayConfigId, configProps
   * Returns days[String]
   */
  Future<OfResult> uspsPriorityMailStandard({@required String originZip, @required String destinationZip, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsPriorityMailStandard', null, { 'originZip': originZip, 'destinationZip': destinationZip, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> uspsRateInquire({String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('uspsRateInquire', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   *  - 
   *
   * Requires trackingId, shipmentGatewayConfigId, configProps
   * Returns trackingSummary[String], trackingDetailList[List]
   */
  Future<OfResult> uspsTrackConfirm({@required String trackingId, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('uspsTrackConfirm', null, { 'trackingId': trackingId, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   *  - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> uspsUpdateShipmentRateInfo({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('uspsUpdateShipmentRateInfo', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

}