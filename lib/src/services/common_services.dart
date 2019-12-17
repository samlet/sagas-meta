import 'package:sagas_meta/src/models/common_geo.dart';
import 'package:sagas_meta/src/models/common_uom.dart';
import 'package:sagas_meta/src/models/common_status.dart';
import 'package:sagas_meta/src/models/common_period.dart';
import 'package:sagas_meta/src/models/common_user.dart';
import 'package:sagas_meta/src/models/security_login.dart';
import 'package:sagas_meta/src/models/common_theme.dart';
import 'package:sagas_meta/src/models/common_portal.dart';
import 'package:sagas_meta/src/models/common_enum.dart';
import 'package:sagas_meta/src/models/service_schedule.dart';
import 'package:sagas_meta/src/models/common_datasource.dart';
import 'package:sagas_meta/src/models/common_note.dart';
import 'package:sagas_meta/src/models/common_keyword.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServices{
  final SrvClient client;
  CommonServices(this.client);

  /**
   * Set locale from browser. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> SetTimeZoneFromBrowser({String localeName}) =>
      client.invoke('SetTimeZoneFromBrowser', null, { 'localeName': localeName });

  /**
   * Add a new Column to a PortalPage - PortalPageColumn
   *
   * Requires portalPageId
   * Returns columnSeqId[String], columnSeqId[String]
   */
  Future<OfResult> addPortalPageColumn(PortalPageColumn ent, ) =>
      client.invoke('addPortalPageColumn', ent, {  });

  /**
   * Sets/Updates cached debugging levels - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> adjustDebugLevels({String fatal, String error, String warning, String important, String info, String timing, String verbose}) =>
      client.invoke('adjustDebugLevels', null, { 'fatal': fatal, 'error': error, 'warning': warning, 'important': important, 'info': info, 'timing': timing, 'verbose': verbose });

  /**
   * Returns true if an UomConversion record exists - UomConversion
   *
   * Requires uomId, uomIdTo
   * Returns exist[Boolean]
   */
  Future<OfResult> checkUomConversion(UomConversion ent, ) =>
      client.invoke('checkUomConversion', ent, {  });

  /**
   * Returns true if an UomConversionDated record exists - UomConversionDated
   *
   * Requires uomId, uomIdTo, fromDate
   * Returns exist[Boolean]
   */
  Future<OfResult> checkUomConversionDated(UomConversionDated ent, ) =>
      client.invoke('checkUomConversionDated', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> commonGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('commonGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Returns all CRUD and View Permissions - 
   *
   * Requires primaryPermission
   * Returns hasCreatePermission[Boolean], hasUpdatePermission[Boolean], hasDeletePermission[Boolean], hasViewPermission[Boolean]
   */
  Future<OfResult> commonGetAllCrudPermissions({@required String primaryPermission, String altPermission}) =>
      client.invoke('commonGetAllCrudPermissions', null, { 'primaryPermission': primaryPermission, 'altPermission': altPermission });

  /**
   * Copies the preferences from one userLoginId and preference group to another.
            If no userPrefLoginId is specified, preferences are copied to current user's preferences. - 
   *
   * Requires fromUserLoginId, userPrefGroupTypeId
   * Returns 
   */
  Future<OfResult> copyUserPrefGroup({@required String fromUserLoginId, @required String userPrefGroupTypeId, String userPrefLoginId}) =>
      client.invoke('copyUserPrefGroup', null, { 'fromUserLoginId': fromUserLoginId, 'userPrefGroupTypeId': userPrefGroupTypeId, 'userPrefLoginId': userPrefLoginId });

  /**
   * Create a CustomTimePeriod record - CustomTimePeriod
   *
   * Requires periodTypeId, fromDate, thruDate, organizationPartyId, fromDate, thruDate, periodTypeId
   * Returns customTimePeriodId[String]
   */
  Future<OfResult> createCustomTimePeriod(CustomTimePeriod ent, ) =>
      client.invoke('createCustomTimePeriod', ent, {  });

  /**
   * Create a DataSource record - DataSource
   *
   * Requires dataSourceId, dataSourceTypeId
   * Returns 
   */
  Future<OfResult> createDataSource(DataSource ent, ) =>
      client.invoke('createDataSource', ent, {  });

  /**
   * Create a DataSourceType record - DataSourceType
   *
   * Requires dataSourceTypeId
   * Returns 
   */
  Future<OfResult> createDataSourceType(DataSourceType ent, ) =>
      client.invoke('createDataSourceType', ent, {  });

  /**
   * Create a Enumeration - Enumeration
   *
   * Requires enumTypeId, description, enumTypeId, description
   * Returns enumId[String]
   */
  Future<OfResult> createEnumeration(Enumeration ent, ) =>
      client.invoke('createEnumeration', ent, {  });

  /**
   * Create a Geo - Geo
   *
   * Requires geoTypeId, geoName, geoName, geoTypeId
   * Returns geoId[String]
   */
  Future<OfResult> createGeo(Geo ent, ) =>
      client.invoke('createGeo', ent, {  });

  /**
   * Create GeoAssocType - GeoAssocType
   *
   * Requires 
   * Returns geoAssocTypeId[String]
   */
  Future<OfResult> createGeoAssocType(GeoAssocType ent, ) =>
      client.invoke('createGeoAssocType', ent, {  });

  /**
   * Create a GeoPoint - GeoPoint
   *
   * Requires dataSourceId, latitude, longitude, dataSourceId, latitude, longitude
   * Returns geoPointId[String]
   */
  Future<OfResult> createGeoPoint(GeoPoint ent, ) =>
      client.invoke('createGeoPoint', ent, {  });

  /**
   * Create GeoType - GeoType
   *
   * Requires 
   * Returns geoTypeId[String]
   */
  Future<OfResult> createGeoType(GeoType ent, ) =>
      client.invoke('createGeoType', ent, {  });

  /**
   * Create or update the JsLanguageFilesMapping.java. You still need to compile thereafter - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createJsLanguageFileMapping({String encoding}) =>
      client.invoke('createJsLanguageFileMapping', null, { 'encoding': encoding });

  /**
   * Create a Keyword Thesaurus - KeywordThesaurus
   *
   * Requires enteredKeyword, alternateKeyword
   * Returns 
   */
  Future<OfResult> createKeywordThesaurus(KeywordThesaurus ent, ) =>
      client.invoke('createKeywordThesaurus', ent, {  });

  /**
   * Create a new note record - 
   *
   * Requires note
   * Returns partyId[String], noteId[String]
   */
  Future<OfResult> createNote({String partyId, String noteName, @required String note}) =>
      client.invoke('createNote', null, { 'partyId': partyId, 'noteName': noteName, 'note': note });

  /**
   * Create a PeriodType - PeriodType
   *
   * Requires 
   * Returns periodTypeId[String]
   */
  Future<OfResult> createPeriodType(PeriodType ent, ) =>
      client.invoke('createPeriodType', ent, {  });

  /**
   * Create a new Portal Page - PortalPage
   *
   * Requires 
   * Returns portalPageId[String]
   */
  Future<OfResult> createPortalPage(PortalPage ent, ) =>
      client.invoke('createPortalPage', ent, {  });

  /**
   * Add a registered PortalPortlet to a PortalPage - PortalPagePortlet
   *
   * Requires portalPageId, portalPortletId
   * Returns portletSeqId[String], portletSeqId[String]
   */
  Future<OfResult> createPortalPagePortlet(PortalPagePortlet ent, ) =>
      client.invoke('createPortalPagePortlet', ent, {  });

  /**
   * Create a new Portlet Attribute - PortletAttribute
   *
   * Requires portalPageId, portalPortletId, portletSeqId, attrName
   * Returns 
   */
  Future<OfResult> createPortletAttribute(PortletAttribute ent, ) =>
      client.invoke('createPortletAttribute', ent, {  });

  /**
   * Create a StatusValidChange - StatusValidChange
   *
   * Requires statusId, statusIdTo
   * Returns statusId[String], statusIdTo[String]
   */
  Future<OfResult> createStatusValidChange(StatusValidChange ent, ) =>
      client.invoke('createStatusValidChange', ent, {  });

  /**
   * Create a Temporal Expression - TemporalExpression
   *
   * Requires 
   * Returns tempExprId[String]
   */
  Future<OfResult> createTemporalExpression(TemporalExpression ent, ) =>
      client.invoke('createTemporalExpression', ent, {  });

  /**
   * Create a Temporal Expression Association - TemporalExpressionAssoc
   *
   * Requires fromTempExprId, toTempExprId
   * Returns 
   */
  Future<OfResult> createTemporalExpressionAssoc(TemporalExpressionAssoc ent, ) =>
      client.invoke('createTemporalExpressionAssoc', ent, {  });

  /**
   * Create Uom Record - Uom
   *
   * Requires 
   * Returns uomId[String]
   */
  Future<OfResult> createUom(Uom ent, ) =>
      client.invoke('createUom', ent, {  });

  /**
   * Create a new dated UOM converesion entity - UomConversionDated
   *
   * Requires uomId, uomIdTo, fromDate
   * Returns 
   */
  Future<OfResult> createUomConversionDated(UomConversionDated ent, ) =>
      client.invoke('createUomConversionDated', ent, {  });

  /**
   * Create UomGroup record - UomGroup
   *
   * Requires uomGroupId, uomId
   * Returns 
   */
  Future<OfResult> createUomGroup(UomGroup ent, ) =>
      client.invoke('createUomGroup', ent, {  });

  /**
   * Create UomType Record - UomType
   *
   * Requires 
   * Returns uomTypeId[String]
   */
  Future<OfResult> createUomType(UomType ent, ) =>
      client.invoke('createUomType', ent, {  });

  /**
   * Create a UserLogin - 
   *
   * Requires userLoginId, currentPassword, currentPasswordVerify
   * Returns 
   */
  Future<OfResult> createUserLogin({@required String userLoginId, String enabled, @required String currentPassword, @required String currentPasswordVerify, String passwordHint, String requirePasswordChange, String externalAuthId, String partyId, String securityQuestion, String securityAnswer}) =>
      client.invoke('createUserLogin', null, { 'userLoginId': userLoginId, 'enabled': enabled, 'currentPassword': currentPassword, 'currentPasswordVerify': currentPasswordVerify, 'passwordHint': passwordHint, 'requirePasswordChange': requirePasswordChange, 'externalAuthId': externalAuthId, 'partyId': partyId, 'securityQuestion': securityQuestion, 'securityAnswer': securityAnswer });

  /**
   * Create a UserPrefGroupType - UserPrefGroupType
   *
   * Requires 
   * Returns userPrefGroupTypeId[String]
   */
  Future<OfResult> createUserPrefGroupType(UserPrefGroupType ent, ) =>
      client.invoke('createUserPrefGroupType', ent, {  });

  /**
   * Create a Visual Theme - VisualTheme
   *
   * Requires visualThemeId
   * Returns visualThemeId[String]
   */
  Future<OfResult> createVisualTheme(VisualTheme ent, ) =>
      client.invoke('createVisualTheme', ent, {  });

  /**
   * Create a Visual Theme Resource - VisualThemeResource
   *
   * Requires visualThemeId, resourceTypeEnumId
   * Returns visualThemeId[String], resourceTypeEnumId[String], sequenceId[String]
   */
  Future<OfResult> createVisualThemeResource(VisualThemeResource ent, ) =>
      client.invoke('createVisualThemeResource', ent, {  });

  /**
   * Delete a CustomTimePeriod record - CustomTimePeriod
   *
   * Requires customTimePeriodId
   * Returns 
   */
  Future<OfResult> deleteCustomTimePeriod(CustomTimePeriod ent, ) =>
      client.invoke('deleteCustomTimePeriod', ent, {  });

  /**
   * Delete a DataSource record - DataSource
   *
   * Requires dataSourceId
   * Returns 
   */
  Future<OfResult> deleteDataSource(DataSource ent, ) =>
      client.invoke('deleteDataSource', ent, {  });

  /**
   * Delete a DataSourceType record - DataSourceType
   *
   * Requires dataSourceTypeId
   * Returns 
   */
  Future<OfResult> deleteDataSourceType(DataSourceType ent, ) =>
      client.invoke('deleteDataSourceType', ent, {  });

  /**
   * Delete a Enumeration - Enumeration
   *
   * Requires enumId
   * Returns 
   */
  Future<OfResult> deleteEnumeration(Enumeration ent, ) =>
      client.invoke('deleteEnumeration', ent, {  });

  /**
   * Delete a Geo - Geo
   *
   * Requires geoId
   * Returns 
   */
  Future<OfResult> deleteGeo(Geo ent, ) =>
      client.invoke('deleteGeo', ent, {  });

  /**
   * Delete a GeoAssoc - GeoAssoc
   *
   * Requires geoId, geoIdTo
   * Returns 
   */
  Future<OfResult> deleteGeoAssoc(GeoAssoc ent, ) =>
      client.invoke('deleteGeoAssoc', ent, {  });

  /**
   * Delete GeoAssocType - GeoAssocType
   *
   * Requires geoAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteGeoAssocType(GeoAssocType ent, ) =>
      client.invoke('deleteGeoAssocType', ent, {  });

  /**
   * Delete a GeoPoint - GeoPoint
   *
   * Requires geoPointId
   * Returns 
   */
  Future<OfResult> deleteGeoPoint(GeoPoint ent, ) =>
      client.invoke('deleteGeoPoint', ent, {  });

  /**
   * Delete GeoType - GeoType
   *
   * Requires geoTypeId
   * Returns 
   */
  Future<OfResult> deleteGeoType(GeoType ent, ) =>
      client.invoke('deleteGeoType', ent, {  });

  /**
   * Delete a Keyword Thesaurus - KeywordThesaurus
   *
   * Requires enteredKeyword
   * Returns 
   */
  Future<OfResult> deleteKeywordThesaurus(KeywordThesaurus ent, ) =>
      client.invoke('deleteKeywordThesaurus', ent, {  });

  /**
   * Delete a PeriodType - PeriodType
   *
   * Requires periodTypeId
   * Returns 
   */
  Future<OfResult> deletePeriodType(PeriodType ent, ) =>
      client.invoke('deletePeriodType', ent, {  });

  /**
   * Delete a Portal Page, related colums and used portlets - PortalPage
   *
   * Requires portalPageId
   * Returns 
   */
  Future<OfResult> deletePortalPage(PortalPage ent, ) =>
      client.invoke('deletePortalPage', ent, {  });

  /**
   * Delete a Column from a PortalPage - PortalPageColumn
   *
   * Requires portalPageId, columnSeqId
   * Returns 
   */
  Future<OfResult> deletePortalPageColumn(PortalPageColumn ent, ) =>
      client.invoke('deletePortalPageColumn', ent, {  });

  /**
   * Delete a PortalPortlet from a PortalPage - PortalPagePortlet
   *
   * Requires portalPageId, portalPortletId, portletSeqId
   * Returns 
   */
  Future<OfResult> deletePortalPagePortlet(PortalPagePortlet ent, ) =>
      client.invoke('deletePortalPagePortlet', ent, {  });

  /**
   * Delete a StatusValidChange - StatusValidChange
   *
   * Requires statusId, statusIdTo
   * Returns 
   */
  Future<OfResult> deleteStatusValidChange(StatusValidChange ent, ) =>
      client.invoke('deleteStatusValidChange', ent, {  });

  /**
   * Delete a Temporal Expression Association - TemporalExpressionAssoc
   *
   * Requires fromTempExprId, toTempExprId
   * Returns 
   */
  Future<OfResult> deleteTemporalExpressionAssoc(TemporalExpressionAssoc ent, ) =>
      client.invoke('deleteTemporalExpressionAssoc', ent, {  });

  /**
   * Delete Uom Record - Uom
   *
   * Requires uomId
   * Returns 
   */
  Future<OfResult> deleteUom(Uom ent, ) =>
      client.invoke('deleteUom', ent, {  });

  /**
   * Delete UomGroup record - UomGroup
   *
   * Requires uomGroupId, uomId
   * Returns 
   */
  Future<OfResult> deleteUomGroup(UomGroup ent, ) =>
      client.invoke('deleteUomGroup', ent, {  });

  /**
   * Delete UomType Record - UomType
   *
   * Requires uomTypeId
   * Returns 
   */
  Future<OfResult> deleteUomType(UomType ent, ) =>
      client.invoke('deleteUomType', ent, {  });

  /**
   * Delete a UserPrefGroupType - UserPrefGroupType
   *
   * Requires userPrefGroupTypeId
   * Returns 
   */
  Future<OfResult> deleteUserPrefGroupType(UserPrefGroupType ent, ) =>
      client.invoke('deleteUserPrefGroupType', ent, {  });

  /**
   * Delete a Visual Theme - VisualTheme
   *
   * Requires visualThemeId
   * Returns 
   */
  Future<OfResult> deleteVisualTheme(VisualTheme ent, ) =>
      client.invoke('deleteVisualTheme', ent, {  });

  /**
   * Delete a Visual Theme Resource - VisualThemeResource
   *
   * Requires visualThemeId, resourceTypeEnumId, sequenceId
   * Returns 
   */
  Future<OfResult> deleteVisualThemeResource(VisualThemeResource ent, ) =>
      client.invoke('deleteVisualThemeResource', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> displayXaDebugInfo() =>
      client.invoke('displayXaDebugInfo', null, {  });

  /**
   * Echos back all passed parameters - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> echoService() =>
      client.invoke('echoService', null, {  });

  /**
   * Force the JVM to run the GC - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> forceGarbageCollection() =>
      client.invoke('forceGarbageCollection', null, {  });

  /**
   *  - 
   *
   * Requires hostname, username, password, localFilename, remoteFilename
   * Returns 
   */
  Future<OfResult> ftpGetFile({@required String hostname, @required String username, @required String password, @required String localFilename, @required String remoteFilename, bool binaryTransfer, bool passiveMode, int defaultTimeout}) =>
      client.invoke('ftpGetFile', null, { 'hostname': hostname, 'username': username, 'password': password, 'localFilename': localFilename, 'remoteFilename': remoteFilename, 'binaryTransfer': binaryTransfer, 'passiveMode': passiveMode, 'defaultTimeout': defaultTimeout });

  /**
   *  - 
   *
   * Requires hostname, username, password, localFilename, remoteFilename
   * Returns 
   */
  Future<OfResult> ftpInterface({@required String hostname, @required String username, @required String password, @required String localFilename, @required String remoteFilename, bool binaryTransfer, bool passiveMode, int defaultTimeout}) =>
      client.invoke('ftpInterface', null, { 'hostname': hostname, 'username': username, 'password': password, 'localFilename': localFilename, 'remoteFilename': remoteFilename, 'binaryTransfer': binaryTransfer, 'passiveMode': passiveMode, 'defaultTimeout': defaultTimeout });

  /**
   *  - 
   *
   * Requires hostname, username, password, localFilename, remoteFilename
   * Returns 
   */
  Future<OfResult> ftpPutFile({List<dynamic> siteCommands, @required String hostname, @required String username, @required String password, @required String localFilename, @required String remoteFilename, bool binaryTransfer, bool passiveMode, int defaultTimeout}) =>
      client.invoke('ftpPutFile', null, { 'siteCommands': siteCommands, 'hostname': hostname, 'username': username, 'password': password, 'localFilename': localFilename, 'remoteFilename': remoteFilename, 'binaryTransfer': binaryTransfer, 'passiveMode': passiveMode, 'defaultTimeout': defaultTimeout });

  /**
   *  - 
   *
   * Requires primaryPermission
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> genericBasePermissionCheck({@required String primaryPermission, String altPermission, String mainAction, String resourceDescription}) =>
      client.invoke('genericBasePermissionCheck', null, { 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'mainAction': mainAction, 'resourceDescription': resourceDescription });

  /**
   * 
            Get all metrics. Returns a List of Maps - one Map per metric. Each Map includes the following keys:
            name, serviceRate, threshold, totalEvents. See org.apache.ofbiz.base.metrics.Metrics.
         - 
   *
   * Requires 
   * Returns metricsList[java.util.List]
   */
  Future<OfResult> getAllMetrics() =>
      client.invoke('getAllMetrics', null, {  });

  /**
   *  - 
   *
   * Requires countryGeoId
   * Returns stateList[java.util.List]
   */
  Future<OfResult> getAssociatedStateList({@required String countryGeoId, String listOrderBy}) =>
      client.invoke('getAssociatedStateList', null, { 'countryGeoId': countryGeoId, 'listOrderBy': listOrderBy });

  /**
   * Get a list of country and associated states from Geo - 
   *
   * Requires 
   * Returns countryList[java.util.List]
   */
  Future<OfResult> getCountryList() =>
      client.invoke('getCountryList', null, {  });

  /**
   * Get all attributes of a Portlet - 
   *
   * Requires portalPortletId
   * Returns attributeMap[Map]
   */
  Future<OfResult> getPortletAttributes({String portalPageId, String ownerUserLoginId, @required String portalPortletId, String portletSeqId}) =>
      client.invoke('getPortletAttributes', null, { 'portalPageId': portalPageId, 'ownerUserLoginId': ownerUserLoginId, 'portalPortletId': portalPortletId, 'portletSeqId': portletSeqId });

  /**
   *  - 
   *
   * Requires geoId, geoAssocTypeId
   * Returns geoList[java.util.List]
   */
  Future<OfResult> getRelatedGeos({@required String geoId, @required String geoAssocTypeId}) =>
      client.invoke('getRelatedGeos', null, { 'geoId': geoId, 'geoAssocTypeId': geoAssocTypeId });

  /**
   *  - 
   *
   * Requires 
   * Returns serverTimeZone[String]
   */
  Future<OfResult> getServerTimeZone() =>
      client.invoke('getServerTimeZone', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns serverTimestamp[Timestamp]
   */
  Future<OfResult> getServerTimestamp() =>
      client.invoke('getServerTimestamp', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns serverTimestamp[Long]
   */
  Future<OfResult> getServerTimestampAsLong() =>
      client.invoke('getServerTimestampAsLong', null, {  });

  /**
   * Gets all StatusItem entries for the supplied StatusTypeId's - 
   *
   * Requires statusTypeIds
   * Returns statusItems[List]
   */
  Future<OfResult> getStatusItems({@required List<dynamic> statusTypeIds}) =>
      client.invoke('getStatusItems', null, { 'statusTypeIds': statusTypeIds });

  /**
   * Gets all StatusValidChangeToDetails entries for the supplied statusId - 
   *
   * Requires statusId
   * Returns statusValidChangeToDetails[List]
   */
  Future<OfResult> getStatusValidChangeToDetails({@required String statusId}) =>
      client.invoke('getStatusValidChangeToDetails', null, { 'statusId': statusId });

  /**
   * 
            Gets a single user preference.
            If not found for the specific userLogin, find it for the _NA_ userlogin.
            If the value is DEFAULT, find the value in general.properties file.
         - 
   *
   * Requires userPrefTypeId
   * Returns userPrefMap[Map], userPrefValue[Object]
   */
  Future<OfResult> getUserPreference({@required String userPrefTypeId, String userPrefLoginId, String userPrefGroupTypeId}) =>
      client.invoke('getUserPreference', null, { 'userPrefTypeId': userPrefTypeId, 'userPrefLoginId': userPrefLoginId, 'userPrefGroupTypeId': userPrefGroupTypeId });

  /**
   * Gets a group of user preferences. - 
   *
   * Requires userPrefGroupTypeId
   * Returns userPrefMap[Map]
   */
  Future<OfResult> getUserPreferenceGroup({@required String userPrefGroupTypeId, String userPrefLoginId}) =>
      client.invoke('getUserPreferenceGroup', null, { 'userPrefGroupTypeId': userPrefGroupTypeId, 'userPrefLoginId': userPrefLoginId });

  /**
   *  - 
   *
   * Requires dataSourceId, dataSourceTypeId
   * Returns 
   */
  Future<OfResult> interfaceDataSource({@required String dataSourceId, @required String dataSourceTypeId, String description}) =>
      client.invoke('interfaceDataSource', null, { 'dataSourceId': dataSourceId, 'dataSourceTypeId': dataSourceTypeId, 'description': description });

  /**
   *  - 
   *
   * Requires dataSourceTypeId
   * Returns 
   */
  Future<OfResult> interfaceDataSourceType({@required String dataSourceTypeId, String description}) =>
      client.invoke('interfaceDataSourceType', null, { 'dataSourceTypeId': dataSourceTypeId, 'description': description });

  /**
   * Link Geos to another Geo - 
   *
   * Requires geoId, geoAssocTypeId
   * Returns 
   */
  Future<OfResult> linkGeos({List<dynamic> geoIds, @required String geoId, @required String geoAssocTypeId}) =>
      client.invoke('linkGeos', null, { 'geoIds': geoIds, 'geoId': geoId, 'geoAssocTypeId': geoAssocTypeId });

  /**
   * Move a PortalPortlet from the actual portalPage to a different one - PortalPagePortlet
   *
   * Requires portalPageId, portalPortletId, portletSeqId, newPortalPageId
   * Returns 
   */
  Future<OfResult> movePortletToPortalPage(PortalPagePortlet ent, {@required String newPortalPageId}) =>
      client.invoke('movePortletToPortalPage', ent, { 'newPortalPageId': newPortalPageId });

  /**
   * Generic service to return an entity iterator.  set filterByDate to Y to exclude expired records.
           set noConditionFind to Y to find without conditions.   - 
   *
   * Requires entityName, inputFields
   * Returns listIt[org.apache.ofbiz.entity.util.EntityListIterator], listSize[Integer], queryString[String], queryStringMap[java.util.Map]
   */
  Future<OfResult> performFind({@required String entityName, @required Map<String,dynamic> inputFields, List<dynamic> fieldList, String orderBy, String noConditionFind, String distinct, String filterByDate, DateTime filterByDateValue, String fromDateName, String thruDateName, int viewIndex, int viewSize}) =>
      client.invoke('performFind', null, { 'entityName': entityName, 'inputFields': inputFields, 'fieldList': fieldList, 'orderBy': orderBy, 'noConditionFind': noConditionFind, 'distinct': distinct, 'filterByDate': filterByDate, 'filterByDateValue': filterByDateValue, 'fromDateName': fromDateName, 'thruDateName': thruDateName, 'viewIndex': viewIndex, 'viewSize': viewSize });

  /**
   * Generic service to return an single GenericValue.  set filterByDate to Y to exclude expired records. - 
   *
   * Requires entityName, inputFields
   * Returns item[org.apache.ofbiz.entity.GenericValue], queryString[String], queryStringMap[java.util.Map]
   */
  Future<OfResult> performFindItem({@required String entityName, @required Map<String,dynamic> inputFields, String orderBy, String filterByDate, DateTime filterByDateValue}) =>
      client.invoke('performFindItem', null, { 'entityName': entityName, 'inputFields': inputFields, 'orderBy': orderBy, 'filterByDate': filterByDate, 'filterByDateValue': filterByDateValue });

  /**
   * Generic service to return an partial list.  set filterByDate to Y to exclude expired records.
            set noConditionFind to Y to find without conditions. 
            If used in a form, it is necessary to assign a value (true makes sense) to override-list-size attribute so that 
            FormRenderer.renderItemRows sets the lowIndex correctly, because once the results of performFindList are displayed, 
            otherwise pages > 0 are rendered as empty. see OFBIZ-6422 + 6423 for details - 
   *
   * Requires entityName, inputFields
   * Returns list[List], listSize[Integer], queryString[String], queryStringMap[java.util.Map]
   */
  Future<OfResult> performFindList({@required String entityName, @required Map<String,dynamic> inputFields, String orderBy, String noConditionFind, String filterByDate, DateTime filterByDateValue, int viewIndex, int viewSize}) =>
      client.invoke('performFindList', null, { 'entityName': entityName, 'inputFields': inputFields, 'orderBy': orderBy, 'noConditionFind': noConditionFind, 'filterByDate': filterByDate, 'filterByDateValue': filterByDateValue, 'viewIndex': viewIndex, 'viewSize': viewSize });

  /**
   * User preference copy permission checking. - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> preferenceCopyPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('preferenceCopyPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * User preference get/set permission checking. - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> preferenceGetSetPermission({String userPrefLoginId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('preferenceGetSetPermission', null, { 'userPrefLoginId': userPrefLoginId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Generic service to return a entity conditions - 
   *
   * Requires entityName, inputFields
   * Returns queryString[String], queryStringMap[java.util.Map], orderByList[java.util.List], entityConditionList[org.apache.ofbiz.entity.condition.EntityConditionList]
   */
  Future<OfResult> prepareFind({@required String entityName, @required Map<String,dynamic> inputFields, String orderBy, String noConditionFind, String filterByDate, DateTime filterByDateValue, String fromDateName, String thruDateName}) =>
      client.invoke('prepareFind', null, { 'entityName': entityName, 'inputFields': inputFields, 'orderBy': orderBy, 'noConditionFind': noConditionFind, 'filterByDate': filterByDate, 'filterByDateValue': filterByDateValue, 'fromDateName': fromDateName, 'thruDateName': thruDateName });

  /**
   * Sets a single user preference. - 
   *
   * Requires userPrefTypeId
   * Returns 
   */
  Future<OfResult> removeUserPreference({@required String userPrefTypeId, String userPrefLoginId}) =>
      client.invoke('removeUserPreference', null, { 'userPrefTypeId': userPrefTypeId, 'userPrefLoginId': userPrefLoginId });

  /**
   * Resets a metric. See org.apache.ofbiz.base.metrics.Metrics. - 
   *
   * Requires name
   * Returns 
   */
  Future<OfResult> resetMetric({@required String name}) =>
      client.invoke('resetMetric', null, { 'name': name });

  /**
   * Always returns error - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> returnErrorService() =>
      client.invoke('returnErrorService', null, {  });

  /**
   * Interface for ROME RSS feed services; should return the WireFeed object (serializable) - 
   *
   * Requires feedType, mainLink, entryLink
   * Returns wireFeed[com.sun.syndication.feed.WireFeed]
   */
  Future<OfResult> rssFeedInterface({@required String feedType, @required String mainLink, @required String entryLink}) =>
      client.invoke('rssFeedInterface', null, { 'feedType': feedType, 'mainLink': mainLink, 'entryLink': entryLink });

  /**
   * Sets a single user preference. - 
   *
   * Requires userPrefTypeId, userPrefValue
   * Returns 
   */
  Future<OfResult> setUserPreference({@required String userPrefTypeId, @required String userPrefValue, String userPrefGroupTypeId, String userPrefLoginId}) =>
      client.invoke('setUserPreference', null, { 'userPrefTypeId': userPrefTypeId, 'userPrefValue': userPrefValue, 'userPrefGroupTypeId': userPrefGroupTypeId, 'userPrefLoginId': userPrefLoginId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> tempExprPermissionCheck({String primaryPermission, String altPermission, String mainAction, String resourceDescription}) =>
      client.invoke('tempExprPermissionCheck', null, { 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'mainAction': mainAction, 'resourceDescription': resourceDescription });

  /**
   * Update a CustomTimePeriod record - CustomTimePeriod
   *
   * Requires customTimePeriodId
   * Returns 
   */
  Future<OfResult> updateCustomTimePeriod(CustomTimePeriod ent, ) =>
      client.invoke('updateCustomTimePeriod', ent, {  });

  /**
   * Update a DataSource record - DataSource
   *
   * Requires dataSourceId, dataSourceTypeId
   * Returns 
   */
  Future<OfResult> updateDataSource(DataSource ent, ) =>
      client.invoke('updateDataSource', ent, {  });

  /**
   * Update a DataSourceType record - DataSourceType
   *
   * Requires dataSourceTypeId
   * Returns 
   */
  Future<OfResult> updateDataSourceType(DataSourceType ent, ) =>
      client.invoke('updateDataSourceType', ent, {  });

  /**
   * Update a Enumeration - Enumeration
   *
   * Requires enumId, enumTypeId, description, enumTypeId, description
   * Returns 
   */
  Future<OfResult> updateEnumeration(Enumeration ent, ) =>
      client.invoke('updateEnumeration', ent, {  });

  /**
   * Update a Geo - Geo
   *
   * Requires geoId
   * Returns 
   */
  Future<OfResult> updateGeo(Geo ent, ) =>
      client.invoke('updateGeo', ent, {  });

  /**
   * Update GeoAssocType - GeoAssocType
   *
   * Requires geoAssocTypeId
   * Returns 
   */
  Future<OfResult> updateGeoAssocType(GeoAssocType ent, ) =>
      client.invoke('updateGeoAssocType', ent, {  });

  /**
   * Update a GeoPoint - GeoPoint
   *
   * Requires geoPointId, dataSourceId, latitude, longitude, dataSourceId, latitude, longitude
   * Returns 
   */
  Future<OfResult> updateGeoPoint(GeoPoint ent, ) =>
      client.invoke('updateGeoPoint', ent, {  });

  /**
   * Update GeoType - GeoType
   *
   * Requires geoTypeId
   * Returns 
   */
  Future<OfResult> updateGeoType(GeoType ent, ) =>
      client.invoke('updateGeoType', ent, {  });

  /**
   * Update a Keyword Thesaurus - KeywordThesaurus
   *
   * Requires enteredKeyword, alternateKeyword
   * Returns 
   */
  Future<OfResult> updateKeywordThesaurus(KeywordThesaurus ent, ) =>
      client.invoke('updateKeywordThesaurus', ent, {  });

  /**
   * Update a note record - NoteData
   *
   * Requires noteId
   * Returns 
   */
  Future<OfResult> updateNote(NoteData ent, ) =>
      client.invoke('updateNote', ent, {  });

  /**
   * Update a UserLogin Password - UserLogin
   *
   * Requires 
   * Returns updatedUserLogin[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> updatePassword(UserLogin ent, {String newPassword, String newPasswordVerify}) =>
      client.invoke('updatePassword', ent, { 'newPassword': newPassword, 'newPasswordVerify': newPasswordVerify });

  /**
   * Update a PeriodType - PeriodType
   *
   * Requires periodTypeId
   * Returns 
   */
  Future<OfResult> updatePeriodType(PeriodType ent, ) =>
      client.invoke('updatePeriodType', ent, {  });

  /**
   * Update a Portal Page - PortalPage
   *
   * Requires portalPageId
   * Returns 
   */
  Future<OfResult> updatePortalPage(PortalPage ent, ) =>
      client.invoke('updatePortalPage', ent, {  });

  /**
   * Update a Portal Page Column - PortalPageColumn
   *
   * Requires portalPageId, columnSeqId
   * Returns 
   */
  Future<OfResult> updatePortalPageColumn(PortalPageColumn ent, ) =>
      client.invoke('updatePortalPageColumn', ent, {  });

  /**
   * Update a PortalPortlet - PortalPagePortlet
   *
   * Requires portalPageId, portalPortletId, portletSeqId
   * Returns 
   */
  Future<OfResult> updatePortalPagePortlet(PortalPagePortlet ent, ) =>
      client.invoke('updatePortalPagePortlet', ent, {  });

  /**
   *  - PortalPage
   *
   * Requires portalPageId, mode
   * Returns 
   */
  Future<OfResult> updatePortalPageSeq(PortalPage ent, {@required String mode}) =>
      client.invoke('updatePortalPageSeq', ent, { 'mode': mode });

  /**
   *  - 
   *
   * Requires o_portalPageId, o_portalPortletId, o_portletSeqId, mode
   * Returns 
   */
  Future<OfResult> updatePortletSeqDragDrop({@required String o_portalPageId, @required String o_portalPortletId, @required String o_portletSeqId, String d_portalPageId, String d_portalPortletId, String d_portletSeqId, String destinationColumn, @required String mode}) =>
      client.invoke('updatePortletSeqDragDrop', null, { 'o_portalPageId': o_portalPageId, 'o_portalPortletId': o_portalPortletId, 'o_portletSeqId': o_portletSeqId, 'd_portalPageId': d_portalPageId, 'd_portalPortletId': d_portalPortletId, 'd_portletSeqId': d_portletSeqId, 'destinationColumn': destinationColumn, 'mode': mode });

  /**
   * Update a StatusValidChange - StatusValidChange
   *
   * Requires statusId, statusIdTo
   * Returns 
   */
  Future<OfResult> updateStatusValidChange(StatusValidChange ent, ) =>
      client.invoke('updateStatusValidChange', ent, {  });

  /**
   * Update a Temporal Expression - TemporalExpression
   *
   * Requires tempExprId
   * Returns 
   */
  Future<OfResult> updateTemporalExpression(TemporalExpression ent, ) =>
      client.invoke('updateTemporalExpression', ent, {  });

  /**
   * Update Uom Record - Uom
   *
   * Requires uomId
   * Returns 
   */
  Future<OfResult> updateUom(Uom ent, ) =>
      client.invoke('updateUom', ent, {  });

  /**
   * Update UomType Record - UomType
   *
   * Requires uomTypeId
   * Returns 
   */
  Future<OfResult> updateUomType(UomType ent, ) =>
      client.invoke('updateUomType', ent, {  });

  /**
   * Update a UserLoginId by creating a new one and expiring the old one - 
   *
   * Requires userLoginId
   * Returns newUserLogin[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> updateUserLoginId({@required String userLoginId}) =>
      client.invoke('updateUserLoginId', null, { 'userLoginId': userLoginId });

  /**
   * Update UserLogin Security Settings - UserLogin
   *
   * Requires userLoginId, enabled
   * Returns 
   */
  Future<OfResult> updateUserLoginSecurity(UserLogin ent, ) =>
      client.invoke('updateUserLoginSecurity', ent, {  });

  /**
   * Update a UserPrefGroupType - UserPrefGroupType
   *
   * Requires userPrefGroupTypeId
   * Returns 
   */
  Future<OfResult> updateUserPrefGroupType(UserPrefGroupType ent, ) =>
      client.invoke('updateUserPrefGroupType', ent, {  });

  /**
   * Update a Visual Theme - VisualTheme
   *
   * Requires visualThemeId
   * Returns 
   */
  Future<OfResult> updateVisualTheme(VisualTheme ent, ) =>
      client.invoke('updateVisualTheme', ent, {  });

  /**
   * Update a Visual Theme Resource - VisualThemeResource
   *
   * Requires visualThemeId, resourceTypeEnumId, sequenceId
   * Returns 
   */
  Future<OfResult> updateVisualThemeResource(VisualThemeResource ent, ) =>
      client.invoke('updateVisualThemeResource', ent, {  });

  /**
   * Visual Theme Permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> visualThemePermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('visualThemePermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

}