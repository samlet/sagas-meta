import 'package:sagas_meta/src/models/content_content.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesContent{
  final SrvClient client;
  ContentServicesContent(this.client);

  /**
   * Check for permission to perform operation on Content - ContentAssoc
   *
   * Requires contentAssocTypeId
   * Returns roleTypeList[List]
   */
  Future<OfResult> assocContent(ContentAssoc ent, {List<dynamic> targetOperationList, List<dynamic> contentPurposeList, List<dynamic> roleTypeList, Map<String,dynamic> userLogin, String contentIdFrom, String statusId, String entityOperation}) =>
      client.invoke('assocContent', ent, { 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'roleTypeList': roleTypeList, 'userLogin': userLogin, 'contentIdFrom': contentIdFrom, 'statusId': statusId, 'entityOperation': entityOperation });

  /**
   * Check for permission to perform operation on Content - 
   *
   * Requires 
   * Returns roleTypeList[List], permissionStatus[String], permissionRecorderTo[org.apache.ofbiz.content.content.PermissionRecorder], permissionRecorder[org.apache.ofbiz.content.content.PermissionRecorder]
   */
  Future<OfResult> checkAssocPermission({List<dynamic> targetOperationList, List<dynamic> contentPurposeList, List<dynamic> roleTypeList, Map<String,dynamic> userLogin, String contentIdTo, String contentIdFrom, String fromDate, String thruDate, String statusId, String privilegeEnumId, String entityOperation, String contentAssocTypeId, String contentAssocPredicateId, bool displayFailCond}) =>
      client.invoke('checkAssocPermission', null, { 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'roleTypeList': roleTypeList, 'userLogin': userLogin, 'contentIdTo': contentIdTo, 'contentIdFrom': contentIdFrom, 'fromDate': fromDate, 'thruDate': thruDate, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'entityOperation': entityOperation, 'contentAssocTypeId': contentAssocTypeId, 'contentAssocPredicateId': contentAssocPredicateId, 'displayFailCond': displayFailCond });

  /**
   * Check for permission to perform operation on Content - 
   *
   * Requires 
   * Returns roleTypeList[List], permissionStatus[String], permissionRecorder[org.apache.ofbiz.content.content.PermissionRecorder]
   */
  Future<OfResult> checkContentPermission({List<dynamic> targetOperationList, List<dynamic> contentPurposeList, String targetOperationString, String contentPurposeString, String roleTypeString, List<dynamic> roleTypeList, Map<String,dynamic> currentContent, String fromDate, String thruDate, String entityOperation, String statusId, String privilegeEnumId, String quickCheckContentId, bool displayFailCond, bool displayPassCond, String partyId, String userLoginId}) =>
      client.invoke('checkContentPermission', null, { 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'targetOperationString': targetOperationString, 'contentPurposeString': contentPurposeString, 'roleTypeString': roleTypeString, 'roleTypeList': roleTypeList, 'currentContent': currentContent, 'fromDate': fromDate, 'thruDate': thruDate, 'entityOperation': entityOperation, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'quickCheckContentId': quickCheckContentId, 'displayFailCond': displayFailCond, 'displayPassCond': displayPassCond, 'partyId': partyId, 'userLoginId': userLoginId });

  /**
   * Copy a Content, e;ectronic text and assocs - Content
   *
   * Requires contentId
   * Returns contentId[String]
   */
  Future<OfResult> copyContentAndElectronicTextandAssoc(Content ent, ) =>
      client.invoke('copyContentAndElectronicTextandAssoc', ent, {  });

  /**
   * Create a Content - Content
   *
   * Requires 
   * Returns contentId[String], roleTypeList[List]
   */
  Future<OfResult> createContent(Content ent, {List<dynamic> targetOperationList, String targetOperationString, List<dynamic> contentPurposeList, String contentPurposeString, String skipPermissionCheck, bool displayFailCond, List<dynamic> roleTypeList}) =>
      client.invoke('createContent', ent, { 'targetOperationList': targetOperationList, 'targetOperationString': targetOperationString, 'contentPurposeList': contentPurposeList, 'contentPurposeString': contentPurposeString, 'skipPermissionCheck': skipPermissionCheck, 'displayFailCond': displayFailCond, 'roleTypeList': roleTypeList });

  /**
   * Create a ContentApproval - ContentApproval
   *
   * Requires 
   * Returns contentApprovalId[String]
   */
  Future<OfResult> createContentApproval(ContentApproval ent, ) =>
      client.invoke('createContentApproval', ent, {  });

  /**
   * Create a ContentAssoc - ContentAssoc
   *
   * Requires contentId, contentIdTo, contentAssocTypeId
   * Returns fromDate[java.sql.Timestamp], fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createContentAssoc(ContentAssoc ent, ) =>
      client.invoke('createContentAssoc', ent, {  });

  /**
   * Create a ContentAttribute - ContentAttribute
   *
   * Requires contentId, attrName
   * Returns 
   */
  Future<OfResult> createContentAttribute(ContentAttribute ent, ) =>
      client.invoke('createContentAttribute', ent, {  });

  /**
   * Create a ContentKeyword - ContentKeyword
   *
   * Requires contentId, keyword
   * Returns 
   */
  Future<OfResult> createContentKeyword(ContentKeyword ent, ) =>
      client.invoke('createContentKeyword', ent, {  });

  /**
   * Create a ContentMetaData - ContentMetaData
   *
   * Requires contentId, metaDataPredicateId
   * Returns 
   */
  Future<OfResult> createContentMetaData(ContentMetaData ent, ) =>
      client.invoke('createContentMetaData', ent, {  });

  /**
   * Create a ContentOperation - ContentOperation
   *
   * Requires 
   * Returns contentOperationId[String]
   */
  Future<OfResult> createContentOperation(ContentOperation ent, ) =>
      client.invoke('createContentOperation', ent, {  });

  /**
   * Create a ContentPurpose - ContentPurpose
   *
   * Requires contentId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> createContentPurpose(ContentPurpose ent, ) =>
      client.invoke('createContentPurpose', ent, {  });

  /**
   * Create a ContentPurposeOperation - ContentPurposeOperation
   *
   * Requires contentPurposeTypeId, contentOperationId, roleTypeId, statusId, privilegeEnumId
   * Returns 
   */
  Future<OfResult> createContentPurposeOperation(ContentPurposeOperation ent, ) =>
      client.invoke('createContentPurposeOperation', ent, {  });

  /**
   * Create a ContentRevision - ContentRevision
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createContentRevision(ContentRevision ent, ) =>
      client.invoke('createContentRevision', ent, {  });

  /**
   * Create a ContentRevisionItem - ContentRevisionItem
   *
   * Requires contentId, contentRevisionSeqId, itemContentId
   * Returns 
   */
  Future<OfResult> createContentRevisionItem(ContentRevisionItem ent, ) =>
      client.invoke('createContentRevisionItem', ent, {  });

  /**
   * Create a ContentRole - ContentRole
   *
   * Requires contentId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createContentRole(ContentRole ent, ) =>
      client.invoke('createContentRole', ent, {  });

  /**
   * Create missing Content Alternative URLs - 
   *
   * Requires 
   * Returns contentsNotUpdated[Integer], contentsUpdated[Integer]
   */
  Future<OfResult> createMissingContentAltUrls({String prodCatalogId, String webSiteId}) =>
      client.invoke('createMissingContentAltUrls', null, { 'prodCatalogId': prodCatalogId, 'webSiteId': webSiteId });

  /**
   * Deactivate all ContentRoles - ContentRole
   *
   * Requires contentId, roleTypeId, partyId
   * Returns 
   */
  Future<OfResult> deactivateAllContentRoles(ContentRole ent, ) =>
      client.invoke('deactivateAllContentRoles', ent, {  });

  /**
   * Delete a ContentKeyword - ContentKeyword
   *
   * Requires contentId, keyword
   * Returns 
   */
  Future<OfResult> deleteContentKeyword(ContentKeyword ent, ) =>
      client.invoke('deleteContentKeyword', ent, {  });

  /**
   * Delete all the keywords of a content - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> deleteContentKeywords({@required String contentId}) =>
      client.invoke('deleteContentKeywords', null, { 'contentId': contentId });

  /**
   * Expire a ContentAssoc - ContentAssoc
   *
   * Requires contentId, contentIdTo, contentAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> expireContentAssoc(ContentAssoc ent, ) =>
      client.invoke('expireContentAssoc', ent, {  });

  /**
   * Create a Content - Content
   *
   * Requires currentContent
   * Returns contentList[List]
   */
  Future<OfResult> findRelatedContent(Content ent, {@required Map<String,dynamic> currentContent, String toFrom, String fromDate, String thruDate, List<dynamic> targetOperationList, Map<String,dynamic> userLogin, List<dynamic> contentAssocTypeList, List<dynamic> contentTypeList, String entityOperation}) =>
      client.invoke('findRelatedContent', ent, { 'currentContent': currentContent, 'toFrom': toFrom, 'fromDate': fromDate, 'thruDate': thruDate, 'targetOperationList': targetOperationList, 'userLogin': userLogin, 'contentAssocTypeList': contentAssocTypeList, 'contentTypeList': contentTypeList, 'entityOperation': entityOperation });

  /**
   * Induce all the keywords of a content, ignoring the flag in the Content. - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> forceIndexContentKeywords({@required String contentId}) =>
      client.invoke('forceIndexContentKeywords', null, { 'contentId': contentId });

  /**
   * Index the Keywords for a Content - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> indexContentKeywords({@required String contentId, Map<String,dynamic> contentInstance}) =>
      client.invoke('indexContentKeywords', null, { 'contentId': contentId, 'contentInstance': contentInstance });

  /**
   * Remove Content - Content
   *
   * Requires contentId
   * Returns roleTypeList[List]
   */
  Future<OfResult> removeContent(Content ent, {List<dynamic> targetOperationList, String contentPurposeTypeId, Map<String,dynamic> userLogin, List<dynamic> roleTypeList}) =>
      client.invoke('removeContent', ent, { 'targetOperationList': targetOperationList, 'contentPurposeTypeId': contentPurposeTypeId, 'userLogin': userLogin, 'roleTypeList': roleTypeList });

  /**
   * Remove Content - Content
   *
   * Requires contentId
   * Returns roleTypeList[List]
   */
  Future<OfResult> removeContentAndRelated(Content ent, {List<dynamic> targetOperationList, String contentPurposeTypeId, Map<String,dynamic> userLogin, List<dynamic> roleTypeList}) =>
      client.invoke('removeContentAndRelated', ent, { 'targetOperationList': targetOperationList, 'contentPurposeTypeId': contentPurposeTypeId, 'userLogin': userLogin, 'roleTypeList': roleTypeList });

  /**
   * Remove ContentApproval - ContentApproval
   *
   * Requires contentApprovalId
   * Returns 
   */
  Future<OfResult> removeContentApproval(ContentApproval ent, ) =>
      client.invoke('removeContentApproval', ent, {  });

  /**
   * Remove ContentAssoc - ContentAssoc
   *
   * Requires contentId, contentIdTo, contentAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeContentAssoc(ContentAssoc ent, ) =>
      client.invoke('removeContentAssoc', ent, {  });

  /**
   * Remove ContentAttribute - ContentAttribute
   *
   * Requires contentId, attrName
   * Returns 
   */
  Future<OfResult> removeContentAttribute(ContentAttribute ent, ) =>
      client.invoke('removeContentAttribute', ent, {  });

  /**
   * Remove ContentMetaData - ContentMetaData
   *
   * Requires contentId, metaDataPredicateId
   * Returns 
   */
  Future<OfResult> removeContentMetaData(ContentMetaData ent, ) =>
      client.invoke('removeContentMetaData', ent, {  });

  /**
   * Remove ContentOperation - ContentOperation
   *
   * Requires contentOperationId
   * Returns 
   */
  Future<OfResult> removeContentOperation(ContentOperation ent, ) =>
      client.invoke('removeContentOperation', ent, {  });

  /**
   * Remove ContentPurpose - ContentPurpose
   *
   * Requires contentId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> removeContentPurpose(ContentPurpose ent, ) =>
      client.invoke('removeContentPurpose', ent, {  });

  /**
   * Remove ContentPurposeOperation - ContentPurposeOperation
   *
   * Requires contentPurposeTypeId, contentOperationId, roleTypeId, statusId, privilegeEnumId
   * Returns 
   */
  Future<OfResult> removeContentPurposeOperation(ContentPurposeOperation ent, ) =>
      client.invoke('removeContentPurposeOperation', ent, {  });

  /**
   * Remove ContentRevision - ContentRevision
   *
   * Requires contentId, contentRevisionSeqId
   * Returns 
   */
  Future<OfResult> removeContentRevision(ContentRevision ent, ) =>
      client.invoke('removeContentRevision', ent, {  });

  /**
   * Remove ContentRevisionItem - ContentRevisionItem
   *
   * Requires contentId, contentRevisionSeqId, itemContentId
   * Returns 
   */
  Future<OfResult> removeContentRevisionItem(ContentRevisionItem ent, ) =>
      client.invoke('removeContentRevisionItem', ent, {  });

  /**
   * Remove ContentRole - ContentRole
   *
   * Requires contentId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeContentRole(ContentRole ent, ) =>
      client.invoke('removeContentRole', ent, {  });

  /**
   * Set the Content Status - 
   *
   * Requires contentId, statusId
   * Returns oldStatusId[String]
   */
  Future<OfResult> setContentStatus({@required String contentId, @required String statusId}) =>
      client.invoke('setContentStatus', null, { 'contentId': contentId, 'statusId': statusId });

  /**
   * Update a Content - 
   *
   * Requires contentId
   * Returns contentId[String], roleTypeList[List]
   */
  Future<OfResult> updateContent({@required String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, String contentPurposeTypeId, String contentIdFrom, List<dynamic> targetOperationList, String skipPermissionCheck, bool displayFailCond, List<dynamic> roleTypeList, String contentIdTo, String contentAssocTypeId, DateTime fromDate, DateTime thruDate, String contentAssocPredicateId, int sequenceNum, String mapKey, int upperCoordinate, int leftCoordinate}) =>
      client.invoke('updateContent', null, { 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'contentPurposeTypeId': contentPurposeTypeId, 'contentIdFrom': contentIdFrom, 'targetOperationList': targetOperationList, 'skipPermissionCheck': skipPermissionCheck, 'displayFailCond': displayFailCond, 'roleTypeList': roleTypeList, 'contentIdTo': contentIdTo, 'contentAssocTypeId': contentAssocTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'contentAssocPredicateId': contentAssocPredicateId, 'sequenceNum': sequenceNum, 'mapKey': mapKey, 'upperCoordinate': upperCoordinate, 'leftCoordinate': leftCoordinate });

  /**
   * Update a ContentApproval - ContentApproval
   *
   * Requires contentApprovalId
   * Returns 
   */
  Future<OfResult> updateContentApproval(ContentApproval ent, ) =>
      client.invoke('updateContentApproval', ent, {  });

  /**
   * Update a ContentAssoc - ContentAssoc
   *
   * Requires contentId, contentIdTo, contentAssocTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateContentAssoc(ContentAssoc ent, ) =>
      client.invoke('updateContentAssoc', ent, {  });

  /**
   * Update a ContentAttribute - ContentAttribute
   *
   * Requires contentId, attrName
   * Returns 
   */
  Future<OfResult> updateContentAttribute(ContentAttribute ent, ) =>
      client.invoke('updateContentAttribute', ent, {  });

  /**
   * Update a ContentKeyword - ContentKeyword
   *
   * Requires contentId, keyword
   * Returns 
   */
  Future<OfResult> updateContentKeyword(ContentKeyword ent, ) =>
      client.invoke('updateContentKeyword', ent, {  });

  /**
   * Update a ContentMetaData - ContentMetaData
   *
   * Requires contentId, metaDataPredicateId
   * Returns 
   */
  Future<OfResult> updateContentMetaData(ContentMetaData ent, ) =>
      client.invoke('updateContentMetaData', ent, {  });

  /**
   * Update a ContentOperation - ContentOperation
   *
   * Requires contentOperationId
   * Returns 
   */
  Future<OfResult> updateContentOperation(ContentOperation ent, ) =>
      client.invoke('updateContentOperation', ent, {  });

  /**
   * Update a ContentPurpose - ContentPurpose
   *
   * Requires contentId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateContentPurpose(ContentPurpose ent, ) =>
      client.invoke('updateContentPurpose', ent, {  });

  /**
   * Update a ContentPurposeOperation - ContentPurposeOperation
   *
   * Requires contentPurposeTypeId, contentOperationId, roleTypeId, statusId, privilegeEnumId
   * Returns 
   */
  Future<OfResult> updateContentPurposeOperation(ContentPurposeOperation ent, ) =>
      client.invoke('updateContentPurposeOperation', ent, {  });

  /**
   * Update a ContentRevision - ContentRevision
   *
   * Requires contentId, contentRevisionSeqId
   * Returns 
   */
  Future<OfResult> updateContentRevision(ContentRevision ent, ) =>
      client.invoke('updateContentRevision', ent, {  });

  /**
   * Update a ContentRevisionItem - ContentRevisionItem
   *
   * Requires contentId, contentRevisionSeqId, itemContentId
   * Returns 
   */
  Future<OfResult> updateContentRevisionItem(ContentRevisionItem ent, ) =>
      client.invoke('updateContentRevisionItem', ent, {  });

  /**
   * Update a ContentRole - ContentRole
   *
   * Requires contentId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateContentRole(ContentRole ent, ) =>
      client.invoke('updateContentRole', ent, {  });

  /**
   * Removes content purposes and creates a new one - ContentPurpose
   *
   * Requires contentId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateSingleContentPurpose(ContentPurpose ent, ) =>
      client.invoke('updateSingleContentPurpose', ent, {  });

  /**
   * Updates a Text Document DataResource and Content Records - 
   *
   * Requires dataResourceId
   * Returns dataResourceId[String], contentId[String], roleTypeList[List]
   */
  Future<OfResult> updateTextContent({String dataResourceTypeId, String dataTemplateTypeId, String dataCategoryId, String dataSourceId, String statusId, String dataResourceName, String localeString, String mimeTypeId, String characterSetId, String objectInfo, String surveyId, String surveyResponseId, String relatedDetailId, String isPublic, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String dataResourceId, String textData, String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String templateDataResourceId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, int childLeafCount, int childBranchCount, String contentPurposeTypeId, String contentIdFrom, List<dynamic> targetOperationList, String skipPermissionCheck, bool displayFailCond, List<dynamic> roleTypeList, String contentIdTo, String contentAssocTypeId, DateTime fromDate, DateTime thruDate, String contentAssocPredicateId, int sequenceNum, String mapKey, int upperCoordinate, int leftCoordinate}) =>
      client.invoke('updateTextContent', null, { 'dataResourceTypeId': dataResourceTypeId, 'dataTemplateTypeId': dataTemplateTypeId, 'dataCategoryId': dataCategoryId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'dataResourceName': dataResourceName, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'objectInfo': objectInfo, 'surveyId': surveyId, 'surveyResponseId': surveyResponseId, 'relatedDetailId': relatedDetailId, 'isPublic': isPublic, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'dataResourceId': dataResourceId, 'textData': textData, 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'templateDataResourceId': templateDataResourceId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'contentPurposeTypeId': contentPurposeTypeId, 'contentIdFrom': contentIdFrom, 'targetOperationList': targetOperationList, 'skipPermissionCheck': skipPermissionCheck, 'displayFailCond': displayFailCond, 'roleTypeList': roleTypeList, 'contentIdTo': contentIdTo, 'contentAssocTypeId': contentAssocTypeId, 'fromDate': fromDate, 'thruDate': thruDate, 'contentAssocPredicateId': contentAssocPredicateId, 'sequenceNum': sequenceNum, 'mapKey': mapKey, 'upperCoordinate': upperCoordinate, 'leftCoordinate': leftCoordinate });

}