import 'package:sagas_meta/src/models/content_website.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentWebsiteJsonifier{
  static WebAnalyticsConfig extractWebAnalyticsConfig(dynamic json) {
    return WebAnalyticsConfig(
        entityId: create_id_from('WebAnalyticsConfig', ['webSiteId', 'webAnalyticsTypeId'], json),
        webAnalyticsCode: json['webAnalyticsCode'] as String,
        webAnalyticsTypeId: json['webAnalyticsTypeId'] as String,
        webSiteId: json['webSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebAnalyticsConfig overridesWebAnalyticsConfig(Map<String, dynamic> map) {
    return WebAnalyticsConfig(
        entityId: create_id_from('WebAnalyticsConfig', ['webSiteId', 'webAnalyticsTypeId'], map),
        webAnalyticsCode: map['webAnalyticsCode'],
        webAnalyticsTypeId: map['webAnalyticsTypeId'],
        webSiteId: map['webSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebAnalyticsType extractWebAnalyticsType(dynamic json) {
    return WebAnalyticsType(
        entityId: create_id_from('WebAnalyticsType', ['webAnalyticsTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        webAnalyticsTypeId: json['webAnalyticsTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebAnalyticsType overridesWebAnalyticsType(Map<String, dynamic> map) {
    return WebAnalyticsType(
        entityId: create_id_from('WebAnalyticsType', ['webAnalyticsTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        webAnalyticsTypeId: map['webAnalyticsTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSiteAndContent extractWebSiteAndContent(dynamic json) {
    return WebSiteAndContent(
        entityId: create_id_from('WebSiteAndContent', ['webSiteId', 'fromDate', 'webSiteContentTypeId', 'contentId'], json),
        secureContentPrefix: json['secureContentPrefix'] as String,
        standardContentPrefix: json['standardContentPrefix'] as String,
        httpPort: json['httpPort'] as String,
        contentId: json['contentId'] as String,
        siteName: json['siteName'] as String,
        httpsHost: json['httpsHost'] as String,
        httpsPort: json['httpsPort'] as String,
        allowProductStoreChange: json['allowProductStoreChange'] as String,
        thruDate: check_dt(json['thruDate']),
        cookieDomain: json['cookieDomain'] as String,
        fromDate: check_dt(json['fromDate']),
        isDefault: json['isDefault'] as String,
        webappPath: json['webappPath'] as String,
        displayMaintenancePage: json['displayMaintenancePage'] as String,
        webSiteContentTypeId: json['webSiteContentTypeId'] as String,
        enableHttps: json['enableHttps'] as String,
        httpHost: json['httpHost'] as String,
        productStoreId: json['productStoreId'] as String,
        visualThemeSetId: json['visualThemeSetId'] as String,
        hostedPathAlias: json['hostedPathAlias'] as String,
        webSiteId: json['webSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSiteAndContent overridesWebSiteAndContent(Map<String, dynamic> map) {
    return WebSiteAndContent(
        entityId: create_id_from('WebSiteAndContent', ['webSiteId', 'fromDate', 'webSiteContentTypeId', 'contentId'], map),
        secureContentPrefix: map['secureContentPrefix'],
        standardContentPrefix: map['standardContentPrefix'],
        httpPort: map['httpPort'],
        contentId: map['contentId'],
        siteName: map['siteName'],
        httpsHost: map['httpsHost'],
        httpsPort: map['httpsPort'],
        allowProductStoreChange: map['allowProductStoreChange'],
        thruDate: map['thruDate'],
        cookieDomain: map['cookieDomain'],
        fromDate: map['fromDate'],
        isDefault: map['isDefault'],
        webappPath: map['webappPath'],
        displayMaintenancePage: map['displayMaintenancePage'],
        webSiteContentTypeId: map['webSiteContentTypeId'],
        enableHttps: map['enableHttps'],
        httpHost: map['httpHost'],
        productStoreId: map['productStoreId'],
        visualThemeSetId: map['visualThemeSetId'],
        hostedPathAlias: map['hostedPathAlias'],
        webSiteId: map['webSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSiteContent extractWebSiteContent(dynamic json) {
    return WebSiteContent(
        entityId: create_id_from('WebSiteContent', ['webSiteId', 'contentId', 'webSiteContentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        webSiteContentTypeId: json['webSiteContentTypeId'] as String,
        contentId: json['contentId'] as String,
        webSiteId: json['webSiteId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSiteContent overridesWebSiteContent(Map<String, dynamic> map) {
    return WebSiteContent(
        entityId: create_id_from('WebSiteContent', ['webSiteId', 'contentId', 'webSiteContentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        webSiteContentTypeId: map['webSiteContentTypeId'],
        contentId: map['contentId'],
        webSiteId: map['webSiteId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSiteContentType extractWebSiteContentType(dynamic json) {
    return WebSiteContentType(
        entityId: create_id_from('WebSiteContentType', ['webSiteContentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        webSiteContentTypeId: json['webSiteContentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSiteContentType overridesWebSiteContentType(Map<String, dynamic> map) {
    return WebSiteContentType(
        entityId: create_id_from('WebSiteContentType', ['webSiteContentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        webSiteContentTypeId: map['webSiteContentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSitePathAlias extractWebSitePathAlias(dynamic json) {
    return WebSitePathAlias(
        entityId: create_id_from('WebSitePathAlias', ['webSiteId', 'pathAlias', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        aliasTo: json['aliasTo'] as String,
        contentId: json['contentId'] as String,
        mapKey: json['mapKey'] as String,
        webSiteId: json['webSiteId'] as String,
        pathAlias: json['pathAlias'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSitePathAlias overridesWebSitePathAlias(Map<String, dynamic> map) {
    return WebSitePathAlias(
        entityId: create_id_from('WebSitePathAlias', ['webSiteId', 'pathAlias', 'fromDate'], map),
        fromDate: map['fromDate'],
        aliasTo: map['aliasTo'],
        contentId: map['contentId'],
        mapKey: map['mapKey'],
        webSiteId: map['webSiteId'],
        pathAlias: map['pathAlias'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSitePublishPoint extractWebSitePublishPoint(dynamic json) {
    return WebSitePublishPoint(
        entityId: create_id_from('WebSitePublishPoint', ['contentId'], json),
        styleSheetFile: json['styleSheetFile'] as String,
        contentId: json['contentId'] as String,
        lineLogo: json['lineLogo'] as String,
        medallionLogo: json['medallionLogo'] as String,
        leftBarId: json['leftBarId'] as String,
        aboutContentId: json['aboutContentId'] as String,
        contentDept: json['contentDept'] as String,
        logo: json['logo'] as String,
        templateTitle: json['templateTitle'] as String,
        rightBarId: json['rightBarId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSitePublishPoint overridesWebSitePublishPoint(Map<String, dynamic> map) {
    return WebSitePublishPoint(
        entityId: create_id_from('WebSitePublishPoint', ['contentId'], map),
        styleSheetFile: map['styleSheetFile'],
        contentId: map['contentId'],
        lineLogo: map['lineLogo'],
        medallionLogo: map['medallionLogo'],
        leftBarId: map['leftBarId'],
        aboutContentId: map['aboutContentId'],
        contentDept: map['contentDept'],
        logo: map['logo'],
        templateTitle: map['templateTitle'],
        rightBarId: map['rightBarId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}