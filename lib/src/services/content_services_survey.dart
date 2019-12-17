import 'package:sagas_meta/src/models/content_survey.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesSurvey{
  final SrvClient client;
  ContentServicesSurvey(this.client);

  /**
   * Build Pdf From Survey Response - 
   *
   * Requires surveyResponseId
   * Returns outByteBuffer[java.nio.ByteBuffer]
   */
  Future<OfResult> buildPdfFromSurveyResponse({@required String surveyResponseId}) =>
      client.invoke('buildPdfFromSurveyResponse', null, { 'surveyResponseId': surveyResponseId });

  /**
   * Build list of questions and answers From Survey Response - 
   *
   * Requires surveyResponseId
   * Returns questionsAndAnswers[List]
   */
  Future<OfResult> buildSurveyQuestionsAndAnswers({@required String surveyResponseId}) =>
      client.invoke('buildSurveyQuestionsAndAnswers', null, { 'surveyResponseId': surveyResponseId });

  /**
   * Create a Survey - Survey
   *
   * Requires 
   * Returns surveyId[String]
   */
  Future<OfResult> createSurvey(Survey ent, ) =>
      client.invoke('createSurvey', ent, {  });

  /**
   * Create a SurveyApplType - SurveyApplType
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createSurveyApplType(SurveyApplType ent, ) =>
      client.invoke('createSurveyApplType', ent, {  });

  /**
   * Create a SurveyMultiResp; surveyMultiRespId will be auto-sequenced - SurveyMultiResp
   *
   * Requires surveyId
   * Returns surveyMultiRespId[String]
   */
  Future<OfResult> createSurveyMultiResp(SurveyMultiResp ent, ) =>
      client.invoke('createSurveyMultiResp', ent, {  });

  /**
   * Create a SurveyMultiRespColumn; surveyMultiRespColId will be auto-sequenced - SurveyMultiRespColumn
   *
   * Requires surveyId, surveyMultiRespId
   * Returns surveyMultiRespColId[String]
   */
  Future<OfResult> createSurveyMultiRespColumn(SurveyMultiRespColumn ent, ) =>
      client.invoke('createSurveyMultiRespColumn', ent, {  });

  /**
   * Create a SurveyPage; the surveyPageSeqId will be auto-generated - SurveyPage
   *
   * Requires surveyId
   * Returns surveyPageSeqId[String]
   */
  Future<OfResult> createSurveyPage(SurveyPage ent, ) =>
      client.invoke('createSurveyPage', ent, {  });

  /**
   * Create a SurveyQuestion - SurveyQuestion
   *
   * Requires 
   * Returns surveyQuestionId[String]
   */
  Future<OfResult> createSurveyQuestion(SurveyQuestion ent, {String surveyId}) =>
      client.invoke('createSurveyQuestion', ent, { 'surveyId': surveyId });

  /**
   * Create a SurveyQuestionAppl - SurveyQuestionAppl
   *
   * Requires surveyId, surveyQuestionId
   * Returns 
   */
  Future<OfResult> createSurveyQuestionAppl(SurveyQuestionAppl ent, ) =>
      client.invoke('createSurveyQuestionAppl', ent, {  });

  /**
   * Create a SurveyQuestionCategory - SurveyQuestionCategory
   *
   * Requires 
   * Returns surveyQuestionCategoryId[String]
   */
  Future<OfResult> createSurveyQuestionCategory(SurveyQuestionCategory ent, ) =>
      client.invoke('createSurveyQuestionCategory', ent, {  });

  /**
   * Create a SurveyQuestionOption - SurveyQuestionOption
   *
   * Requires surveyQuestionId
   * Returns surveyOptionSeqId[String]
   */
  Future<OfResult> createSurveyQuestionOption(SurveyQuestionOption ent, ) =>
      client.invoke('createSurveyQuestionOption', ent, {  });

  /**
   * Create a SurveyQuestionType - SurveyQuestionType
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createSurveyQuestionType(SurveyQuestionType ent, ) =>
      client.invoke('createSurveyQuestionType', ent, {  });

  /**
   * Create a SurveyTrigger - SurveyTrigger
   *
   * Requires surveyId, surveyApplTypeId
   * Returns 
   */
  Future<OfResult> createSurveyTrigger(SurveyTrigger ent, ) =>
      client.invoke('createSurveyTrigger', ent, {  });

  /**
   * Delete Survey - Survey
   *
   * Requires surveyId
   * Returns 
   */
  Future<OfResult> deleteSurvey(Survey ent, ) =>
      client.invoke('deleteSurvey', ent, {  });

  /**
   * Delete SurveyApplType - SurveyApplType
   *
   * Requires surveyApplTypeId
   * Returns 
   */
  Future<OfResult> deleteSurveyApplType(SurveyApplType ent, ) =>
      client.invoke('deleteSurveyApplType', ent, {  });

  /**
   * Delete SurveyMultiResp - SurveyMultiResp
   *
   * Requires surveyId, surveyMultiRespId
   * Returns 
   */
  Future<OfResult> deleteSurveyMultiResp(SurveyMultiResp ent, ) =>
      client.invoke('deleteSurveyMultiResp', ent, {  });

  /**
   * Delete SurveyMultiRespColumn - SurveyMultiRespColumn
   *
   * Requires surveyId, surveyMultiRespId, surveyMultiRespColId
   * Returns 
   */
  Future<OfResult> deleteSurveyMultiRespColumn(SurveyMultiRespColumn ent, ) =>
      client.invoke('deleteSurveyMultiRespColumn', ent, {  });

  /**
   * Delete SurveyPage - SurveyPage
   *
   * Requires surveyId, surveyPageSeqId
   * Returns 
   */
  Future<OfResult> deleteSurveyPage(SurveyPage ent, ) =>
      client.invoke('deleteSurveyPage', ent, {  });

  /**
   * Delete SurveyQuestion - SurveyQuestion
   *
   * Requires surveyQuestionId
   * Returns 
   */
  Future<OfResult> deleteSurveyQuestion(SurveyQuestion ent, ) =>
      client.invoke('deleteSurveyQuestion', ent, {  });

  /**
   * Delete SurveyQuestionAppl - SurveyQuestionAppl
   *
   * Requires surveyId, surveyQuestionId, fromDate
   * Returns 
   */
  Future<OfResult> deleteSurveyQuestionAppl(SurveyQuestionAppl ent, ) =>
      client.invoke('deleteSurveyQuestionAppl', ent, {  });

  /**
   * Delete SurveyQuestionCategory - SurveyQuestionCategory
   *
   * Requires surveyQuestionCategoryId
   * Returns 
   */
  Future<OfResult> deleteSurveyQuestionCategory(SurveyQuestionCategory ent, ) =>
      client.invoke('deleteSurveyQuestionCategory', ent, {  });

  /**
   * Delete SurveyQuestionOption - SurveyQuestionOption
   *
   * Requires surveyQuestionId, surveyOptionSeqId
   * Returns 
   */
  Future<OfResult> deleteSurveyQuestionOption(SurveyQuestionOption ent, ) =>
      client.invoke('deleteSurveyQuestionOption', ent, {  });

  /**
   * Delete SurveyQuestionType - SurveyQuestionType
   *
   * Requires surveyQuestionTypeId
   * Returns 
   */
  Future<OfResult> deleteSurveyQuestionType(SurveyQuestionType ent, ) =>
      client.invoke('deleteSurveyQuestionType', ent, {  });

  /**
   * Delete SurveyTrigger - SurveyTrigger
   *
   * Requires surveyId, surveyApplTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteSurveyTrigger(SurveyTrigger ent, ) =>
      client.invoke('deleteSurveyTrigger', ent, {  });

  /**
   * Interface for Survey Response Processing services defined on the Survey - 
   *
   * Requires surveyResponseId
   * Returns 
   */
  Future<OfResult> surveyResponseProcessInterface({@required String surveyResponseId}) =>
      client.invoke('surveyResponseProcessInterface', null, { 'surveyResponseId': surveyResponseId });

  /**
   * Update a Survey - Survey
   *
   * Requires surveyId
   * Returns 
   */
  Future<OfResult> updateSurvey(Survey ent, ) =>
      client.invoke('updateSurvey', ent, {  });

  /**
   * Update a SurveyApplType - SurveyApplType
   *
   * Requires surveyApplTypeId
   * Returns 
   */
  Future<OfResult> updateSurveyApplType(SurveyApplType ent, ) =>
      client.invoke('updateSurveyApplType', ent, {  });

  /**
   * Update a SurveyMultiResp - SurveyMultiResp
   *
   * Requires surveyId, surveyMultiRespId
   * Returns 
   */
  Future<OfResult> updateSurveyMultiResp(SurveyMultiResp ent, ) =>
      client.invoke('updateSurveyMultiResp', ent, {  });

  /**
   * Update a SurveyMultiRespColumn - SurveyMultiRespColumn
   *
   * Requires surveyId, surveyMultiRespId, surveyMultiRespColId
   * Returns 
   */
  Future<OfResult> updateSurveyMultiRespColumn(SurveyMultiRespColumn ent, ) =>
      client.invoke('updateSurveyMultiRespColumn', ent, {  });

  /**
   * Update a SurveyPage - SurveyPage
   *
   * Requires surveyId, surveyPageSeqId
   * Returns 
   */
  Future<OfResult> updateSurveyPage(SurveyPage ent, ) =>
      client.invoke('updateSurveyPage', ent, {  });

  /**
   * Update a SurveyQuestion - SurveyQuestion
   *
   * Requires surveyQuestionId
   * Returns 
   */
  Future<OfResult> updateSurveyQuestion(SurveyQuestion ent, ) =>
      client.invoke('updateSurveyQuestion', ent, {  });

  /**
   * Update a SurveyQuestionAppl - SurveyQuestionAppl
   *
   * Requires surveyId, surveyQuestionId, fromDate
   * Returns 
   */
  Future<OfResult> updateSurveyQuestionAppl(SurveyQuestionAppl ent, ) =>
      client.invoke('updateSurveyQuestionAppl', ent, {  });

  /**
   * Update a SurveyQuestionCategory - SurveyQuestionCategory
   *
   * Requires surveyQuestionCategoryId
   * Returns 
   */
  Future<OfResult> updateSurveyQuestionCategory(SurveyQuestionCategory ent, ) =>
      client.invoke('updateSurveyQuestionCategory', ent, {  });

  /**
   * Update a SurveyQuestionOption - SurveyQuestionOption
   *
   * Requires surveyQuestionId, surveyOptionSeqId
   * Returns 
   */
  Future<OfResult> updateSurveyQuestionOption(SurveyQuestionOption ent, ) =>
      client.invoke('updateSurveyQuestionOption', ent, {  });

  /**
   * Update a SurveyQuestionType - SurveyQuestionType
   *
   * Requires surveyQuestionTypeId
   * Returns 
   */
  Future<OfResult> updateSurveyQuestionType(SurveyQuestionType ent, ) =>
      client.invoke('updateSurveyQuestionType', ent, {  });

  /**
   * Update a SurveyTrigger - SurveyTrigger
   *
   * Requires surveyId, surveyApplTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateSurveyTrigger(SurveyTrigger ent, ) =>
      client.invoke('updateSurveyTrigger', ent, {  });

}