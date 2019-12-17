import 'package:sagas_meta/src/models/webapp_website.dart';
import 'package:sagas_meta/src/models/content_website.dart';
import 'package:sagas_meta/src/models/party_party.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesWebsite{
  final SrvClient client;
  ContentServicesWebsite(this.client);

  /**
   * Add WebSite Role; NOTE: This service is being deprecated in favor of createWebSiteRole - WebSiteRole
   *
   * Requires partyId, roleTypeId, webSiteId
   * Returns 
   */
  Future<OfResult> addWebSiteRole(WebSiteRole ent, ) =>
      client.invoke('addWebSiteRole', ent, {  });

  /**
   * Auto Create Content Publish Points - 
   *
   * Requires webSiteId, webSiteContentTypeId
   * Returns 
   */
  Future<OfResult> autoCreateWebSiteContent({@required String webSiteId, @required List<dynamic> webSiteContentTypeId}) =>
      client.invoke('autoCreateWebSiteContent', null, { 'webSiteId': webSiteId, 'webSiteContentTypeId': webSiteContentTypeId });

  /**
   * Create a WebSite - WebSite
   *
   * Requires webSiteId, siteName, siteName
   * Returns 
   */
  Future<OfResult> createWebSite(WebSite ent, ) =>
      client.invoke('createWebSite', ent, {  });

  /**
   * Create a WebSite Content - WebSiteContent
   *
   * Requires webSiteId, contentId, webSiteContentTypeId
   * Returns 
   */
  Future<OfResult> createWebSiteContent(WebSiteContent ent, ) =>
      client.invoke('createWebSiteContent', ent, {  });

  /**
   * Create a WebSite ContentType - WebSiteContentType
   *
   * Requires webSiteContentTypeId
   * Returns 
   */
  Future<OfResult> createWebSiteContentType(WebSiteContentType ent, ) =>
      client.invoke('createWebSiteContentType', ent, {  });

  /**
   * Create a WebSite Path Alias - WebSitePathAlias
   *
   * Requires webSiteId, pathAlias, fromDate
   * Returns 
   */
  Future<OfResult> createWebSitePathAlias(WebSitePathAlias ent, ) =>
      client.invoke('createWebSitePathAlias', ent, {  });

  /**
   * Add WebSite Role - WebSiteRole
   *
   * Requires partyId, roleTypeId, webSiteId
   * Returns 
   */
  Future<OfResult> createWebSiteRole(WebSiteRole ent, ) =>
      client.invoke('createWebSiteRole', ent, {  });

  /**
   * Generate Missing Seo URL's for Website - 
   *
   * Requires webSiteId, prodCatalogId, typeGenerate
   * Returns 
   */
  Future<OfResult> generateMissingSeoUrlForWebsite({@required String webSiteId, @required String prodCatalogId, @required List<dynamic> typeGenerate}) =>
      client.invoke('generateMissingSeoUrlForWebsite', null, { 'webSiteId': webSiteId, 'prodCatalogId': prodCatalogId, 'typeGenerate': typeGenerate });

  /**
   * Get a WebSite Path Alias - WebSitePathAlias
   *
   * Requires webSiteId, pathAlias, fromDate
   * Returns thruDate[java.sql.Timestamp], aliasTo[String], contentId[String], mapKey[String]
   */
  Future<OfResult> getWebSitePathAlias(WebSitePathAlias ent, ) =>
      client.invoke('getWebSitePathAlias', ent, {  });

  /**
   * Remove a WebSite Content - WebSiteContent
   *
   * Requires webSiteId, contentId, webSiteContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeWebSiteContent(WebSiteContent ent, ) =>
      client.invoke('removeWebSiteContent', ent, {  });

  /**
   * Remove a WebSite ContentType - WebSiteContentType
   *
   * Requires webSiteContentTypeId
   * Returns 
   */
  Future<OfResult> removeWebSiteContentType(WebSiteContentType ent, ) =>
      client.invoke('removeWebSiteContentType', ent, {  });

  /**
   * Remove a WebSite Path Alias - WebSitePathAlias
   *
   * Requires webSiteId, pathAlias, fromDate
   * Returns 
   */
  Future<OfResult> removeWebSitePathAlias(WebSitePathAlias ent, ) =>
      client.invoke('removeWebSitePathAlias', ent, {  });

  /**
   * Remove WebSite Role - 
   *
   * Requires partyId, roleTypeId, webSiteId, fromDate
   * Returns 
   */
  Future<OfResult> removeWebSiteRole({@required String partyId, @required String roleTypeId, @required String webSiteId, @required DateTime fromDate}) =>
      client.invoke('removeWebSiteRole', null, { 'partyId': partyId, 'roleTypeId': roleTypeId, 'webSiteId': webSiteId, 'fromDate': fromDate });

  /**
   * Update a WebSite - WebSite
   *
   * Requires webSiteId
   * Returns 
   */
  Future<OfResult> updateWebSite(WebSite ent, ) =>
      client.invoke('updateWebSite', ent, {  });

  /**
   * Update a WebSite Content - WebSiteContent
   *
   * Requires webSiteId, contentId, webSiteContentTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateWebSiteContent(WebSiteContent ent, ) =>
      client.invoke('updateWebSiteContent', ent, {  });

  /**
   * Update a WebSite ContentType - WebSiteContentType
   *
   * Requires webSiteContentTypeId
   * Returns 
   */
  Future<OfResult> updateWebSiteContentType(WebSiteContentType ent, ) =>
      client.invoke('updateWebSiteContentType', ent, {  });

  /**
   * Update a WebSite Path Alias - WebSitePathAlias
   *
   * Requires webSiteId, pathAlias, fromDate
   * Returns 
   */
  Future<OfResult> updateWebSitePathAlias(WebSitePathAlias ent, ) =>
      client.invoke('updateWebSitePathAlias', ent, {  });

  /**
   * Add WebSite Role - WebSiteRole
   *
   * Requires partyId, roleTypeId, webSiteId, fromDate
   * Returns 
   */
  Future<OfResult> updateWebSiteRole(WebSiteRole ent, ) =>
      client.invoke('updateWebSiteRole', ent, {  });

  /**
   * WebSite Role Interface - 
   *
   * Requires partyId, roleTypeId, webSiteId, fromDate
   * Returns 
   */
  Future<OfResult> webSiteRoleInterface({@required String partyId, @required String roleTypeId, @required String webSiteId, @required DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('webSiteRoleInterface', null, { 'partyId': partyId, 'roleTypeId': roleTypeId, 'webSiteId': webSiteId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

}