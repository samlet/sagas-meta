import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Survey, Survey
class Survey extends EntityBase {

  /// this entity has only one pk
  final String surveyId; // pk
  final String comments;
  final String responseService;
  final String description;
  final String submitCaption;
  final String isAnonymous;
  final String surveyName;
  final String allowMultiple;
  final String acroFormContentId;
  final String allowUpdate;
  Survey({entityId,
    @required this.surveyId, this.comments, this.responseService, this.description, this.submitCaption, this.isAnonymous, this.surveyName, this.allowMultiple, this.acroFormContentId, this.allowUpdate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Survey { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyId':surveyId, 'comments':comments, 'responseService':responseService, 'description':description, 'submitCaption':submitCaption, 'isAnonymous':isAnonymous, 'surveyName':surveyName, 'allowMultiple':allowMultiple, 'acroFormContentId':acroFormContentId, 'allowUpdate':allowUpdate};
  }

}

/// Entity SurveyApplType, Survey Application Type
class SurveyApplType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String surveyApplTypeId; // pk
  SurveyApplType({entityId,
    this.description, @required this.surveyApplTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyApplType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'surveyApplTypeId':surveyApplTypeId};
  }

}

/// Entity SurveyMultiResp, Survey Multi-Response Group
class SurveyMultiResp extends EntityBase {

  final String surveyId; // pk
  final String surveyMultiRespId; // pk
  final String multiRespTitle;
  SurveyMultiResp({entityId,
    @required this.surveyId, @required this.surveyMultiRespId, this.multiRespTitle,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyMultiResp { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyId':surveyId, 'surveyMultiRespId':surveyMultiRespId, 'multiRespTitle':multiRespTitle};
  }

}

/// Entity SurveyMultiRespColumn, Survey Multi-Response Group Column/Category
class SurveyMultiRespColumn extends EntityBase {

  final String surveyId; // pk
  final int sequenceNum;
  final String columnTitle;
  final String surveyMultiRespId; // pk
  final String surveyMultiRespColId; // pk
  SurveyMultiRespColumn({entityId,
    @required this.surveyId, this.sequenceNum, this.columnTitle, @required this.surveyMultiRespId, @required this.surveyMultiRespColId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyMultiRespColumn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyId':surveyId, 'sequenceNum':sequenceNum, 'columnTitle':columnTitle, 'surveyMultiRespId':surveyMultiRespId, 'surveyMultiRespColId':surveyMultiRespColId};
  }

}

/// Entity SurveyPage, Survey Page Type
class SurveyPage extends EntityBase {

  final String surveyId; // pk
  final int sequenceNum;
  final String surveyPageSeqId; // pk
  final String pageName;
  SurveyPage({entityId,
    @required this.surveyId, this.sequenceNum, @required this.surveyPageSeqId, this.pageName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyPage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyId':surveyId, 'sequenceNum':sequenceNum, 'surveyPageSeqId':surveyPageSeqId, 'pageName':pageName};
  }

}

/// Entity SurveyQuestion, Survey Question
class SurveyQuestion extends EntityBase {

  /// this entity has only one pk
  final String surveyQuestionTypeId;
  final String formatString;
  final String surveyQuestionId; // pk
  final String surveyQuestionCategoryId;
  final String question;
  final String description;
  final String enumTypeId;
  final String hint;
  final String geoId;
  SurveyQuestion({entityId,
    this.surveyQuestionTypeId, this.formatString, @required this.surveyQuestionId, this.surveyQuestionCategoryId, this.question, this.description, this.enumTypeId, this.hint, this.geoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestion { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyQuestionTypeId':surveyQuestionTypeId, 'formatString':formatString, 'surveyQuestionId':surveyQuestionId, 'surveyQuestionCategoryId':surveyQuestionCategoryId, 'question':question, 'description':description, 'enumTypeId':enumTypeId, 'hint':hint, 'geoId':geoId};
  }

}

/// Entity SurveyQuestionAndAppl, Survey Question And Application View
class SurveyQuestionAndAppl extends EntityBase {

  final String surveyQuestionTypeId;
  final String formatString;
  final String withSurveyOptionSeqId;
  final String surveyQuestionId; // pk
  final String surveyQuestionCategoryId;
  final String externalFieldRef;
  final String surveyId; // pk
  final String question;
  final int sequenceNum;
  final String description;
  final DateTime thruDate;
  final String enumTypeId;
  final DateTime fromDate; // pk
  final String requiredField;
  final String hint;
  final String geoId;
  final String withSurveyQuestionId;
  final String surveyPageSeqId;
  final String surveyMultiRespId;
  final String surveyMultiRespColId;
  SurveyQuestionAndAppl({entityId,
    this.surveyQuestionTypeId, this.formatString, this.withSurveyOptionSeqId, @required this.surveyQuestionId, this.surveyQuestionCategoryId, this.externalFieldRef, @required this.surveyId, this.question, this.sequenceNum, this.description, this.thruDate, this.enumTypeId, @required this.fromDate, this.requiredField, this.hint, this.geoId, this.withSurveyQuestionId, this.surveyPageSeqId, this.surveyMultiRespId, this.surveyMultiRespColId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestionAndAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyQuestionTypeId':surveyQuestionTypeId, 'formatString':formatString, 'withSurveyOptionSeqId':withSurveyOptionSeqId, 'surveyQuestionId':surveyQuestionId, 'surveyQuestionCategoryId':surveyQuestionCategoryId, 'externalFieldRef':externalFieldRef, 'surveyId':surveyId, 'question':question, 'sequenceNum':sequenceNum, 'description':description, 'thruDate':thruDate, 'enumTypeId':enumTypeId, 'fromDate':fromDate, 'requiredField':requiredField, 'hint':hint, 'geoId':geoId, 'withSurveyQuestionId':withSurveyQuestionId, 'surveyPageSeqId':surveyPageSeqId, 'surveyMultiRespId':surveyMultiRespId, 'surveyMultiRespColId':surveyMultiRespColId};
  }

}

/// Entity SurveyQuestionAppl, Survey Question Application
class SurveyQuestionAppl extends EntityBase {

  final String withSurveyOptionSeqId;
  final String surveyQuestionId; // pk
  final String externalFieldRef;
  final String surveyId; // pk
  final int sequenceNum;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String requiredField;
  final String withSurveyQuestionId;
  final String surveyPageSeqId;
  final String surveyMultiRespId;
  final String surveyMultiRespColId;
  SurveyQuestionAppl({entityId,
    this.withSurveyOptionSeqId, @required this.surveyQuestionId, this.externalFieldRef, @required this.surveyId, this.sequenceNum, this.thruDate, @required this.fromDate, this.requiredField, this.withSurveyQuestionId, this.surveyPageSeqId, this.surveyMultiRespId, this.surveyMultiRespColId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestionAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'withSurveyOptionSeqId':withSurveyOptionSeqId, 'surveyQuestionId':surveyQuestionId, 'externalFieldRef':externalFieldRef, 'surveyId':surveyId, 'sequenceNum':sequenceNum, 'thruDate':thruDate, 'fromDate':fromDate, 'requiredField':requiredField, 'withSurveyQuestionId':withSurveyQuestionId, 'surveyPageSeqId':surveyPageSeqId, 'surveyMultiRespId':surveyMultiRespId, 'surveyMultiRespColId':surveyMultiRespColId};
  }

}

/// Entity SurveyQuestionCategory, Survey Question Category
class SurveyQuestionCategory extends EntityBase {

  /// this entity has only one pk
  final String surveyQuestionCategoryId; // pk
  final String description;
  final String parentCategoryId;
  SurveyQuestionCategory({entityId,
    @required this.surveyQuestionCategoryId, this.description, this.parentCategoryId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestionCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyQuestionCategoryId':surveyQuestionCategoryId, 'description':description, 'parentCategoryId':parentCategoryId};
  }

}

/// Entity SurveyQuestionOption, Survey Question Option
class SurveyQuestionOption extends EntityBase {

  final double amountBase;
  final String surveyQuestionId; // pk
  final int sequenceNum;
  final String surveyOptionSeqId; // pk
  final String durationUomId;
  final String description;
  final int duration;
  final String amountBaseUomId;
  final double weightFactor;
  SurveyQuestionOption({entityId,
    this.amountBase, @required this.surveyQuestionId, this.sequenceNum, @required this.surveyOptionSeqId, this.durationUomId, this.description, this.duration, this.amountBaseUomId, this.weightFactor,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestionOption { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amountBase':amountBase, 'surveyQuestionId':surveyQuestionId, 'sequenceNum':sequenceNum, 'surveyOptionSeqId':surveyOptionSeqId, 'durationUomId':durationUomId, 'description':description, 'duration':duration, 'amountBaseUomId':amountBaseUomId, 'weightFactor':weightFactor};
  }

}

/// Entity SurveyQuestionType, Survey Question Type
class SurveyQuestionType extends EntityBase {

  /// this entity has only one pk
  final String surveyQuestionTypeId; // pk
  final String description;
  SurveyQuestionType({entityId,
    @required this.surveyQuestionTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyQuestionType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'surveyQuestionTypeId':surveyQuestionTypeId, 'description':description};
  }

}

/// Entity SurveyResponse, Survey Response
class SurveyResponse extends EntityBase {

  /// this entity has only one pk
  final String orderItemSeqId;
  final String surveyId;
  final DateTime lastModifiedDate;
  final String orderId;
  final String generalFeedback;
  final String surveyResponseId; // pk
  final DateTime responseDate;
  final String referenceId;
  final String statusId;
  final String partyId;
  SurveyResponse({entityId,
    this.orderItemSeqId, this.surveyId, this.lastModifiedDate, this.orderId, this.generalFeedback, @required this.surveyResponseId, this.responseDate, this.referenceId, this.statusId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyResponse { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'orderItemSeqId':orderItemSeqId, 'surveyId':surveyId, 'lastModifiedDate':lastModifiedDate, 'orderId':orderId, 'generalFeedback':generalFeedback, 'surveyResponseId':surveyResponseId, 'responseDate':responseDate, 'referenceId':referenceId, 'statusId':statusId, 'partyId':partyId};
  }

}

/// Entity SurveyResponseAndAnswer, Survey Response And Answer View
class SurveyResponseAndAnswer extends EntityBase {

  final double amountBase;
  final String surveyQuestionId; // pk
  final String surveyId;
  final int sequenceNum;
  final String orderId;
  final String surveyOptionSeqId;
  final String contentId;
  final String durationUomId;
  final double currencyResponse;
  final double floatResponse;
  final String surveyResponseId; // pk
  final DateTime responseDate;
  final String referenceId;
  final int duration;
  final DateTime answeredDate;
  final double weightFactor;
  final String partyId;
  final String surveyMultiRespColId; // pk
  final String surveyMultiRespId;
  final String orderItemSeqId;
  final DateTime lastModifiedDate;
  final String generalFeedback;
  final int numericResponse;
  final String statusId;
  final String textResponse;
  final String amountBaseUomId;
  final String booleanResponse;
  SurveyResponseAndAnswer({entityId,
    this.amountBase, @required this.surveyQuestionId, this.surveyId, this.sequenceNum, this.orderId, this.surveyOptionSeqId, this.contentId, this.durationUomId, this.currencyResponse, this.floatResponse, @required this.surveyResponseId, this.responseDate, this.referenceId, this.duration, this.answeredDate, this.weightFactor, this.partyId, @required this.surveyMultiRespColId, this.surveyMultiRespId, this.orderItemSeqId, this.lastModifiedDate, this.generalFeedback, this.numericResponse, this.statusId, this.textResponse, this.amountBaseUomId, this.booleanResponse,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyResponseAndAnswer { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amountBase':amountBase, 'surveyQuestionId':surveyQuestionId, 'surveyId':surveyId, 'sequenceNum':sequenceNum, 'orderId':orderId, 'surveyOptionSeqId':surveyOptionSeqId, 'contentId':contentId, 'durationUomId':durationUomId, 'currencyResponse':currencyResponse, 'floatResponse':floatResponse, 'surveyResponseId':surveyResponseId, 'responseDate':responseDate, 'referenceId':referenceId, 'duration':duration, 'answeredDate':answeredDate, 'weightFactor':weightFactor, 'partyId':partyId, 'surveyMultiRespColId':surveyMultiRespColId, 'surveyMultiRespId':surveyMultiRespId, 'orderItemSeqId':orderItemSeqId, 'lastModifiedDate':lastModifiedDate, 'generalFeedback':generalFeedback, 'numericResponse':numericResponse, 'statusId':statusId, 'textResponse':textResponse, 'amountBaseUomId':amountBaseUomId, 'booleanResponse':booleanResponse};
  }

}

/// Entity SurveyResponseAnswer, Survey Response Answer
class SurveyResponseAnswer extends EntityBase {

  final double amountBase;
  final String surveyQuestionId; // pk
  final int sequenceNum;
  final String surveyOptionSeqId;
  final String contentId;
  final String durationUomId;
  final double currencyResponse;
  final double floatResponse;
  final int numericResponse;
  final String surveyResponseId; // pk
  final int duration;
  final DateTime answeredDate;
  final String textResponse;
  final String amountBaseUomId;
  final String booleanResponse;
  final double weightFactor;
  final String surveyMultiRespColId; // pk
  final String surveyMultiRespId;
  SurveyResponseAnswer({entityId,
    this.amountBase, @required this.surveyQuestionId, this.sequenceNum, this.surveyOptionSeqId, this.contentId, this.durationUomId, this.currencyResponse, this.floatResponse, this.numericResponse, @required this.surveyResponseId, this.duration, this.answeredDate, this.textResponse, this.amountBaseUomId, this.booleanResponse, this.weightFactor, @required this.surveyMultiRespColId, this.surveyMultiRespId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyResponseAnswer { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amountBase':amountBase, 'surveyQuestionId':surveyQuestionId, 'sequenceNum':sequenceNum, 'surveyOptionSeqId':surveyOptionSeqId, 'contentId':contentId, 'durationUomId':durationUomId, 'currencyResponse':currencyResponse, 'floatResponse':floatResponse, 'numericResponse':numericResponse, 'surveyResponseId':surveyResponseId, 'duration':duration, 'answeredDate':answeredDate, 'textResponse':textResponse, 'amountBaseUomId':amountBaseUomId, 'booleanResponse':booleanResponse, 'weightFactor':weightFactor, 'surveyMultiRespColId':surveyMultiRespColId, 'surveyMultiRespId':surveyMultiRespId};
  }

}

/// Entity SurveyTrigger, Survey Trigger
class SurveyTrigger extends EntityBase {

  final DateTime fromDate; // pk
  final String surveyId; // pk
  final String surveyApplTypeId; // pk
  final DateTime thruDate;
  SurveyTrigger({entityId,
    @required this.fromDate, @required this.surveyId, @required this.surveyApplTypeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SurveyTrigger { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'surveyId':surveyId, 'surveyApplTypeId':surveyApplTypeId, 'thruDate':thruDate};
  }

}