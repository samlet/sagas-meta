import 'package:sagas_meta/src/models/content_content.dart';
import 'package:sagas_meta/src/models/content_data.dart';
import 'package:sagas_meta/src/models/content_preference.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServices{
  final SrvClient client;
  ContentServices(this.client);

  /**
   * Moves dataResource to separate content associated with current content so that node can have only children, no content of its own - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> changeLeafToNode({@required String contentId, Map<String,dynamic> userLogin}) =>
      client.invoke('changeLeafToNode', null, { 'contentId': contentId, 'userLogin': userLogin });

  /**
   * Check to see if there are any ContentApproval records awaiting this user's action - 
   *
   * Requires 
   * Returns contentApprovalList[List]
   */
  Future<OfResult> checkForWaitingApprovals({Map<String,dynamic> thisUserLogin}) =>
      client.invoke('checkForWaitingApprovals', null, { 'thisUserLogin': thisUserLogin });

  /**
   * Clear cache - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> clearContentAssocDataResourceViewCache() =>
      client.invoke('clearContentAssocDataResourceViewCache', null, {  });

  /**
   * Clear cache - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> clearContentAssocViewCache() =>
      client.invoke('clearContentAssocViewCache', null, {  });

  /**
   * Bump the previous ContentApproval approvals up to current CDI - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> cloneInstanceContentApprovals({String contentRevisionSeqId, @required String contentId}) =>
      client.invoke('cloneInstanceContentApprovals', null, { 'contentRevisionSeqId': contentRevisionSeqId, 'contentId': contentId });

  /**
   * Bump the previous ContentApproval approvals up to current CDT - 
   *
   * Requires contentRevisionSeqId, contentId
   * Returns 
   */
  Future<OfResult> cloneTemplateContentApprovals({@required String contentRevisionSeqId, @required String contentId}) =>
      client.invoke('cloneTemplateContentApprovals', null, { 'contentRevisionSeqId': contentRevisionSeqId, 'contentId': contentId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> contentManagerPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('contentManagerPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> contentManagerRolePermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('contentManagerRolePermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Create Content Alternative URL - 
   *
   * Requires 
   * Returns contentCreated[String]
   */
  Future<OfResult> createContentAlternativeUrl({String contentId}) =>
      client.invoke('createContentAlternativeUrl', null, { 'contentId': contentId });

  /**
   * Create a DataCategory - DataCategory
   *
   * Requires dataCategoryId
   * Returns dataCategoryId[String]
   */
  Future<OfResult> createDataCategory(DataCategory ent, ) =>
      client.invoke('createDataCategory', ent, {  });

  /**
   * Create a DataResourceAttribute - DataResourceAttribute
   *
   * Requires dataResourceId, attrName
   * Returns 
   */
  Future<OfResult> createDataResourceAttribute(DataResourceAttribute ent, ) =>
      client.invoke('createDataResourceAttribute', ent, {  });

  /**
   * Create a DataResourceRole - DataResourceRole
   *
   * Requires dataResourceId, partyId, roleTypeId
   * Returns fromDate[Timestamp]
   */
  Future<OfResult> createDataResourceRole(DataResourceRole ent, ) =>
      client.invoke('createDataResourceRole', ent, {  });

  /**
   *  - 
   *
   * Requires file
   * Returns contentId[String], contentId[String]
   */
  Future<OfResult> createDownloadContent({String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String file}) =>
      client.invoke('createDownloadContent', null, { 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'file': file });

  /**
   *  - 
   *
   * Requires subject, plainBody
   * Returns contentId[String], contentId[String]
   */
  Future<OfResult> createEmailContent({String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String subject, @required String plainBody, String htmlBody}) =>
      client.invoke('createEmailContent', null, { 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'subject': subject, 'plainBody': plainBody, 'htmlBody': htmlBody });

  /**
   *  - 
   *
   * Requires text
   * Returns contentId[String], contentId[String]
   */
  Future<OfResult> createSimpleTextContent({String contentId, String contentTypeId, String ownerContentId, String decoratorContentId, String instanceOfContentId, String dataResourceId, String templateDataResourceId, String dataSourceId, String statusId, String privilegeEnumId, String serviceName, String customMethodId, String contentName, String description, String localeString, String mimeTypeId, String characterSetId, int childLeafCount, int childBranchCount, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String text}) =>
      client.invoke('createSimpleTextContent', null, { 'contentId': contentId, 'contentTypeId': contentTypeId, 'ownerContentId': ownerContentId, 'decoratorContentId': decoratorContentId, 'instanceOfContentId': instanceOfContentId, 'dataResourceId': dataResourceId, 'templateDataResourceId': templateDataResourceId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'serviceName': serviceName, 'customMethodId': customMethodId, 'contentName': contentName, 'description': description, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'childLeafCount': childLeafCount, 'childBranchCount': childBranchCount, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'text': text });

  /**
   * Create a TOPIC type Content  - 
   *
   * Requires newTopicId
   * Returns 
   */
  Future<OfResult> createTopic({@required String newTopicId, String newTopicDescription}) =>
      client.invoke('createTopic', null, { 'newTopicId': newTopicId, 'newTopicDescription': newTopicDescription });

  /**
   * Create WebPreferenceType record - WebPreferenceType
   *
   * Requires 
   * Returns webPreferenceTypeId[String]
   */
  Future<OfResult> createWebPreferenceType(WebPreferenceType ent, ) =>
      client.invoke('createWebPreferenceType', ent, {  });

  /**
   * Supply thruDate to all ContentAssoc that come "before" current one - 
   *
   * Requires contentIdTo, contentAssocTypeId
   * Returns deactivatedList[List]
   */
  Future<OfResult> deactivateAssocs({@required String contentIdTo, String mapKey, String activeContentId, String contentId, @required String contentAssocTypeId, DateTime fromDate}) =>
      client.invoke('deactivateAssocs', null, { 'contentIdTo': contentIdTo, 'mapKey': mapKey, 'activeContentId': activeContentId, 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'fromDate': fromDate });

  /**
   * Set thruDate to now for ContentAssoc entity - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> deactivateContentAssoc({String contentIdTo, String contentId, String contentAssocTypeId, DateTime fromDate}) =>
      client.invoke('deactivateContentAssoc', null, { 'contentIdTo': contentIdTo, 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'fromDate': fromDate });

  /**
   * Set childLeafCount and childBranchCount in parent Content entities - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> decrementContentChildStats({@required String contentId, String contentAssocTypeId}) =>
      client.invoke('decrementContentChildStats', null, { 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId });

  /**
   * Delete ContentApproval record - WebPreferenceType
   *
   * Requires webPreferenceTypeId
   * Returns 
   */
  Future<OfResult> deleteWebPreferenceType(WebPreferenceType ent, ) =>
      client.invoke('deleteWebPreferenceType', ent, {  });

  /**
   *  - 
   *
   * Requires contentId, mapKeys
   * Returns contentAssocs[List]
   */
  Future<OfResult> findAssocContent({@required String contentId, @required List<dynamic> mapKeys}) =>
      client.invoke('findAssocContent', null, { 'contentId': contentId, 'mapKeys': mapKeys });

  /**
   *  - 
   *
   * Requires contentId, contentAssocTypeId
   * Returns parentList[List]
   */
  Future<OfResult> findContentParents({@required String contentId, @required String contentAssocTypeId, String direction}) =>
      client.invoke('findContentParents', null, { 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'direction': direction });

  /**
   * Get children of content - 
   *
   * Requires contentId
   * Returns _LIST_[List]
   */
  Future<OfResult> findSubNodes({@required String contentId}) =>
      client.invoke('findSubNodes', null, { 'contentId': contentId });

  /**
   * Descend thru content tree and execute service at each node - 
   *
   * Requires contentId, serviceName
   * Returns 
   */
  Future<OfResult> followNodeChildren({@required String contentId, @required String serviceName, String contentAssocTypeId}) =>
      client.invoke('followNodeChildren', null, { 'contentId': contentId, 'serviceName': serviceName, 'contentAssocTypeId': contentAssocTypeId });

  /**
   * Generate parallel CompDoc Instance tree - 
   *
   * Requires 
   * Returns contentId[String], contentRevisionSeqId[String]
   */
  Future<OfResult> genCompDocInstance({String contentName, String instanceOfContentId, String rootInstanceContentId}) =>
      client.invoke('genCompDocInstance', null, { 'contentName': contentName, 'instanceOfContentId': instanceOfContentId, 'rootInstanceContentId': rootInstanceContentId });

  /**
   * Blog RSS Feed - 
   *
   * Requires blogContentId, feedType, mainLink, entryLink
   * Returns wireFeed[com.sun.syndication.feed.WireFeed]
   */
  Future<OfResult> generateBlogRssFeed({@required String blogContentId, @required String feedType, @required String mainLink, @required String entryLink}) =>
      client.invoke('generateBlogRssFeed', null, { 'blogContentId': blogContentId, 'feedType': feedType, 'mainLink': mainLink, 'entryLink': entryLink });

  /**
   * Generic Content Permission Service; Takes mainAction to determine the mode. - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> genericContentPermission({String ownerContentId, String contentIdFrom, String contentIdTo, String contentId, String statusId, String contentPurposeTypeId, String contentOperationId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('genericContentPermission', null, { 'ownerContentId': ownerContentId, 'contentIdFrom': contentIdFrom, 'contentIdTo': contentIdTo, 'contentId': contentId, 'statusId': statusId, 'contentPurposeTypeId': contentPurposeTypeId, 'contentOperationId': contentOperationId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Generic DataResource Permission Service; Takes mainAction to determine the mode. - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> genericDataResourcePermission({String dataResourceId, String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('genericDataResourcePermission', null, { 'dataResourceId': dataResourceId, 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Get a list of ContentApprovals and permission indicators - 
   *
   * Requires rootContentId, contentRevisionSeqId, userLogin
   * Returns contentApprovalList[List]
   */
  Future<OfResult> getApprovalsWithPermissions({@required String rootContentId, @required String contentRevisionSeqId, @required Map<String,dynamic> userLogin, String checkPermission}) =>
      client.invoke('getApprovalsWithPermissions', null, { 'rootContentId': rootContentId, 'contentRevisionSeqId': contentRevisionSeqId, 'userLogin': userLogin, 'checkPermission': checkPermission });

  /**
   * Get a ContentAssocDataResourceView - ContentAssocDataResourceViewFrom
   *
   * Requires 
   * Returns ownerContentId[String], contentId[String], contentTypeId[String], description[String], mimeTypeId[String], childLeafCount[Long], privilegeEnumId[String], dataSourceId[String], lastModifiedByUserLogin[String], dataResourceId[String], createdByUserLogin[String], templateDataResourceId[String], lastModifiedDate[java.sql.Timestamp], instanceOfContentId[String], serviceName[String], customMethodId[String], characterSetId[String], contentName[String], createdDate[java.sql.Timestamp], statusId[String], localeString[String], decoratorContentId[String], childBranchCount[Long], caSequenceNum[Long], caLastModifiedDate[java.sql.Timestamp], caContentIdTo[String], caUpperCoordinate[Long], caLeftCoordinate[Long], caContentId[String], caMapKey[String], caThruDate[java.sql.Timestamp], caFromDate[java.sql.Timestamp], caContentAssocPredicateId[String], caDataSourceId[String], caLastModifiedByUserLogin[String], caCreatedDate[java.sql.Timestamp], caContentAssocTypeId[String], caCreatedByUserLogin[String], drDataResourceName[String], drSurveyId[String], drDataTemplateTypeId[String], drLastModifiedDate[java.sql.Timestamp], drMimeTypeId[String], drDataCategoryId[String], drSurveyResponseId[String], drCharacterSetId[String], drDataSourceId[String], drLastModifiedByUserLogin[String], drCreatedDate[java.sql.Timestamp], drStatusId[String], drLocaleString[String], drRelatedDetailId[String], drDataResourceId[String], drIsPublic[String], drObjectInfo[String], drDataResourceTypeId[String], drCreatedByUserLogin[String], entityList[List]
   */
  Future<OfResult> getAssocAndContentAndDataResource(ContentAssocDataResourceViewFrom ent, {List<dynamic> assocTypes, List<dynamic> contentTypes, String mapKey, String direction, String fromDateStr, String thruDateStr, DateTime fromDate, DateTime thruDate, bool nullThruDatesOnly}) =>
      client.invoke('getAssocAndContentAndDataResource', ent, { 'assocTypes': assocTypes, 'contentTypes': contentTypes, 'mapKey': mapKey, 'direction': direction, 'fromDateStr': fromDateStr, 'thruDateStr': thruDateStr, 'fromDate': fromDate, 'thruDate': thruDate, 'nullThruDatesOnly': nullThruDatesOnly });

  /**
   * Get a ContentAssocDataResourceView - ContentAssocDataResourceViewFrom
   *
   * Requires 
   * Returns ownerContentId[String], contentId[String], contentTypeId[String], description[String], mimeTypeId[String], childLeafCount[Long], privilegeEnumId[String], dataSourceId[String], lastModifiedByUserLogin[String], dataResourceId[String], createdByUserLogin[String], templateDataResourceId[String], lastModifiedDate[java.sql.Timestamp], instanceOfContentId[String], serviceName[String], customMethodId[String], characterSetId[String], contentName[String], createdDate[java.sql.Timestamp], statusId[String], localeString[String], decoratorContentId[String], childBranchCount[Long], caSequenceNum[Long], caLastModifiedDate[java.sql.Timestamp], caContentIdTo[String], caUpperCoordinate[Long], caLeftCoordinate[Long], caContentId[String], caMapKey[String], caThruDate[java.sql.Timestamp], caFromDate[java.sql.Timestamp], caContentAssocPredicateId[String], caDataSourceId[String], caLastModifiedByUserLogin[String], caCreatedDate[java.sql.Timestamp], caContentAssocTypeId[String], caCreatedByUserLogin[String], drDataResourceName[String], drSurveyId[String], drDataTemplateTypeId[String], drLastModifiedDate[java.sql.Timestamp], drMimeTypeId[String], drDataCategoryId[String], drSurveyResponseId[String], drCharacterSetId[String], drDataSourceId[String], drLastModifiedByUserLogin[String], drCreatedDate[java.sql.Timestamp], drStatusId[String], drLocaleString[String], drRelatedDetailId[String], drDataResourceId[String], drIsPublic[String], drObjectInfo[String], drDataResourceTypeId[String], drCreatedByUserLogin[String], entityList[List], view[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getAssocAndContentAndDataResourceCache(ContentAssocDataResourceViewFrom ent, {List<dynamic> assocTypes, String assocTypesString, List<dynamic> contentTypes, String contentTypesString, String mapKey, String direction, String fromDateStr, String thruDateStr, DateTime fromDate, DateTime thruDate, bool nullThruDatesOnly, String contentAssocPredicateId, String contentIdFrom}) =>
      client.invoke('getAssocAndContentAndDataResourceCache', ent, { 'assocTypes': assocTypes, 'assocTypesString': assocTypesString, 'contentTypes': contentTypes, 'contentTypesString': contentTypesString, 'mapKey': mapKey, 'direction': direction, 'fromDateStr': fromDateStr, 'thruDateStr': thruDateStr, 'fromDate': fromDate, 'thruDate': thruDate, 'nullThruDatesOnly': nullThruDatesOnly, 'contentAssocPredicateId': contentAssocPredicateId, 'contentIdFrom': contentIdFrom });

  /**
   * Retrieves content records for a blog entry - 
   *
   * Requires blogContentId
   * Returns blogContentId[String], contentId[String], contentName[String], statusId[String], description[String], templateDataResourceId[String], summaryData[String], articleData[String], imageContentId[String], articleContentId[String], summaryContentId[String]
   */
  Future<OfResult> getBlogEntry({@required String blogContentId, String contentId}) =>
      client.invoke('getBlogEntry', null, { 'blogContentId': blogContentId, 'contentId': contentId });

  /**
   * Get Content of passed contentId - 
   *
   * Requires 
   * Returns view[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getContent({String contentId}) =>
      client.invoke('getContent', null, { 'contentId': contentId });

  /**
   * Get Content and resource information - Content
   *
   * Requires contentId
   * Returns resultData[java.util.Map]
   */
  Future<OfResult> getContentAndDataResource(Content ent, ) =>
      client.invoke('getContentAndDataResource', ent, {  });

  /**
   * Get Content and resource information - DataResource
   *
   * Requires dataResourceId
   * Returns resultData[java.util.Map]
   */
  Future<OfResult> getDataResource(DataResource ent, ) =>
      client.invoke('getDataResource', ent, {  });

  /**
   * Set ContentApprovals for approval process - 
   *
   * Requires contentId
   * Returns contentRevisionSeqId[String], approvalStatusId[String], contentApprovalList[List]
   */
  Future<OfResult> getFinalApprovalStatus({@required String contentId, String contentRevisionSeqId}) =>
      client.invoke('getFinalApprovalStatus', null, { 'contentId': contentId, 'contentRevisionSeqId': contentRevisionSeqId });

  /**
   * Look for most recent revision for contentId - 
   *
   * Requires contentId
   * Returns mostRecentRevisionSeqId[String]
   */
  Future<OfResult> getMostRecentRevision({@required String contentId}) =>
      client.invoke('getMostRecentRevision', null, { 'contentId': contentId });

  /**
   *  - 
   *
   * Requires contentId, userLogin
   * Returns blogList[List]
   */
  Future<OfResult> getOwnedOrPublishedBlogEntries({@required String contentId, @required Map<String,dynamic> userLogin}) =>
      client.invoke('getOwnedOrPublishedBlogEntries', null, { 'contentId': contentId, 'userLogin': userLogin });

  /**
   * Gets all the members of the input map that start with the prefix - 
   *
   * Requires prefix
   * Returns mapOut[java.util.Map]
   */
  Future<OfResult> getPrefixedMembers({Map<String,dynamic> mapIn, @required String prefix}) =>
      client.invoke('getPrefixedMembers', null, { 'mapIn': mapIn, 'prefix': prefix });

  /**
   * Get Content and resource information - Content
   *
   * Requires contentId
   * Returns resultData[java.util.Map]
   */
  Future<OfResult> getPublicForumMessage(Content ent, ) =>
      client.invoke('getPublicForumMessage', ent, {  });

  /**
   * Get subContent of passed contentId/mapKey or subContentId - 
   *
   * Requires 
   * Returns view[org.apache.ofbiz.entity.GenericValue], content[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getSubContent({String mapKey, String contentId, String subContentId, List<dynamic> assocTypes, String assocTypesString, List<dynamic> contentTypes, DateTime fromDate}) =>
      client.invoke('getSubContent', null, { 'mapKey': mapKey, 'contentId': contentId, 'subContentId': subContentId, 'assocTypes': assocTypes, 'assocTypesString': assocTypesString, 'contentTypes': contentTypes, 'fromDate': fromDate });

  /**
   * Get Content and resource information - 
   *
   * Requires contentId
   * Returns subContentList[java.util.List]
   */
  Future<OfResult> getSubContentWithPermCheck({@required String contentId, String contentAssocTypeId, String mapKey, String mainAction, String contentOperationId, bool useCache, bool filterByDate}) =>
      client.invoke('getSubContentWithPermCheck', null, { 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'mapKey': mapKey, 'mainAction': mainAction, 'contentOperationId': contentOperationId, 'useCache': useCache, 'filterByDate': filterByDate });

  /**
   * Get Content associated with Content - 
   *
   * Requires contentId
   * Returns subSubContentList[java.util.List], subContentList[java.util.List]
   */
  Future<OfResult> getSubSubContentWithPermCheck({String subContentAssocTypeId, String subMapKey, @required String contentId, String contentAssocTypeId, String mapKey, String mainAction, String contentOperationId, bool useCache, bool filterByDate}) =>
      client.invoke('getSubSubContentWithPermCheck', null, { 'subContentAssocTypeId': subContentAssocTypeId, 'subMapKey': subMapKey, 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'mapKey': mapKey, 'mainAction': mainAction, 'contentOperationId': contentOperationId, 'useCache': useCache, 'filterByDate': filterByDate });

  /**
   * Determine permission status for record - 
   *
   * Requires contentApprovalId, userLogin
   * Returns approvalPermExists[String]
   */
  Future<OfResult> hasApprovalPermission({@required String contentApprovalId, @required Map<String,dynamic> userLogin}) =>
      client.invoke('hasApprovalPermission', null, { 'contentApprovalId': contentApprovalId, 'userLogin': userLogin });

  /**
   * Set childLeafCount and childBranchCount in parent Content entities - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> incrementContentChildStats({@required String contentId, String contentAssocTypeId}) =>
      client.invoke('incrementContentChildStats', null, { 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId });

  /**
   * Set childLeafCount and childBranchCount to appropriate values - 
   *
   * Requires content
   * Returns 
   */
  Future<OfResult> initContentChildCounts({@required Map<String,dynamic> content}) =>
      client.invoke('initContentChildCounts', null, { 'content': content });

  /**
   * Splits input string  - 
   *
   * Requires inputList
   * Returns outputString[String]
   */
  Future<OfResult> joinString({@required List<dynamic> inputList, String delimiter}) =>
      client.invoke('joinString', null, { 'inputList': inputList, 'delimiter': delimiter });

  /**
   * Attach content to publish point - 
   *
   * Requires contentId, contentIdTo
   * Returns 
   */
  Future<OfResult> linkContentToPubPt({@required String contentId, @required String contentIdTo, String publish, String statusId, String privilegeEnumId, String contentAssocTypeId, String mapKey}) =>
      client.invoke('linkContentToPubPt', null, { 'contentId': contentId, 'contentIdTo': contentIdTo, 'publish': publish, 'statusId': statusId, 'privilegeEnumId': privilegeEnumId, 'contentAssocTypeId': contentAssocTypeId, 'mapKey': mapKey });

  /**
   * Update a ContentRevision and ContentRevisionItem - 
   *
   * Requires 
   * Returns contentRevisionSeqId[String]
   */
  Future<OfResult> persistContentRevisionAndItem({String contentId, String committedByPartyId, String comments, String itemContentId, String oldDataResourceId, String newDataResourceId}) =>
      client.invoke('persistContentRevisionAndItem', null, { 'contentId': contentId, 'committedByPartyId': committedByPartyId, 'comments': comments, 'itemContentId': itemContentId, 'oldDataResourceId': oldDataResourceId, 'newDataResourceId': newDataResourceId });

  /**
   * Set ContentApprovals for approval process - 
   *
   * Requires rootContentId
   * Returns rootContentRevisionSeqId[String]
   */
  Future<OfResult> prepForApproval({@required String rootContentId}) =>
      client.invoke('prepForApproval', null, { 'rootContentId': rootContentId });

  /**
   * Change statusId to published (CTNT_PUBLISHED) - 
   *
   * Requires content
   * Returns 
   */
  Future<OfResult> publishContent({@required Map<String,dynamic> content}) =>
      client.invoke('publishContent', null, { 'content': content });

  /**
   * Remove DataCategory - DataCategory
   *
   * Requires dataCategoryId
   * Returns 
   */
  Future<OfResult> removeDataCategory(DataCategory ent, ) =>
      client.invoke('removeDataCategory', ent, {  });

  /**
   * Remove DataResourceAttribute - DataResourceAttribute
   *
   * Requires dataResourceId, attrName
   * Returns 
   */
  Future<OfResult> removeDataResourceAttribute(DataResourceAttribute ent, ) =>
      client.invoke('removeDataResourceAttribute', ent, {  });

  /**
   * Remove DataResourceRole - DataResourceRole
   *
   * Requires dataResourceId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeDataResourceRole(DataResourceRole ent, ) =>
      client.invoke('removeDataResourceRole', ent, {  });

  /**
   * Convert all the CompDoc parts into PDF and concatenate and put in CMS - 
   *
   * Requires contentId
   * Returns outByteBuffer[java.nio.ByteBuffer]
   */
  Future<OfResult> renderCompDocPdf({@required String contentId, String contentRevisionSeqId, String webSiteId, String https, String rootDir, String locale}) =>
      client.invoke('renderCompDocPdf', null, { 'contentId': contentId, 'contentRevisionSeqId': contentRevisionSeqId, 'webSiteId': webSiteId, 'https': https, 'rootDir': rootDir, 'locale': locale });

  /**
   * Convert all the CompDoc parts into PDF and concatenate and put in CMS - 
   *
   * Requires contentId
   * Returns outByteBuffer[java.nio.ByteBuffer]
   */
  Future<OfResult> renderContentPdf({@required String contentId, String contentRevisionSeqId, String webSiteId, String https, String rootDir, String locale}) =>
      client.invoke('renderContentPdf', null, { 'contentId': contentId, 'contentRevisionSeqId': contentRevisionSeqId, 'webSiteId': webSiteId, 'https': https, 'rootDir': rootDir, 'locale': locale });

  /**
   * Reorder sequence numbers in ContentAssoc entities for a given parent id - 
   *
   * Requires contentIdTo
   * Returns 
   */
  Future<OfResult> resequence({@required String contentIdTo, int seqInc, List<dynamic> typeList, String contentId, String contentAssocTypeId, String dir}) =>
      client.invoke('resequence', null, { 'contentIdTo': contentIdTo, 'seqInc': seqInc, 'typeList': typeList, 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId, 'dir': dir });

  /**
   * Set content and kids to OUTLINE_NODE - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> resetToOutlineMode({@required String contentId, String pageMode}) =>
      client.invoke('resetToOutlineMode', null, { 'contentId': contentId, 'pageMode': pageMode });

  /**
   * Splits input string  - 
   *
   * Requires 
   * Returns outputList[java.util.List]
   */
  Future<OfResult> splitString({String inputString, String delimiter}) =>
      client.invoke('splitString', null, { 'inputString': inputString, 'delimiter': delimiter });

  /**
   * Follow a content and return descendants - 
   *
   * Requires contentId
   * Returns pickList[List], nodeMap[Map]
   */
  Future<OfResult> traverseContent({@required String contentId, String fromDateStr, String thruDateStr, String followWhen, String pickWhen, String returnBeforePickWhen, String returnAfterPickWhen, String direction}) =>
      client.invoke('traverseContent', null, { 'contentId': contentId, 'fromDateStr': fromDateStr, 'thruDateStr': thruDateStr, 'followWhen': followWhen, 'pickWhen': pickWhen, 'returnBeforePickWhen': returnBeforePickWhen, 'returnAfterPickWhen': returnAfterPickWhen, 'direction': direction });

  /**
   * Set childLeafCount and childBranchCount in passed id and those below - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> updateContentChildStats({@required String contentId, String contentAssocTypeId}) =>
      client.invoke('updateContentChildStats', null, { 'contentId': contentId, 'contentAssocTypeId': contentAssocTypeId });

  /**
   * Creates or updates ContentRole - 
   *
   * Requires partyId, useTimeUomId, useTime
   * Returns 
   */
  Future<OfResult> updateContentSubscription({@required String partyId, String contentId, String useRoleTypeId, @required String useTimeUomId, @required int useTime}) =>
      client.invoke('updateContentSubscription', null, { 'partyId': partyId, 'contentId': contentId, 'useRoleTypeId': useRoleTypeId, 'useTimeUomId': useTimeUomId, 'useTime': useTime });

  /**
   * Creates or updates ContentRole - 
   *
   * Requires orderId
   * Returns 
   */
  Future<OfResult> updateContentSubscriptionByOrder({@required String orderId}) =>
      client.invoke('updateContentSubscriptionByOrder', null, { 'orderId': orderId });

  /**
   * Creates or updates ContentRole - 
   *
   * Requires partyId, productId, quantity
   * Returns 
   */
  Future<OfResult> updateContentSubscriptionByProduct({@required String partyId, @required String productId, DateTime orderCreatedDate, @required int quantity}) =>
      client.invoke('updateContentSubscriptionByProduct', null, { 'partyId': partyId, 'productId': productId, 'orderCreatedDate': orderCreatedDate, 'quantity': quantity });

  /**
   * Update a DataCategory - DataCategory
   *
   * Requires dataCategoryId
   * Returns 
   */
  Future<OfResult> updateDataCategory(DataCategory ent, ) =>
      client.invoke('updateDataCategory', ent, {  });

  /**
   * Update a DataResourceAttribute - DataResourceAttribute
   *
   * Requires dataResourceId, attrName
   * Returns 
   */
  Future<OfResult> updateDataResourceAttribute(DataResourceAttribute ent, ) =>
      client.invoke('updateDataResourceAttribute', ent, {  });

  /**
   * Update a DataResourceRole - DataResourceRole
   *
   * Requires dataResourceId, partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateDataResourceRole(DataResourceRole ent, ) =>
      client.invoke('updateDataResourceRole', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateDownloadContent({String fileDataResourceId, String file}) =>
      client.invoke('updateDownloadContent', null, { 'fileDataResourceId': fileDataResourceId, 'file': file });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateEmailContent({String subjectDataResourceId, String subject, String plainBodyDataResourceId, String plainBody, String htmlBodyDataResourceId, String htmlBody}) =>
      client.invoke('updateEmailContent', null, { 'subjectDataResourceId': subjectDataResourceId, 'subject': subject, 'plainBodyDataResourceId': plainBodyDataResourceId, 'plainBody': plainBody, 'htmlBodyDataResourceId': htmlBodyDataResourceId, 'htmlBody': htmlBody });

  /**
   * Update or remove a child entity based on value of "action" - 
   *
   * Requires entityName, pkFieldCount
   * Returns 
   */
  Future<OfResult> updateOrRemove({@required String entityName, String action, @required String pkFieldCount, String fieldName0, String fieldValue1, String fieldName2, String fieldValue2, String fieldName3, String fieldValue3, String fieldName1, String fieldValue0}) =>
      client.invoke('updateOrRemove', null, { 'entityName': entityName, 'action': action, 'pkFieldCount': pkFieldCount, 'fieldName0': fieldName0, 'fieldValue1': fieldValue1, 'fieldName2': fieldName2, 'fieldValue2': fieldValue2, 'fieldName3': fieldName3, 'fieldValue3': fieldValue3, 'fieldName1': fieldName1, 'fieldValue0': fieldValue0 });

  /**
   * Change contentTypeId to OUTLINE/PAGE/SUBPAGE_NODE - 
   *
   * Requires contentId
   * Returns 
   */
  Future<OfResult> updatePageType({@required String contentId, String pageMode}) =>
      client.invoke('updatePageType', null, { 'contentId': contentId, 'pageMode': pageMode });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateSimpleTextContent({String textDataResourceId, String text}) =>
      client.invoke('updateSimpleTextContent', null, { 'textDataResourceId': textDataResourceId, 'text': text });

  /**
   * Update site roles - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateSiteRoles({String partyId, String contentId, String blogUser, String blogAuthor, String blogEditor, String blogAdmin, String blogPublisher, DateTime blogUserFromDate, DateTime blogAuthorFromDate, DateTime blogEditorFromDate, DateTime blogAdminFromDate, DateTime blogPublisherFromDate}) =>
      client.invoke('updateSiteRoles', null, { 'partyId': partyId, 'contentId': contentId, 'blogUser': blogUser, 'blogAuthor': blogAuthor, 'blogEditor': blogEditor, 'blogAdmin': blogAdmin, 'blogPublisher': blogPublisher, 'blogUserFromDate': blogUserFromDate, 'blogAuthorFromDate': blogAuthorFromDate, 'blogEditorFromDate': blogEditorFromDate, 'blogAdminFromDate': blogAdminFromDate, 'blogPublisherFromDate': blogPublisherFromDate });

  /**
   * Update site roles - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateSiteRolesDyn({String partyId, String contentId}) =>
      client.invoke('updateSiteRolesDyn', null, { 'partyId': partyId, 'contentId': contentId });

  /**
   * Update WebPreferenceType record - WebPreferenceType
   *
   * Requires webPreferenceTypeId
   * Returns 
   */
  Future<OfResult> updateWebPreferenceType(WebPreferenceType ent, ) =>
      client.invoke('updateWebPreferenceType', ent, {  });

  /**
   * URL encodes map - 
   *
   * Requires mapIn
   * Returns outputString[String]
   */
  Future<OfResult> urlEncodeArgs({@required Map<String,dynamic> mapIn}) =>
      client.invoke('urlEncodeArgs', null, { 'mapIn': mapIn });

}