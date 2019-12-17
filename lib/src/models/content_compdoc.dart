import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AssocRevisionItemView, Latest Revision Children
class AssocRevisionItemView extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String rootRevisionContentId; // pk
  final String contentAssocTypeId; // pk
  final String contentIdTo; // pk
  final String contentId; // pk
  final String contentRevisionSeqId; // pk
  final String itemContentId; // pk
  final String maxRevisionSeqId; // pk
  final DateTime thruDate;
  AssocRevisionItemView({entityId,
    @required this.fromDate, this.sequenceNum, @required this.rootRevisionContentId, @required this.contentAssocTypeId, @required this.contentIdTo, @required this.contentId, @required this.contentRevisionSeqId, @required this.itemContentId, @required this.maxRevisionSeqId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AssocRevisionItemView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'rootRevisionContentId':rootRevisionContentId, 'contentAssocTypeId':contentAssocTypeId, 'contentIdTo':contentIdTo, 'contentId':contentId, 'contentRevisionSeqId':contentRevisionSeqId, 'itemContentId':itemContentId, 'maxRevisionSeqId':maxRevisionSeqId, 'thruDate':thruDate};
  }

}

/// Entity ContentAssocAndContentPurpose, ContentAssoc and ContentPurpose View
class ContentAssocAndContentPurpose extends EntityBase {

  final DateTime fromDate; // pk
  final String contentPurposeTypeId; // pk
  final String dataSourceId;
  final int sequenceNum;
  final String contentAssocTypeId; // pk
  final String contentIdTo; // pk
  final String contentId; // pk
  final String mapKey;
  final DateTime thruDate;
  ContentAssocAndContentPurpose({entityId,
    @required this.fromDate, @required this.contentPurposeTypeId, this.dataSourceId, this.sequenceNum, @required this.contentAssocTypeId, @required this.contentIdTo, @required this.contentId, this.mapKey, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocAndContentPurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'contentPurposeTypeId':contentPurposeTypeId, 'dataSourceId':dataSourceId, 'sequenceNum':sequenceNum, 'contentAssocTypeId':contentAssocTypeId, 'contentIdTo':contentIdTo, 'contentId':contentId, 'mapKey':mapKey, 'thruDate':thruDate};
  }

}

/// Entity ContentAssocRevisionItemView, Latest Revision Children
class ContentAssocRevisionItemView extends EntityBase {

  final DateTime fromDate; // pk
  final int sequenceNum;
  final String rootRevisionContentId; // pk
  final String contentAssocTypeId; // pk
  final String instanceOfContentId;
  final String contentIdTo; // pk
  final String dataResourceId;
  final String contentId; // pk
  final String contentRevisionSeqId; // pk
  final String itemContentId; // pk
  final String maxRevisionSeqId; // pk
  final DateTime thruDate;
  ContentAssocRevisionItemView({entityId,
    @required this.fromDate, this.sequenceNum, @required this.rootRevisionContentId, @required this.contentAssocTypeId, this.instanceOfContentId, @required this.contentIdTo, this.dataResourceId, @required this.contentId, @required this.contentRevisionSeqId, @required this.itemContentId, @required this.maxRevisionSeqId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContentAssocRevisionItemView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'sequenceNum':sequenceNum, 'rootRevisionContentId':rootRevisionContentId, 'contentAssocTypeId':contentAssocTypeId, 'instanceOfContentId':instanceOfContentId, 'contentIdTo':contentIdTo, 'dataResourceId':dataResourceId, 'contentId':contentId, 'contentRevisionSeqId':contentRevisionSeqId, 'itemContentId':itemContentId, 'maxRevisionSeqId':maxRevisionSeqId, 'thruDate':thruDate};
  }

}

/// Entity MaxContentApprovalView, Latest ContentApproval
class MaxContentApprovalView extends EntityBase {

  final String roleTypeId;
  final int sequenceNum;
  final String maxContentRevisionSeqId;
  final String contentTypeId;
  final String contentId;
  final String contentRevisionSeqId;
  final String partyId;
  MaxContentApprovalView({entityId,
    this.roleTypeId, this.sequenceNum, this.maxContentRevisionSeqId, this.contentTypeId, this.contentId, this.contentRevisionSeqId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MaxContentApprovalView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'sequenceNum':sequenceNum, 'maxContentRevisionSeqId':maxContentRevisionSeqId, 'contentTypeId':contentTypeId, 'contentId':contentId, 'contentRevisionSeqId':contentRevisionSeqId, 'partyId':partyId};
  }

}

/// Entity MaxRevisionItemView, Latest Revision Children
class MaxRevisionItemView extends EntityBase {

  final String rootRevisionContentId; // pk
  final String contentRevisionSeqId; // pk
  final String itemContentId; // pk
  final String maxRevisionSeqId; // pk
  MaxRevisionItemView({entityId,
    @required this.rootRevisionContentId, @required this.contentRevisionSeqId, @required this.itemContentId, @required this.maxRevisionSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MaxRevisionItemView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'rootRevisionContentId':rootRevisionContentId, 'contentRevisionSeqId':contentRevisionSeqId, 'itemContentId':itemContentId, 'maxRevisionSeqId':maxRevisionSeqId};
  }

}