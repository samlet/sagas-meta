import 'package:sagas_meta/src/models/marketing_reports.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingReportsJsonifier{
  static MarketingCampaignAndOrderHeader extractMarketingCampaignAndOrderHeader(dynamic json) {
    return MarketingCampaignAndOrderHeader(
        entityId: create_id_from('MarketingCampaignAndOrderHeader', ['orderId'], json),
        grandTotal: json['grandTotal'] as double,
        orderId: json['orderId'] as int,
        marketingCampaignId: json['marketingCampaignId'] as String,
        orderDate: check_dt(json['orderDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignAndOrderHeader overridesMarketingCampaignAndOrderHeader(Map<String, dynamic> map) {
    return MarketingCampaignAndOrderHeader(
        entityId: create_id_from('MarketingCampaignAndOrderHeader', ['orderId'], map),
        grandTotal: map['grandTotal'],
        orderId: map['orderId'],
        marketingCampaignId: map['marketingCampaignId'],
        orderDate: map['orderDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MarketingCampaignAndVisit extractMarketingCampaignAndVisit(dynamic json) {
    return MarketingCampaignAndVisit(
        entityId: create_id_from('MarketingCampaignAndVisit', ['visitId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        visitId: json['visitId'] as int,
        marketingCampaignId: json['marketingCampaignId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignAndVisit overridesMarketingCampaignAndVisit(Map<String, dynamic> map) {
    return MarketingCampaignAndVisit(
        entityId: create_id_from('MarketingCampaignAndVisit', ['visitId', 'fromDate'], map),
        fromDate: map['fromDate'],
        visitId: map['visitId'],
        marketingCampaignId: map['marketingCampaignId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeAndOrderHeader extractTrackingCodeAndOrderHeader(dynamic json) {
    return TrackingCodeAndOrderHeader(
        entityId: create_id_from('TrackingCodeAndOrderHeader', ['orderId'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        grandTotal: json['grandTotal'] as double,
        orderId: json['orderId'] as int,
        orderDate: check_dt(json['orderDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeAndOrderHeader overridesTrackingCodeAndOrderHeader(Map<String, dynamic> map) {
    return TrackingCodeAndOrderHeader(
        entityId: create_id_from('TrackingCodeAndOrderHeader', ['orderId'], map),
        trackingCodeId: map['trackingCodeId'],
        grandTotal: map['grandTotal'],
        orderId: map['orderId'],
        orderDate: map['orderDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeAndVisit extractTrackingCodeAndVisit(dynamic json) {
    return TrackingCodeAndVisit(
        entityId: create_id_from('TrackingCodeAndVisit', ['trackingCodeId', 'visitId', 'fromDate'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        fromDate: check_dt(json['fromDate']),
        visitId: json['visitId'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeAndVisit overridesTrackingCodeAndVisit(Map<String, dynamic> map) {
    return TrackingCodeAndVisit(
        entityId: create_id_from('TrackingCodeAndVisit', ['trackingCodeId', 'visitId', 'fromDate'], map),
        trackingCodeId: map['trackingCodeId'],
        fromDate: map['fromDate'],
        visitId: map['visitId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeOrderAndOrderHeader extractTrackingCodeOrderAndOrderHeader(dynamic json) {
    return TrackingCodeOrderAndOrderHeader(
        entityId: create_id_from('TrackingCodeOrderAndOrderHeader', ['orderId'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        statusId: json['statusId'] as String,
        orderId: json['orderId'] as String,
        siteId: json['siteId'] as String,
        hasExported: json['hasExported'] as String,
        affiliateReferredTimeStamp: check_dt(json['affiliateReferredTimeStamp']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeOrderAndOrderHeader overridesTrackingCodeOrderAndOrderHeader(Map<String, dynamic> map) {
    return TrackingCodeOrderAndOrderHeader(
        entityId: create_id_from('TrackingCodeOrderAndOrderHeader', ['orderId'], map),
        trackingCodeId: map['trackingCodeId'],
        statusId: map['statusId'],
        orderId: map['orderId'],
        siteId: map['siteId'],
        hasExported: map['hasExported'],
        affiliateReferredTimeStamp: map['affiliateReferredTimeStamp'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeOrderReturnAndReturnHeader extractTrackingCodeOrderReturnAndReturnHeader(dynamic json) {
    return TrackingCodeOrderReturnAndReturnHeader(
        entityId: create_id_from('TrackingCodeOrderReturnAndReturnHeader', ['returnId', 'orderId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        trackingCodeId: json['trackingCodeId'] as String,
        statusId: json['statusId'] as String,
        orderId: json['orderId'] as String,
        returnId: json['returnId'] as String,
        siteId: json['siteId'] as String,
        hasExported: json['hasExported'] as String,
        affiliateReferredTimeStamp: check_dt(json['affiliateReferredTimeStamp']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeOrderReturnAndReturnHeader overridesTrackingCodeOrderReturnAndReturnHeader(Map<String, dynamic> map) {
    return TrackingCodeOrderReturnAndReturnHeader(
        entityId: create_id_from('TrackingCodeOrderReturnAndReturnHeader', ['returnId', 'orderId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        trackingCodeId: map['trackingCodeId'],
        statusId: map['statusId'],
        orderId: map['orderId'],
        returnId: map['returnId'],
        siteId: map['siteId'],
        hasExported: map['hasExported'],
        affiliateReferredTimeStamp: map['affiliateReferredTimeStamp'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}