import 'package:sagas_meta/src/models/webapp_website.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class WebappWebsiteJsonifier{
  static WebPage extractWebPage(dynamic json) {
    return WebPage(
        entityId: create_id_from('WebPage', ['webPageId'], json),
        contentId: json['contentId'] as String,
        webPageId: json['webPageId'] as String,
        pageName: json['pageName'] as String,
        webSiteId: json['webSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebPage overridesWebPage(Map<String, dynamic> map) {
    return WebPage(
        entityId: create_id_from('WebPage', ['webPageId'], map),
        contentId: map['contentId'],
        webPageId: map['webPageId'],
        pageName: map['pageName'],
        webSiteId: map['webSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static WebSite extractWebSite(dynamic json) {
    return WebSite(
        entityId: create_id_from('WebSite', ['webSiteId'], json),
        secureContentPrefix: json['secureContentPrefix'] as String,
        standardContentPrefix: json['standardContentPrefix'] as String,
        httpPort: json['httpPort'] as String,
        siteName: json['siteName'] as String,
        httpsHost: json['httpsHost'] as String,
        httpsPort: json['httpsPort'] as String,
        allowProductStoreChange: json['allowProductStoreChange'] as String,
        cookieDomain: json['cookieDomain'] as String,
        isDefault: json['isDefault'] as String,
        webappPath: json['webappPath'] as String,
        displayMaintenancePage: json['displayMaintenancePage'] as String,
        enableHttps: json['enableHttps'] as String,
        httpHost: json['httpHost'] as String,
        productStoreId: json['productStoreId'] as String,
        visualThemeSetId: json['visualThemeSetId'] as String,
        hostedPathAlias: json['hostedPathAlias'] as String,
        webSiteId: json['webSiteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static WebSite overridesWebSite(Map<String, dynamic> map) {
    return WebSite(
        entityId: create_id_from('WebSite', ['webSiteId'], map),
        secureContentPrefix: map['secureContentPrefix'],
        standardContentPrefix: map['standardContentPrefix'],
        httpPort: map['httpPort'],
        siteName: map['siteName'],
        httpsHost: map['httpsHost'],
        httpsPort: map['httpsPort'],
        allowProductStoreChange: map['allowProductStoreChange'],
        cookieDomain: map['cookieDomain'],
        isDefault: map['isDefault'],
        webappPath: map['webappPath'],
        displayMaintenancePage: map['displayMaintenancePage'],
        enableHttps: map['enableHttps'],
        httpHost: map['httpHost'],
        productStoreId: map['productStoreId'],
        visualThemeSetId: map['visualThemeSetId'],
        hostedPathAlias: map['hostedPathAlias'],
        webSiteId: map['webSiteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}