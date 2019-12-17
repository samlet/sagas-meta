import 'package:sagas_meta/src/models/marketing_opportunity.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingOpportunityJsonifier{
  static SalesForecast extractSalesForecast(dynamic json) {
    return SalesForecast(
        entityId: create_id_from('SalesForecast', ['salesForecastId'], json),
        forecastAmount: json['forecastAmount'] as double,
        pipelineAmount: json['pipelineAmount'] as double,
        modifiedByUserLoginId: json['modifiedByUserLoginId'] as String,
        quotaAmount: json['quotaAmount'] as double,
        bestCaseAmount: json['bestCaseAmount'] as double,
        createdByUserLoginId: json['createdByUserLoginId'] as String,
        internalPartyId: json['internalPartyId'] as String,
        closedAmount: json['closedAmount'] as double,
        salesForecastId: json['salesForecastId'] as String,
        percentOfQuotaForecast: json['percentOfQuotaForecast'] as double,
        currencyUomId: json['currencyUomId'] as String,
        parentSalesForecastId: json['parentSalesForecastId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        percentOfQuotaClosed: json['percentOfQuotaClosed'] as double,
        customTimePeriodId: json['customTimePeriodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesForecast overridesSalesForecast(Map<String, dynamic> map) {
    return SalesForecast(
        entityId: create_id_from('SalesForecast', ['salesForecastId'], map),
        forecastAmount: map['forecastAmount'],
        pipelineAmount: map['pipelineAmount'],
        modifiedByUserLoginId: map['modifiedByUserLoginId'],
        quotaAmount: map['quotaAmount'],
        bestCaseAmount: map['bestCaseAmount'],
        createdByUserLoginId: map['createdByUserLoginId'],
        internalPartyId: map['internalPartyId'],
        closedAmount: map['closedAmount'],
        salesForecastId: map['salesForecastId'],
        percentOfQuotaForecast: map['percentOfQuotaForecast'],
        currencyUomId: map['currencyUomId'],
        parentSalesForecastId: map['parentSalesForecastId'],
        organizationPartyId: map['organizationPartyId'],
        percentOfQuotaClosed: map['percentOfQuotaClosed'],
        customTimePeriodId: map['customTimePeriodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesForecastAndCustomTimePeriod extractSalesForecastAndCustomTimePeriod(dynamic json) {
    return SalesForecastAndCustomTimePeriod(
        entityId: create_id_from('SalesForecastAndCustomTimePeriod', ['salesForecastId'], json),
        periodNum: json['periodNum'] as int,
        forecastAmount: json['forecastAmount'] as double,
        pipelineAmount: json['pipelineAmount'] as double,
        modifiedByUserLoginId: json['modifiedByUserLoginId'] as String,
        quotaAmount: json['quotaAmount'] as double,
        bestCaseAmount: json['bestCaseAmount'] as double,
        createdByUserLoginId: json['createdByUserLoginId'] as String,
        periodTypeId: json['periodTypeId'] as String,
        periodName: json['periodName'] as String,
        parentPeriodId: json['parentPeriodId'] as String,
        internalPartyId: json['internalPartyId'] as String,
        closedAmount: json['closedAmount'] as double,
        salesForecastId: json['salesForecastId'] as String,
        percentOfQuotaForecast: json['percentOfQuotaForecast'] as double,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        currencyUomId: json['currencyUomId'] as String,
        isClosed: json['isClosed'] as String,
        parentSalesForecastId: json['parentSalesForecastId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        percentOfQuotaClosed: json['percentOfQuotaClosed'] as double,
        customTimePeriodId: json['customTimePeriodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesForecastAndCustomTimePeriod overridesSalesForecastAndCustomTimePeriod(Map<String, dynamic> map) {
    return SalesForecastAndCustomTimePeriod(
        entityId: create_id_from('SalesForecastAndCustomTimePeriod', ['salesForecastId'], map),
        periodNum: map['periodNum'],
        forecastAmount: map['forecastAmount'],
        pipelineAmount: map['pipelineAmount'],
        modifiedByUserLoginId: map['modifiedByUserLoginId'],
        quotaAmount: map['quotaAmount'],
        bestCaseAmount: map['bestCaseAmount'],
        createdByUserLoginId: map['createdByUserLoginId'],
        periodTypeId: map['periodTypeId'],
        periodName: map['periodName'],
        parentPeriodId: map['parentPeriodId'],
        internalPartyId: map['internalPartyId'],
        closedAmount: map['closedAmount'],
        salesForecastId: map['salesForecastId'],
        percentOfQuotaForecast: map['percentOfQuotaForecast'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        currencyUomId: map['currencyUomId'],
        isClosed: map['isClosed'],
        parentSalesForecastId: map['parentSalesForecastId'],
        organizationPartyId: map['organizationPartyId'],
        percentOfQuotaClosed: map['percentOfQuotaClosed'],
        customTimePeriodId: map['customTimePeriodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesForecastDetail extractSalesForecastDetail(dynamic json) {
    return SalesForecastDetail(
        entityId: create_id_from('SalesForecastDetail', ['salesForecastId', 'salesForecastDetailId'], json),
        amount: json['amount'] as double,
        quantity: json['quantity'] as double,
        productCategoryId: json['productCategoryId'] as String,
        productId: json['productId'] as String,
        quantityUomId: json['quantityUomId'] as String,
        salesForecastId: json['salesForecastId'] as String,
        salesForecastDetailId: json['salesForecastDetailId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesForecastDetail overridesSalesForecastDetail(Map<String, dynamic> map) {
    return SalesForecastDetail(
        entityId: create_id_from('SalesForecastDetail', ['salesForecastId', 'salesForecastDetailId'], map),
        amount: map['amount'],
        quantity: map['quantity'],
        productCategoryId: map['productCategoryId'],
        productId: map['productId'],
        quantityUomId: map['quantityUomId'],
        salesForecastId: map['salesForecastId'],
        salesForecastDetailId: map['salesForecastDetailId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesForecastHistory extractSalesForecastHistory(dynamic json) {
    return SalesForecastHistory(
        entityId: create_id_from('SalesForecastHistory', ['salesForecastHistoryId'], json),
        forecastAmount: json['forecastAmount'] as double,
        modifiedByUserLoginId: json['modifiedByUserLoginId'] as String,
        quotaAmount: json['quotaAmount'] as double,
        bestCaseAmount: json['bestCaseAmount'] as double,
        changeNote: json['changeNote'] as String,
        salesForecastHistoryId: json['salesForecastHistoryId'] as String,
        internalPartyId: json['internalPartyId'] as String,
        closedAmount: json['closedAmount'] as double,
        salesForecastId: json['salesForecastId'] as String,
        percentOfQuotaForecast: json['percentOfQuotaForecast'] as double,
        currencyUomId: json['currencyUomId'] as String,
        parentSalesForecastId: json['parentSalesForecastId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        percentOfQuotaClosed: json['percentOfQuotaClosed'] as double,
        modifiedTimestamp: check_dt(json['modifiedTimestamp']),
        customTimePeriodId: json['customTimePeriodId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesForecastHistory overridesSalesForecastHistory(Map<String, dynamic> map) {
    return SalesForecastHistory(
        entityId: create_id_from('SalesForecastHistory', ['salesForecastHistoryId'], map),
        forecastAmount: map['forecastAmount'],
        modifiedByUserLoginId: map['modifiedByUserLoginId'],
        quotaAmount: map['quotaAmount'],
        bestCaseAmount: map['bestCaseAmount'],
        changeNote: map['changeNote'],
        salesForecastHistoryId: map['salesForecastHistoryId'],
        internalPartyId: map['internalPartyId'],
        closedAmount: map['closedAmount'],
        salesForecastId: map['salesForecastId'],
        percentOfQuotaForecast: map['percentOfQuotaForecast'],
        currencyUomId: map['currencyUomId'],
        parentSalesForecastId: map['parentSalesForecastId'],
        organizationPartyId: map['organizationPartyId'],
        percentOfQuotaClosed: map['percentOfQuotaClosed'],
        modifiedTimestamp: map['modifiedTimestamp'],
        customTimePeriodId: map['customTimePeriodId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunity extractSalesOpportunity(dynamic json) {
    return SalesOpportunity(
        entityId: create_id_from('SalesOpportunity', ['salesOpportunityId'], json),
        estimatedProbability: json['estimatedProbability'] as double,
        opportunityName: json['opportunityName'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        description: json['description'] as String,
        opportunityStageId: json['opportunityStageId'] as String,
        typeEnumId: json['typeEnumId'] as String,
        estimatedCloseDate: check_dt(json['estimatedCloseDate']),
        dataSourceId: json['dataSourceId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        nextStep: json['nextStep'] as String,
        nextStepDate: check_dt(json['nextStepDate']),
        estimatedAmount: json['estimatedAmount'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunity overridesSalesOpportunity(Map<String, dynamic> map) {
    return SalesOpportunity(
        entityId: create_id_from('SalesOpportunity', ['salesOpportunityId'], map),
        estimatedProbability: map['estimatedProbability'],
        opportunityName: map['opportunityName'],
        marketingCampaignId: map['marketingCampaignId'],
        description: map['description'],
        opportunityStageId: map['opportunityStageId'],
        typeEnumId: map['typeEnumId'],
        estimatedCloseDate: map['estimatedCloseDate'],
        dataSourceId: map['dataSourceId'],
        currencyUomId: map['currencyUomId'],
        nextStep: map['nextStep'],
        nextStepDate: map['nextStepDate'],
        estimatedAmount: map['estimatedAmount'],
        createdByUserLogin: map['createdByUserLogin'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityAndRole extractSalesOpportunityAndRole(dynamic json) {
    return SalesOpportunityAndRole(
        entityId: create_id_from('SalesOpportunityAndRole', ['partyId', 'roleTypeId', 'salesOpportunityId'], json),
        roleTypeId: json['roleTypeId'] as String,
        estimatedProbability: json['estimatedProbability'] as double,
        opportunityName: json['opportunityName'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        description: json['description'] as String,
        opportunityStageId: json['opportunityStageId'] as String,
        typeEnumId: json['typeEnumId'] as String,
        estimatedCloseDate: check_dt(json['estimatedCloseDate']),
        dataSourceId: json['dataSourceId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        nextStep: json['nextStep'] as String,
        nextStepDate: check_dt(json['nextStepDate']),
        partyId: json['partyId'] as String,
        estimatedAmount: json['estimatedAmount'] as double,
        createdByUserLogin: json['createdByUserLogin'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityAndRole overridesSalesOpportunityAndRole(Map<String, dynamic> map) {
    return SalesOpportunityAndRole(
        entityId: create_id_from('SalesOpportunityAndRole', ['partyId', 'roleTypeId', 'salesOpportunityId'], map),
        roleTypeId: map['roleTypeId'],
        estimatedProbability: map['estimatedProbability'],
        opportunityName: map['opportunityName'],
        marketingCampaignId: map['marketingCampaignId'],
        description: map['description'],
        opportunityStageId: map['opportunityStageId'],
        typeEnumId: map['typeEnumId'],
        estimatedCloseDate: map['estimatedCloseDate'],
        dataSourceId: map['dataSourceId'],
        currencyUomId: map['currencyUomId'],
        nextStep: map['nextStep'],
        nextStepDate: map['nextStepDate'],
        partyId: map['partyId'],
        estimatedAmount: map['estimatedAmount'],
        createdByUserLogin: map['createdByUserLogin'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityCompetitor extractSalesOpportunityCompetitor(dynamic json) {
    return SalesOpportunityCompetitor(
        entityId: create_id_from('SalesOpportunityCompetitor', ['salesOpportunityId', 'competitorPartyId'], json),
        competitorPartyId: json['competitorPartyId'] as String,
        strengths: json['strengths'] as String,
        weaknesses: json['weaknesses'] as String,
        positionEnumId: json['positionEnumId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityCompetitor overridesSalesOpportunityCompetitor(Map<String, dynamic> map) {
    return SalesOpportunityCompetitor(
        entityId: create_id_from('SalesOpportunityCompetitor', ['salesOpportunityId', 'competitorPartyId'], map),
        competitorPartyId: map['competitorPartyId'],
        strengths: map['strengths'],
        weaknesses: map['weaknesses'],
        positionEnumId: map['positionEnumId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityHistory extractSalesOpportunityHistory(dynamic json) {
    return SalesOpportunityHistory(
        entityId: create_id_from('SalesOpportunityHistory', ['salesOpportunityHistoryId'], json),
        estimatedProbability: json['estimatedProbability'] as double,
        salesOpportunityHistoryId: json['salesOpportunityHistoryId'] as String,
        changeNote: json['changeNote'] as String,
        description: json['description'] as String,
        opportunityStageId: json['opportunityStageId'] as String,
        estimatedCloseDate: check_dt(json['estimatedCloseDate']),
        currencyUomId: json['currencyUomId'] as String,
        nextStep: json['nextStep'] as String,
        modifiedTimestamp: check_dt(json['modifiedTimestamp']),
        modifiedByUserLogin: json['modifiedByUserLogin'] as String,
        estimatedAmount: json['estimatedAmount'] as double,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityHistory overridesSalesOpportunityHistory(Map<String, dynamic> map) {
    return SalesOpportunityHistory(
        entityId: create_id_from('SalesOpportunityHistory', ['salesOpportunityHistoryId'], map),
        estimatedProbability: map['estimatedProbability'],
        salesOpportunityHistoryId: map['salesOpportunityHistoryId'],
        changeNote: map['changeNote'],
        description: map['description'],
        opportunityStageId: map['opportunityStageId'],
        estimatedCloseDate: map['estimatedCloseDate'],
        currencyUomId: map['currencyUomId'],
        nextStep: map['nextStep'],
        modifiedTimestamp: map['modifiedTimestamp'],
        modifiedByUserLogin: map['modifiedByUserLogin'],
        estimatedAmount: map['estimatedAmount'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityQuote extractSalesOpportunityQuote(dynamic json) {
    return SalesOpportunityQuote(
        entityId: create_id_from('SalesOpportunityQuote', ['salesOpportunityId', 'quoteId'], json),
        quoteId: json['quoteId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityQuote overridesSalesOpportunityQuote(Map<String, dynamic> map) {
    return SalesOpportunityQuote(
        entityId: create_id_from('SalesOpportunityQuote', ['salesOpportunityId', 'quoteId'], map),
        quoteId: map['quoteId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityRole extractSalesOpportunityRole(dynamic json) {
    return SalesOpportunityRole(
        entityId: create_id_from('SalesOpportunityRole', ['salesOpportunityId', 'partyId', 'roleTypeId'], json),
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityRole overridesSalesOpportunityRole(Map<String, dynamic> map) {
    return SalesOpportunityRole(
        entityId: create_id_from('SalesOpportunityRole', ['salesOpportunityId', 'partyId', 'roleTypeId'], map),
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityStage extractSalesOpportunityStage(dynamic json) {
    return SalesOpportunityStage(
        entityId: create_id_from('SalesOpportunityStage', ['opportunityStageId'], json),
        sequenceNum: json['sequenceNum'] as int,
        defaultProbability: json['defaultProbability'] as double,
        description: json['description'] as String,
        opportunityStageId: json['opportunityStageId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityStage overridesSalesOpportunityStage(Map<String, dynamic> map) {
    return SalesOpportunityStage(
        entityId: create_id_from('SalesOpportunityStage', ['opportunityStageId'], map),
        sequenceNum: map['sequenceNum'],
        defaultProbability: map['defaultProbability'],
        description: map['description'],
        opportunityStageId: map['opportunityStageId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityTrckCode extractSalesOpportunityTrckCode(dynamic json) {
    return SalesOpportunityTrckCode(
        entityId: create_id_from('SalesOpportunityTrckCode', ['salesOpportunityId', 'trackingCodeId'], json),
        trackingCodeId: json['trackingCodeId'] as String,
        receivedDate: check_dt(json['receivedDate']),
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityTrckCode overridesSalesOpportunityTrckCode(Map<String, dynamic> map) {
    return SalesOpportunityTrckCode(
        entityId: create_id_from('SalesOpportunityTrckCode', ['salesOpportunityId', 'trackingCodeId'], map),
        trackingCodeId: map['trackingCodeId'],
        receivedDate: map['receivedDate'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalesOpportunityWorkEffort extractSalesOpportunityWorkEffort(dynamic json) {
    return SalesOpportunityWorkEffort(
        entityId: create_id_from('SalesOpportunityWorkEffort', ['salesOpportunityId', 'workEffortId'], json),
        workEffortId: json['workEffortId'] as String,
        salesOpportunityId: json['salesOpportunityId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalesOpportunityWorkEffort overridesSalesOpportunityWorkEffort(Map<String, dynamic> map) {
    return SalesOpportunityWorkEffort(
        entityId: create_id_from('SalesOpportunityWorkEffort', ['salesOpportunityId', 'workEffortId'], map),
        workEffortId: map['workEffortId'],
        salesOpportunityId: map['salesOpportunityId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}