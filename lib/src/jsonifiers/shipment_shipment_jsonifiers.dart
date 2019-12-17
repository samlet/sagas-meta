import 'package:sagas_meta/src/models/shipment_shipment.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ShipmentShipmentJsonifier{
  static CarrierAndShipmentMethod extractCarrierAndShipmentMethod(dynamic json) {
    return CarrierAndShipmentMethod(
        entityId: create_id_from('CarrierAndShipmentMethod', ['shipmentMethodTypeId', 'partyId', 'roleTypeId'], json),
        sequenceNumber: json['sequenceNumber'] as int,
        roleTypeId: json['roleTypeId'] as String,
        description: json['description'] as String,
        partyId: json['partyId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CarrierAndShipmentMethod overridesCarrierAndShipmentMethod(Map<String, dynamic> map) {
    return CarrierAndShipmentMethod(
        entityId: create_id_from('CarrierAndShipmentMethod', ['shipmentMethodTypeId', 'partyId', 'roleTypeId'], map),
        sequenceNumber: map['sequenceNumber'],
        roleTypeId: map['roleTypeId'],
        description: map['description'],
        partyId: map['partyId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CarrierShipmentBoxType extractCarrierShipmentBoxType(dynamic json) {
    return CarrierShipmentBoxType(
        entityId: create_id_from('CarrierShipmentBoxType', ['shipmentBoxTypeId', 'partyId'], json),
        packagingTypeCode: json['packagingTypeCode'] as String,
        oversizeCode: json['oversizeCode'] as String,
        partyId: json['partyId'] as String,
        shipmentBoxTypeId: json['shipmentBoxTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CarrierShipmentBoxType overridesCarrierShipmentBoxType(Map<String, dynamic> map) {
    return CarrierShipmentBoxType(
        entityId: create_id_from('CarrierShipmentBoxType', ['shipmentBoxTypeId', 'partyId'], map),
        packagingTypeCode: map['packagingTypeCode'],
        oversizeCode: map['oversizeCode'],
        partyId: map['partyId'],
        shipmentBoxTypeId: map['shipmentBoxTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CarrierShipmentMethod extractCarrierShipmentMethod(dynamic json) {
    return CarrierShipmentMethod(
        entityId: create_id_from('CarrierShipmentMethod', ['shipmentMethodTypeId', 'partyId', 'roleTypeId'], json),
        sequenceNumber: json['sequenceNumber'] as int,
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        carrierServiceCode: json['carrierServiceCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CarrierShipmentMethod overridesCarrierShipmentMethod(Map<String, dynamic> map) {
    return CarrierShipmentMethod(
        entityId: create_id_from('CarrierShipmentMethod', ['shipmentMethodTypeId', 'partyId', 'roleTypeId'], map),
        sequenceNumber: map['sequenceNumber'],
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        carrierServiceCode: map['carrierServiceCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Delivery extractDelivery(dynamic json) {
    return Delivery(
        entityId: create_id_from('Delivery', ['deliveryId'], json),
        actualArrivalDate: check_dt(json['actualArrivalDate']),
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        endMileage: json['endMileage'] as double,
        originFacilityId: json['originFacilityId'] as String,
        destFacilityId: json['destFacilityId'] as String,
        deliveryId: json['deliveryId'] as String,
        fuelUsed: json['fuelUsed'] as double,
        actualStartDate: check_dt(json['actualStartDate']),
        fixedAssetId: json['fixedAssetId'] as String,
        startMileage: json['startMileage'] as double,
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Delivery overridesDelivery(Map<String, dynamic> map) {
    return Delivery(
        entityId: create_id_from('Delivery', ['deliveryId'], map),
        actualArrivalDate: map['actualArrivalDate'],
        estimatedStartDate: map['estimatedStartDate'],
        endMileage: map['endMileage'],
        originFacilityId: map['originFacilityId'],
        destFacilityId: map['destFacilityId'],
        deliveryId: map['deliveryId'],
        fuelUsed: map['fuelUsed'],
        actualStartDate: map['actualStartDate'],
        fixedAssetId: map['fixedAssetId'],
        startMileage: map['startMileage'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static OrderShipmentInfoSummary extractOrderShipmentInfoSummary(dynamic json) {
    return OrderShipmentInfoSummary(
        entityId: create_id_from('OrderShipmentInfoSummary', ['shipmentRouteSegmentId', 'shipmentPackageSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        orderId: json['orderId'] as String,
        shipmentId: json['shipmentId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        trackingCode: json['trackingCode'] as String,
        boxNumber: json['boxNumber'] as String,
        shipGroupSeqId: json['shipGroupSeqId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static OrderShipmentInfoSummary overridesOrderShipmentInfoSummary(Map<String, dynamic> map) {
    return OrderShipmentInfoSummary(
        entityId: create_id_from('OrderShipmentInfoSummary', ['shipmentRouteSegmentId', 'shipmentPackageSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        carrierPartyId: map['carrierPartyId'],
        orderId: map['orderId'],
        shipmentId: map['shipmentId'],
        actualStartDate: map['actualStartDate'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        trackingCode: map['trackingCode'],
        boxNumber: map['boxNumber'],
        shipGroupSeqId: map['shipGroupSeqId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PackedQtyVsOrderItemQuantity extractPackedQtyVsOrderItemQuantity(dynamic json) {
    return PackedQtyVsOrderItemQuantity(
        entityId: create_id_from('PackedQtyVsOrderItemQuantity', ['shipmentId', 'shipmentPackageSeqId', 'orderId', 'orderItemSeqId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        orderedQuantity: json['orderedQuantity'] as double,
        orderId: json['orderId'] as String,
        shipmentId: json['shipmentId'] as String,
        issuedQuantity: json['issuedQuantity'] as double,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        packedQuantity: json['packedQuantity'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PackedQtyVsOrderItemQuantity overridesPackedQtyVsOrderItemQuantity(Map<String, dynamic> map) {
    return PackedQtyVsOrderItemQuantity(
        entityId: create_id_from('PackedQtyVsOrderItemQuantity', ['shipmentId', 'shipmentPackageSeqId', 'orderId', 'orderItemSeqId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        orderedQuantity: map['orderedQuantity'],
        orderId: map['orderId'],
        shipmentId: map['shipmentId'],
        issuedQuantity: map['issuedQuantity'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        packedQuantity: map['packedQuantity'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Shipment extractShipment(dynamic json) {
    return Shipment(
        entityId: create_id_from('Shipment', ['shipmentId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        latestCancelDate: check_dt(json['latestCancelDate']),
        estimatedReadyDate: check_dt(json['estimatedReadyDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        estimatedArrivalWorkEffId: json['estimatedArrivalWorkEffId'] as String,
        additionalShippingCharge: json['additionalShippingCharge'] as double,
        destinationTelecomNumberId: json['destinationTelecomNumberId'] as String,
        estimatedShipCost: json['estimatedShipCost'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        estimatedShipWorkEffId: json['estimatedShipWorkEffId'] as String,
        destinationFacilityId: json['destinationFacilityId'] as String,
        addtlShippingChargeDesc: json['addtlShippingChargeDesc'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        originContactMechId: json['originContactMechId'] as String,
        primaryReturnId: json['primaryReturnId'] as String,
        originFacilityId: json['originFacilityId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        destinationContactMechId: json['destinationContactMechId'] as String,
        shipmentId: json['shipmentId'] as String,
        originTelecomNumberId: json['originTelecomNumberId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        estimatedShipDate: check_dt(json['estimatedShipDate']),
        partyIdTo: json['partyIdTo'] as String,
        shipmentTypeId: json['shipmentTypeId'] as String,
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        picklistBinId: json['picklistBinId'] as String,
        primaryShipGroupSeqId: json['primaryShipGroupSeqId'] as String,
        handlingInstructions: json['handlingInstructions'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Shipment overridesShipment(Map<String, dynamic> map) {
    return Shipment(
        entityId: create_id_from('Shipment', ['shipmentId'], map),
        partyIdFrom: map['partyIdFrom'],
        latestCancelDate: map['latestCancelDate'],
        estimatedReadyDate: map['estimatedReadyDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        estimatedArrivalWorkEffId: map['estimatedArrivalWorkEffId'],
        additionalShippingCharge: map['additionalShippingCharge'],
        destinationTelecomNumberId: map['destinationTelecomNumberId'],
        estimatedShipCost: map['estimatedShipCost'],
        createdByUserLogin: map['createdByUserLogin'],
        estimatedShipWorkEffId: map['estimatedShipWorkEffId'],
        destinationFacilityId: map['destinationFacilityId'],
        addtlShippingChargeDesc: map['addtlShippingChargeDesc'],
        lastModifiedDate: map['lastModifiedDate'],
        originContactMechId: map['originContactMechId'],
        primaryReturnId: map['primaryReturnId'],
        originFacilityId: map['originFacilityId'],
        currencyUomId: map['currencyUomId'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        destinationContactMechId: map['destinationContactMechId'],
        shipmentId: map['shipmentId'],
        originTelecomNumberId: map['originTelecomNumberId'],
        primaryOrderId: map['primaryOrderId'],
        estimatedShipDate: map['estimatedShipDate'],
        partyIdTo: map['partyIdTo'],
        shipmentTypeId: map['shipmentTypeId'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        picklistBinId: map['picklistBinId'],
        primaryShipGroupSeqId: map['primaryShipGroupSeqId'],
        handlingInstructions: map['handlingInstructions'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentAndItem extractShipmentAndItem(dynamic json) {
    return ShipmentAndItem(
        entityId: create_id_from('ShipmentAndItem', ['shipmentId', 'shipmentItemSeqId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        shipmentContentDescription: json['shipmentContentDescription'] as String,
        originContactMechId: json['originContactMechId'] as String,
        latestCancelDate: check_dt(json['latestCancelDate']),
        estimatedReadyDate: check_dt(json['estimatedReadyDate']),
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        originFacilityId: json['originFacilityId'] as String,
        statusId: json['statusId'] as String,
        destinationContactMechId: json['destinationContactMechId'] as String,
        shipmentId: json['shipmentId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        estimatedShipDate: check_dt(json['estimatedShipDate']),
        estimatedShipCost: json['estimatedShipCost'] as double,
        partyIdTo: json['partyIdTo'] as String,
        shipmentTypeId: json['shipmentTypeId'] as String,
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        handlingInstructions: json['handlingInstructions'] as String,
        destinationFacilityId: json['destinationFacilityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentAndItem overridesShipmentAndItem(Map<String, dynamic> map) {
    return ShipmentAndItem(
        entityId: create_id_from('ShipmentAndItem', ['shipmentId', 'shipmentItemSeqId'], map),
        partyIdFrom: map['partyIdFrom'],
        quantity: map['quantity'],
        productId: map['productId'],
        shipmentContentDescription: map['shipmentContentDescription'],
        originContactMechId: map['originContactMechId'],
        latestCancelDate: map['latestCancelDate'],
        estimatedReadyDate: map['estimatedReadyDate'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        originFacilityId: map['originFacilityId'],
        statusId: map['statusId'],
        destinationContactMechId: map['destinationContactMechId'],
        shipmentId: map['shipmentId'],
        primaryOrderId: map['primaryOrderId'],
        estimatedShipDate: map['estimatedShipDate'],
        estimatedShipCost: map['estimatedShipCost'],
        partyIdTo: map['partyIdTo'],
        shipmentTypeId: map['shipmentTypeId'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        handlingInstructions: map['handlingInstructions'],
        destinationFacilityId: map['destinationFacilityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentAttribute extractShipmentAttribute(dynamic json) {
    return ShipmentAttribute(
        entityId: create_id_from('ShipmentAttribute', ['shipmentId', 'attrName'], json),
        shipmentId: json['shipmentId'] as String,
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentAttribute overridesShipmentAttribute(Map<String, dynamic> map) {
    return ShipmentAttribute(
        entityId: create_id_from('ShipmentAttribute', ['shipmentId', 'attrName'], map),
        shipmentId: map['shipmentId'],
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentBoxType extractShipmentBoxType(dynamic json) {
    return ShipmentBoxType(
        entityId: create_id_from('ShipmentBoxType', ['shipmentBoxTypeId'], json),
        boxLength: json['boxLength'] as double,
        boxWeight: json['boxWeight'] as double,
        dimensionUomId: json['dimensionUomId'] as String,
        description: json['description'] as String,
        weightUomId: json['weightUomId'] as String,
        boxWidth: json['boxWidth'] as double,
        boxHeight: json['boxHeight'] as double,
        shipmentBoxTypeId: json['shipmentBoxTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentBoxType overridesShipmentBoxType(Map<String, dynamic> map) {
    return ShipmentBoxType(
        entityId: create_id_from('ShipmentBoxType', ['shipmentBoxTypeId'], map),
        boxLength: map['boxLength'],
        boxWeight: map['boxWeight'],
        dimensionUomId: map['dimensionUomId'],
        description: map['description'],
        weightUomId: map['weightUomId'],
        boxWidth: map['boxWidth'],
        boxHeight: map['boxHeight'],
        shipmentBoxTypeId: map['shipmentBoxTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentContactMech extractShipmentContactMech(dynamic json) {
    return ShipmentContactMech(
        entityId: create_id_from('ShipmentContactMech', ['shipmentId', 'shipmentContactMechTypeId'], json),
        shipmentId: json['shipmentId'] as String,
        shipmentContactMechTypeId: json['shipmentContactMechTypeId'] as String,
        contactMechId: json['contactMechId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentContactMech overridesShipmentContactMech(Map<String, dynamic> map) {
    return ShipmentContactMech(
        entityId: create_id_from('ShipmentContactMech', ['shipmentId', 'shipmentContactMechTypeId'], map),
        shipmentId: map['shipmentId'],
        shipmentContactMechTypeId: map['shipmentContactMechTypeId'],
        contactMechId: map['contactMechId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentContactMechType extractShipmentContactMechType(dynamic json) {
    return ShipmentContactMechType(
        entityId: create_id_from('ShipmentContactMechType', ['shipmentContactMechTypeId'], json),
        description: json['description'] as String,
        shipmentContactMechTypeId: json['shipmentContactMechTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentContactMechType overridesShipmentContactMechType(Map<String, dynamic> map) {
    return ShipmentContactMechType(
        entityId: create_id_from('ShipmentContactMechType', ['shipmentContactMechTypeId'], map),
        description: map['description'],
        shipmentContactMechTypeId: map['shipmentContactMechTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentCostEstimate extractShipmentCostEstimate(dynamic json) {
    return ShipmentCostEstimate(
        entityId: create_id_from('ShipmentCostEstimate', ['shipmentCostEstimateId'], json),
        productStoreShipMethId: json['productStoreShipMethId'] as String,
        quantityUnitPrice: json['quantityUnitPrice'] as double,
        quantityUomId: json['quantityUomId'] as String,
        featurePercent: json['featurePercent'] as double,
        featurePrice: json['featurePrice'] as double,
        weightUnitPrice: json['weightUnitPrice'] as double,
        oversizeUnit: json['oversizeUnit'] as double,
        productStoreId: json['productStoreId'] as String,
        partyId: json['partyId'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        oversizePrice: json['oversizePrice'] as double,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        geoIdTo: json['geoIdTo'] as String,
        orderPricePercent: json['orderPricePercent'] as double,
        orderItemFlatPrice: json['orderItemFlatPrice'] as double,
        roleTypeId: json['roleTypeId'] as String,
        shippingPricePercent: json['shippingPricePercent'] as double,
        weightBreakId: json['weightBreakId'] as String,
        quantityBreakId: json['quantityBreakId'] as String,
        priceBreakId: json['priceBreakId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        geoIdFrom: json['geoIdFrom'] as String,
        orderFlatPrice: json['orderFlatPrice'] as double,
        carrierRoleTypeId: json['carrierRoleTypeId'] as String,
        weightUomId: json['weightUomId'] as String,
        priceUnitPrice: json['priceUnitPrice'] as double,
        shipmentCostEstimateId: json['shipmentCostEstimateId'] as String,
        priceUomId: json['priceUomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentCostEstimate overridesShipmentCostEstimate(Map<String, dynamic> map) {
    return ShipmentCostEstimate(
        entityId: create_id_from('ShipmentCostEstimate', ['shipmentCostEstimateId'], map),
        productStoreShipMethId: map['productStoreShipMethId'],
        quantityUnitPrice: map['quantityUnitPrice'],
        quantityUomId: map['quantityUomId'],
        featurePercent: map['featurePercent'],
        featurePrice: map['featurePrice'],
        weightUnitPrice: map['weightUnitPrice'],
        oversizeUnit: map['oversizeUnit'],
        productStoreId: map['productStoreId'],
        partyId: map['partyId'],
        productFeatureGroupId: map['productFeatureGroupId'],
        oversizePrice: map['oversizePrice'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        geoIdTo: map['geoIdTo'],
        orderPricePercent: map['orderPricePercent'],
        orderItemFlatPrice: map['orderItemFlatPrice'],
        roleTypeId: map['roleTypeId'],
        shippingPricePercent: map['shippingPricePercent'],
        weightBreakId: map['weightBreakId'],
        quantityBreakId: map['quantityBreakId'],
        priceBreakId: map['priceBreakId'],
        carrierPartyId: map['carrierPartyId'],
        geoIdFrom: map['geoIdFrom'],
        orderFlatPrice: map['orderFlatPrice'],
        carrierRoleTypeId: map['carrierRoleTypeId'],
        weightUomId: map['weightUomId'],
        priceUnitPrice: map['priceUnitPrice'],
        shipmentCostEstimateId: map['shipmentCostEstimateId'],
        priceUomId: map['priceUomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayConfig extractShipmentGatewayConfig(dynamic json) {
    return ShipmentGatewayConfig(
        entityId: create_id_from('ShipmentGatewayConfig', ['shipmentGatewayConfigId'], json),
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        description: json['description'] as String,
        shipmentGatewayConfTypeId: json['shipmentGatewayConfTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayConfig overridesShipmentGatewayConfig(Map<String, dynamic> map) {
    return ShipmentGatewayConfig(
        entityId: create_id_from('ShipmentGatewayConfig', ['shipmentGatewayConfigId'], map),
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        description: map['description'],
        shipmentGatewayConfTypeId: map['shipmentGatewayConfTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayConfigType extractShipmentGatewayConfigType(dynamic json) {
    return ShipmentGatewayConfigType(
        entityId: create_id_from('ShipmentGatewayConfigType', ['shipmentGatewayConfTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        shipmentGatewayConfTypeId: json['shipmentGatewayConfTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayConfigType overridesShipmentGatewayConfigType(Map<String, dynamic> map) {
    return ShipmentGatewayConfigType(
        entityId: create_id_from('ShipmentGatewayConfigType', ['shipmentGatewayConfTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        shipmentGatewayConfTypeId: map['shipmentGatewayConfTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayDhl extractShipmentGatewayDhl(dynamic json) {
    return ShipmentGatewayDhl(
        entityId: create_id_from('ShipmentGatewayDhl', ['shipmentGatewayConfigId'], json),
        connectUrl: json['connectUrl'] as String,
        accessUserId: json['accessUserId'] as String,
        rateEstimateTemplate: json['rateEstimateTemplate'] as String,
        labelImageFormat: json['labelImageFormat'] as String,
        headVersion: json['headVersion'] as String,
        accessShippingKey: json['accessShippingKey'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        connectTimeout: json['connectTimeout'] as int,
        accessAccountNbr: json['accessAccountNbr'] as String,
        headAction: json['headAction'] as String,
        accessPassword: json['accessPassword'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayDhl overridesShipmentGatewayDhl(Map<String, dynamic> map) {
    return ShipmentGatewayDhl(
        entityId: create_id_from('ShipmentGatewayDhl', ['shipmentGatewayConfigId'], map),
        connectUrl: map['connectUrl'],
        accessUserId: map['accessUserId'],
        rateEstimateTemplate: map['rateEstimateTemplate'],
        labelImageFormat: map['labelImageFormat'],
        headVersion: map['headVersion'],
        accessShippingKey: map['accessShippingKey'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        connectTimeout: map['connectTimeout'],
        accessAccountNbr: map['accessAccountNbr'],
        headAction: map['headAction'],
        accessPassword: map['accessPassword'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayFedex extractShipmentGatewayFedex(dynamic json) {
    return ShipmentGatewayFedex(
        entityId: create_id_from('ShipmentGatewayFedex', ['shipmentGatewayConfigId'], json),
        connectUrl: json['connectUrl'] as String,
        accessMeterNumber: json['accessMeterNumber'] as String,
        rateEstimateTemplate: json['rateEstimateTemplate'] as String,
        labelImageType: json['labelImageType'] as String,
        defaultDropoffType: json['defaultDropoffType'] as String,
        accessUserKey: json['accessUserKey'] as String,
        templateShipment: json['templateShipment'] as String,
        templateSubscription: json['templateSubscription'] as String,
        accessUserPwd: json['accessUserPwd'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        defaultPackagingType: json['defaultPackagingType'] as String,
        connectTimeout: json['connectTimeout'] as int,
        accessAccountNbr: json['accessAccountNbr'] as String,
        connectSoapUrl: json['connectSoapUrl'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayFedex overridesShipmentGatewayFedex(Map<String, dynamic> map) {
    return ShipmentGatewayFedex(
        entityId: create_id_from('ShipmentGatewayFedex', ['shipmentGatewayConfigId'], map),
        connectUrl: map['connectUrl'],
        accessMeterNumber: map['accessMeterNumber'],
        rateEstimateTemplate: map['rateEstimateTemplate'],
        labelImageType: map['labelImageType'],
        defaultDropoffType: map['defaultDropoffType'],
        accessUserKey: map['accessUserKey'],
        templateShipment: map['templateShipment'],
        templateSubscription: map['templateSubscription'],
        accessUserPwd: map['accessUserPwd'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        defaultPackagingType: map['defaultPackagingType'],
        connectTimeout: map['connectTimeout'],
        accessAccountNbr: map['accessAccountNbr'],
        connectSoapUrl: map['connectSoapUrl'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayUps extractShipmentGatewayUps(dynamic json) {
    return ShipmentGatewayUps(
        entityId: create_id_from('ShipmentGatewayUps', ['shipmentGatewayConfigId'], json),
        accessUserId: json['accessUserId'] as String,
        customerClassification: json['customerClassification'] as String,
        shipperNumber: json['shipperNumber'] as String,
        codSurchargeCurrencyUomId: json['codSurchargeCurrencyUomId'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        minEstimateWeight: json['minEstimateWeight'] as double,
        connectTimeout: json['connectTimeout'] as int,
        accessPassword: json['accessPassword'] as String,
        accessLicenseNumber: json['accessLicenseNumber'] as String,
        connectUrl: json['connectUrl'] as String,
        saveCertPath: json['saveCertPath'] as String,
        billShipperAccountNumber: json['billShipperAccountNumber'] as String,
        defaultReturnLabelSubject: json['defaultReturnLabelSubject'] as String,
        maxEstimateWeight: json['maxEstimateWeight'] as double,
        codSurchargeApplyToPackage: json['codSurchargeApplyToPackage'] as String,
        saveCertInfo: json['saveCertInfo'] as String,
        codFundsCode: json['codFundsCode'] as String,
        shipperPickupType: json['shipperPickupType'] as String,
        codAllowCod: json['codAllowCod'] as String,
        codSurchargeAmount: json['codSurchargeAmount'] as double,
        defaultReturnLabelMemo: json['defaultReturnLabelMemo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayUps overridesShipmentGatewayUps(Map<String, dynamic> map) {
    return ShipmentGatewayUps(
        entityId: create_id_from('ShipmentGatewayUps', ['shipmentGatewayConfigId'], map),
        accessUserId: map['accessUserId'],
        customerClassification: map['customerClassification'],
        shipperNumber: map['shipperNumber'],
        codSurchargeCurrencyUomId: map['codSurchargeCurrencyUomId'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        minEstimateWeight: map['minEstimateWeight'],
        connectTimeout: map['connectTimeout'],
        accessPassword: map['accessPassword'],
        accessLicenseNumber: map['accessLicenseNumber'],
        connectUrl: map['connectUrl'],
        saveCertPath: map['saveCertPath'],
        billShipperAccountNumber: map['billShipperAccountNumber'],
        defaultReturnLabelSubject: map['defaultReturnLabelSubject'],
        maxEstimateWeight: map['maxEstimateWeight'],
        codSurchargeApplyToPackage: map['codSurchargeApplyToPackage'],
        saveCertInfo: map['saveCertInfo'],
        codFundsCode: map['codFundsCode'],
        shipperPickupType: map['shipperPickupType'],
        codAllowCod: map['codAllowCod'],
        codSurchargeAmount: map['codSurchargeAmount'],
        defaultReturnLabelMemo: map['defaultReturnLabelMemo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentGatewayUsps extractShipmentGatewayUsps(dynamic json) {
    return ShipmentGatewayUsps(
        entityId: create_id_from('ShipmentGatewayUsps', ['shipmentGatewayConfigId'], json),
        connectUrl: json['connectUrl'] as String,
        accessUserId: json['accessUserId'] as String,
        test: json['test'] as String,
        shipmentGatewayConfigId: json['shipmentGatewayConfigId'] as String,
        connectTimeout: json['connectTimeout'] as int,
        connectUrlLabels: json['connectUrlLabels'] as String,
        accessPassword: json['accessPassword'] as String,
        maxEstimateWeight: json['maxEstimateWeight'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentGatewayUsps overridesShipmentGatewayUsps(Map<String, dynamic> map) {
    return ShipmentGatewayUsps(
        entityId: create_id_from('ShipmentGatewayUsps', ['shipmentGatewayConfigId'], map),
        connectUrl: map['connectUrl'],
        accessUserId: map['accessUserId'],
        test: map['test'],
        shipmentGatewayConfigId: map['shipmentGatewayConfigId'],
        connectTimeout: map['connectTimeout'],
        connectUrlLabels: map['connectUrlLabels'],
        accessPassword: map['accessPassword'],
        maxEstimateWeight: map['maxEstimateWeight'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentItem extractShipmentItem(dynamic json) {
    return ShipmentItem(
        entityId: create_id_from('ShipmentItem', ['shipmentId', 'shipmentItemSeqId'], json),
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        shipmentContentDescription: json['shipmentContentDescription'] as String,
        shipmentId: json['shipmentId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentItem overridesShipmentItem(Map<String, dynamic> map) {
    return ShipmentItem(
        entityId: create_id_from('ShipmentItem', ['shipmentId', 'shipmentItemSeqId'], map),
        quantity: map['quantity'],
        productId: map['productId'],
        shipmentContentDescription: map['shipmentContentDescription'],
        shipmentId: map['shipmentId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentItemBilling extractShipmentItemBilling(dynamic json) {
    return ShipmentItemBilling(
        entityId: create_id_from('ShipmentItemBilling', ['shipmentId', 'shipmentItemSeqId', 'invoiceId', 'invoiceItemSeqId'], json),
        shipmentId: json['shipmentId'] as String,
        invoiceId: json['invoiceId'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentItemBilling overridesShipmentItemBilling(Map<String, dynamic> map) {
    return ShipmentItemBilling(
        entityId: create_id_from('ShipmentItemBilling', ['shipmentId', 'shipmentItemSeqId', 'invoiceId', 'invoiceItemSeqId'], map),
        shipmentId: map['shipmentId'],
        invoiceId: map['invoiceId'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentItemFeature extractShipmentItemFeature(dynamic json) {
    return ShipmentItemFeature(
        entityId: create_id_from('ShipmentItemFeature', ['shipmentId', 'shipmentItemSeqId', 'productFeatureId'], json),
        shipmentId: json['shipmentId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentItemFeature overridesShipmentItemFeature(Map<String, dynamic> map) {
    return ShipmentItemFeature(
        entityId: create_id_from('ShipmentItemFeature', ['shipmentId', 'shipmentItemSeqId', 'productFeatureId'], map),
        shipmentId: map['shipmentId'],
        productFeatureId: map['productFeatureId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentManifestView extractShipmentManifestView(dynamic json) {
    return ShipmentManifestView(
        entityId: create_id_from('ShipmentManifestView', ['shipmentId', 'shipmentItemSeqId', 'itemIssuanceId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], json),
        weightUomDescription: json['weightUomDescription'] as String,
        shipmentContentDescription: json['shipmentContentDescription'] as String,
        orderId: json['orderId'] as String,
        boxNumber: json['boxNumber'] as String,
        originToName: json['originToName'] as String,
        originAreaCode: json['originAreaCode'] as String,
        deliveryId: json['deliveryId'] as String,
        carrierFirstName: json['carrierFirstName'] as String,
        shipmentMethodDescription: json['shipmentMethodDescription'] as String,
        originCity: json['originCity'] as String,
        destAttnName: json['destAttnName'] as String,
        packageQuantity: json['packageQuantity'] as double,
        originCountryGeoId: json['originCountryGeoId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        orderItemSeqId: json['orderItemSeqId'] as String,
        actualArrivalDate: check_dt(json['actualArrivalDate']),
        originAddress1: json['originAddress1'] as String,
        originStateProvinceGeoId: json['originStateProvinceGeoId'] as String,
        productId: json['productId'] as String,
        originAddress2: json['originAddress2'] as String,
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        destCity: json['destCity'] as String,
        weight: json['weight'] as double,
        destToName: json['destToName'] as String,
        destAddress1: json['destAddress1'] as String,
        carrierLastName: json['carrierLastName'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        packageDateCreated: check_dt(json['packageDateCreated']),
        inventoryItemId: json['inventoryItemId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        originFacilityName: json['originFacilityName'] as String,
        weightUomAbbreviation: json['weightUomAbbreviation'] as String,
        originPostalCodeGeoId: json['originPostalCodeGeoId'] as String,
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        issuedQuantity: json['issuedQuantity'] as double,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        destTelecomNumberId: json['destTelecomNumberId'] as String,
        internalName: json['internalName'] as String,
        originAttnName: json['originAttnName'] as String,
        destCountryCode: json['destCountryCode'] as String,
        originCountryCode: json['originCountryCode'] as String,
        destAddress2: json['destAddress2'] as String,
        destCountryGeoId: json['destCountryGeoId'] as String,
        itemIssuanceId: json['itemIssuanceId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        actualCost: json['actualCost'] as double,
        destContactNumber: json['destContactNumber'] as String,
        originDirections: json['originDirections'] as String,
        quantity: json['quantity'] as double,
        destDirections: json['destDirections'] as String,
        originContactMechId: json['originContactMechId'] as String,
        originPostalCode: json['originPostalCode'] as String,
        trackingCode: json['trackingCode'] as String,
        originContactNumber: json['originContactNumber'] as String,
        carrierGroupName: json['carrierGroupName'] as String,
        destPostalCode: json['destPostalCode'] as String,
        originFacilityId: json['originFacilityId'] as String,
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        destFacilityId: json['destFacilityId'] as String,
        shipmentId: json['shipmentId'] as String,
        originTelecomNumberId: json['originTelecomNumberId'] as String,
        issuedDateTime: check_dt(json['issuedDateTime']),
        destContactMechId: json['destContactMechId'] as String,
        destPostalCodeGeoId: json['destPostalCodeGeoId'] as String,
        destFacilityName: json['destFacilityName'] as String,
        issuedByUserLoginId: json['issuedByUserLoginId'] as String,
        destAreaCode: json['destAreaCode'] as String,
        destStateProvinceGeoId: json['destStateProvinceGeoId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentManifestView overridesShipmentManifestView(Map<String, dynamic> map) {
    return ShipmentManifestView(
        entityId: create_id_from('ShipmentManifestView', ['shipmentId', 'shipmentItemSeqId', 'itemIssuanceId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], map),
        weightUomDescription: map['weightUomDescription'],
        shipmentContentDescription: map['shipmentContentDescription'],
        orderId: map['orderId'],
        boxNumber: map['boxNumber'],
        originToName: map['originToName'],
        originAreaCode: map['originAreaCode'],
        deliveryId: map['deliveryId'],
        carrierFirstName: map['carrierFirstName'],
        shipmentMethodDescription: map['shipmentMethodDescription'],
        originCity: map['originCity'],
        destAttnName: map['destAttnName'],
        packageQuantity: map['packageQuantity'],
        originCountryGeoId: map['originCountryGeoId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        orderItemSeqId: map['orderItemSeqId'],
        actualArrivalDate: map['actualArrivalDate'],
        originAddress1: map['originAddress1'],
        originStateProvinceGeoId: map['originStateProvinceGeoId'],
        productId: map['productId'],
        originAddress2: map['originAddress2'],
        estimatedStartDate: map['estimatedStartDate'],
        destCity: map['destCity'],
        weight: map['weight'],
        destToName: map['destToName'],
        destAddress1: map['destAddress1'],
        carrierLastName: map['carrierLastName'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        packageDateCreated: map['packageDateCreated'],
        inventoryItemId: map['inventoryItemId'],
        carrierPartyId: map['carrierPartyId'],
        originFacilityName: map['originFacilityName'],
        weightUomAbbreviation: map['weightUomAbbreviation'],
        originPostalCodeGeoId: map['originPostalCodeGeoId'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        issuedQuantity: map['issuedQuantity'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        destTelecomNumberId: map['destTelecomNumberId'],
        internalName: map['internalName'],
        originAttnName: map['originAttnName'],
        destCountryCode: map['destCountryCode'],
        originCountryCode: map['originCountryCode'],
        destAddress2: map['destAddress2'],
        destCountryGeoId: map['destCountryGeoId'],
        itemIssuanceId: map['itemIssuanceId'],
        actualStartDate: map['actualStartDate'],
        actualCost: map['actualCost'],
        destContactNumber: map['destContactNumber'],
        originDirections: map['originDirections'],
        quantity: map['quantity'],
        destDirections: map['destDirections'],
        originContactMechId: map['originContactMechId'],
        originPostalCode: map['originPostalCode'],
        trackingCode: map['trackingCode'],
        originContactNumber: map['originContactNumber'],
        carrierGroupName: map['carrierGroupName'],
        destPostalCode: map['destPostalCode'],
        originFacilityId: map['originFacilityId'],
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        destFacilityId: map['destFacilityId'],
        shipmentId: map['shipmentId'],
        originTelecomNumberId: map['originTelecomNumberId'],
        issuedDateTime: map['issuedDateTime'],
        destContactMechId: map['destContactMechId'],
        destPostalCodeGeoId: map['destPostalCodeGeoId'],
        destFacilityName: map['destFacilityName'],
        issuedByUserLoginId: map['issuedByUserLoginId'],
        destAreaCode: map['destAreaCode'],
        destStateProvinceGeoId: map['destStateProvinceGeoId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentMethodType extractShipmentMethodType(dynamic json) {
    return ShipmentMethodType(
        entityId: create_id_from('ShipmentMethodType', ['shipmentMethodTypeId'], json),
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentMethodType overridesShipmentMethodType(Map<String, dynamic> map) {
    return ShipmentMethodType(
        entityId: create_id_from('ShipmentMethodType', ['shipmentMethodTypeId'], map),
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentPackage extractShipmentPackage(dynamic json) {
    return ShipmentPackage(
        entityId: create_id_from('ShipmentPackage', ['shipmentId', 'shipmentPackageSeqId'], json),
        boxLength: json['boxLength'] as double,
        insuredValue: json['insuredValue'] as double,
        weight: json['weight'] as double,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        boxHeight: json['boxHeight'] as double,
        shipmentBoxTypeId: json['shipmentBoxTypeId'] as String,
        dateCreated: check_dt(json['dateCreated']),
        shipmentId: json['shipmentId'] as String,
        dimensionUomId: json['dimensionUomId'] as String,
        weightUomId: json['weightUomId'] as String,
        boxWidth: json['boxWidth'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentPackage overridesShipmentPackage(Map<String, dynamic> map) {
    return ShipmentPackage(
        entityId: create_id_from('ShipmentPackage', ['shipmentId', 'shipmentPackageSeqId'], map),
        boxLength: map['boxLength'],
        insuredValue: map['insuredValue'],
        weight: map['weight'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        boxHeight: map['boxHeight'],
        shipmentBoxTypeId: map['shipmentBoxTypeId'],
        dateCreated: map['dateCreated'],
        shipmentId: map['shipmentId'],
        dimensionUomId: map['dimensionUomId'],
        weightUomId: map['weightUomId'],
        boxWidth: map['boxWidth'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentPackageContent extractShipmentPackageContent(dynamic json) {
    return ShipmentPackageContent(
        entityId: create_id_from('ShipmentPackageContent', ['shipmentId', 'shipmentPackageSeqId', 'shipmentItemSeqId'], json),
        quantity: json['quantity'] as double,
        shipmentId: json['shipmentId'] as String,
        subProductQuantity: json['subProductQuantity'] as double,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        subProductId: json['subProductId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentPackageContent overridesShipmentPackageContent(Map<String, dynamic> map) {
    return ShipmentPackageContent(
        entityId: create_id_from('ShipmentPackageContent', ['shipmentId', 'shipmentPackageSeqId', 'shipmentItemSeqId'], map),
        quantity: map['quantity'],
        shipmentId: map['shipmentId'],
        subProductQuantity: map['subProductQuantity'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        subProductId: map['subProductId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentPackageRouteDetail extractShipmentPackageRouteDetail(dynamic json) {
    return ShipmentPackageRouteDetail(
        entityId: create_id_from('ShipmentPackageRouteDetail', ['shipmentId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], json),
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        labelPrinted: json['labelPrinted'] as String,
        statusId: json['statusId'] as String,
        shipmentId: json['shipmentId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        carrierServiceStatusId: json['carrierServiceStatusId'] as String,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        trackingCode: json['trackingCode'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentPackageRouteDetail overridesShipmentPackageRouteDetail(Map<String, dynamic> map) {
    return ShipmentPackageRouteDetail(
        entityId: create_id_from('ShipmentPackageRouteDetail', ['shipmentId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], map),
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        carrierPartyId: map['carrierPartyId'],
        labelPrinted: map['labelPrinted'],
        statusId: map['statusId'],
        shipmentId: map['shipmentId'],
        primaryOrderId: map['primaryOrderId'],
        carrierServiceStatusId: map['carrierServiceStatusId'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        trackingCode: map['trackingCode'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentPackageRouteSeg extractShipmentPackageRouteSeg(dynamic json) {
    return ShipmentPackageRouteSeg(
        entityId: create_id_from('ShipmentPackageRouteSeg', ['shipmentId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], json),
        labelIntlSignImage: check_b64(json['labelIntlSignImage']),
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        trackingCode: json['trackingCode'] as String,
        boxNumber: json['boxNumber'] as String,
        packageServiceCost: json['packageServiceCost'] as double,
        packageOtherCost: json['packageOtherCost'] as double,
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        labelImage: check_b64(json['labelImage']),
        labelPrinted: json['labelPrinted'] as String,
        currencyUomId: json['currencyUomId'] as String,
        internationalInvoice: check_b64(json['internationalInvoice']),
        packageTransportCost: json['packageTransportCost'] as double,
        shipmentId: json['shipmentId'] as String,
        codAmount: json['codAmount'] as double,
        insuredAmount: json['insuredAmount'] as double,
        labelHtml: json['labelHtml'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentPackageRouteSeg overridesShipmentPackageRouteSeg(Map<String, dynamic> map) {
    return ShipmentPackageRouteSeg(
        entityId: create_id_from('ShipmentPackageRouteSeg', ['shipmentId', 'shipmentPackageSeqId', 'shipmentRouteSegmentId'], map),
        labelIntlSignImage: map['labelIntlSignImage'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        trackingCode: map['trackingCode'],
        boxNumber: map['boxNumber'],
        packageServiceCost: map['packageServiceCost'],
        packageOtherCost: map['packageOtherCost'],
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        labelImage: map['labelImage'],
        labelPrinted: map['labelPrinted'],
        currencyUomId: map['currencyUomId'],
        internationalInvoice: map['internationalInvoice'],
        packageTransportCost: map['packageTransportCost'],
        shipmentId: map['shipmentId'],
        codAmount: map['codAmount'],
        insuredAmount: map['insuredAmount'],
        labelHtml: map['labelHtml'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentReceiptAndItem extractShipmentReceiptAndItem(dynamic json) {
    return ShipmentReceiptAndItem(
        entityId: create_id_from('ShipmentReceiptAndItem', ['receiptId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        facilityId: json['facilityId'] as String,
        productId: json['productId'] as String,
        orderId: json['orderId'] as String,
        quantityAccepted: json['quantityAccepted'] as double,
        lotId: json['lotId'] as String,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        quantityRejected: json['quantityRejected'] as double,
        inventoryItemId: json['inventoryItemId'] as String,
        rejectionId: json['rejectionId'] as String,
        quantityOnHandTotal: json['quantityOnHandTotal'] as double,
        shipmentId: json['shipmentId'] as String,
        receivedByUserLoginId: json['receivedByUserLoginId'] as String,
        unitCost: json['unitCost'] as double,
        returnId: json['returnId'] as String,
        returnItemSeqId: json['returnItemSeqId'] as String,
        datetimeReceived: check_dt(json['datetimeReceived']),
        itemDescription: json['itemDescription'] as String,
        availableToPromiseTotal: json['availableToPromiseTotal'] as double,
        receiptId: json['receiptId'] as String,
        locationSeqId: json['locationSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentReceiptAndItem overridesShipmentReceiptAndItem(Map<String, dynamic> map) {
    return ShipmentReceiptAndItem(
        entityId: create_id_from('ShipmentReceiptAndItem', ['receiptId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        facilityId: map['facilityId'],
        productId: map['productId'],
        orderId: map['orderId'],
        quantityAccepted: map['quantityAccepted'],
        lotId: map['lotId'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        quantityRejected: map['quantityRejected'],
        inventoryItemId: map['inventoryItemId'],
        rejectionId: map['rejectionId'],
        quantityOnHandTotal: map['quantityOnHandTotal'],
        shipmentId: map['shipmentId'],
        receivedByUserLoginId: map['receivedByUserLoginId'],
        unitCost: map['unitCost'],
        returnId: map['returnId'],
        returnItemSeqId: map['returnItemSeqId'],
        datetimeReceived: map['datetimeReceived'],
        itemDescription: map['itemDescription'],
        availableToPromiseTotal: map['availableToPromiseTotal'],
        receiptId: map['receiptId'],
        locationSeqId: map['locationSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentRouteSegment extractShipmentRouteSegment(dynamic json) {
    return ShipmentRouteSegment(
        entityId: create_id_from('ShipmentRouteSegment', ['shipmentId', 'shipmentRouteSegmentId'], json),
        actualOtherCost: json['actualOtherCost'] as double,
        carrierDeliveryZone: json['carrierDeliveryZone'] as String,
        thirdPartyPostalCode: json['thirdPartyPostalCode'] as String,
        destTelecomNumberId: json['destTelecomNumberId'] as String,
        carrierRestrictionCodes: json['carrierRestrictionCodes'] as String,
        trackingIdNumber: json['trackingIdNumber'] as String,
        deliveryId: json['deliveryId'] as String,
        carrierServiceStatusId: json['carrierServiceStatusId'] as String,
        actualStartDate: check_dt(json['actualStartDate']),
        trackingDigest: json['trackingDigest'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        actualCost: json['actualCost'] as double,
        upsHighValueReport: check_b64(json['upsHighValueReport']),
        actualArrivalDate: check_dt(json['actualArrivalDate']),
        actualServiceCost: json['actualServiceCost'] as double,
        originContactMechId: json['originContactMechId'] as String,
        estimatedStartDate: check_dt(json['estimatedStartDate']),
        carrierRestrictionDesc: json['carrierRestrictionDesc'] as String,
        actualTransportCost: json['actualTransportCost'] as double,
        billingWeightUomId: json['billingWeightUomId'] as String,
        homeDeliveryDate: check_dt(json['homeDeliveryDate']),
        originFacilityId: json['originFacilityId'] as String,
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        destFacilityId: json['destFacilityId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        lastUpdatedDate: check_dt(json['lastUpdatedDate']),
        currencyUomId: json['currencyUomId'] as String,
        billingWeight: json['billingWeight'] as double,
        shipmentId: json['shipmentId'] as String,
        originTelecomNumberId: json['originTelecomNumberId'] as String,
        thirdPartyCountryGeoCode: json['thirdPartyCountryGeoCode'] as String,
        destContactMechId: json['destContactMechId'] as String,
        estimatedArrivalDate: check_dt(json['estimatedArrivalDate']),
        homeDeliveryType: json['homeDeliveryType'] as String,
        thirdPartyAccountNumber: json['thirdPartyAccountNumber'] as String,
        updatedByUserLoginId: json['updatedByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentRouteSegment overridesShipmentRouteSegment(Map<String, dynamic> map) {
    return ShipmentRouteSegment(
        entityId: create_id_from('ShipmentRouteSegment', ['shipmentId', 'shipmentRouteSegmentId'], map),
        actualOtherCost: map['actualOtherCost'],
        carrierDeliveryZone: map['carrierDeliveryZone'],
        thirdPartyPostalCode: map['thirdPartyPostalCode'],
        destTelecomNumberId: map['destTelecomNumberId'],
        carrierRestrictionCodes: map['carrierRestrictionCodes'],
        trackingIdNumber: map['trackingIdNumber'],
        deliveryId: map['deliveryId'],
        carrierServiceStatusId: map['carrierServiceStatusId'],
        actualStartDate: map['actualStartDate'],
        trackingDigest: map['trackingDigest'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        actualCost: map['actualCost'],
        upsHighValueReport: map['upsHighValueReport'],
        actualArrivalDate: map['actualArrivalDate'],
        actualServiceCost: map['actualServiceCost'],
        originContactMechId: map['originContactMechId'],
        estimatedStartDate: map['estimatedStartDate'],
        carrierRestrictionDesc: map['carrierRestrictionDesc'],
        actualTransportCost: map['actualTransportCost'],
        billingWeightUomId: map['billingWeightUomId'],
        homeDeliveryDate: map['homeDeliveryDate'],
        originFacilityId: map['originFacilityId'],
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        destFacilityId: map['destFacilityId'],
        carrierPartyId: map['carrierPartyId'],
        lastUpdatedDate: map['lastUpdatedDate'],
        currencyUomId: map['currencyUomId'],
        billingWeight: map['billingWeight'],
        shipmentId: map['shipmentId'],
        originTelecomNumberId: map['originTelecomNumberId'],
        thirdPartyCountryGeoCode: map['thirdPartyCountryGeoCode'],
        destContactMechId: map['destContactMechId'],
        estimatedArrivalDate: map['estimatedArrivalDate'],
        homeDeliveryType: map['homeDeliveryType'],
        thirdPartyAccountNumber: map['thirdPartyAccountNumber'],
        updatedByUserLoginId: map['updatedByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentRouteSegmentDetail extractShipmentRouteSegmentDetail(dynamic json) {
    return ShipmentRouteSegmentDetail(
        entityId: create_id_from('ShipmentRouteSegmentDetail', ['shipmentId', 'shipmentRouteSegmentId'], json),
        originFacilityId: json['originFacilityId'] as String,
        shipmentRouteSegmentId: json['shipmentRouteSegmentId'] as String,
        carrierPartyId: json['carrierPartyId'] as String,
        billingWeight: json['billingWeight'] as double,
        statusId: json['statusId'] as String,
        shipmentId: json['shipmentId'] as String,
        primaryOrderId: json['primaryOrderId'] as String,
        carrierServiceStatusId: json['carrierServiceStatusId'] as String,
        shipmentMethodTypeId: json['shipmentMethodTypeId'] as String,
        billingWeightUomId: json['billingWeightUomId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentRouteSegmentDetail overridesShipmentRouteSegmentDetail(Map<String, dynamic> map) {
    return ShipmentRouteSegmentDetail(
        entityId: create_id_from('ShipmentRouteSegmentDetail', ['shipmentId', 'shipmentRouteSegmentId'], map),
        originFacilityId: map['originFacilityId'],
        shipmentRouteSegmentId: map['shipmentRouteSegmentId'],
        carrierPartyId: map['carrierPartyId'],
        billingWeight: map['billingWeight'],
        statusId: map['statusId'],
        shipmentId: map['shipmentId'],
        primaryOrderId: map['primaryOrderId'],
        carrierServiceStatusId: map['carrierServiceStatusId'],
        shipmentMethodTypeId: map['shipmentMethodTypeId'],
        billingWeightUomId: map['billingWeightUomId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentStatus extractShipmentStatus(dynamic json) {
    return ShipmentStatus(
        entityId: create_id_from('ShipmentStatus', ['statusId', 'shipmentId'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        shipmentId: json['shipmentId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentStatus overridesShipmentStatus(Map<String, dynamic> map) {
    return ShipmentStatus(
        entityId: create_id_from('ShipmentStatus', ['statusId', 'shipmentId'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        shipmentId: map['shipmentId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentType extractShipmentType(dynamic json) {
    return ShipmentType(
        entityId: create_id_from('ShipmentType', ['shipmentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        shipmentTypeId: json['shipmentTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentType overridesShipmentType(Map<String, dynamic> map) {
    return ShipmentType(
        entityId: create_id_from('ShipmentType', ['shipmentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        shipmentTypeId: map['shipmentTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShipmentTypeAttr extractShipmentTypeAttr(dynamic json) {
    return ShipmentTypeAttr(
        entityId: create_id_from('ShipmentTypeAttr', ['shipmentTypeId', 'attrName'], json),
        description: json['description'] as String,
        shipmentTypeId: json['shipmentTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShipmentTypeAttr overridesShipmentTypeAttr(Map<String, dynamic> map) {
    return ShipmentTypeAttr(
        entityId: create_id_from('ShipmentTypeAttr', ['shipmentTypeId', 'attrName'], map),
        description: map['description'],
        shipmentTypeId: map['shipmentTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ShippingDocument extractShippingDocument(dynamic json) {
    return ShippingDocument(
        entityId: create_id_from('ShippingDocument', ['documentId'], json),
        shipmentId: json['shipmentId'] as String,
        description: json['description'] as String,
        documentId: json['documentId'] as String,
        shipmentPackageSeqId: json['shipmentPackageSeqId'] as String,
        shipmentItemSeqId: json['shipmentItemSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ShippingDocument overridesShippingDocument(Map<String, dynamic> map) {
    return ShippingDocument(
        entityId: create_id_from('ShippingDocument', ['documentId'], map),
        shipmentId: map['shipmentId'],
        description: map['description'],
        documentId: map['documentId'],
        shipmentPackageSeqId: map['shipmentPackageSeqId'],
        shipmentItemSeqId: map['shipmentItemSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}