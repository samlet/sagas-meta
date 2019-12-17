import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity TrackingCode, Tracking Code
class TrackingCode extends EntityBase {

  /// this entity has only one pk
  final String trackingCodeId; // pk
  final int trackableLifetime;
  final String redirectUrl;
  final String comments;
  final String marketingCampaignId;
  final DateTime lastModifiedDate;
  final String overrideLogo;
  final String groupId;
  final String description;
  final int billableLifetime;
  final DateTime thruDate;
  final String subgroupId;
  final DateTime fromDate;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String trackingCodeTypeId;
  final String overrideCss;
  final String createdByUserLogin;
  final String prodCatalogId;
  TrackingCode({entityId,
    @required this.trackingCodeId, this.trackableLifetime, this.redirectUrl, this.comments, this.marketingCampaignId, this.lastModifiedDate, this.overrideLogo, this.groupId, this.description, this.billableLifetime, this.thruDate, this.subgroupId, this.fromDate, this.lastModifiedByUserLogin, this.createdDate, this.trackingCodeTypeId, this.overrideCss, this.createdByUserLogin, this.prodCatalogId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'trackableLifetime':trackableLifetime, 'redirectUrl':redirectUrl, 'comments':comments, 'marketingCampaignId':marketingCampaignId, 'lastModifiedDate':lastModifiedDate, 'overrideLogo':overrideLogo, 'groupId':groupId, 'description':description, 'billableLifetime':billableLifetime, 'thruDate':thruDate, 'subgroupId':subgroupId, 'fromDate':fromDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'trackingCodeTypeId':trackingCodeTypeId, 'overrideCss':overrideCss, 'createdByUserLogin':createdByUserLogin, 'prodCatalogId':prodCatalogId};
  }

}

/// Entity TrackingCodeOrder, Tracking Code Visit
class TrackingCodeOrder extends EntityBase {

  final String trackingCodeId;
  final String orderId; // pk
  final String trackingCodeTypeId; // pk
  final String siteId;
  final String hasExported;
  final DateTime affiliateReferredTimeStamp;
  final String isBillable;
  TrackingCodeOrder({entityId,
    this.trackingCodeId, @required this.orderId, @required this.trackingCodeTypeId, this.siteId, this.hasExported, this.affiliateReferredTimeStamp, this.isBillable,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeOrder { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'orderId':orderId, 'trackingCodeTypeId':trackingCodeTypeId, 'siteId':siteId, 'hasExported':hasExported, 'affiliateReferredTimeStamp':affiliateReferredTimeStamp, 'isBillable':isBillable};
  }

}

/// Entity TrackingCodeOrderReturn, Tracking Code And Order Return
class TrackingCodeOrderReturn extends EntityBase {

  final String orderItemSeqId;
  final String trackingCodeId;
  final String orderId; // pk
  final String hasExported;
  final String isBillable;
  final String trackingCodeTypeId; // pk
  final String returnId; // pk
  final String siteId;
  final DateTime affiliateReferredTimeStamp;
  TrackingCodeOrderReturn({entityId,
    this.orderItemSeqId, this.trackingCodeId, @required this.orderId, this.hasExported, this.isBillable, @required this.trackingCodeTypeId, @required this.returnId, this.siteId, this.affiliateReferredTimeStamp,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeOrderReturn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'trackingCodeId':trackingCodeId, 'orderId':orderId, 'hasExported':hasExported, 'isBillable':isBillable, 'trackingCodeTypeId':trackingCodeTypeId, 'returnId':returnId, 'siteId':siteId, 'affiliateReferredTimeStamp':affiliateReferredTimeStamp};
  }

}

/// Entity TrackingCodeType, Tracking Code Type
class TrackingCodeType extends EntityBase {

  /// this entity has only one pk
  final String trackingCodeTypeId; // pk
  final String description;
  TrackingCodeType({entityId,
    @required this.trackingCodeTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeTypeId':trackingCodeTypeId, 'description':description};
  }

}

/// Entity TrackingCodeVisit, Tracking Code Visit
class TrackingCodeVisit extends EntityBase {

  final String trackingCodeId; // pk
  final DateTime fromDate; // pk
  final String visitId; // pk
  final String sourceEnumId;
  TrackingCodeVisit({entityId,
    @required this.trackingCodeId, @required this.fromDate, @required this.visitId, this.sourceEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeVisit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'fromDate':fromDate, 'visitId':visitId, 'sourceEnumId':sourceEnumId};
  }

}