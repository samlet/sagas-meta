import 'package:sagas_meta/src/models/content_survey.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentSurveyJsonifier{
  static Survey extractSurvey(dynamic json) {
    return Survey(
        entityId: create_id_from('Survey', ['surveyId'], json),
        surveyId: json['surveyId'] as String,
        comments: json['comments'] as String,
        responseService: json['responseService'] as String,
        description: json['description'] as String,
        submitCaption: json['submitCaption'] as String,
        isAnonymous: json['isAnonymous'] as String,
        surveyName: json['surveyName'] as String,
        allowMultiple: json['allowMultiple'] as String,
        acroFormContentId: json['acroFormContentId'] as String,
        allowUpdate: json['allowUpdate'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Survey overridesSurvey(Map<String, dynamic> map) {
    return Survey(
        entityId: create_id_from('Survey', ['surveyId'], map),
        surveyId: map['surveyId'],
        comments: map['comments'],
        responseService: map['responseService'],
        description: map['description'],
        submitCaption: map['submitCaption'],
        isAnonymous: map['isAnonymous'],
        surveyName: map['surveyName'],
        allowMultiple: map['allowMultiple'],
        acroFormContentId: map['acroFormContentId'],
        allowUpdate: map['allowUpdate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyApplType extractSurveyApplType(dynamic json) {
    return SurveyApplType(
        entityId: create_id_from('SurveyApplType', ['surveyApplTypeId'], json),
        description: json['description'] as String,
        surveyApplTypeId: json['surveyApplTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyApplType overridesSurveyApplType(Map<String, dynamic> map) {
    return SurveyApplType(
        entityId: create_id_from('SurveyApplType', ['surveyApplTypeId'], map),
        description: map['description'],
        surveyApplTypeId: map['surveyApplTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyMultiResp extractSurveyMultiResp(dynamic json) {
    return SurveyMultiResp(
        entityId: create_id_from('SurveyMultiResp', ['surveyId', 'surveyMultiRespId'], json),
        surveyId: json['surveyId'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        multiRespTitle: json['multiRespTitle'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyMultiResp overridesSurveyMultiResp(Map<String, dynamic> map) {
    return SurveyMultiResp(
        entityId: create_id_from('SurveyMultiResp', ['surveyId', 'surveyMultiRespId'], map),
        surveyId: map['surveyId'],
        surveyMultiRespId: map['surveyMultiRespId'],
        multiRespTitle: map['multiRespTitle'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyMultiRespColumn extractSurveyMultiRespColumn(dynamic json) {
    return SurveyMultiRespColumn(
        entityId: create_id_from('SurveyMultiRespColumn', ['surveyId', 'surveyMultiRespId', 'surveyMultiRespColId'], json),
        surveyId: json['surveyId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        columnTitle: json['columnTitle'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        surveyMultiRespColId: json['surveyMultiRespColId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyMultiRespColumn overridesSurveyMultiRespColumn(Map<String, dynamic> map) {
    return SurveyMultiRespColumn(
        entityId: create_id_from('SurveyMultiRespColumn', ['surveyId', 'surveyMultiRespId', 'surveyMultiRespColId'], map),
        surveyId: map['surveyId'],
        sequenceNum: map['sequenceNum'],
        columnTitle: map['columnTitle'],
        surveyMultiRespId: map['surveyMultiRespId'],
        surveyMultiRespColId: map['surveyMultiRespColId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyPage extractSurveyPage(dynamic json) {
    return SurveyPage(
        entityId: create_id_from('SurveyPage', ['surveyId', 'surveyPageSeqId'], json),
        surveyId: json['surveyId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        surveyPageSeqId: json['surveyPageSeqId'] as String,
        pageName: json['pageName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyPage overridesSurveyPage(Map<String, dynamic> map) {
    return SurveyPage(
        entityId: create_id_from('SurveyPage', ['surveyId', 'surveyPageSeqId'], map),
        surveyId: map['surveyId'],
        sequenceNum: map['sequenceNum'],
        surveyPageSeqId: map['surveyPageSeqId'],
        pageName: map['pageName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestion extractSurveyQuestion(dynamic json) {
    return SurveyQuestion(
        entityId: create_id_from('SurveyQuestion', ['surveyQuestionId'], json),
        surveyQuestionTypeId: json['surveyQuestionTypeId'] as String,
        formatString: json['formatString'] as String,
        surveyQuestionId: json['surveyQuestionId'] as String,
        surveyQuestionCategoryId: json['surveyQuestionCategoryId'] as String,
        question: json['question'] as String,
        description: json['description'] as String,
        enumTypeId: json['enumTypeId'] as String,
        hint: json['hint'] as String,
        geoId: json['geoId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestion overridesSurveyQuestion(Map<String, dynamic> map) {
    return SurveyQuestion(
        entityId: create_id_from('SurveyQuestion', ['surveyQuestionId'], map),
        surveyQuestionTypeId: map['surveyQuestionTypeId'],
        formatString: map['formatString'],
        surveyQuestionId: map['surveyQuestionId'],
        surveyQuestionCategoryId: map['surveyQuestionCategoryId'],
        question: map['question'],
        description: map['description'],
        enumTypeId: map['enumTypeId'],
        hint: map['hint'],
        geoId: map['geoId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestionAndAppl extractSurveyQuestionAndAppl(dynamic json) {
    return SurveyQuestionAndAppl(
        entityId: create_id_from('SurveyQuestionAndAppl', ['surveyQuestionId', 'surveyId', 'fromDate'], json),
        surveyQuestionTypeId: json['surveyQuestionTypeId'] as String,
        formatString: json['formatString'] as String,
        withSurveyOptionSeqId: json['withSurveyOptionSeqId'] as String,
        surveyQuestionId: json['surveyQuestionId'] as String,
        surveyQuestionCategoryId: json['surveyQuestionCategoryId'] as String,
        externalFieldRef: json['externalFieldRef'] as String,
        surveyId: json['surveyId'] as String,
        question: json['question'] as String,
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        thruDate: check_dt(json['thruDate']),
        enumTypeId: json['enumTypeId'] as String,
        fromDate: check_dt(json['fromDate']),
        requiredField: json['requiredField'] as String,
        hint: json['hint'] as String,
        geoId: json['geoId'] as String,
        withSurveyQuestionId: json['withSurveyQuestionId'] as String,
        surveyPageSeqId: json['surveyPageSeqId'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        surveyMultiRespColId: json['surveyMultiRespColId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestionAndAppl overridesSurveyQuestionAndAppl(Map<String, dynamic> map) {
    return SurveyQuestionAndAppl(
        entityId: create_id_from('SurveyQuestionAndAppl', ['surveyQuestionId', 'surveyId', 'fromDate'], map),
        surveyQuestionTypeId: map['surveyQuestionTypeId'],
        formatString: map['formatString'],
        withSurveyOptionSeqId: map['withSurveyOptionSeqId'],
        surveyQuestionId: map['surveyQuestionId'],
        surveyQuestionCategoryId: map['surveyQuestionCategoryId'],
        externalFieldRef: map['externalFieldRef'],
        surveyId: map['surveyId'],
        question: map['question'],
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        thruDate: map['thruDate'],
        enumTypeId: map['enumTypeId'],
        fromDate: map['fromDate'],
        requiredField: map['requiredField'],
        hint: map['hint'],
        geoId: map['geoId'],
        withSurveyQuestionId: map['withSurveyQuestionId'],
        surveyPageSeqId: map['surveyPageSeqId'],
        surveyMultiRespId: map['surveyMultiRespId'],
        surveyMultiRespColId: map['surveyMultiRespColId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestionAppl extractSurveyQuestionAppl(dynamic json) {
    return SurveyQuestionAppl(
        entityId: create_id_from('SurveyQuestionAppl', ['surveyId', 'surveyQuestionId', 'fromDate'], json),
        withSurveyOptionSeqId: json['withSurveyOptionSeqId'] as String,
        surveyQuestionId: json['surveyQuestionId'] as String,
        externalFieldRef: json['externalFieldRef'] as String,
        surveyId: json['surveyId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        requiredField: json['requiredField'] as String,
        withSurveyQuestionId: json['withSurveyQuestionId'] as String,
        surveyPageSeqId: json['surveyPageSeqId'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        surveyMultiRespColId: json['surveyMultiRespColId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestionAppl overridesSurveyQuestionAppl(Map<String, dynamic> map) {
    return SurveyQuestionAppl(
        entityId: create_id_from('SurveyQuestionAppl', ['surveyId', 'surveyQuestionId', 'fromDate'], map),
        withSurveyOptionSeqId: map['withSurveyOptionSeqId'],
        surveyQuestionId: map['surveyQuestionId'],
        externalFieldRef: map['externalFieldRef'],
        surveyId: map['surveyId'],
        sequenceNum: map['sequenceNum'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        requiredField: map['requiredField'],
        withSurveyQuestionId: map['withSurveyQuestionId'],
        surveyPageSeqId: map['surveyPageSeqId'],
        surveyMultiRespId: map['surveyMultiRespId'],
        surveyMultiRespColId: map['surveyMultiRespColId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestionCategory extractSurveyQuestionCategory(dynamic json) {
    return SurveyQuestionCategory(
        entityId: create_id_from('SurveyQuestionCategory', ['surveyQuestionCategoryId'], json),
        surveyQuestionCategoryId: json['surveyQuestionCategoryId'] as String,
        description: json['description'] as String,
        parentCategoryId: json['parentCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestionCategory overridesSurveyQuestionCategory(Map<String, dynamic> map) {
    return SurveyQuestionCategory(
        entityId: create_id_from('SurveyQuestionCategory', ['surveyQuestionCategoryId'], map),
        surveyQuestionCategoryId: map['surveyQuestionCategoryId'],
        description: map['description'],
        parentCategoryId: map['parentCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestionOption extractSurveyQuestionOption(dynamic json) {
    return SurveyQuestionOption(
        entityId: create_id_from('SurveyQuestionOption', ['surveyQuestionId', 'surveyOptionSeqId'], json),
        amountBase: json['amountBase'] as double,
        surveyQuestionId: json['surveyQuestionId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        surveyOptionSeqId: json['surveyOptionSeqId'] as String,
        durationUomId: json['durationUomId'] as String,
        description: json['description'] as String,
        duration: json['duration'] as int,
        amountBaseUomId: json['amountBaseUomId'] as String,
        weightFactor: json['weightFactor'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestionOption overridesSurveyQuestionOption(Map<String, dynamic> map) {
    return SurveyQuestionOption(
        entityId: create_id_from('SurveyQuestionOption', ['surveyQuestionId', 'surveyOptionSeqId'], map),
        amountBase: map['amountBase'],
        surveyQuestionId: map['surveyQuestionId'],
        sequenceNum: map['sequenceNum'],
        surveyOptionSeqId: map['surveyOptionSeqId'],
        durationUomId: map['durationUomId'],
        description: map['description'],
        duration: map['duration'],
        amountBaseUomId: map['amountBaseUomId'],
        weightFactor: map['weightFactor'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyQuestionType extractSurveyQuestionType(dynamic json) {
    return SurveyQuestionType(
        entityId: create_id_from('SurveyQuestionType', ['surveyQuestionTypeId'], json),
        surveyQuestionTypeId: json['surveyQuestionTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyQuestionType overridesSurveyQuestionType(Map<String, dynamic> map) {
    return SurveyQuestionType(
        entityId: create_id_from('SurveyQuestionType', ['surveyQuestionTypeId'], map),
        surveyQuestionTypeId: map['surveyQuestionTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyResponse extractSurveyResponse(dynamic json) {
    return SurveyResponse(
        entityId: create_id_from('SurveyResponse', ['surveyResponseId'], json),
        orderItemSeqId: json['orderItemSeqId'] as String,
        surveyId: json['surveyId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        orderId: json['orderId'] as String,
        generalFeedback: json['generalFeedback'] as String,
        surveyResponseId: json['surveyResponseId'] as String,
        responseDate: check_dt(json['responseDate']),
        referenceId: json['referenceId'] as String,
        statusId: json['statusId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyResponse overridesSurveyResponse(Map<String, dynamic> map) {
    return SurveyResponse(
        entityId: create_id_from('SurveyResponse', ['surveyResponseId'], map),
        orderItemSeqId: map['orderItemSeqId'],
        surveyId: map['surveyId'],
        lastModifiedDate: map['lastModifiedDate'],
        orderId: map['orderId'],
        generalFeedback: map['generalFeedback'],
        surveyResponseId: map['surveyResponseId'],
        responseDate: map['responseDate'],
        referenceId: map['referenceId'],
        statusId: map['statusId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyResponseAndAnswer extractSurveyResponseAndAnswer(dynamic json) {
    return SurveyResponseAndAnswer(
        entityId: create_id_from('SurveyResponseAndAnswer', ['surveyResponseId', 'surveyQuestionId', 'surveyMultiRespColId'], json),
        amountBase: json['amountBase'] as double,
        surveyQuestionId: json['surveyQuestionId'] as String,
        surveyId: json['surveyId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        orderId: json['orderId'] as String,
        surveyOptionSeqId: json['surveyOptionSeqId'] as String,
        contentId: json['contentId'] as String,
        durationUomId: json['durationUomId'] as String,
        currencyResponse: json['currencyResponse'] as double,
        floatResponse: json['floatResponse'] as double,
        surveyResponseId: json['surveyResponseId'] as String,
        responseDate: check_dt(json['responseDate']),
        referenceId: json['referenceId'] as String,
        duration: json['duration'] as int,
        answeredDate: check_dt(json['answeredDate']),
        weightFactor: json['weightFactor'] as double,
        partyId: json['partyId'] as String,
        surveyMultiRespColId: json['surveyMultiRespColId'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        orderItemSeqId: json['orderItemSeqId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        generalFeedback: json['generalFeedback'] as String,
        numericResponse: json['numericResponse'] as int,
        statusId: json['statusId'] as String,
        textResponse: json['textResponse'] as String,
        amountBaseUomId: json['amountBaseUomId'] as String,
        booleanResponse: json['booleanResponse'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyResponseAndAnswer overridesSurveyResponseAndAnswer(Map<String, dynamic> map) {
    return SurveyResponseAndAnswer(
        entityId: create_id_from('SurveyResponseAndAnswer', ['surveyResponseId', 'surveyQuestionId', 'surveyMultiRespColId'], map),
        amountBase: map['amountBase'],
        surveyQuestionId: map['surveyQuestionId'],
        surveyId: map['surveyId'],
        sequenceNum: map['sequenceNum'],
        orderId: map['orderId'],
        surveyOptionSeqId: map['surveyOptionSeqId'],
        contentId: map['contentId'],
        durationUomId: map['durationUomId'],
        currencyResponse: map['currencyResponse'],
        floatResponse: map['floatResponse'],
        surveyResponseId: map['surveyResponseId'],
        responseDate: map['responseDate'],
        referenceId: map['referenceId'],
        duration: map['duration'],
        answeredDate: map['answeredDate'],
        weightFactor: map['weightFactor'],
        partyId: map['partyId'],
        surveyMultiRespColId: map['surveyMultiRespColId'],
        surveyMultiRespId: map['surveyMultiRespId'],
        orderItemSeqId: map['orderItemSeqId'],
        lastModifiedDate: map['lastModifiedDate'],
        generalFeedback: map['generalFeedback'],
        numericResponse: map['numericResponse'],
        statusId: map['statusId'],
        textResponse: map['textResponse'],
        amountBaseUomId: map['amountBaseUomId'],
        booleanResponse: map['booleanResponse'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyResponseAnswer extractSurveyResponseAnswer(dynamic json) {
    return SurveyResponseAnswer(
        entityId: create_id_from('SurveyResponseAnswer', ['surveyResponseId', 'surveyQuestionId', 'surveyMultiRespColId'], json),
        amountBase: json['amountBase'] as double,
        surveyQuestionId: json['surveyQuestionId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        surveyOptionSeqId: json['surveyOptionSeqId'] as String,
        contentId: json['contentId'] as String,
        durationUomId: json['durationUomId'] as String,
        currencyResponse: json['currencyResponse'] as double,
        floatResponse: json['floatResponse'] as double,
        numericResponse: json['numericResponse'] as int,
        surveyResponseId: json['surveyResponseId'] as String,
        duration: json['duration'] as int,
        answeredDate: check_dt(json['answeredDate']),
        textResponse: json['textResponse'] as String,
        amountBaseUomId: json['amountBaseUomId'] as String,
        booleanResponse: json['booleanResponse'] as String,
        weightFactor: json['weightFactor'] as double,
        surveyMultiRespColId: json['surveyMultiRespColId'] as String,
        surveyMultiRespId: json['surveyMultiRespId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyResponseAnswer overridesSurveyResponseAnswer(Map<String, dynamic> map) {
    return SurveyResponseAnswer(
        entityId: create_id_from('SurveyResponseAnswer', ['surveyResponseId', 'surveyQuestionId', 'surveyMultiRespColId'], map),
        amountBase: map['amountBase'],
        surveyQuestionId: map['surveyQuestionId'],
        sequenceNum: map['sequenceNum'],
        surveyOptionSeqId: map['surveyOptionSeqId'],
        contentId: map['contentId'],
        durationUomId: map['durationUomId'],
        currencyResponse: map['currencyResponse'],
        floatResponse: map['floatResponse'],
        numericResponse: map['numericResponse'],
        surveyResponseId: map['surveyResponseId'],
        duration: map['duration'],
        answeredDate: map['answeredDate'],
        textResponse: map['textResponse'],
        amountBaseUomId: map['amountBaseUomId'],
        booleanResponse: map['booleanResponse'],
        weightFactor: map['weightFactor'],
        surveyMultiRespColId: map['surveyMultiRespColId'],
        surveyMultiRespId: map['surveyMultiRespId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SurveyTrigger extractSurveyTrigger(dynamic json) {
    return SurveyTrigger(
        entityId: create_id_from('SurveyTrigger', ['surveyId', 'surveyApplTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        surveyId: json['surveyId'] as String,
        surveyApplTypeId: json['surveyApplTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SurveyTrigger overridesSurveyTrigger(Map<String, dynamic> map) {
    return SurveyTrigger(
        entityId: create_id_from('SurveyTrigger', ['surveyId', 'surveyApplTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        surveyId: map['surveyId'],
        surveyApplTypeId: map['surveyApplTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}