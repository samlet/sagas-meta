import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Content, Content
class Content extends EntityBase {

  /// this entity has only one pk
  final String ownerContentId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String dataResourceId;
  final String createdByUserLogin;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String decoratorContentId;
  final int childBranchCount;
  Content({entityId,
    this.ownerContentId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.dataResourceId, this.createdByUserLogin, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.statusId, this.localeString, this.decoratorContentId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Content { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerContentId':ownerContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'childBranchCount':childBranchCount};
  }

}

/// Entity ContentAndRole, Content And Role View
class ContentAndRole extends EntityBase {

  final String ownerContentId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String dataResourceId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String roleTypeId; // pk
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String decoratorContentId;
  final int childBranchCount;
  ContentAndRole({entityId,
    this.ownerContentId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.dataResourceId, @required this.partyId, this.createdByUserLogin, @required this.roleTypeId, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.thruDate, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.decoratorContentId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ownerContentId':ownerContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataResourceId':dataResourceId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'roleTypeId':roleTypeId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'thruDate':thruDate, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'childBranchCount':childBranchCount};
  }

}

/// Entity ContentApproval, Content Approval
class ContentApproval extends EntityBase {

  /// this entity has only one pk
  final String contentApprovalId; // pk
  final String roleTypeId;
  final DateTime approvalDate;
  final String comments;
  final int sequenceNum;
  final String contentId;
  final String contentRevisionSeqId;
  final String approvalStatusId;
  final String partyId;
  ContentApproval({entityId,
    @required this.contentApprovalId, this.roleTypeId, this.approvalDate, this.comments, this.sequenceNum, this.contentId, this.contentRevisionSeqId, this.approvalStatusId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentApproval { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentApprovalId':contentApprovalId, 'roleTypeId':roleTypeId, 'approvalDate':approvalDate, 'comments':comments, 'sequenceNum':sequenceNum, 'contentId':contentId, 'contentRevisionSeqId':contentRevisionSeqId, 'approvalStatusId':approvalStatusId, 'partyId':partyId};
  }

}

/// Entity ContentApprovalProductContentAndInfo, ContentApproval, ProductContent, Content and DataResource View Entity
class ContentApprovalProductContentAndInfo extends EntityBase {

  final String contentApprovalId; // pk
  final String useTimeUomId;
  final int sequenceNum;
  final String ownerContentId;
  final String mimeTypeId;
  final String drRelatedDetailId;
  final String drIsPublic;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String partyId;
  final String createdByUserLogin;
  final String productId; // pk
  final String drObjectInfo;
  final String instanceOfContentId;
  final String contentRevisionSeqId;
  final int useCountLimit;
  final String approvalStatusId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final DateTime drCreatedDate;
  final String statusId;
  final String drDataResourceName;
  final String drMimeTypeId;
  final int childBranchCount;
  final DateTime approvalDate;
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String drStatusId;
  final String contentId;
  final String contentTypeId;
  final String description;
  final int childLeafCount;
  final String drDataCategoryId;
  final String drDataResourceTypeId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String useRoleTypeId;
  final String drSurveyId;
  final int useTime;
  final String roleTypeId;
  final DateTime purchaseFromDate;
  final String comments;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String serviceName;
  final String productContentTypeId; // pk
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataSourceId;
  final String decoratorContentId;
  final DateTime purchaseThruDate;
  final String drLocaleString;
  ContentApprovalProductContentAndInfo({entityId,
    @required this.contentApprovalId, this.useTimeUomId, this.sequenceNum, this.ownerContentId, this.mimeTypeId, this.drRelatedDetailId, this.drIsPublic, this.drCreatedByUserLogin, this.privilegeEnumId, this.drDataTemplateTypeId, this.dataResourceId, this.partyId, this.createdByUserLogin, @required this.productId, this.drObjectInfo, this.instanceOfContentId, this.contentRevisionSeqId, this.useCountLimit, this.approvalStatusId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.thruDate, @required this.fromDate, this.drCreatedDate, this.statusId, this.drDataResourceName, this.drMimeTypeId, this.childBranchCount, this.approvalDate, @required this.drDataResourceId, this.drSurveyResponseId, this.drStatusId, this.contentId, this.contentTypeId, this.description, this.childLeafCount, this.drDataCategoryId, this.drDataResourceTypeId, this.dataSourceId, this.lastModifiedByUserLogin, this.useRoleTypeId, this.drSurveyId, this.useTime, this.roleTypeId, this.purchaseFromDate, this.comments, this.templateDataResourceId, this.lastModifiedDate, this.serviceName, @required this.productContentTypeId, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.localeString, this.drLastModifiedDate, this.drDataSourceId, this.decoratorContentId, this.purchaseThruDate, this.drLocaleString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentApprovalProductContentAndInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentApprovalId':contentApprovalId, 'useTimeUomId':useTimeUomId, 'sequenceNum':sequenceNum, 'ownerContentId':ownerContentId, 'mimeTypeId':mimeTypeId, 'drRelatedDetailId':drRelatedDetailId, 'drIsPublic':drIsPublic, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'productId':productId, 'drObjectInfo':drObjectInfo, 'instanceOfContentId':instanceOfContentId, 'contentRevisionSeqId':contentRevisionSeqId, 'useCountLimit':useCountLimit, 'approvalStatusId':approvalStatusId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'thruDate':thruDate, 'fromDate':fromDate, 'drCreatedDate':drCreatedDate, 'statusId':statusId, 'drDataResourceName':drDataResourceName, 'drMimeTypeId':drMimeTypeId, 'childBranchCount':childBranchCount, 'approvalDate':approvalDate, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'childLeafCount':childLeafCount, 'drDataCategoryId':drDataCategoryId, 'drDataResourceTypeId':drDataResourceTypeId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'useRoleTypeId':useRoleTypeId, 'drSurveyId':drSurveyId, 'useTime':useTime, 'roleTypeId':roleTypeId, 'purchaseFromDate':purchaseFromDate, 'comments':comments, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'serviceName':serviceName, 'productContentTypeId':productContentTypeId, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'purchaseThruDate':purchaseThruDate, 'drLocaleString':drLocaleString};
  }

}

/// Entity ContentAssoc, Content Association
class ContentAssoc extends EntityBase {

  final int sequenceNum;
  final DateTime lastModifiedDate;
  final String contentIdTo; // pk
  final int upperCoordinate;
  final int leftCoordinate;
  final String contentId; // pk
  final String mapKey;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String contentAssocPredicateId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String contentAssocTypeId; // pk
  final String createdByUserLogin;
  ContentAssoc({entityId,
    this.sequenceNum, this.lastModifiedDate, @required this.contentIdTo, this.upperCoordinate, this.leftCoordinate, @required this.contentId, this.mapKey, this.thruDate, @required this.fromDate, this.contentAssocPredicateId, this.dataSourceId, this.lastModifiedByUserLogin, this.createdDate, @required this.contentAssocTypeId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'lastModifiedDate':lastModifiedDate, 'contentIdTo':contentIdTo, 'upperCoordinate':upperCoordinate, 'leftCoordinate':leftCoordinate, 'contentId':contentId, 'mapKey':mapKey, 'thruDate':thruDate, 'fromDate':fromDate, 'contentAssocPredicateId':contentAssocPredicateId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'contentAssocTypeId':contentAssocTypeId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity ContentAssocDataResourceViewFrom, Main Assoc From and DataResource View
class ContentAssocDataResourceViewFrom extends EntityBase {

  final DateTime caFromDate; // pk
  final String ownerContentId;
  final String mimeTypeId;
  final String drRelatedDetailId;
  final String drIsPublic;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String createdByUserLogin;
  final String caMapKey;
  final int caSequenceNum;
  final String caContentAssocTypeId; // pk
  final String drObjectInfo;
  final String instanceOfContentId;
  final String caLastModifiedByUserLogin;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime drCreatedDate;
  final String statusId;
  final String caDataSourceId;
  final String drDataResourceName;
  final String caCreatedByUserLogin;
  final String drMimeTypeId;
  final int caUpperCoordinate;
  final int childBranchCount;
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String caContentId; // pk
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String contentIdStart; // pk
  final String description;
  final int childLeafCount;
  final String caContentAssocPredicateId;
  final String drDataCategoryId;
  final String drDataResourceTypeId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime caCreatedDate;
  final String drSurveyId;
  final DateTime caThruDate;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final DateTime drLastModifiedDate;
  final int caLeftCoordinate;
  final String drDataSourceId;
  final String decoratorContentId;
  final String caContentIdTo; // pk
  final String drLocaleString;
  final DateTime caLastModifiedDate;
  ContentAssocDataResourceViewFrom({entityId,
    @required this.caFromDate, this.ownerContentId, this.mimeTypeId, this.drRelatedDetailId, this.drIsPublic, this.drCreatedByUserLogin, this.privilegeEnumId, this.drDataTemplateTypeId, this.dataResourceId, this.createdByUserLogin, this.caMapKey, this.caSequenceNum, @required this.caContentAssocTypeId, this.drObjectInfo, this.instanceOfContentId, this.caLastModifiedByUserLogin, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.drCreatedDate, this.statusId, this.caDataSourceId, this.drDataResourceName, this.caCreatedByUserLogin, this.drMimeTypeId, this.caUpperCoordinate, this.childBranchCount, @required this.drDataResourceId, this.drSurveyResponseId, @required this.caContentId, this.drStatusId, @required this.contentId, this.contentTypeId, @required this.contentIdStart, this.description, this.childLeafCount, this.caContentAssocPredicateId, this.drDataCategoryId, this.drDataResourceTypeId, this.dataSourceId, this.lastModifiedByUserLogin, this.caCreatedDate, this.drSurveyId, this.caThruDate, this.templateDataResourceId, this.lastModifiedDate, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.localeString, this.drLastModifiedDate, this.caLeftCoordinate, this.drDataSourceId, this.decoratorContentId, @required this.caContentIdTo, this.drLocaleString, this.caLastModifiedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocDataResourceViewFrom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'caFromDate':caFromDate, 'ownerContentId':ownerContentId, 'mimeTypeId':mimeTypeId, 'drRelatedDetailId':drRelatedDetailId, 'drIsPublic':drIsPublic, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'caMapKey':caMapKey, 'caSequenceNum':caSequenceNum, 'caContentAssocTypeId':caContentAssocTypeId, 'drObjectInfo':drObjectInfo, 'instanceOfContentId':instanceOfContentId, 'caLastModifiedByUserLogin':caLastModifiedByUserLogin, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'drCreatedDate':drCreatedDate, 'statusId':statusId, 'caDataSourceId':caDataSourceId, 'drDataResourceName':drDataResourceName, 'caCreatedByUserLogin':caCreatedByUserLogin, 'drMimeTypeId':drMimeTypeId, 'caUpperCoordinate':caUpperCoordinate, 'childBranchCount':childBranchCount, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'caContentId':caContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentIdStart':contentIdStart, 'description':description, 'childLeafCount':childLeafCount, 'caContentAssocPredicateId':caContentAssocPredicateId, 'drDataCategoryId':drDataCategoryId, 'drDataResourceTypeId':drDataResourceTypeId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'caCreatedDate':caCreatedDate, 'drSurveyId':drSurveyId, 'caThruDate':caThruDate, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'caLeftCoordinate':caLeftCoordinate, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'caContentIdTo':caContentIdTo, 'drLocaleString':drLocaleString, 'caLastModifiedDate':caLastModifiedDate};
  }

}

/// Entity ContentAssocDataResourceViewTo, Main Assoc To and DataResource View
class ContentAssocDataResourceViewTo extends EntityBase {

  final DateTime caFromDate; // pk
  final String ownerContentId;
  final String mimeTypeId;
  final String drRelatedDetailId;
  final String drIsPublic;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String createdByUserLogin;
  final String caMapKey;
  final int caSequenceNum;
  final String caContentAssocTypeId; // pk
  final String drObjectInfo;
  final String caLastModifiedByUserLogin;
  final String instanceOfContentId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final DateTime drCreatedDate;
  final String statusId;
  final String caDataSourceId;
  final String drDataResourceName;
  final String caCreatedByUserLogin;
  final String drMimeTypeId;
  final int caUpperCoordinate;
  final int childBranchCount;
  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String caContentId; // pk
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String contentIdStart; // pk
  final String description;
  final int childLeafCount;
  final String caContentAssocPredicateId;
  final String drDataCategoryId;
  final String drDataResourceTypeId;
  final DateTime caCreatedDate;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drSurveyId;
  final DateTime caThruDate;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String localeString;
  final DateTime drLastModifiedDate;
  final int caLeftCoordinate;
  final String drDataSourceId;
  final String decoratorContentId;
  final String caContentIdTo; // pk
  final String drLocaleString;
  final DateTime caLastModifiedDate;
  ContentAssocDataResourceViewTo({entityId,
    @required this.caFromDate, this.ownerContentId, this.mimeTypeId, this.drRelatedDetailId, this.drIsPublic, this.drCreatedByUserLogin, this.privilegeEnumId, this.drDataTemplateTypeId, this.dataResourceId, this.createdByUserLogin, this.caMapKey, this.caSequenceNum, @required this.caContentAssocTypeId, this.drObjectInfo, this.caLastModifiedByUserLogin, this.instanceOfContentId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.drCreatedDate, this.statusId, this.caDataSourceId, this.drDataResourceName, this.caCreatedByUserLogin, this.drMimeTypeId, this.caUpperCoordinate, this.childBranchCount, @required this.drDataResourceId, this.drSurveyResponseId, @required this.caContentId, this.drStatusId, @required this.contentId, this.contentTypeId, @required this.contentIdStart, this.description, this.childLeafCount, this.caContentAssocPredicateId, this.drDataCategoryId, this.drDataResourceTypeId, this.caCreatedDate, this.dataSourceId, this.lastModifiedByUserLogin, this.drSurveyId, this.caThruDate, this.templateDataResourceId, this.lastModifiedDate, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.localeString, this.drLastModifiedDate, this.caLeftCoordinate, this.drDataSourceId, this.decoratorContentId, @required this.caContentIdTo, this.drLocaleString, this.caLastModifiedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocDataResourceViewTo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'caFromDate':caFromDate, 'ownerContentId':ownerContentId, 'mimeTypeId':mimeTypeId, 'drRelatedDetailId':drRelatedDetailId, 'drIsPublic':drIsPublic, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'createdByUserLogin':createdByUserLogin, 'caMapKey':caMapKey, 'caSequenceNum':caSequenceNum, 'caContentAssocTypeId':caContentAssocTypeId, 'drObjectInfo':drObjectInfo, 'caLastModifiedByUserLogin':caLastModifiedByUserLogin, 'instanceOfContentId':instanceOfContentId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'drCreatedDate':drCreatedDate, 'statusId':statusId, 'caDataSourceId':caDataSourceId, 'drDataResourceName':drDataResourceName, 'caCreatedByUserLogin':caCreatedByUserLogin, 'drMimeTypeId':drMimeTypeId, 'caUpperCoordinate':caUpperCoordinate, 'childBranchCount':childBranchCount, 'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'caContentId':caContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentIdStart':contentIdStart, 'description':description, 'childLeafCount':childLeafCount, 'caContentAssocPredicateId':caContentAssocPredicateId, 'drDataCategoryId':drDataCategoryId, 'drDataResourceTypeId':drDataResourceTypeId, 'caCreatedDate':caCreatedDate, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drSurveyId':drSurveyId, 'caThruDate':caThruDate, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'caLeftCoordinate':caLeftCoordinate, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'caContentIdTo':caContentIdTo, 'drLocaleString':drLocaleString, 'caLastModifiedDate':caLastModifiedDate};
  }

}

/// Entity ContentAssocOptViewFrom, Main Assoc To
class ContentAssocOptViewFrom extends EntityBase {

  final DateTime caFromDate; // pk
  final String ownerContentId;
  final String caContentId; // pk
  final String contentId; // pk
  final String contentTypeId;
  final String contentIdStart; // pk
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String caContentAssocPredicateId;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime caCreatedDate;
  final String dataResourceId;
  final DateTime caThruDate;
  final String createdByUserLogin;
  final String caMapKey;
  final int caSequenceNum;
  final String caContentAssocTypeId; // pk
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String caLastModifiedByUserLogin;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String contentName;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final int caLeftCoordinate;
  final String caDataSourceId;
  final String caCreatedByUserLogin;
  final String decoratorContentId;
  final int caUpperCoordinate;
  final String caContentIdTo; // pk
  final int childBranchCount;
  final DateTime caLastModifiedDate;
  ContentAssocOptViewFrom({entityId,
    @required this.caFromDate, this.ownerContentId, @required this.caContentId, @required this.contentId, this.contentTypeId, @required this.contentIdStart, this.description, this.mimeTypeId, this.childLeafCount, this.caContentAssocPredicateId, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.caCreatedDate, this.dataResourceId, this.caThruDate, this.createdByUserLogin, this.caMapKey, this.caSequenceNum, @required this.caContentAssocTypeId, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.caLastModifiedByUserLogin, this.serviceName, this.customMethodId, this.characterSetId, this.contentName, this.createdDate, this.statusId, this.localeString, this.caLeftCoordinate, this.caDataSourceId, this.caCreatedByUserLogin, this.decoratorContentId, this.caUpperCoordinate, @required this.caContentIdTo, this.childBranchCount, this.caLastModifiedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocOptViewFrom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'caFromDate':caFromDate, 'ownerContentId':ownerContentId, 'caContentId':caContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentIdStart':contentIdStart, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'caContentAssocPredicateId':caContentAssocPredicateId, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'caCreatedDate':caCreatedDate, 'dataResourceId':dataResourceId, 'caThruDate':caThruDate, 'createdByUserLogin':createdByUserLogin, 'caMapKey':caMapKey, 'caSequenceNum':caSequenceNum, 'caContentAssocTypeId':caContentAssocTypeId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'caLastModifiedByUserLogin':caLastModifiedByUserLogin, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'contentName':contentName, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'caLeftCoordinate':caLeftCoordinate, 'caDataSourceId':caDataSourceId, 'caCreatedByUserLogin':caCreatedByUserLogin, 'decoratorContentId':decoratorContentId, 'caUpperCoordinate':caUpperCoordinate, 'caContentIdTo':caContentIdTo, 'childBranchCount':childBranchCount, 'caLastModifiedDate':caLastModifiedDate};
  }

}

/// Entity ContentAssocPredicate, Content Association Predicate
class ContentAssocPredicate extends EntityBase {

  /// this entity has only one pk
  final String contentAssocPredicateId; // pk
  final String description;
  ContentAssocPredicate({entityId,
    @required this.contentAssocPredicateId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocPredicate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentAssocPredicateId':contentAssocPredicateId, 'description':description};
  }

}

/// Entity ContentAssocType, Content Association Type
class ContentAssocType extends EntityBase {

  /// this entity has only one pk
  final String contentAssocTypeId; // pk
  final String description;
  ContentAssocType({entityId,
    @required this.contentAssocTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentAssocTypeId':contentAssocTypeId, 'description':description};
  }

}

/// Entity ContentAssocViewFrom, Main Assoc From View
class ContentAssocViewFrom extends EntityBase {

  final DateTime caFromDate; // pk
  final String ownerContentId;
  final String caContentId; // pk
  final String contentId; // pk
  final String contentTypeId;
  final String contentIdStart; // pk
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String caContentAssocPredicateId;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime caCreatedDate;
  final String dataResourceId;
  final DateTime caThruDate;
  final String createdByUserLogin;
  final String caMapKey;
  final int caSequenceNum;
  final String caContentAssocTypeId; // pk
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String caLastModifiedByUserLogin;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final int caLeftCoordinate;
  final String caDataSourceId;
  final String caCreatedByUserLogin;
  final String decoratorContentId;
  final int caUpperCoordinate;
  final String caContentIdTo; // pk
  final int childBranchCount;
  final DateTime caLastModifiedDate;
  ContentAssocViewFrom({entityId,
    @required this.caFromDate, this.ownerContentId, @required this.caContentId, @required this.contentId, this.contentTypeId, @required this.contentIdStart, this.description, this.mimeTypeId, this.childLeafCount, this.caContentAssocPredicateId, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.caCreatedDate, this.dataResourceId, this.caThruDate, this.createdByUserLogin, this.caMapKey, this.caSequenceNum, @required this.caContentAssocTypeId, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.caLastModifiedByUserLogin, this.serviceName, this.customMethodId, this.characterSetId, this.thruDate, this.contentName, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.caLeftCoordinate, this.caDataSourceId, this.caCreatedByUserLogin, this.decoratorContentId, this.caUpperCoordinate, @required this.caContentIdTo, this.childBranchCount, this.caLastModifiedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocViewFrom { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'caFromDate':caFromDate, 'ownerContentId':ownerContentId, 'caContentId':caContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentIdStart':contentIdStart, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'caContentAssocPredicateId':caContentAssocPredicateId, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'caCreatedDate':caCreatedDate, 'dataResourceId':dataResourceId, 'caThruDate':caThruDate, 'createdByUserLogin':createdByUserLogin, 'caMapKey':caMapKey, 'caSequenceNum':caSequenceNum, 'caContentAssocTypeId':caContentAssocTypeId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'caLastModifiedByUserLogin':caLastModifiedByUserLogin, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'caLeftCoordinate':caLeftCoordinate, 'caDataSourceId':caDataSourceId, 'caCreatedByUserLogin':caCreatedByUserLogin, 'decoratorContentId':decoratorContentId, 'caUpperCoordinate':caUpperCoordinate, 'caContentIdTo':caContentIdTo, 'childBranchCount':childBranchCount, 'caLastModifiedDate':caLastModifiedDate};
  }

}

/// Entity ContentAssocViewTo, Main Assoc To View
class ContentAssocViewTo extends EntityBase {

  final DateTime caFromDate; // pk
  final String ownerContentId;
  final String caContentId; // pk
  final String contentId; // pk
  final String contentTypeId;
  final String contentIdStart; // pk
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String caContentAssocPredicateId;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime caCreatedDate;
  final String dataResourceId;
  final DateTime caThruDate;
  final String createdByUserLogin;
  final String caMapKey;
  final int caSequenceNum;
  final String caContentAssocTypeId; // pk
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String caLastModifiedByUserLogin;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final int caLeftCoordinate;
  final String caDataSourceId;
  final String caCreatedByUserLogin;
  final String decoratorContentId;
  final int caUpperCoordinate;
  final String caContentIdTo; // pk
  final int childBranchCount;
  final DateTime caLastModifiedDate;
  ContentAssocViewTo({entityId,
    @required this.caFromDate, this.ownerContentId, @required this.caContentId, @required this.contentId, this.contentTypeId, @required this.contentIdStart, this.description, this.mimeTypeId, this.childLeafCount, this.caContentAssocPredicateId, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.caCreatedDate, this.dataResourceId, this.caThruDate, this.createdByUserLogin, this.caMapKey, this.caSequenceNum, @required this.caContentAssocTypeId, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.caLastModifiedByUserLogin, this.serviceName, this.customMethodId, this.characterSetId, this.thruDate, this.contentName, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.caLeftCoordinate, this.caDataSourceId, this.caCreatedByUserLogin, this.decoratorContentId, this.caUpperCoordinate, @required this.caContentIdTo, this.childBranchCount, this.caLastModifiedDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocViewTo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'caFromDate':caFromDate, 'ownerContentId':ownerContentId, 'caContentId':caContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'contentIdStart':contentIdStart, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'caContentAssocPredicateId':caContentAssocPredicateId, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'caCreatedDate':caCreatedDate, 'dataResourceId':dataResourceId, 'caThruDate':caThruDate, 'createdByUserLogin':createdByUserLogin, 'caMapKey':caMapKey, 'caSequenceNum':caSequenceNum, 'caContentAssocTypeId':caContentAssocTypeId, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'caLastModifiedByUserLogin':caLastModifiedByUserLogin, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'caLeftCoordinate':caLeftCoordinate, 'caDataSourceId':caDataSourceId, 'caCreatedByUserLogin':caCreatedByUserLogin, 'decoratorContentId':decoratorContentId, 'caUpperCoordinate':caUpperCoordinate, 'caContentIdTo':caContentIdTo, 'childBranchCount':childBranchCount, 'caLastModifiedDate':caLastModifiedDate};
  }

}

/// Entity ContentAttribute, Content Attribute
class ContentAttribute extends EntityBase {

  final String attrDescription;
  final String contentId; // pk
  final String attrValue;
  final String attrName; // pk
  ContentAttribute({entityId,
    this.attrDescription, @required this.contentId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'contentId':contentId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity ContentDataResourceView, Content and DataResource View
class ContentDataResourceView extends EntityBase {

  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final String contentName;
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  ContentDataResourceView({entityId,
    @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.contentName, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentDataResourceView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'contentName':contentName, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}

/// Entity ContentKeyword, Content Keyword
class ContentKeyword extends EntityBase {

  final int relevancyWeight;
  final String contentId; // pk
  final String keyword; // pk
  ContentKeyword({entityId,
    this.relevancyWeight, @required this.contentId, @required this.keyword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentKeyword { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'relevancyWeight':relevancyWeight, 'contentId':contentId, 'keyword':keyword};
  }

}

/// Entity ContentMetaData, Content Meta-Data Predicate
class ContentMetaData extends EntityBase {

  final String dataSourceId;
  final String metaDataValue;
  final String metaDataPredicateId; // pk
  final String contentId; // pk
  ContentMetaData({entityId,
    this.dataSourceId, this.metaDataValue, @required this.metaDataPredicateId, @required this.contentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentMetaData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataSourceId':dataSourceId, 'metaDataValue':metaDataValue, 'metaDataPredicateId':metaDataPredicateId, 'contentId':contentId};
  }

}

/// Entity ContentOperation, Content Operation
class ContentOperation extends EntityBase {

  /// this entity has only one pk
  final String contentOperationId; // pk
  final String description;
  ContentOperation({entityId,
    @required this.contentOperationId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentOperation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentOperationId':contentOperationId, 'description':description};
  }

}

/// Entity ContentPurpose, Content Purpose
class ContentPurpose extends EntityBase {

  final String contentPurposeTypeId; // pk
  final int sequenceNum;
  final String contentId; // pk
  ContentPurpose({entityId,
    @required this.contentPurposeTypeId, this.sequenceNum, @required this.contentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentPurposeTypeId':contentPurposeTypeId, 'sequenceNum':sequenceNum, 'contentId':contentId};
  }

}

/// Entity ContentPurposeOperation, Content Purpose
class ContentPurposeOperation extends EntityBase {

  final String contentPurposeTypeId; // pk
  final String privilegeEnumId; // pk
  final String roleTypeId; // pk
  final String statusId; // pk
  final String contentOperationId; // pk
  ContentPurposeOperation({entityId,
    @required this.contentPurposeTypeId, @required this.privilegeEnumId, @required this.roleTypeId, @required this.statusId, @required this.contentOperationId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentPurposeOperation { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentPurposeTypeId':contentPurposeTypeId, 'privilegeEnumId':privilegeEnumId, 'roleTypeId':roleTypeId, 'statusId':statusId, 'contentOperationId':contentOperationId};
  }

}

/// Entity ContentPurposeType, Content Purpose Type
class ContentPurposeType extends EntityBase {

  /// this entity has only one pk
  final String contentPurposeTypeId; // pk
  final String description;
  ContentPurposeType({entityId,
    @required this.contentPurposeTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentPurposeType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentPurposeTypeId':contentPurposeTypeId, 'description':description};
  }

}

/// Entity ContentRevision, Content Revision
class ContentRevision extends EntityBase {

  final String comments;
  final String contentId; // pk
  final String contentRevisionSeqId; // pk
  final String committedByPartyId;
  ContentRevision({entityId,
    this.comments, @required this.contentId, @required this.contentRevisionSeqId, this.committedByPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentRevision { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'contentId':contentId, 'contentRevisionSeqId':contentRevisionSeqId, 'committedByPartyId':committedByPartyId};
  }

}

/// Entity ContentRevisionItem, Content Revision
class ContentRevisionItem extends EntityBase {

  final String oldDataResourceId;
  final String contentId; // pk
  final String newDataResourceId;
  final String contentRevisionSeqId; // pk
  final String itemContentId; // pk
  ContentRevisionItem({entityId,
    this.oldDataResourceId, @required this.contentId, this.newDataResourceId, @required this.contentRevisionSeqId, @required this.itemContentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentRevisionItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'oldDataResourceId':oldDataResourceId, 'contentId':contentId, 'newDataResourceId':newDataResourceId, 'contentRevisionSeqId':contentRevisionSeqId, 'itemContentId':itemContentId};
  }

}

/// Entity ContentRole, Content Role
class ContentRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String contentId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  ContentRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.contentId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'contentId':contentId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity ContentSearchConstraint, Content Search Result Constraint
class ContentSearchConstraint extends EntityBase {

  final String constraintSeqId; // pk
  final String anyPrefix;
  final String highValue;
  final String includeSubCategories;
  final String constraintName;
  final String isAnd;
  final String removeStems;
  final String lowValue;
  final String infoString;
  final String contentSearchResultId; // pk
  final String anySuffix;
  ContentSearchConstraint({entityId,
    @required this.constraintSeqId, this.anyPrefix, this.highValue, this.includeSubCategories, this.constraintName, this.isAnd, this.removeStems, this.lowValue, this.infoString, @required this.contentSearchResultId, this.anySuffix,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentSearchConstraint { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'constraintSeqId':constraintSeqId, 'anyPrefix':anyPrefix, 'highValue':highValue, 'includeSubCategories':includeSubCategories, 'constraintName':constraintName, 'isAnd':isAnd, 'removeStems':removeStems, 'lowValue':lowValue, 'infoString':infoString, 'contentSearchResultId':contentSearchResultId, 'anySuffix':anySuffix};
  }

}

/// Entity ContentSearchResult, Content Search Result
class ContentSearchResult extends EntityBase {

  /// this entity has only one pk
  final String contentSearchResultId; // pk
  final String visitId;
  final String orderByName;
  final int numResults;
  final double secondsTotal;
  final DateTime searchDate;
  final String isAscending;
  ContentSearchResult({entityId,
    @required this.contentSearchResultId, this.visitId, this.orderByName, this.numResults, this.secondsTotal, this.searchDate, this.isAscending,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentSearchResult { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentSearchResultId':contentSearchResultId, 'visitId':visitId, 'orderByName':orderByName, 'numResults':numResults, 'secondsTotal':secondsTotal, 'searchDate':searchDate, 'isAscending':isAscending};
  }

}

/// Entity ContentType, Content Type
class ContentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String contentTypeId; // pk
  final String description;
  ContentType({entityId,
    this.parentTypeId, this.hasTable, @required this.contentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'contentTypeId':contentTypeId, 'description':description};
  }

}

/// Entity ContentTypeAttr, Content Type Attribute
class ContentTypeAttr extends EntityBase {

  final String contentTypeId; // pk
  final String description;
  final String attrName; // pk
  ContentTypeAttr({entityId,
    @required this.contentTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentTypeId':contentTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity DataResourceContentView, DataResource and Content View
class DataResourceContentView extends EntityBase {

  final String coDataResourceId;
  final String surveyId;
  final String mimeTypeId;
  final String coInstanceOfContentId;
  final String coLocaleString;
  final String dataCategoryId;
  final DateTime coCreatedDate;
  final String surveyResponseId;
  final int coChildLeafCount;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String coTemplateDataResourceId;
  final String relatedDetailId;
  final String coCreatedByUserLogin;
  final String dataResourceId; // pk
  final String isPublic;
  final int coChildBranchCount;
  final String coOwnerContentId;
  final String objectInfo;
  final String dataResourceTypeId;
  final String createdByUserLogin;
  final String coPrivilegeEnumId;
  final String coContentId; // pk
  final String dataResourceName;
  final String coDescription;
  final String dataTemplateTypeId;
  final DateTime lastModifiedDate;
  final DateTime coLastModifiedDate;
  final String coContentTypeId;
  final String coCustomMethodId;
  final String coCharacterSetId;
  final String characterSetId;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String coMimeTypeId;
  final String coServiceName;
  final String coDataSourceId;
  final String coLastModifiedByUserLogin;
  final String coDecoratorContentId;
  final String coContentName;
  final String coStatusId;
  DataResourceContentView({entityId,
    this.coDataResourceId, this.surveyId, this.mimeTypeId, this.coInstanceOfContentId, this.coLocaleString, this.dataCategoryId, this.coCreatedDate, this.surveyResponseId, this.coChildLeafCount, this.dataSourceId, this.lastModifiedByUserLogin, this.coTemplateDataResourceId, this.relatedDetailId, this.coCreatedByUserLogin, @required this.dataResourceId, this.isPublic, this.coChildBranchCount, this.coOwnerContentId, this.objectInfo, this.dataResourceTypeId, this.createdByUserLogin, this.coPrivilegeEnumId, @required this.coContentId, this.dataResourceName, this.coDescription, this.dataTemplateTypeId, this.lastModifiedDate, this.coLastModifiedDate, this.coContentTypeId, this.coCustomMethodId, this.coCharacterSetId, this.characterSetId, this.createdDate, this.statusId, this.localeString, this.coMimeTypeId, this.coServiceName, this.coDataSourceId, this.coLastModifiedByUserLogin, this.coDecoratorContentId, this.coContentName, this.coStatusId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceContentView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'coDataResourceId':coDataResourceId, 'surveyId':surveyId, 'mimeTypeId':mimeTypeId, 'coInstanceOfContentId':coInstanceOfContentId, 'coLocaleString':coLocaleString, 'dataCategoryId':dataCategoryId, 'coCreatedDate':coCreatedDate, 'surveyResponseId':surveyResponseId, 'coChildLeafCount':coChildLeafCount, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'coTemplateDataResourceId':coTemplateDataResourceId, 'relatedDetailId':relatedDetailId, 'coCreatedByUserLogin':coCreatedByUserLogin, 'dataResourceId':dataResourceId, 'isPublic':isPublic, 'coChildBranchCount':coChildBranchCount, 'coOwnerContentId':coOwnerContentId, 'objectInfo':objectInfo, 'dataResourceTypeId':dataResourceTypeId, 'createdByUserLogin':createdByUserLogin, 'coPrivilegeEnumId':coPrivilegeEnumId, 'coContentId':coContentId, 'dataResourceName':dataResourceName, 'coDescription':coDescription, 'dataTemplateTypeId':dataTemplateTypeId, 'lastModifiedDate':lastModifiedDate, 'coLastModifiedDate':coLastModifiedDate, 'coContentTypeId':coContentTypeId, 'coCustomMethodId':coCustomMethodId, 'coCharacterSetId':coCharacterSetId, 'characterSetId':characterSetId, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'coMimeTypeId':coMimeTypeId, 'coServiceName':coServiceName, 'coDataSourceId':coDataSourceId, 'coLastModifiedByUserLogin':coLastModifiedByUserLogin, 'coDecoratorContentId':coDecoratorContentId, 'coContentName':coContentName, 'coStatusId':coStatusId};
  }

}

/// Entity PartyContentDetail, Party Content Detail View
class PartyContentDetail extends EntityBase {

  final String partyContentTypeId; // pk
  final String ownerContentId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String dataResourceId;
  final String partyId; // pk
  final String createdByUserLogin;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final DateTime thruDate;
  final String contentName;
  final DateTime fromDate; // pk
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String decoratorContentId;
  final int childBranchCount;
  PartyContentDetail({entityId,
    @required this.partyContentTypeId, this.ownerContentId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.dataResourceId, @required this.partyId, this.createdByUserLogin, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.thruDate, this.contentName, @required this.fromDate, this.createdDate, this.statusId, this.localeString, this.decoratorContentId, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyContentDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyContentTypeId':partyContentTypeId, 'ownerContentId':ownerContentId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'dataResourceId':dataResourceId, 'partyId':partyId, 'createdByUserLogin':createdByUserLogin, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'thruDate':thruDate, 'contentName':contentName, 'fromDate':fromDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'decoratorContentId':decoratorContentId, 'childBranchCount':childBranchCount};
  }

}

/// Entity SubContentDataResourceView, Content and DataResource for SubContent View
class SubContentDataResourceView extends EntityBase {

  final String drDataResourceId; // pk
  final String drSurveyResponseId;
  final String ownerContentId;
  final String drStatusId;
  final String contentId; // pk
  final String contentTypeId;
  final String description;
  final String mimeTypeId;
  final int childLeafCount;
  final String drRelatedDetailId;
  final String drDataCategoryId;
  final String drIsPublic;
  final String drDataResourceTypeId;
  final String drCreatedByUserLogin;
  final String privilegeEnumId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final String drDataTemplateTypeId;
  final String dataResourceId;
  final String drSurveyId;
  final String createdByUserLogin;
  final String drObjectInfo;
  final String templateDataResourceId;
  final DateTime lastModifiedDate;
  final String instanceOfContentId;
  final String serviceName;
  final String customMethodId;
  final String characterSetId;
  final String drCharacterSetId;
  final String drLastModifiedByUserLogin;
  final String contentName;
  final DateTime drCreatedDate;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final DateTime drLastModifiedDate;
  final String drDataResourceName;
  final String drDataSourceId;
  final String decoratorContentId;
  final String drMimeTypeId;
  final String drLocaleString;
  final int childBranchCount;
  SubContentDataResourceView({entityId,
    @required this.drDataResourceId, this.drSurveyResponseId, this.ownerContentId, this.drStatusId, @required this.contentId, this.contentTypeId, this.description, this.mimeTypeId, this.childLeafCount, this.drRelatedDetailId, this.drDataCategoryId, this.drIsPublic, this.drDataResourceTypeId, this.drCreatedByUserLogin, this.privilegeEnumId, this.dataSourceId, this.lastModifiedByUserLogin, this.drDataTemplateTypeId, this.dataResourceId, this.drSurveyId, this.createdByUserLogin, this.drObjectInfo, this.templateDataResourceId, this.lastModifiedDate, this.instanceOfContentId, this.serviceName, this.customMethodId, this.characterSetId, this.drCharacterSetId, this.drLastModifiedByUserLogin, this.contentName, this.drCreatedDate, this.createdDate, this.statusId, this.localeString, this.drLastModifiedDate, this.drDataResourceName, this.drDataSourceId, this.decoratorContentId, this.drMimeTypeId, this.drLocaleString, this.childBranchCount,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SubContentDataResourceView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'drDataResourceId':drDataResourceId, 'drSurveyResponseId':drSurveyResponseId, 'ownerContentId':ownerContentId, 'drStatusId':drStatusId, 'contentId':contentId, 'contentTypeId':contentTypeId, 'description':description, 'mimeTypeId':mimeTypeId, 'childLeafCount':childLeafCount, 'drRelatedDetailId':drRelatedDetailId, 'drDataCategoryId':drDataCategoryId, 'drIsPublic':drIsPublic, 'drDataResourceTypeId':drDataResourceTypeId, 'drCreatedByUserLogin':drCreatedByUserLogin, 'privilegeEnumId':privilegeEnumId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'drDataTemplateTypeId':drDataTemplateTypeId, 'dataResourceId':dataResourceId, 'drSurveyId':drSurveyId, 'createdByUserLogin':createdByUserLogin, 'drObjectInfo':drObjectInfo, 'templateDataResourceId':templateDataResourceId, 'lastModifiedDate':lastModifiedDate, 'instanceOfContentId':instanceOfContentId, 'serviceName':serviceName, 'customMethodId':customMethodId, 'characterSetId':characterSetId, 'drCharacterSetId':drCharacterSetId, 'drLastModifiedByUserLogin':drLastModifiedByUserLogin, 'contentName':contentName, 'drCreatedDate':drCreatedDate, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'drLastModifiedDate':drLastModifiedDate, 'drDataResourceName':drDataResourceName, 'drDataSourceId':drDataSourceId, 'decoratorContentId':decoratorContentId, 'drMimeTypeId':drMimeTypeId, 'drLocaleString':drLocaleString, 'childBranchCount':childBranchCount};
  }

}