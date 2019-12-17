import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity WebPage, WebPage
class WebPage extends EntityBase {

  /// this entity has only one pk
  final String contentId;
  final String webPageId; // pk
  final String pageName;
  final String webSiteId;
  WebPage({entityId,
    this.contentId, @required this.webPageId, this.pageName, this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebPage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentId':contentId, 'webPageId':webPageId, 'pageName':pageName, 'webSiteId':webSiteId};
  }

}

/// Entity WebSite, WebSite
class WebSite extends EntityBase {

  /// this entity has only one pk
  final String secureContentPrefix;
  final String standardContentPrefix;
  final String httpPort;
  final String siteName;
  final String httpsHost;
  final String httpsPort;
  final String allowProductStoreChange;
  final String cookieDomain;
  final String isDefault;
  final String webappPath;
  final String displayMaintenancePage;
  final String enableHttps;
  final String httpHost;
  final String productStoreId;
  final String visualThemeSetId;
  final String hostedPathAlias;
  final String webSiteId; // pk
  WebSite({entityId,
    this.secureContentPrefix, this.standardContentPrefix, this.httpPort, this.siteName, this.httpsHost, this.httpsPort, this.allowProductStoreChange, this.cookieDomain, this.isDefault, this.webappPath, this.displayMaintenancePage, this.enableHttps, this.httpHost, this.productStoreId, this.visualThemeSetId, this.hostedPathAlias, @required this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSite { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'secureContentPrefix':secureContentPrefix, 'standardContentPrefix':standardContentPrefix, 'httpPort':httpPort, 'siteName':siteName, 'httpsHost':httpsHost, 'httpsPort':httpsPort, 'allowProductStoreChange':allowProductStoreChange, 'cookieDomain':cookieDomain, 'isDefault':isDefault, 'webappPath':webappPath, 'displayMaintenancePage':displayMaintenancePage, 'enableHttps':enableHttps, 'httpHost':httpHost, 'productStoreId':productStoreId, 'visualThemeSetId':visualThemeSetId, 'hostedPathAlias':hostedPathAlias, 'webSiteId':webSiteId};
  }

}