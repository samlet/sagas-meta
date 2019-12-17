import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity WebAnalyticsConfig, Web Analytics Configuration
class WebAnalyticsConfig extends EntityBase {

  final String webAnalyticsCode;
  final String webAnalyticsTypeId; // pk
  final String webSiteId; // pk
  WebAnalyticsConfig({entityId,
    this.webAnalyticsCode, @required this.webAnalyticsTypeId, @required this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebAnalyticsConfig { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'webAnalyticsCode':webAnalyticsCode, 'webAnalyticsTypeId':webAnalyticsTypeId, 'webSiteId':webSiteId};
  }

}

/// Entity WebAnalyticsType, Web Analytics Type
class WebAnalyticsType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String webAnalyticsTypeId; // pk
  WebAnalyticsType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.webAnalyticsTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebAnalyticsType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'webAnalyticsTypeId':webAnalyticsTypeId};
  }

}

/// Entity WebSiteAndContent, Web Sites by contentId
class WebSiteAndContent extends EntityBase {

  final String secureContentPrefix;
  final String standardContentPrefix;
  final String httpPort;
  final String contentId; // pk
  final String siteName;
  final String httpsHost;
  final String httpsPort;
  final String allowProductStoreChange;
  final DateTime thruDate;
  final String cookieDomain;
  final DateTime fromDate; // pk
  final String isDefault;
  final String webappPath;
  final String displayMaintenancePage;
  final String webSiteContentTypeId; // pk
  final String enableHttps;
  final String httpHost;
  final String productStoreId;
  final String visualThemeSetId;
  final String hostedPathAlias;
  final String webSiteId; // pk
  WebSiteAndContent({entityId,
    this.secureContentPrefix, this.standardContentPrefix, this.httpPort, @required this.contentId, this.siteName, this.httpsHost, this.httpsPort, this.allowProductStoreChange, this.thruDate, this.cookieDomain, @required this.fromDate, this.isDefault, this.webappPath, this.displayMaintenancePage, @required this.webSiteContentTypeId, this.enableHttps, this.httpHost, this.productStoreId, this.visualThemeSetId, this.hostedPathAlias, @required this.webSiteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSiteAndContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'secureContentPrefix':secureContentPrefix, 'standardContentPrefix':standardContentPrefix, 'httpPort':httpPort, 'contentId':contentId, 'siteName':siteName, 'httpsHost':httpsHost, 'httpsPort':httpsPort, 'allowProductStoreChange':allowProductStoreChange, 'thruDate':thruDate, 'cookieDomain':cookieDomain, 'fromDate':fromDate, 'isDefault':isDefault, 'webappPath':webappPath, 'displayMaintenancePage':displayMaintenancePage, 'webSiteContentTypeId':webSiteContentTypeId, 'enableHttps':enableHttps, 'httpHost':httpHost, 'productStoreId':productStoreId, 'visualThemeSetId':visualThemeSetId, 'hostedPathAlias':hostedPathAlias, 'webSiteId':webSiteId};
  }

}

/// Entity WebSiteContent, Web Site Content Associations
class WebSiteContent extends EntityBase {

  final DateTime fromDate; // pk
  final String webSiteContentTypeId; // pk
  final String contentId; // pk
  final String webSiteId; // pk
  final DateTime thruDate;
  WebSiteContent({entityId,
    @required this.fromDate, @required this.webSiteContentTypeId, @required this.contentId, @required this.webSiteId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSiteContent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'webSiteContentTypeId':webSiteContentTypeId, 'contentId':contentId, 'webSiteId':webSiteId, 'thruDate':thruDate};
  }

}

/// Entity WebSiteContentType, Web Site Content Type
class WebSiteContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String webSiteContentTypeId; // pk
  final String description;
  WebSiteContentType({entityId,
    this.parentTypeId, this.hasTable, @required this.webSiteContentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSiteContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'webSiteContentTypeId':webSiteContentTypeId, 'description':description};
  }

}

/// Entity WebSitePathAlias, Web Site Path Alias
class WebSitePathAlias extends EntityBase {

  final DateTime fromDate; // pk
  final String aliasTo;
  final String contentId;
  final String mapKey;
  final String webSiteId; // pk
  final String pathAlias; // pk
  final DateTime thruDate;
  WebSitePathAlias({entityId,
    @required this.fromDate, this.aliasTo, this.contentId, this.mapKey, @required this.webSiteId, @required this.pathAlias, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSitePathAlias { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'aliasTo':aliasTo, 'contentId':contentId, 'mapKey':mapKey, 'webSiteId':webSiteId, 'pathAlias':pathAlias, 'thruDate':thruDate};
  }

}

/// Entity WebSitePublishPoint, Web Site Publish Point
class WebSitePublishPoint extends EntityBase {

  /// this entity has only one pk
  final String styleSheetFile;
  final String contentId; // pk
  final String lineLogo;
  final String medallionLogo;
  final String leftBarId;
  final String aboutContentId;
  final String contentDept;
  final String logo;
  final String templateTitle;
  final String rightBarId;
  WebSitePublishPoint({entityId,
    this.styleSheetFile, @required this.contentId, this.lineLogo, this.medallionLogo, this.leftBarId, this.aboutContentId, this.contentDept, this.logo, this.templateTitle, this.rightBarId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'WebSitePublishPoint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'styleSheetFile':styleSheetFile, 'contentId':contentId, 'lineLogo':lineLogo, 'medallionLogo':medallionLogo, 'leftBarId':leftBarId, 'aboutContentId':aboutContentId, 'contentDept':contentDept, 'logo':logo, 'templateTitle':templateTitle, 'rightBarId':rightBarId};
  }

}