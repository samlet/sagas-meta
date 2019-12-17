import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CarrierAndShipmentMethod, Carrier And Shipment Method Type View
class CarrierAndShipmentMethod extends EntityBase {

  final int sequenceNumber;
  final String roleTypeId; // pk
  final String description;
  final String partyId; // pk
  final String shipmentMethodTypeId; // pk
  CarrierAndShipmentMethod({entityId,
    this.sequenceNumber, @required this.roleTypeId, this.description, @required this.partyId, @required this.shipmentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CarrierAndShipmentMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNumber':sequenceNumber, 'roleTypeId':roleTypeId, 'description':description, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId};
  }

}

/// Entity CarrierShipmentBoxType, Carrier Shipment Method
class CarrierShipmentBoxType extends EntityBase {

  final String packagingTypeCode;
  final String oversizeCode;
  final String partyId; // pk
  final String shipmentBoxTypeId; // pk
  CarrierShipmentBoxType({entityId,
    this.packagingTypeCode, this.oversizeCode, @required this.partyId, @required this.shipmentBoxTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CarrierShipmentBoxType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'packagingTypeCode':packagingTypeCode, 'oversizeCode':oversizeCode, 'partyId':partyId, 'shipmentBoxTypeId':shipmentBoxTypeId};
  }

}

/// Entity CarrierShipmentMethod, Carrier Shipment Method
class CarrierShipmentMethod extends EntityBase {

  final int sequenceNumber;
  final String roleTypeId; // pk
  final String partyId; // pk
  final String shipmentMethodTypeId; // pk
  final String carrierServiceCode;
  CarrierShipmentMethod({entityId,
    this.sequenceNumber, @required this.roleTypeId, @required this.partyId, @required this.shipmentMethodTypeId, this.carrierServiceCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CarrierShipmentMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNumber':sequenceNumber, 'roleTypeId':roleTypeId, 'partyId':partyId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'carrierServiceCode':carrierServiceCode};
  }

}

/// Entity Delivery, Delivery
class Delivery extends EntityBase {

  /// this entity has only one pk
  final DateTime actualArrivalDate;
  final DateTime estimatedStartDate;
  final double endMileage;
  final String originFacilityId;
  final String destFacilityId;
  final String deliveryId; // pk
  final double fuelUsed;
  final DateTime actualStartDate;
  final String fixedAssetId;
  final double startMileage;
  final DateTime estimatedArrivalDate;
  Delivery({entityId,
    this.actualArrivalDate, this.estimatedStartDate, this.endMileage, this.originFacilityId, this.destFacilityId, @required this.deliveryId, this.fuelUsed, this.actualStartDate, this.fixedAssetId, this.startMileage, this.estimatedArrivalDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Delivery { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'actualArrivalDate':actualArrivalDate, 'estimatedStartDate':estimatedStartDate, 'endMileage':endMileage, 'originFacilityId':originFacilityId, 'destFacilityId':destFacilityId, 'deliveryId':deliveryId, 'fuelUsed':fuelUsed, 'actualStartDate':actualStartDate, 'fixedAssetId':fixedAssetId, 'startMileage':startMileage, 'estimatedArrivalDate':estimatedArrivalDate};
  }

}

/// Entity OrderShipmentInfoSummary, Order Shipment Information View
class OrderShipmentInfoSummary extends EntityBase {

  final String orderItemSeqId;
  final String shipmentRouteSegmentId; // pk
  final String carrierPartyId;
  final String orderId;
  final String shipmentId;
  final DateTime actualStartDate;
  final String shipmentPackageSeqId; // pk
  final String trackingCode;
  final String boxNumber;
  final String shipGroupSeqId;
  final String shipmentMethodTypeId;
  OrderShipmentInfoSummary({entityId,
    this.orderItemSeqId, @required this.shipmentRouteSegmentId, this.carrierPartyId, this.orderId, this.shipmentId, this.actualStartDate, @required this.shipmentPackageSeqId, this.trackingCode, this.boxNumber, this.shipGroupSeqId, this.shipmentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OrderShipmentInfoSummary { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'shipmentRouteSegmentId':shipmentRouteSegmentId, 'carrierPartyId':carrierPartyId, 'orderId':orderId, 'shipmentId':shipmentId, 'actualStartDate':actualStartDate, 'shipmentPackageSeqId':shipmentPackageSeqId, 'trackingCode':trackingCode, 'boxNumber':boxNumber, 'shipGroupSeqId':shipGroupSeqId, 'shipmentMethodTypeId':shipmentMethodTypeId};
  }

}

/// Entity PackedQtyVsOrderItemQuantity, Shipment Route Segment Detail View
class PackedQtyVsOrderItemQuantity extends EntityBase {

  final String orderItemSeqId; // pk
  final double orderedQuantity;
  final String orderId; // pk
  final String shipmentId; // pk
  final double issuedQuantity;
  final String shipmentPackageSeqId; // pk
  final double packedQuantity;
  PackedQtyVsOrderItemQuantity({entityId,
    @required this.orderItemSeqId, this.orderedQuantity, @required this.orderId, @required this.shipmentId, this.issuedQuantity, @required this.shipmentPackageSeqId, this.packedQuantity,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PackedQtyVsOrderItemQuantity { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'orderedQuantity':orderedQuantity, 'orderId':orderId, 'shipmentId':shipmentId, 'issuedQuantity':issuedQuantity, 'shipmentPackageSeqId':shipmentPackageSeqId, 'packedQuantity':packedQuantity};
  }

}

/// Entity Shipment, Shipment
class Shipment extends EntityBase {

  /// this entity has only one pk
  final String partyIdFrom;
  final DateTime latestCancelDate;
  final DateTime estimatedReadyDate;
  final String lastModifiedByUserLogin;
  final String estimatedArrivalWorkEffId;
  final double additionalShippingCharge;
  final String destinationTelecomNumberId;
  final double estimatedShipCost;
  final String createdByUserLogin;
  final String estimatedShipWorkEffId;
  final String destinationFacilityId;
  final String addtlShippingChargeDesc;
  final DateTime lastModifiedDate;
  final String originContactMechId;
  final String primaryReturnId;
  final String originFacilityId;
  final String currencyUomId;
  final DateTime createdDate;
  final String statusId;
  final String destinationContactMechId;
  final String shipmentId; // pk
  final String originTelecomNumberId;
  final String primaryOrderId;
  final DateTime estimatedShipDate;
  final String partyIdTo;
  final String shipmentTypeId;
  final DateTime estimatedArrivalDate;
  final String picklistBinId;
  final String primaryShipGroupSeqId;
  final String handlingInstructions;
  Shipment({entityId,
    this.partyIdFrom, this.latestCancelDate, this.estimatedReadyDate, this.lastModifiedByUserLogin, this.estimatedArrivalWorkEffId, this.additionalShippingCharge, this.destinationTelecomNumberId, this.estimatedShipCost, this.createdByUserLogin, this.estimatedShipWorkEffId, this.destinationFacilityId, this.addtlShippingChargeDesc, this.lastModifiedDate, this.originContactMechId, this.primaryReturnId, this.originFacilityId, this.currencyUomId, this.createdDate, this.statusId, this.destinationContactMechId, @required this.shipmentId, this.originTelecomNumberId, this.primaryOrderId, this.estimatedShipDate, this.partyIdTo, this.shipmentTypeId, this.estimatedArrivalDate, this.picklistBinId, this.primaryShipGroupSeqId, this.handlingInstructions,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Shipment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'latestCancelDate':latestCancelDate, 'estimatedReadyDate':estimatedReadyDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'estimatedArrivalWorkEffId':estimatedArrivalWorkEffId, 'additionalShippingCharge':additionalShippingCharge, 'destinationTelecomNumberId':destinationTelecomNumberId, 'estimatedShipCost':estimatedShipCost, 'createdByUserLogin':createdByUserLogin, 'estimatedShipWorkEffId':estimatedShipWorkEffId, 'destinationFacilityId':destinationFacilityId, 'addtlShippingChargeDesc':addtlShippingChargeDesc, 'lastModifiedDate':lastModifiedDate, 'originContactMechId':originContactMechId, 'primaryReturnId':primaryReturnId, 'originFacilityId':originFacilityId, 'currencyUomId':currencyUomId, 'createdDate':createdDate, 'statusId':statusId, 'destinationContactMechId':destinationContactMechId, 'shipmentId':shipmentId, 'originTelecomNumberId':originTelecomNumberId, 'primaryOrderId':primaryOrderId, 'estimatedShipDate':estimatedShipDate, 'partyIdTo':partyIdTo, 'shipmentTypeId':shipmentTypeId, 'estimatedArrivalDate':estimatedArrivalDate, 'picklistBinId':picklistBinId, 'primaryShipGroupSeqId':primaryShipGroupSeqId, 'handlingInstructions':handlingInstructions};
  }

}

/// Entity ShipmentAndItem, Shipment and Item View
class ShipmentAndItem extends EntityBase {

  final String partyIdFrom;
  final double quantity;
  final String productId;
  final String shipmentContentDescription;
  final String originContactMechId;
  final DateTime latestCancelDate;
  final DateTime estimatedReadyDate;
  final String shipmentItemSeqId; // pk
  final String originFacilityId;
  final String statusId;
  final String destinationContactMechId;
  final String shipmentId; // pk
  final String primaryOrderId;
  final DateTime estimatedShipDate;
  final double estimatedShipCost;
  final String partyIdTo;
  final String shipmentTypeId;
  final DateTime estimatedArrivalDate;
  final String handlingInstructions;
  final String destinationFacilityId;
  ShipmentAndItem({entityId,
    this.partyIdFrom, this.quantity, this.productId, this.shipmentContentDescription, this.originContactMechId, this.latestCancelDate, this.estimatedReadyDate, @required this.shipmentItemSeqId, this.originFacilityId, this.statusId, this.destinationContactMechId, @required this.shipmentId, this.primaryOrderId, this.estimatedShipDate, this.estimatedShipCost, this.partyIdTo, this.shipmentTypeId, this.estimatedArrivalDate, this.handlingInstructions, this.destinationFacilityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'quantity':quantity, 'productId':productId, 'shipmentContentDescription':shipmentContentDescription, 'originContactMechId':originContactMechId, 'latestCancelDate':latestCancelDate, 'estimatedReadyDate':estimatedReadyDate, 'shipmentItemSeqId':shipmentItemSeqId, 'originFacilityId':originFacilityId, 'statusId':statusId, 'destinationContactMechId':destinationContactMechId, 'shipmentId':shipmentId, 'primaryOrderId':primaryOrderId, 'estimatedShipDate':estimatedShipDate, 'estimatedShipCost':estimatedShipCost, 'partyIdTo':partyIdTo, 'shipmentTypeId':shipmentTypeId, 'estimatedArrivalDate':estimatedArrivalDate, 'handlingInstructions':handlingInstructions, 'destinationFacilityId':destinationFacilityId};
  }

}

/// Entity ShipmentAttribute, Shipment Attribute
class ShipmentAttribute extends EntityBase {

  final String shipmentId; // pk
  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  ShipmentAttribute({entityId,
    @required this.shipmentId, this.attrDescription, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentId':shipmentId, 'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity ShipmentBoxType, Shipment Contact Mechanism Type
class ShipmentBoxType extends EntityBase {

  /// this entity has only one pk
  final double boxLength;
  final double boxWeight;
  final String dimensionUomId;
  final String description;
  final String weightUomId;
  final double boxWidth;
  final double boxHeight;
  final String shipmentBoxTypeId; // pk
  ShipmentBoxType({entityId,
    this.boxLength, this.boxWeight, this.dimensionUomId, this.description, this.weightUomId, this.boxWidth, this.boxHeight, @required this.shipmentBoxTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentBoxType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'boxLength':boxLength, 'boxWeight':boxWeight, 'dimensionUomId':dimensionUomId, 'description':description, 'weightUomId':weightUomId, 'boxWidth':boxWidth, 'boxHeight':boxHeight, 'shipmentBoxTypeId':shipmentBoxTypeId};
  }

}

/// Entity ShipmentContactMech, Shipment Contact Mechanism
class ShipmentContactMech extends EntityBase {

  final String shipmentId; // pk
  final String shipmentContactMechTypeId; // pk
  final String contactMechId;
  ShipmentContactMech({entityId,
    @required this.shipmentId, @required this.shipmentContactMechTypeId, this.contactMechId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentContactMech { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentId':shipmentId, 'shipmentContactMechTypeId':shipmentContactMechTypeId, 'contactMechId':contactMechId};
  }

}

/// Entity ShipmentContactMechType, Shipment Contact Mechanism Type
class ShipmentContactMechType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String shipmentContactMechTypeId; // pk
  ShipmentContactMechType({entityId,
    this.description, @required this.shipmentContactMechTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentContactMechType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'shipmentContactMechTypeId':shipmentContactMechTypeId};
  }

}

/// Entity ShipmentCostEstimate, Shipment Cost Estimate
class ShipmentCostEstimate extends EntityBase {

  /// this entity has only one pk
  final String productStoreShipMethId;
  final double quantityUnitPrice;
  final String quantityUomId;
  final double featurePercent;
  final double featurePrice;
  final double weightUnitPrice;
  final double oversizeUnit;
  final String productStoreId;
  final String partyId;
  final String productFeatureGroupId;
  final double oversizePrice;
  final String shipmentMethodTypeId;
  final String geoIdTo;
  final double orderPricePercent;
  final double orderItemFlatPrice;
  final String roleTypeId;
  final double shippingPricePercent;
  final String weightBreakId;
  final String quantityBreakId;
  final String priceBreakId;
  final String carrierPartyId;
  final String geoIdFrom;
  final double orderFlatPrice;
  final String carrierRoleTypeId;
  final String weightUomId;
  final double priceUnitPrice;
  final String shipmentCostEstimateId; // pk
  final String priceUomId;
  ShipmentCostEstimate({entityId,
    this.productStoreShipMethId, this.quantityUnitPrice, this.quantityUomId, this.featurePercent, this.featurePrice, this.weightUnitPrice, this.oversizeUnit, this.productStoreId, this.partyId, this.productFeatureGroupId, this.oversizePrice, this.shipmentMethodTypeId, this.geoIdTo, this.orderPricePercent, this.orderItemFlatPrice, this.roleTypeId, this.shippingPricePercent, this.weightBreakId, this.quantityBreakId, this.priceBreakId, this.carrierPartyId, this.geoIdFrom, this.orderFlatPrice, this.carrierRoleTypeId, this.weightUomId, this.priceUnitPrice, @required this.shipmentCostEstimateId, this.priceUomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentCostEstimate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'productStoreShipMethId':productStoreShipMethId, 'quantityUnitPrice':quantityUnitPrice, 'quantityUomId':quantityUomId, 'featurePercent':featurePercent, 'featurePrice':featurePrice, 'weightUnitPrice':weightUnitPrice, 'oversizeUnit':oversizeUnit, 'productStoreId':productStoreId, 'partyId':partyId, 'productFeatureGroupId':productFeatureGroupId, 'oversizePrice':oversizePrice, 'shipmentMethodTypeId':shipmentMethodTypeId, 'geoIdTo':geoIdTo, 'orderPricePercent':orderPricePercent, 'orderItemFlatPrice':orderItemFlatPrice, 'roleTypeId':roleTypeId, 'shippingPricePercent':shippingPricePercent, 'weightBreakId':weightBreakId, 'quantityBreakId':quantityBreakId, 'priceBreakId':priceBreakId, 'carrierPartyId':carrierPartyId, 'geoIdFrom':geoIdFrom, 'orderFlatPrice':orderFlatPrice, 'carrierRoleTypeId':carrierRoleTypeId, 'weightUomId':weightUomId, 'priceUnitPrice':priceUnitPrice, 'shipmentCostEstimateId':shipmentCostEstimateId, 'priceUomId':priceUomId};
  }

}

/// Entity ShipmentGatewayConfig, Shipment Gateway Config
class ShipmentGatewayConfig extends EntityBase {

  /// this entity has only one pk
  final String shipmentGatewayConfigId; // pk
  final String description;
  final String shipmentGatewayConfTypeId;
  ShipmentGatewayConfig({entityId,
    @required this.shipmentGatewayConfigId, this.description, this.shipmentGatewayConfTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayConfig { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentGatewayConfigId':shipmentGatewayConfigId, 'description':description, 'shipmentGatewayConfTypeId':shipmentGatewayConfTypeId};
  }

}

/// Entity ShipmentGatewayConfigType, Shipment Gateway Config Type
class ShipmentGatewayConfigType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String shipmentGatewayConfTypeId; // pk
  ShipmentGatewayConfigType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.shipmentGatewayConfTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayConfigType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'shipmentGatewayConfTypeId':shipmentGatewayConfTypeId};
  }

}

/// Entity ShipmentGatewayDhl, DHL Shipment Gateway Configuration
class ShipmentGatewayDhl extends EntityBase {

  /// this entity has only one pk
  final String connectUrl;
  final String accessUserId;
  final String rateEstimateTemplate;
  final String labelImageFormat;
  final String headVersion;
  final String accessShippingKey;
  final String shipmentGatewayConfigId; // pk
  final int connectTimeout;
  final String accessAccountNbr;
  final String headAction;
  final String accessPassword;
  ShipmentGatewayDhl({entityId,
    this.connectUrl, this.accessUserId, this.rateEstimateTemplate, this.labelImageFormat, this.headVersion, this.accessShippingKey, @required this.shipmentGatewayConfigId, this.connectTimeout, this.accessAccountNbr, this.headAction, this.accessPassword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayDhl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'connectUrl':connectUrl, 'accessUserId':accessUserId, 'rateEstimateTemplate':rateEstimateTemplate, 'labelImageFormat':labelImageFormat, 'headVersion':headVersion, 'accessShippingKey':accessShippingKey, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'connectTimeout':connectTimeout, 'accessAccountNbr':accessAccountNbr, 'headAction':headAction, 'accessPassword':accessPassword};
  }

}

/// Entity ShipmentGatewayFedex, Fedex Shipment Gateway Configuration
class ShipmentGatewayFedex extends EntityBase {

  /// this entity has only one pk
  final String connectUrl;
  final String accessMeterNumber;
  final String rateEstimateTemplate;
  final String labelImageType;
  final String defaultDropoffType;
  final String accessUserKey;
  final String templateShipment;
  final String templateSubscription;
  final String accessUserPwd;
  final String shipmentGatewayConfigId; // pk
  final String defaultPackagingType;
  final int connectTimeout;
  final String accessAccountNbr;
  final String connectSoapUrl;
  ShipmentGatewayFedex({entityId,
    this.connectUrl, this.accessMeterNumber, this.rateEstimateTemplate, this.labelImageType, this.defaultDropoffType, this.accessUserKey, this.templateShipment, this.templateSubscription, this.accessUserPwd, @required this.shipmentGatewayConfigId, this.defaultPackagingType, this.connectTimeout, this.accessAccountNbr, this.connectSoapUrl,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayFedex { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'connectUrl':connectUrl, 'accessMeterNumber':accessMeterNumber, 'rateEstimateTemplate':rateEstimateTemplate, 'labelImageType':labelImageType, 'defaultDropoffType':defaultDropoffType, 'accessUserKey':accessUserKey, 'templateShipment':templateShipment, 'templateSubscription':templateSubscription, 'accessUserPwd':accessUserPwd, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'defaultPackagingType':defaultPackagingType, 'connectTimeout':connectTimeout, 'accessAccountNbr':accessAccountNbr, 'connectSoapUrl':connectSoapUrl};
  }

}

/// Entity ShipmentGatewayUps, UPS Shipment Gateway Configuration
class ShipmentGatewayUps extends EntityBase {

  /// this entity has only one pk
  final String accessUserId;
  final String customerClassification;
  final String shipperNumber;
  final String codSurchargeCurrencyUomId;
  final String shipmentGatewayConfigId; // pk
  final double minEstimateWeight;
  final int connectTimeout;
  final String accessPassword;
  final String accessLicenseNumber;
  final String connectUrl;
  final String saveCertPath;
  final String billShipperAccountNumber;
  final String defaultReturnLabelSubject;
  final double maxEstimateWeight;
  final String codSurchargeApplyToPackage;
  final String saveCertInfo;
  final String codFundsCode;
  final String shipperPickupType;
  final String codAllowCod;
  final double codSurchargeAmount;
  final String defaultReturnLabelMemo;
  ShipmentGatewayUps({entityId,
    this.accessUserId, this.customerClassification, this.shipperNumber, this.codSurchargeCurrencyUomId, @required this.shipmentGatewayConfigId, this.minEstimateWeight, this.connectTimeout, this.accessPassword, this.accessLicenseNumber, this.connectUrl, this.saveCertPath, this.billShipperAccountNumber, this.defaultReturnLabelSubject, this.maxEstimateWeight, this.codSurchargeApplyToPackage, this.saveCertInfo, this.codFundsCode, this.shipperPickupType, this.codAllowCod, this.codSurchargeAmount, this.defaultReturnLabelMemo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayUps { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'accessUserId':accessUserId, 'customerClassification':customerClassification, 'shipperNumber':shipperNumber, 'codSurchargeCurrencyUomId':codSurchargeCurrencyUomId, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'minEstimateWeight':minEstimateWeight, 'connectTimeout':connectTimeout, 'accessPassword':accessPassword, 'accessLicenseNumber':accessLicenseNumber, 'connectUrl':connectUrl, 'saveCertPath':saveCertPath, 'billShipperAccountNumber':billShipperAccountNumber, 'defaultReturnLabelSubject':defaultReturnLabelSubject, 'maxEstimateWeight':maxEstimateWeight, 'codSurchargeApplyToPackage':codSurchargeApplyToPackage, 'saveCertInfo':saveCertInfo, 'codFundsCode':codFundsCode, 'shipperPickupType':shipperPickupType, 'codAllowCod':codAllowCod, 'codSurchargeAmount':codSurchargeAmount, 'defaultReturnLabelMemo':defaultReturnLabelMemo};
  }

}

/// Entity ShipmentGatewayUsps, USPS Shipment Gateway Configuration
class ShipmentGatewayUsps extends EntityBase {

  /// this entity has only one pk
  final String connectUrl;
  final String accessUserId;
  final String test;
  final String shipmentGatewayConfigId; // pk
  final int connectTimeout;
  final String connectUrlLabels;
  final String accessPassword;
  final int maxEstimateWeight;
  ShipmentGatewayUsps({entityId,
    this.connectUrl, this.accessUserId, this.test, @required this.shipmentGatewayConfigId, this.connectTimeout, this.connectUrlLabels, this.accessPassword, this.maxEstimateWeight,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentGatewayUsps { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'connectUrl':connectUrl, 'accessUserId':accessUserId, 'test':test, 'shipmentGatewayConfigId':shipmentGatewayConfigId, 'connectTimeout':connectTimeout, 'connectUrlLabels':connectUrlLabels, 'accessPassword':accessPassword, 'maxEstimateWeight':maxEstimateWeight};
  }

}

/// Entity ShipmentItem, Shipment Item
class ShipmentItem extends EntityBase {

  final double quantity;
  final String productId;
  final String shipmentContentDescription;
  final String shipmentId; // pk
  final String shipmentItemSeqId; // pk
  ShipmentItem({entityId,
    this.quantity, this.productId, this.shipmentContentDescription, @required this.shipmentId, @required this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'productId':productId, 'shipmentContentDescription':shipmentContentDescription, 'shipmentId':shipmentId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}

/// Entity ShipmentItemBilling, Shipment Item Billing
class ShipmentItemBilling extends EntityBase {

  final String shipmentId; // pk
  final String invoiceId; // pk
  final String invoiceItemSeqId; // pk
  final String shipmentItemSeqId; // pk
  ShipmentItemBilling({entityId,
    @required this.shipmentId, @required this.invoiceId, @required this.invoiceItemSeqId, @required this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentItemBilling { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentId':shipmentId, 'invoiceId':invoiceId, 'invoiceItemSeqId':invoiceItemSeqId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}

/// Entity ShipmentItemFeature, Shipment Item Feature
class ShipmentItemFeature extends EntityBase {

  final String shipmentId; // pk
  final String productFeatureId; // pk
  final String shipmentItemSeqId; // pk
  ShipmentItemFeature({entityId,
    @required this.shipmentId, @required this.productFeatureId, @required this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentItemFeature { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentId':shipmentId, 'productFeatureId':productFeatureId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}

/// Entity ShipmentManifestView, Shipment Manifest View
class ShipmentManifestView extends EntityBase {

  final String weightUomDescription;
  final String shipmentContentDescription;
  final String orderId;
  final String boxNumber;
  final String originToName;
  final String originAreaCode;
  final String deliveryId;
  final String carrierFirstName;
  final String shipmentMethodDescription;
  final String originCity;
  final String destAttnName;
  final double packageQuantity;
  final String originCountryGeoId;
  final String shipmentMethodTypeId;
  final String orderItemSeqId;
  final DateTime actualArrivalDate;
  final String originAddress1;
  final String originStateProvinceGeoId;
  final String productId;
  final String originAddress2;
  final DateTime estimatedStartDate;
  final String destCity;
  final double weight;
  final String destToName;
  final String destAddress1;
  final String carrierLastName;
  final String shipmentItemSeqId; // pk
  final DateTime packageDateCreated;
  final String inventoryItemId;
  final String carrierPartyId;
  final String originFacilityName;
  final String weightUomAbbreviation;
  final String originPostalCodeGeoId;
  final DateTime estimatedArrivalDate;
  final double issuedQuantity;
  final String shipmentPackageSeqId; // pk
  final String destTelecomNumberId;
  final String internalName;
  final String originAttnName;
  final String destCountryCode;
  final String originCountryCode;
  final String destAddress2;
  final String destCountryGeoId;
  final String itemIssuanceId; // pk
  final DateTime actualStartDate;
  final double actualCost;
  final String destContactNumber;
  final String originDirections;
  final double quantity;
  final String destDirections;
  final String originContactMechId;
  final String originPostalCode;
  final String trackingCode;
  final String originContactNumber;
  final String carrierGroupName;
  final String destPostalCode;
  final String originFacilityId;
  final String shipmentRouteSegmentId; // pk
  final String destFacilityId;
  final String shipmentId; // pk
  final String originTelecomNumberId;
  final DateTime issuedDateTime;
  final String destContactMechId;
  final String destPostalCodeGeoId;
  final String destFacilityName;
  final String issuedByUserLoginId;
  final String destAreaCode;
  final String destStateProvinceGeoId;
  ShipmentManifestView({entityId,
    this.weightUomDescription, this.shipmentContentDescription, this.orderId, this.boxNumber, this.originToName, this.originAreaCode, this.deliveryId, this.carrierFirstName, this.shipmentMethodDescription, this.originCity, this.destAttnName, this.packageQuantity, this.originCountryGeoId, this.shipmentMethodTypeId, this.orderItemSeqId, this.actualArrivalDate, this.originAddress1, this.originStateProvinceGeoId, this.productId, this.originAddress2, this.estimatedStartDate, this.destCity, this.weight, this.destToName, this.destAddress1, this.carrierLastName, @required this.shipmentItemSeqId, this.packageDateCreated, this.inventoryItemId, this.carrierPartyId, this.originFacilityName, this.weightUomAbbreviation, this.originPostalCodeGeoId, this.estimatedArrivalDate, this.issuedQuantity, @required this.shipmentPackageSeqId, this.destTelecomNumberId, this.internalName, this.originAttnName, this.destCountryCode, this.originCountryCode, this.destAddress2, this.destCountryGeoId, @required this.itemIssuanceId, this.actualStartDate, this.actualCost, this.destContactNumber, this.originDirections, this.quantity, this.destDirections, this.originContactMechId, this.originPostalCode, this.trackingCode, this.originContactNumber, this.carrierGroupName, this.destPostalCode, this.originFacilityId, @required this.shipmentRouteSegmentId, this.destFacilityId, @required this.shipmentId, this.originTelecomNumberId, this.issuedDateTime, this.destContactMechId, this.destPostalCodeGeoId, this.destFacilityName, this.issuedByUserLoginId, this.destAreaCode, this.destStateProvinceGeoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentManifestView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'weightUomDescription':weightUomDescription, 'shipmentContentDescription':shipmentContentDescription, 'orderId':orderId, 'boxNumber':boxNumber, 'originToName':originToName, 'originAreaCode':originAreaCode, 'deliveryId':deliveryId, 'carrierFirstName':carrierFirstName, 'shipmentMethodDescription':shipmentMethodDescription, 'originCity':originCity, 'destAttnName':destAttnName, 'packageQuantity':packageQuantity, 'originCountryGeoId':originCountryGeoId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'orderItemSeqId':orderItemSeqId, 'actualArrivalDate':actualArrivalDate, 'originAddress1':originAddress1, 'originStateProvinceGeoId':originStateProvinceGeoId, 'productId':productId, 'originAddress2':originAddress2, 'estimatedStartDate':estimatedStartDate, 'destCity':destCity, 'weight':weight, 'destToName':destToName, 'destAddress1':destAddress1, 'carrierLastName':carrierLastName, 'shipmentItemSeqId':shipmentItemSeqId, 'packageDateCreated':packageDateCreated, 'inventoryItemId':inventoryItemId, 'carrierPartyId':carrierPartyId, 'originFacilityName':originFacilityName, 'weightUomAbbreviation':weightUomAbbreviation, 'originPostalCodeGeoId':originPostalCodeGeoId, 'estimatedArrivalDate':estimatedArrivalDate, 'issuedQuantity':issuedQuantity, 'shipmentPackageSeqId':shipmentPackageSeqId, 'destTelecomNumberId':destTelecomNumberId, 'internalName':internalName, 'originAttnName':originAttnName, 'destCountryCode':destCountryCode, 'originCountryCode':originCountryCode, 'destAddress2':destAddress2, 'destCountryGeoId':destCountryGeoId, 'itemIssuanceId':itemIssuanceId, 'actualStartDate':actualStartDate, 'actualCost':actualCost, 'destContactNumber':destContactNumber, 'originDirections':originDirections, 'quantity':quantity, 'destDirections':destDirections, 'originContactMechId':originContactMechId, 'originPostalCode':originPostalCode, 'trackingCode':trackingCode, 'originContactNumber':originContactNumber, 'carrierGroupName':carrierGroupName, 'destPostalCode':destPostalCode, 'originFacilityId':originFacilityId, 'shipmentRouteSegmentId':shipmentRouteSegmentId, 'destFacilityId':destFacilityId, 'shipmentId':shipmentId, 'originTelecomNumberId':originTelecomNumberId, 'issuedDateTime':issuedDateTime, 'destContactMechId':destContactMechId, 'destPostalCodeGeoId':destPostalCodeGeoId, 'destFacilityName':destFacilityName, 'issuedByUserLoginId':issuedByUserLoginId, 'destAreaCode':destAreaCode, 'destStateProvinceGeoId':destStateProvinceGeoId};
  }

}

/// Entity ShipmentMethodType, Shipment Method Type
class ShipmentMethodType extends EntityBase {

  /// this entity has only one pk
  final int sequenceNum;
  final String description;
  final String shipmentMethodTypeId; // pk
  ShipmentMethodType({entityId,
    this.sequenceNum, this.description, @required this.shipmentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentMethodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'description':description, 'shipmentMethodTypeId':shipmentMethodTypeId};
  }

}

/// Entity ShipmentPackage, Shipment Package
class ShipmentPackage extends EntityBase {

  final double boxLength;
  final double insuredValue;
  final double weight;
  final String shipmentPackageSeqId; // pk
  final double boxHeight;
  final String shipmentBoxTypeId;
  final DateTime dateCreated;
  final String shipmentId; // pk
  final String dimensionUomId;
  final String weightUomId;
  final double boxWidth;
  ShipmentPackage({entityId,
    this.boxLength, this.insuredValue, this.weight, @required this.shipmentPackageSeqId, this.boxHeight, this.shipmentBoxTypeId, this.dateCreated, @required this.shipmentId, this.dimensionUomId, this.weightUomId, this.boxWidth,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentPackage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'boxLength':boxLength, 'insuredValue':insuredValue, 'weight':weight, 'shipmentPackageSeqId':shipmentPackageSeqId, 'boxHeight':boxHeight, 'shipmentBoxTypeId':shipmentBoxTypeId, 'dateCreated':dateCreated, 'shipmentId':shipmentId, 'dimensionUomId':dimensionUomId, 'weightUomId':weightUomId, 'boxWidth':boxWidth};
  }

}

/// Entity ShipmentPackageContent, Shipment Package Content
class ShipmentPackageContent extends EntityBase {

  final double quantity;
  final String shipmentId; // pk
  final double subProductQuantity;
  final String shipmentPackageSeqId; // pk
  final String subProductId;
  final String shipmentItemSeqId; // pk
  ShipmentPackageContent({entityId,
    this.quantity, @required this.shipmentId, this.subProductQuantity, @required this.shipmentPackageSeqId, this.subProductId, @required this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentPackageContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quantity':quantity, 'shipmentId':shipmentId, 'subProductQuantity':subProductQuantity, 'shipmentPackageSeqId':shipmentPackageSeqId, 'subProductId':subProductId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}

/// Entity ShipmentPackageRouteDetail, Shipment Package Route Detail View
class ShipmentPackageRouteDetail extends EntityBase {

  final String shipmentRouteSegmentId; // pk
  final String carrierPartyId;
  final String labelPrinted;
  final String statusId;
  final String shipmentId; // pk
  final String primaryOrderId;
  final String carrierServiceStatusId;
  final String shipmentPackageSeqId; // pk
  final String trackingCode;
  final String shipmentMethodTypeId;
  ShipmentPackageRouteDetail({entityId,
    @required this.shipmentRouteSegmentId, this.carrierPartyId, this.labelPrinted, this.statusId, @required this.shipmentId, this.primaryOrderId, this.carrierServiceStatusId, @required this.shipmentPackageSeqId, this.trackingCode, this.shipmentMethodTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentPackageRouteDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentRouteSegmentId':shipmentRouteSegmentId, 'carrierPartyId':carrierPartyId, 'labelPrinted':labelPrinted, 'statusId':statusId, 'shipmentId':shipmentId, 'primaryOrderId':primaryOrderId, 'carrierServiceStatusId':carrierServiceStatusId, 'shipmentPackageSeqId':shipmentPackageSeqId, 'trackingCode':trackingCode, 'shipmentMethodTypeId':shipmentMethodTypeId};
  }

}

/// Entity ShipmentPackageRouteSeg, Shipment Package Route Segment
class ShipmentPackageRouteSeg extends EntityBase {

  final Uint8List labelIntlSignImage;
  final String shipmentPackageSeqId; // pk
  final String trackingCode;
  final String boxNumber;
  final double packageServiceCost;
  final double packageOtherCost;
  final String shipmentRouteSegmentId; // pk
  final Uint8List labelImage;
  final String labelPrinted;
  final String currencyUomId;
  final Uint8List internationalInvoice;
  final double packageTransportCost;
  final String shipmentId; // pk
  final double codAmount;
  final double insuredAmount;
  final String labelHtml;
  ShipmentPackageRouteSeg({entityId,
    this.labelIntlSignImage, @required this.shipmentPackageSeqId, this.trackingCode, this.boxNumber, this.packageServiceCost, this.packageOtherCost, @required this.shipmentRouteSegmentId, this.labelImage, this.labelPrinted, this.currencyUomId, this.internationalInvoice, this.packageTransportCost, @required this.shipmentId, this.codAmount, this.insuredAmount, this.labelHtml,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentPackageRouteSeg { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'labelIntlSignImage':labelIntlSignImage, 'shipmentPackageSeqId':shipmentPackageSeqId, 'trackingCode':trackingCode, 'boxNumber':boxNumber, 'packageServiceCost':packageServiceCost, 'packageOtherCost':packageOtherCost, 'shipmentRouteSegmentId':shipmentRouteSegmentId, 'labelImage':labelImage, 'labelPrinted':labelPrinted, 'currencyUomId':currencyUomId, 'internationalInvoice':internationalInvoice, 'packageTransportCost':packageTransportCost, 'shipmentId':shipmentId, 'codAmount':codAmount, 'insuredAmount':insuredAmount, 'labelHtml':labelHtml};
  }

}

/// Entity ShipmentReceiptAndItem, ShipmentReceipt And Inventory Item View
class ShipmentReceiptAndItem extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String facilityId;
  final String productId;
  final String orderId;
  final double quantityAccepted;
  final String lotId;
  final String shipmentPackageSeqId;
  final String shipmentItemSeqId;
  final double quantityRejected;
  final String inventoryItemId;
  final String rejectionId;
  final double quantityOnHandTotal;
  final String shipmentId;
  final String receivedByUserLoginId;
  final double unitCost;
  final String returnId;
  final String returnItemSeqId;
  final DateTime datetimeReceived;
  final String itemDescription;
  final double availableToPromiseTotal;
  final String receiptId; // pk
  final String locationSeqId;
  ShipmentReceiptAndItem({entityId,
    this.orderItemSeqId, this.facilityId, this.productId, this.orderId, this.quantityAccepted, this.lotId, this.shipmentPackageSeqId, this.shipmentItemSeqId, this.quantityRejected, this.inventoryItemId, this.rejectionId, this.quantityOnHandTotal, this.shipmentId, this.receivedByUserLoginId, this.unitCost, this.returnId, this.returnItemSeqId, this.datetimeReceived, this.itemDescription, this.availableToPromiseTotal, @required this.receiptId, this.locationSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentReceiptAndItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'facilityId':facilityId, 'productId':productId, 'orderId':orderId, 'quantityAccepted':quantityAccepted, 'lotId':lotId, 'shipmentPackageSeqId':shipmentPackageSeqId, 'shipmentItemSeqId':shipmentItemSeqId, 'quantityRejected':quantityRejected, 'inventoryItemId':inventoryItemId, 'rejectionId':rejectionId, 'quantityOnHandTotal':quantityOnHandTotal, 'shipmentId':shipmentId, 'receivedByUserLoginId':receivedByUserLoginId, 'unitCost':unitCost, 'returnId':returnId, 'returnItemSeqId':returnItemSeqId, 'datetimeReceived':datetimeReceived, 'itemDescription':itemDescription, 'availableToPromiseTotal':availableToPromiseTotal, 'receiptId':receiptId, 'locationSeqId':locationSeqId};
  }

}

/// Entity ShipmentRouteSegment, Shipment Route Segment
class ShipmentRouteSegment extends EntityBase {

  final double actualOtherCost;
  final String carrierDeliveryZone;
  final String thirdPartyPostalCode;
  final String destTelecomNumberId;
  final String carrierRestrictionCodes;
  final String trackingIdNumber;
  final String deliveryId;
  final String carrierServiceStatusId;
  final DateTime actualStartDate;
  final String trackingDigest;
  final String shipmentMethodTypeId;
  final double actualCost;
  final Uint8List upsHighValueReport;
  final DateTime actualArrivalDate;
  final double actualServiceCost;
  final String originContactMechId;
  final DateTime estimatedStartDate;
  final String carrierRestrictionDesc;
  final double actualTransportCost;
  final String billingWeightUomId;
  final DateTime homeDeliveryDate;
  final String originFacilityId;
  final String shipmentRouteSegmentId; // pk
  final String destFacilityId;
  final String carrierPartyId;
  final DateTime lastUpdatedDate;
  final String currencyUomId;
  final double billingWeight;
  final String shipmentId; // pk
  final String originTelecomNumberId;
  final String thirdPartyCountryGeoCode;
  final String destContactMechId;
  final DateTime estimatedArrivalDate;
  final String homeDeliveryType;
  final String thirdPartyAccountNumber;
  final String updatedByUserLoginId;
  ShipmentRouteSegment({entityId,
    this.actualOtherCost, this.carrierDeliveryZone, this.thirdPartyPostalCode, this.destTelecomNumberId, this.carrierRestrictionCodes, this.trackingIdNumber, this.deliveryId, this.carrierServiceStatusId, this.actualStartDate, this.trackingDigest, this.shipmentMethodTypeId, this.actualCost, this.upsHighValueReport, this.actualArrivalDate, this.actualServiceCost, this.originContactMechId, this.estimatedStartDate, this.carrierRestrictionDesc, this.actualTransportCost, this.billingWeightUomId, this.homeDeliveryDate, this.originFacilityId, @required this.shipmentRouteSegmentId, this.destFacilityId, this.carrierPartyId, this.lastUpdatedDate, this.currencyUomId, this.billingWeight, @required this.shipmentId, this.originTelecomNumberId, this.thirdPartyCountryGeoCode, this.destContactMechId, this.estimatedArrivalDate, this.homeDeliveryType, this.thirdPartyAccountNumber, this.updatedByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentRouteSegment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'actualOtherCost':actualOtherCost, 'carrierDeliveryZone':carrierDeliveryZone, 'thirdPartyPostalCode':thirdPartyPostalCode, 'destTelecomNumberId':destTelecomNumberId, 'carrierRestrictionCodes':carrierRestrictionCodes, 'trackingIdNumber':trackingIdNumber, 'deliveryId':deliveryId, 'carrierServiceStatusId':carrierServiceStatusId, 'actualStartDate':actualStartDate, 'trackingDigest':trackingDigest, 'shipmentMethodTypeId':shipmentMethodTypeId, 'actualCost':actualCost, 'upsHighValueReport':upsHighValueReport, 'actualArrivalDate':actualArrivalDate, 'actualServiceCost':actualServiceCost, 'originContactMechId':originContactMechId, 'estimatedStartDate':estimatedStartDate, 'carrierRestrictionDesc':carrierRestrictionDesc, 'actualTransportCost':actualTransportCost, 'billingWeightUomId':billingWeightUomId, 'homeDeliveryDate':homeDeliveryDate, 'originFacilityId':originFacilityId, 'shipmentRouteSegmentId':shipmentRouteSegmentId, 'destFacilityId':destFacilityId, 'carrierPartyId':carrierPartyId, 'lastUpdatedDate':lastUpdatedDate, 'currencyUomId':currencyUomId, 'billingWeight':billingWeight, 'shipmentId':shipmentId, 'originTelecomNumberId':originTelecomNumberId, 'thirdPartyCountryGeoCode':thirdPartyCountryGeoCode, 'destContactMechId':destContactMechId, 'estimatedArrivalDate':estimatedArrivalDate, 'homeDeliveryType':homeDeliveryType, 'thirdPartyAccountNumber':thirdPartyAccountNumber, 'updatedByUserLoginId':updatedByUserLoginId};
  }

}

/// Entity ShipmentRouteSegmentDetail, Shipment Route Segment Detail View
class ShipmentRouteSegmentDetail extends EntityBase {

  final String originFacilityId;
  final String shipmentRouteSegmentId; // pk
  final String carrierPartyId;
  final double billingWeight;
  final String statusId;
  final String shipmentId; // pk
  final String primaryOrderId;
  final String carrierServiceStatusId;
  final String shipmentMethodTypeId;
  final String billingWeightUomId;
  ShipmentRouteSegmentDetail({entityId,
    this.originFacilityId, @required this.shipmentRouteSegmentId, this.carrierPartyId, this.billingWeight, this.statusId, @required this.shipmentId, this.primaryOrderId, this.carrierServiceStatusId, this.shipmentMethodTypeId, this.billingWeightUomId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentRouteSegmentDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'originFacilityId':originFacilityId, 'shipmentRouteSegmentId':shipmentRouteSegmentId, 'carrierPartyId':carrierPartyId, 'billingWeight':billingWeight, 'statusId':statusId, 'shipmentId':shipmentId, 'primaryOrderId':primaryOrderId, 'carrierServiceStatusId':carrierServiceStatusId, 'shipmentMethodTypeId':shipmentMethodTypeId, 'billingWeightUomId':billingWeightUomId};
  }

}

/// Entity ShipmentStatus, Shipment Status
class ShipmentStatus extends EntityBase {

  final DateTime statusDate;
  final String statusId; // pk
  final String shipmentId; // pk
  final String changeByUserLoginId;
  ShipmentStatus({entityId,
    this.statusDate, @required this.statusId, @required this.shipmentId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'shipmentId':shipmentId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity ShipmentType, Shipment Type
class ShipmentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String shipmentTypeId; // pk
  ShipmentType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.shipmentTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'shipmentTypeId':shipmentTypeId};
  }

}

/// Entity ShipmentTypeAttr, Shipment Type Attribute
class ShipmentTypeAttr extends EntityBase {

  final String description;
  final String shipmentTypeId; // pk
  final String attrName; // pk
  ShipmentTypeAttr({entityId,
    this.description, @required this.shipmentTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShipmentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'shipmentTypeId':shipmentTypeId, 'attrName':attrName};
  }

}

/// Entity ShippingDocument, Shipping Document
class ShippingDocument extends EntityBase {

  /// this entity has only one pk
  final String shipmentId;
  final String description;
  final String documentId; // pk
  final String shipmentPackageSeqId;
  final String shipmentItemSeqId;
  ShippingDocument({entityId,
    this.shipmentId, this.description, @required this.documentId, this.shipmentPackageSeqId, this.shipmentItemSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ShippingDocument { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'shipmentId':shipmentId, 'description':description, 'documentId':documentId, 'shipmentPackageSeqId':shipmentPackageSeqId, 'shipmentItemSeqId':shipmentItemSeqId};
  }

}