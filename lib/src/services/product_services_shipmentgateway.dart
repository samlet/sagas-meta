import 'package:sagas_meta/src/models/shipment_shipment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipmentgateway{
  final SrvClient client;
  ProductServicesShipmentgateway(this.client);

  /**
   * Create a ShipmentGatewayConfig record - ShipmentGatewayConfig
   *
   * Requires 
   * Returns shipmentGatewayConfigId[String]
   */
  Future<OfResult> createShipmentGatewayConfig(ShipmentGatewayConfig ent, ) =>
      client.invoke('createShipmentGatewayConfig', ent, {  });

  /**
   * Create ShipmentGatewayConfigType - ShipmentGatewayConfigType
   *
   * Requires 
   * Returns shipmentGatewayConfTypeId[String]
   */
  Future<OfResult> createShipmentGatewayConfigType(ShipmentGatewayConfigType ent, ) =>
      client.invoke('createShipmentGatewayConfigType', ent, {  });

  /**
   * Create a ShipmentGatewayDhl - ShipmentGatewayDhl
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> createShipmentGatewayDhl(ShipmentGatewayDhl ent, ) =>
      client.invoke('createShipmentGatewayDhl', ent, {  });

  /**
   * Create a ShipmentGatewayFedex - ShipmentGatewayFedex
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> createShipmentGatewayFedex(ShipmentGatewayFedex ent, ) =>
      client.invoke('createShipmentGatewayFedex', ent, {  });

  /**
   * Create a ShipmentGatewayUps - ShipmentGatewayUps
   *
   * Requires shipmentGatewayConfigId
   * Returns shipmentGatewayConfigId[String]
   */
  Future<OfResult> createShipmentGatewayUps(ShipmentGatewayUps ent, ) =>
      client.invoke('createShipmentGatewayUps', ent, {  });

  /**
   * Create a ShipmentGatewayUsps - ShipmentGatewayUsps
   *
   * Requires shipmentGatewayConfigId
   * Returns shipmentGatewayConfigId[String]
   */
  Future<OfResult> createShipmentGatewayUsps(ShipmentGatewayUsps ent, ) =>
      client.invoke('createShipmentGatewayUsps', ent, {  });

  /**
   * Create ShipmentType - ShipmentType
   *
   * Requires 
   * Returns shipmentTypeId[String]
   */
  Future<OfResult> createShipmentType(ShipmentType ent, ) =>
      client.invoke('createShipmentType', ent, {  });

  /**
   * Delete a ShipmentGatewayConfig record - ShipmentGatewayConfig
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayConfig(ShipmentGatewayConfig ent, ) =>
      client.invoke('deleteShipmentGatewayConfig', ent, {  });

  /**
   * Delete ShipmentGatewayConfigType - ShipmentGatewayConfigType
   *
   * Requires shipmentGatewayConfTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayConfigType(ShipmentGatewayConfigType ent, ) =>
      client.invoke('deleteShipmentGatewayConfigType', ent, {  });

  /**
   * Delete a ShipmentGatewayDhl - ShipmentGatewayDhl
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayDhl(ShipmentGatewayDhl ent, ) =>
      client.invoke('deleteShipmentGatewayDhl', ent, {  });

  /**
   * Delete a ShipmentGatewayFedex - ShipmentGatewayFedex
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayFedex(ShipmentGatewayFedex ent, ) =>
      client.invoke('deleteShipmentGatewayFedex', ent, {  });

  /**
   * Delete a ShipmentGatewayUps - ShipmentGatewayUps
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayUps(ShipmentGatewayUps ent, ) =>
      client.invoke('deleteShipmentGatewayUps', ent, {  });

  /**
   * Delete a ShipmentGatewayUsps - ShipmentGatewayUsps
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> deleteShipmentGatewayUsps(ShipmentGatewayUsps ent, ) =>
      client.invoke('deleteShipmentGatewayUsps', ent, {  });

  /**
   * Delete ShipmentType - ShipmentType
   *
   * Requires shipmentTypeId
   * Returns 
   */
  Future<OfResult> deleteShipmentType(ShipmentType ent, ) =>
      client.invoke('deleteShipmentType', ent, {  });

  /**
   * Update a ShipmentGatewayConfig - ShipmentGatewayConfig
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayConfig(ShipmentGatewayConfig ent, ) =>
      client.invoke('updateShipmentGatewayConfig', ent, {  });

  /**
   * Update a ShipmentGatewayConfigType - ShipmentGatewayConfigType
   *
   * Requires shipmentGatewayConfTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayConfigType(ShipmentGatewayConfigType ent, ) =>
      client.invoke('updateShipmentGatewayConfigType', ent, {  });

  /**
   * Update a ShipmentGatewayDhl record - ShipmentGatewayDhl
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayDhl(ShipmentGatewayDhl ent, ) =>
      client.invoke('updateShipmentGatewayDhl', ent, {  });

  /**
   * Update a ShipmentGatewayFedex record - ShipmentGatewayFedex
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayFedex(ShipmentGatewayFedex ent, ) =>
      client.invoke('updateShipmentGatewayFedex', ent, {  });

  /**
   * Update a ShipmentGatewayUps - ShipmentGatewayUps
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayUps(ShipmentGatewayUps ent, ) =>
      client.invoke('updateShipmentGatewayUps', ent, {  });

  /**
   * Update a ShipmentGatewayUsps - ShipmentGatewayUsps
   *
   * Requires shipmentGatewayConfigId
   * Returns 
   */
  Future<OfResult> updateShipmentGatewayUsps(ShipmentGatewayUsps ent, ) =>
      client.invoke('updateShipmentGatewayUsps', ent, {  });

  /**
   * Update ShipmentType - ShipmentType
   *
   * Requires shipmentTypeId
   * Returns 
   */
  Future<OfResult> updateShipmentType(ShipmentType ent, ) =>
      client.invoke('updateShipmentType', ent, {  });

}