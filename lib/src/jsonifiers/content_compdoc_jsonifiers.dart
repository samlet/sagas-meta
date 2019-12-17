import 'package:sagas_meta/src/models/content_compdoc.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentCompdocJsonifier{
  static AssocRevisionItemView extractAssocRevisionItemView(dynamic json) {
    return AssocRevisionItemView(
        entityId: create_id_from('AssocRevisionItemView', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        rootRevisionContentId: json['rootRevisionContentId'] as String,
        contentAssocTypeId: json['contentAssocTypeId'] as String,
        contentIdTo: json['contentIdTo'] as String,
        contentId: json['contentId'] as String,
        contentRevisionSeqId: json['contentRevisionSeqId'] as String,
        itemContentId: json['itemContentId'] as String,
        maxRevisionSeqId: json['maxRevisionSeqId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AssocRevisionItemView overridesAssocRevisionItemView(Map<String, dynamic> map) {
    return AssocRevisionItemView(
        entityId: create_id_from('AssocRevisionItemView', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        rootRevisionContentId: map['rootRevisionContentId'],
        contentAssocTypeId: map['contentAssocTypeId'],
        contentIdTo: map['contentIdTo'],
        contentId: map['contentId'],
        contentRevisionSeqId: map['contentRevisionSeqId'],
        itemContentId: map['itemContentId'],
        maxRevisionSeqId: map['maxRevisionSeqId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContentAssocAndContentPurpose extractContentAssocAndContentPurpose(dynamic json) {
    return ContentAssocAndContentPurpose(
        entityId: create_id_from('ContentAssocAndContentPurpose', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'contentPurposeTypeId'], json),
        fromDate: check_dt(json['fromDate']),
        contentPurposeTypeId: json['contentPurposeTypeId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        contentAssocTypeId: json['contentAssocTypeId'] as String,
        contentIdTo: json['contentIdTo'] as String,
        contentId: json['contentId'] as String,
        mapKey: json['mapKey'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContentAssocAndContentPurpose overridesContentAssocAndContentPurpose(Map<String, dynamic> map) {
    return ContentAssocAndContentPurpose(
        entityId: create_id_from('ContentAssocAndContentPurpose', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'contentPurposeTypeId'], map),
        fromDate: map['fromDate'],
        contentPurposeTypeId: map['contentPurposeTypeId'],
        dataSourceId: map['dataSourceId'],
        sequenceNum: map['sequenceNum'],
        contentAssocTypeId: map['contentAssocTypeId'],
        contentIdTo: map['contentIdTo'],
        contentId: map['contentId'],
        mapKey: map['mapKey'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContentAssocRevisionItemView extractContentAssocRevisionItemView(dynamic json) {
    return ContentAssocRevisionItemView(
        entityId: create_id_from('ContentAssocRevisionItemView', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        rootRevisionContentId: json['rootRevisionContentId'] as String,
        contentAssocTypeId: json['contentAssocTypeId'] as String,
        instanceOfContentId: json['instanceOfContentId'] as String,
        contentIdTo: json['contentIdTo'] as String,
        dataResourceId: json['dataResourceId'] as String,
        contentId: json['contentId'] as String,
        contentRevisionSeqId: json['contentRevisionSeqId'] as String,
        itemContentId: json['itemContentId'] as String,
        maxRevisionSeqId: json['maxRevisionSeqId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContentAssocRevisionItemView overridesContentAssocRevisionItemView(Map<String, dynamic> map) {
    return ContentAssocRevisionItemView(
        entityId: create_id_from('ContentAssocRevisionItemView', ['contentId', 'contentIdTo', 'contentAssocTypeId', 'fromDate', 'rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        rootRevisionContentId: map['rootRevisionContentId'],
        contentAssocTypeId: map['contentAssocTypeId'],
        instanceOfContentId: map['instanceOfContentId'],
        contentIdTo: map['contentIdTo'],
        dataResourceId: map['dataResourceId'],
        contentId: map['contentId'],
        contentRevisionSeqId: map['contentRevisionSeqId'],
        itemContentId: map['itemContentId'],
        maxRevisionSeqId: map['maxRevisionSeqId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MaxContentApprovalView extractMaxContentApprovalView(dynamic json) {
    return MaxContentApprovalView(
        entityId: create_id_from('MaxContentApprovalView', [], json),
        roleTypeId: json['roleTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        maxContentRevisionSeqId: json['maxContentRevisionSeqId'] as String,
        contentTypeId: json['contentTypeId'] as String,
        contentId: json['contentId'] as String,
        contentRevisionSeqId: json['contentRevisionSeqId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MaxContentApprovalView overridesMaxContentApprovalView(Map<String, dynamic> map) {
    return MaxContentApprovalView(
        entityId: create_id_from('MaxContentApprovalView', [], map),
        roleTypeId: map['roleTypeId'],
        sequenceNum: map['sequenceNum'],
        maxContentRevisionSeqId: map['maxContentRevisionSeqId'],
        contentTypeId: map['contentTypeId'],
        contentId: map['contentId'],
        contentRevisionSeqId: map['contentRevisionSeqId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MaxRevisionItemView extractMaxRevisionItemView(dynamic json) {
    return MaxRevisionItemView(
        entityId: create_id_from('MaxRevisionItemView', ['rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], json),
        rootRevisionContentId: json['rootRevisionContentId'] as String,
        contentRevisionSeqId: json['contentRevisionSeqId'] as String,
        itemContentId: json['itemContentId'] as String,
        maxRevisionSeqId: json['maxRevisionSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MaxRevisionItemView overridesMaxRevisionItemView(Map<String, dynamic> map) {
    return MaxRevisionItemView(
        entityId: create_id_from('MaxRevisionItemView', ['rootRevisionContentId', 'itemContentId', 'contentRevisionSeqId', 'maxRevisionSeqId'], map),
        rootRevisionContentId: map['rootRevisionContentId'],
        contentRevisionSeqId: map['contentRevisionSeqId'],
        itemContentId: map['itemContentId'],
        maxRevisionSeqId: map['maxRevisionSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}