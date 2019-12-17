import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class WebtoolsServices{
  final SrvClient client;
  WebtoolsServices(this.client);

  /**
   * Exports all entities into xml files - 
   *
   * Requires 
   * Returns results[List]
   */
  Future<OfResult> entityExportAll({String outpath, DateTime fromDate, int txTimeout}) =>
      client.invoke('entityExportAll', null, { 'outpath': outpath, 'fromDate': fromDate, 'txTimeout': txTimeout });

  /**
   * Imports an entity xml file or text string - 
   *
   * Requires 
   * Returns messages[List]
   */
  Future<OfResult> entityImport({String filename, String fmfilename, String fulltext, String isUrl, String onlyInserts, String maintainTimeStamps, String createDummyFks, String checkDataOnly, int txTimeout, Map<String,dynamic> placeholderValues}) =>
      client.invoke('entityImport', null, { 'filename': filename, 'fmfilename': fmfilename, 'fulltext': fulltext, 'isUrl': isUrl, 'onlyInserts': onlyInserts, 'maintainTimeStamps': maintainTimeStamps, 'createDummyFks': createDummyFks, 'checkDataOnly': checkDataOnly, 'txTimeout': txTimeout, 'placeholderValues': placeholderValues });

  /**
   * Imports all entity xml files contained in a directory - 
   *
   * Requires 
   * Returns messages[List]
   */
  Future<OfResult> entityImportDir({String path, String onlyInserts, String maintainTimeStamps, String createDummyFks, String checkDataOnly, String deleteFiles, int txTimeout, int filePause, Map<String,dynamic> placeholderValues}) =>
      client.invoke('entityImportDir', null, { 'path': path, 'onlyInserts': onlyInserts, 'maintainTimeStamps': maintainTimeStamps, 'createDummyFks': createDummyFks, 'checkDataOnly': checkDataOnly, 'deleteFiles': deleteFiles, 'txTimeout': txTimeout, 'filePause': filePause, 'placeholderValues': placeholderValues });

  /**
   * Imports an entity xml file or text string - 
   *
   * Requires 
   * Returns messages[List]
   */
  Future<OfResult> entityImportReaders({String readers, String overrideDelegator, String overrideGroup, String onlyInserts, String maintainTimeStamps, String createDummyFks, String checkDataOnly, int txTimeout}) =>
      client.invoke('entityImportReaders', null, { 'readers': readers, 'overrideDelegator': overrideDelegator, 'overrideGroup': overrideGroup, 'onlyInserts': onlyInserts, 'maintainTimeStamps': maintainTimeStamps, 'createDummyFks': createDummyFks, 'checkDataOnly': checkDataOnly, 'txTimeout': txTimeout });

  /**
   * Performs an entity maintenance security check. Returns hasPermission=true
          if the user has the ENTITY_MAINT permission. - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> entityMaintPermCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('entityMaintPermCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Saves specified set of entities to an Apple EOModelBundle file.
            See org.apache.ofbiz.webtools.WebToolsServices.exportEoModelBundle().
            Specify either entityPackageName or entityGroupId, or leave both empty for ALL entities in the data model.
         - 
   *
   * Requires eomodeldFullPath
   * Returns 
   */
  Future<OfResult> exportEntityEoModelBundle({@required String eomodeldFullPath, String entityPackageName, String entityGroupId, String datasourceName, String entityNamePrefix}) =>
      client.invoke('exportEntityEoModelBundle', null, { 'eomodeldFullPath': eomodeldFullPath, 'entityPackageName': entityPackageName, 'entityGroupId': entityGroupId, 'datasourceName': datasourceName, 'entityNamePrefix': entityNamePrefix });

  /**
   * Saves service and related artifacts diagram to an Apple EOModelBundle file.
         - 
   *
   * Requires eomodeldFullPath, serviceName
   * Returns 
   */
  Future<OfResult> exportServiceEoModelBundle({@required String eomodeldFullPath, @required String serviceName}) =>
      client.invoke('exportServiceEoModelBundle', null, { 'eomodeldFullPath': eomodeldFullPath, 'serviceName': serviceName });

  /**
   * Gets the entity reference data - for the entity reference screen. See org.apache.ofbiz.webtools.WebToolsServices.getEntityRefData(). - 
   *
   * Requires 
   * Returns numberOfEntities[java.lang.Integer], packagesList[java.util.List]
   */
  Future<OfResult> getEntityRefData() =>
      client.invoke('getEntityRefData', null, {  });

  /**
   * Parses an entity xml file or an entity xml text - 
   *
   * Requires 
   * Returns rowProcessed[Long]
   */
  Future<OfResult> parseEntityXmlFile({String url, String xmltext, String onlyInserts, String maintainTimeStamps, int txTimeout, String createDummyFks, String checkDataOnly, Map<String,dynamic> placeholderValues}) =>
      client.invoke('parseEntityXmlFile', null, { 'url': url, 'xmltext': xmltext, 'onlyInserts': onlyInserts, 'maintainTimeStamps': maintainTimeStamps, 'txTimeout': txTimeout, 'createDummyFks': createDummyFks, 'checkDataOnly': checkDataOnly, 'placeholderValues': placeholderValues });

  /**
   * Save labels to xml file - 
   *
   * Requires update_label, fileName
   * Returns 
   */
  Future<OfResult> saveLabelsToXmlFile({String key, String keyComment, @required String update_label, @required String fileName, String confirm, String removeLabel, List<dynamic> localeNames, List<dynamic> localeValues, List<dynamic> localeComments}) =>
      client.invoke('saveLabelsToXmlFile', null, { 'key': key, 'keyComment': keyComment, 'update_label': update_label, 'fileName': fileName, 'confirm': confirm, 'removeLabel': removeLabel, 'localeNames': localeNames, 'localeValues': localeValues, 'localeComments': localeComments });

}