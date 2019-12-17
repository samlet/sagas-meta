import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipmentDhl{
  final SrvClient client;
  ProductServicesShipmentDhl(this.client);

  /**
   * DHL ShipIt rate inquire tool - 
   *
   * Requires shipmentMethodTypeId, carrierPartyId, carrierRoleTypeId, productStoreId, shippableItemInfo, shippableWeight, shippableQuantity, shippableTotal
   * Returns dhlRateCodeMap[Map], shippingEstimateAmount[BigDecimal]
   */
  Future<OfResult> dhlRateEstimate({String serviceConfigProps, Decimal initialEstimateAmt, String shippingContactMechId, String shippingOriginContactMechId, String shippingPostalCode, String shippingCountryCode, @required String shipmentMethodTypeId, @required String carrierPartyId, @required String carrierRoleTypeId, String productStoreShipMethId, @required String productStoreId, @required List<dynamic> shippableItemInfo, @required Decimal shippableWeight, @required Decimal shippableQuantity, @required Decimal shippableTotal, String partyId, String shipmentCustomMethodId, String shipmentGatewayConfigId}) =>
      client.invoke('dhlRateEstimate', null, { 'serviceConfigProps': serviceConfigProps, 'initialEstimateAmt': initialEstimateAmt, 'shippingContactMechId': shippingContactMechId, 'shippingOriginContactMechId': shippingOriginContactMechId, 'shippingPostalCode': shippingPostalCode, 'shippingCountryCode': shippingCountryCode, 'shipmentMethodTypeId': shipmentMethodTypeId, 'carrierPartyId': carrierPartyId, 'carrierRoleTypeId': carrierRoleTypeId, 'productStoreShipMethId': productStoreShipMethId, 'productStoreId': productStoreId, 'shippableItemInfo': shippableItemInfo, 'shippableWeight': shippableWeight, 'shippableQuantity': shippableQuantity, 'shippableTotal': shippableTotal, 'partyId': partyId, 'shipmentCustomMethodId': shipmentCustomMethodId, 'shipmentGatewayConfigId': shipmentGatewayConfigId });

  /**
   * DHL ShipIt Register Account inquire tool - 
   *
   * Requires postalCode, shipmentGatewayConfigId, configProps
   * Returns shippingKey[String]
   */
  Future<OfResult> dhlRegisterAccount({@required String postalCode, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('dhlRegisterAccount', null, { 'postalCode': postalCode, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

  /**
   * DHL Shipment Confirm - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> dhlShipmentConfirm({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('dhlShipmentConfirm', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

}