import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity MarketingCampaignAndOrderHeader, View entity for reporting number of orders and total order amounts
class MarketingCampaignAndOrderHeader extends EntityBase {

  /// this entity has only one pk
  final double grandTotal;
  final int orderId; // pk
  final String marketingCampaignId;
  final DateTime orderDate;
  MarketingCampaignAndOrderHeader({entityId,
    this.grandTotal, @required this.orderId, this.marketingCampaignId, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignAndOrderHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'grandTotal':grandTotal, 'orderId':orderId, 'marketingCampaignId':marketingCampaignId, 'orderDate':orderDate};
  }

}

/// Entity MarketingCampaignAndVisit, View entity for reporting number of visits for a marketing campaign.  Note that because          marketingCampaignId is a field of TrackingCode, this is really very similar to TrackingCodeAndVisit,          except the group-by is with marketingCampaignId instead of trackingCodeId
class MarketingCampaignAndVisit extends EntityBase {

  final DateTime fromDate; // pk
  final int visitId; // pk
  final String marketingCampaignId;
  MarketingCampaignAndVisit({entityId,
    @required this.fromDate, @required this.visitId, this.marketingCampaignId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignAndVisit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'visitId':visitId, 'marketingCampaignId':marketingCampaignId};
  }

}

/// Entity TrackingCodeAndOrderHeader, View entity for reporting number of orders and total order amounts
class TrackingCodeAndOrderHeader extends EntityBase {

  /// this entity has only one pk
  final String trackingCodeId;
  final double grandTotal;
  final int orderId; // pk
  final DateTime orderDate;
  TrackingCodeAndOrderHeader({entityId,
    this.trackingCodeId, this.grandTotal, @required this.orderId, this.orderDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeAndOrderHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'grandTotal':grandTotal, 'orderId':orderId, 'orderDate':orderDate};
  }

}

/// Entity TrackingCodeAndVisit, View entity for reporting number of visits for a tracking code
class TrackingCodeAndVisit extends EntityBase {

  final String trackingCodeId; // pk
  final DateTime fromDate; // pk
  final int visitId; // pk
  TrackingCodeAndVisit({entityId,
    @required this.trackingCodeId, @required this.fromDate, @required this.visitId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeAndVisit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'fromDate':fromDate, 'visitId':visitId};
  }

}

/// Entity TrackingCodeOrderAndOrderHeader, Order Header And Tracking Code Order View
class TrackingCodeOrderAndOrderHeader extends EntityBase {

  /// this entity has only one pk
  final String trackingCodeId;
  final String statusId;
  final String orderId; // pk
  final String siteId;
  final String hasExported;
  final DateTime affiliateReferredTimeStamp;
  TrackingCodeOrderAndOrderHeader({entityId,
    this.trackingCodeId, this.statusId, @required this.orderId, this.siteId, this.hasExported, this.affiliateReferredTimeStamp,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeOrderAndOrderHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'statusId':statusId, 'orderId':orderId, 'siteId':siteId, 'hasExported':hasExported, 'affiliateReferredTimeStamp':affiliateReferredTimeStamp};
  }

}

/// Entity TrackingCodeOrderReturnAndReturnHeader, Return Header And Tracking Code Order Return View
class TrackingCodeOrderReturnAndReturnHeader extends EntityBase {

  final String orderItemSeqId;
  final String trackingCodeId;
  final String statusId;
  final String orderId; // pk
  final String returnId; // pk
  final String siteId;
  final String hasExported;
  final DateTime affiliateReferredTimeStamp;
  TrackingCodeOrderReturnAndReturnHeader({entityId,
    this.orderItemSeqId, this.trackingCodeId, this.statusId, @required this.orderId, @required this.returnId, this.siteId, this.hasExported, this.affiliateReferredTimeStamp,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrackingCodeOrderReturnAndReturnHeader { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'trackingCodeId':trackingCodeId, 'statusId':statusId, 'orderId':orderId, 'returnId':returnId, 'siteId':siteId, 'hasExported':hasExported, 'affiliateReferredTimeStamp':affiliateReferredTimeStamp};
  }

}