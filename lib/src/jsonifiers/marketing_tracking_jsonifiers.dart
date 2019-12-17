import 'package:sagas_meta/src/models/marketing_tracking.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingTrackingJsonifier{
  static TrackingCode extractTrackingCode(dynamic json) {
    return TrackingCode(
        entityId: create_id_from('TrackingCode', ['trackingCodeId'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        trackableLifetime: json['trackableLifetime'] as int,
        redirectUrl: json['redirectUrl'] as String,
        comments: json['comments'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        overrideLogo: json['overrideLogo'] as String,
        groupId: json['groupId'] as String,
        description: json['description'] as String,
        billableLifetime: json['billableLifetime'] as int,
        thruDate: check_dt(json['thruDate']),
        subgroupId: json['subgroupId'] as String,
        fromDate: check_dt(json['fromDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        trackingCodeTypeId: json['trackingCodeTypeId'] as String,
        overrideCss: json['overrideCss'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        prodCatalogId: json['prodCatalogId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCode overridesTrackingCode(Map<String, dynamic> map) {
    return TrackingCode(
        entityId: create_id_from('TrackingCode', ['trackingCodeId'], map),
        trackingCodeId: map['trackingCodeId'],
        trackableLifetime: map['trackableLifetime'],
        redirectUrl: map['redirectUrl'],
        comments: map['comments'],
        marketingCampaignId: map['marketingCampaignId'],
        lastModifiedDate: map['lastModifiedDate'],
        overrideLogo: map['overrideLogo'],
        groupId: map['groupId'],
        description: map['description'],
        billableLifetime: map['billableLifetime'],
        thruDate: map['thruDate'],
        subgroupId: map['subgroupId'],
        fromDate: map['fromDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        trackingCodeTypeId: map['trackingCodeTypeId'],
        overrideCss: map['overrideCss'],
        createdByUserLogin: map['createdByUserLogin'],
        prodCatalogId: map['prodCatalogId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeOrder extractTrackingCodeOrder(dynamic json) {
    return TrackingCodeOrder(
        entityId: create_id_from('TrackingCodeOrder', ['orderId', 'trackingCodeTypeId'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        orderId: json['orderId'] as String,
        trackingCodeTypeId: json['trackingCodeTypeId'] as String,
        siteId: json['siteId'] as String,
        hasExported: json['hasExported'] as String,
        affiliateReferredTimeStamp: check_dt(json['affiliateReferredTimeStamp']),
        isBillable: json['isBillable'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeOrder overridesTrackingCodeOrder(Map<String, dynamic> map) {
    return TrackingCodeOrder(
        entityId: create_id_from('TrackingCodeOrder', ['orderId', 'trackingCodeTypeId'], map),
        trackingCodeId: map['trackingCodeId'],
        orderId: map['orderId'],
        trackingCodeTypeId: map['trackingCodeTypeId'],
        siteId: map['siteId'],
        hasExported: map['hasExported'],
        affiliateReferredTimeStamp: map['affiliateReferredTimeStamp'],
        isBillable: map['isBillable'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeOrderReturn extractTrackingCodeOrderReturn(dynamic json) {
    return TrackingCodeOrderReturn(
        entityId: create_id_from('TrackingCodeOrderReturn', ['returnId', 'orderId', 'trackingCodeTypeId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        trackingCodeId: json['trackingCodeId'] as String,
        orderId: json['orderId'] as String,
        hasExported: json['hasExported'] as String,
        isBillable: json['isBillable'] as String,
        trackingCodeTypeId: json['trackingCodeTypeId'] as String,
        returnId: json['returnId'] as String,
        siteId: json['siteId'] as String,
        affiliateReferredTimeStamp: check_dt(json['affiliateReferredTimeStamp']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeOrderReturn overridesTrackingCodeOrderReturn(Map<String, dynamic> map) {
    return TrackingCodeOrderReturn(
        entityId: create_id_from('TrackingCodeOrderReturn', ['returnId', 'orderId', 'trackingCodeTypeId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        trackingCodeId: map['trackingCodeId'],
        orderId: map['orderId'],
        hasExported: map['hasExported'],
        isBillable: map['isBillable'],
        trackingCodeTypeId: map['trackingCodeTypeId'],
        returnId: map['returnId'],
        siteId: map['siteId'],
        affiliateReferredTimeStamp: map['affiliateReferredTimeStamp'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeType extractTrackingCodeType(dynamic json) {
    return TrackingCodeType(
        entityId: create_id_from('TrackingCodeType', ['trackingCodeTypeId'], json),
        trackingCodeTypeId: json['trackingCodeTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeType overridesTrackingCodeType(Map<String, dynamic> map) {
    return TrackingCodeType(
        entityId: create_id_from('TrackingCodeType', ['trackingCodeTypeId'], map),
        trackingCodeTypeId: map['trackingCodeTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrackingCodeVisit extractTrackingCodeVisit(dynamic json) {
    return TrackingCodeVisit(
        entityId: create_id_from('TrackingCodeVisit', ['trackingCodeId', 'visitId', 'fromDate'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        fromDate: check_dt(json['fromDate']),
        visitId: json['visitId'] as String,
        sourceEnumId: json['sourceEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrackingCodeVisit overridesTrackingCodeVisit(Map<String, dynamic> map) {
    return TrackingCodeVisit(
        entityId: create_id_from('TrackingCodeVisit', ['trackingCodeId', 'visitId', 'fromDate'], map),
        trackingCodeId: map['trackingCodeId'],
        fromDate: map['fromDate'],
        visitId: map['visitId'],
        sourceEnumId: map['sourceEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}