import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity SalesForecast, Stores sales forecast data for sales opportunities.
class SalesForecast extends EntityBase {

  /// this entity has only one pk
  final double forecastAmount;
  final double pipelineAmount;
  final String modifiedByUserLoginId;
  final double quotaAmount;
  final double bestCaseAmount;
  final String createdByUserLoginId;
  final String internalPartyId;
  final double closedAmount;
  final String salesForecastId; // pk
  final double percentOfQuotaForecast;
  final String currencyUomId;
  final String parentSalesForecastId;
  final String organizationPartyId;
  final double percentOfQuotaClosed;
  final String customTimePeriodId;
  SalesForecast({entityId,
    this.forecastAmount, this.pipelineAmount, this.modifiedByUserLoginId, this.quotaAmount, this.bestCaseAmount, this.createdByUserLoginId, this.internalPartyId, this.closedAmount, @required this.salesForecastId, this.percentOfQuotaForecast, this.currencyUomId, this.parentSalesForecastId, this.organizationPartyId, this.percentOfQuotaClosed, this.customTimePeriodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesForecast { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'forecastAmount':forecastAmount, 'pipelineAmount':pipelineAmount, 'modifiedByUserLoginId':modifiedByUserLoginId, 'quotaAmount':quotaAmount, 'bestCaseAmount':bestCaseAmount, 'createdByUserLoginId':createdByUserLoginId, 'internalPartyId':internalPartyId, 'closedAmount':closedAmount, 'salesForecastId':salesForecastId, 'percentOfQuotaForecast':percentOfQuotaForecast, 'currencyUomId':currencyUomId, 'parentSalesForecastId':parentSalesForecastId, 'organizationPartyId':organizationPartyId, 'percentOfQuotaClosed':percentOfQuotaClosed, 'customTimePeriodId':customTimePeriodId};
  }

}

/// Entity SalesForecastAndCustomTimePeriod, View for selecting the forecast with its time period.
class SalesForecastAndCustomTimePeriod extends EntityBase {

  /// this entity has only one pk
  final int periodNum;
  final double forecastAmount;
  final double pipelineAmount;
  final String modifiedByUserLoginId;
  final double quotaAmount;
  final double bestCaseAmount;
  final String createdByUserLoginId;
  final String periodTypeId;
  final String periodName;
  final String parentPeriodId;
  final String internalPartyId;
  final double closedAmount;
  final String salesForecastId; // pk
  final double percentOfQuotaForecast;
  final DateTime thruDate;
  final DateTime fromDate;
  final String currencyUomId;
  final String isClosed;
  final String parentSalesForecastId;
  final String organizationPartyId;
  final double percentOfQuotaClosed;
  final String customTimePeriodId;
  SalesForecastAndCustomTimePeriod({entityId,
    this.periodNum, this.forecastAmount, this.pipelineAmount, this.modifiedByUserLoginId, this.quotaAmount, this.bestCaseAmount, this.createdByUserLoginId, this.periodTypeId, this.periodName, this.parentPeriodId, this.internalPartyId, this.closedAmount, @required this.salesForecastId, this.percentOfQuotaForecast, this.thruDate, this.fromDate, this.currencyUomId, this.isClosed, this.parentSalesForecastId, this.organizationPartyId, this.percentOfQuotaClosed, this.customTimePeriodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesForecastAndCustomTimePeriod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'periodNum':periodNum, 'forecastAmount':forecastAmount, 'pipelineAmount':pipelineAmount, 'modifiedByUserLoginId':modifiedByUserLoginId, 'quotaAmount':quotaAmount, 'bestCaseAmount':bestCaseAmount, 'createdByUserLoginId':createdByUserLoginId, 'periodTypeId':periodTypeId, 'periodName':periodName, 'parentPeriodId':parentPeriodId, 'internalPartyId':internalPartyId, 'closedAmount':closedAmount, 'salesForecastId':salesForecastId, 'percentOfQuotaForecast':percentOfQuotaForecast, 'thruDate':thruDate, 'fromDate':fromDate, 'currencyUomId':currencyUomId, 'isClosed':isClosed, 'parentSalesForecastId':parentSalesForecastId, 'organizationPartyId':organizationPartyId, 'percentOfQuotaClosed':percentOfQuotaClosed, 'customTimePeriodId':customTimePeriodId};
  }

}

/// Entity SalesForecastDetail, Stores Details of Resourses of Sales Forecast for simulation of MRP
class SalesForecastDetail extends EntityBase {

  final double amount;
  final double quantity;
  final String productCategoryId;
  final String productId;
  final String quantityUomId;
  final String salesForecastId; // pk
  final String salesForecastDetailId; // pk
  SalesForecastDetail({entityId,
    this.amount, this.quantity, this.productCategoryId, this.productId, this.quantityUomId, @required this.salesForecastId, @required this.salesForecastDetailId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesForecastDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'quantity':quantity, 'productCategoryId':productCategoryId, 'productId':productId, 'quantityUomId':quantityUomId, 'salesForecastId':salesForecastId, 'salesForecastDetailId':salesForecastDetailId};
  }

}

/// Entity SalesForecastHistory, Keeps a record of changes to a sales forecast.
class SalesForecastHistory extends EntityBase {

  /// this entity has only one pk
  final double forecastAmount;
  final String modifiedByUserLoginId;
  final double quotaAmount;
  final double bestCaseAmount;
  final String changeNote;
  final String salesForecastHistoryId; // pk
  final String internalPartyId;
  final double closedAmount;
  final String salesForecastId;
  final double percentOfQuotaForecast;
  final String currencyUomId;
  final String parentSalesForecastId;
  final String organizationPartyId;
  final double percentOfQuotaClosed;
  final DateTime modifiedTimestamp;
  final String customTimePeriodId;
  SalesForecastHistory({entityId,
    this.forecastAmount, this.modifiedByUserLoginId, this.quotaAmount, this.bestCaseAmount, this.changeNote, @required this.salesForecastHistoryId, this.internalPartyId, this.closedAmount, this.salesForecastId, this.percentOfQuotaForecast, this.currencyUomId, this.parentSalesForecastId, this.organizationPartyId, this.percentOfQuotaClosed, this.modifiedTimestamp, this.customTimePeriodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesForecastHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'forecastAmount':forecastAmount, 'modifiedByUserLoginId':modifiedByUserLoginId, 'quotaAmount':quotaAmount, 'bestCaseAmount':bestCaseAmount, 'changeNote':changeNote, 'salesForecastHistoryId':salesForecastHistoryId, 'internalPartyId':internalPartyId, 'closedAmount':closedAmount, 'salesForecastId':salesForecastId, 'percentOfQuotaForecast':percentOfQuotaForecast, 'currencyUomId':currencyUomId, 'parentSalesForecastId':parentSalesForecastId, 'organizationPartyId':organizationPartyId, 'percentOfQuotaClosed':percentOfQuotaClosed, 'modifiedTimestamp':modifiedTimestamp, 'customTimePeriodId':customTimePeriodId};
  }

}

/// Entity SalesOpportunity, Main entity of information about sales opportunities
class SalesOpportunity extends EntityBase {

  /// this entity has only one pk
  final double estimatedProbability;
  final String opportunityName;
  final String marketingCampaignId;
  final String description;
  final String opportunityStageId;
  final String typeEnumId;
  final DateTime estimatedCloseDate;
  final String dataSourceId;
  final String currencyUomId;
  final String nextStep;
  final DateTime nextStepDate;
  final double estimatedAmount;
  final String createdByUserLogin;
  final String salesOpportunityId; // pk
  SalesOpportunity({entityId,
    this.estimatedProbability, this.opportunityName, this.marketingCampaignId, this.description, this.opportunityStageId, this.typeEnumId, this.estimatedCloseDate, this.dataSourceId, this.currencyUomId, this.nextStep, this.nextStepDate, this.estimatedAmount, this.createdByUserLogin, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunity { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'estimatedProbability':estimatedProbability, 'opportunityName':opportunityName, 'marketingCampaignId':marketingCampaignId, 'description':description, 'opportunityStageId':opportunityStageId, 'typeEnumId':typeEnumId, 'estimatedCloseDate':estimatedCloseDate, 'dataSourceId':dataSourceId, 'currencyUomId':currencyUomId, 'nextStep':nextStep, 'nextStepDate':nextStepDate, 'estimatedAmount':estimatedAmount, 'createdByUserLogin':createdByUserLogin, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityAndRole, SalesOpportunity And Role View
class SalesOpportunityAndRole extends EntityBase {

  final String roleTypeId; // pk
  final double estimatedProbability;
  final String opportunityName;
  final String marketingCampaignId;
  final String description;
  final String opportunityStageId;
  final String typeEnumId;
  final DateTime estimatedCloseDate;
  final String dataSourceId;
  final String currencyUomId;
  final String nextStep;
  final DateTime nextStepDate;
  final String partyId; // pk
  final double estimatedAmount;
  final String createdByUserLogin;
  final String salesOpportunityId; // pk
  SalesOpportunityAndRole({entityId,
    @required this.roleTypeId, this.estimatedProbability, this.opportunityName, this.marketingCampaignId, this.description, this.opportunityStageId, this.typeEnumId, this.estimatedCloseDate, this.dataSourceId, this.currencyUomId, this.nextStep, this.nextStepDate, @required this.partyId, this.estimatedAmount, this.createdByUserLogin, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityAndRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'estimatedProbability':estimatedProbability, 'opportunityName':opportunityName, 'marketingCampaignId':marketingCampaignId, 'description':description, 'opportunityStageId':opportunityStageId, 'typeEnumId':typeEnumId, 'estimatedCloseDate':estimatedCloseDate, 'dataSourceId':dataSourceId, 'currencyUomId':currencyUomId, 'nextStep':nextStep, 'nextStepDate':nextStepDate, 'partyId':partyId, 'estimatedAmount':estimatedAmount, 'createdByUserLogin':createdByUserLogin, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityCompetitor, Sales opportunity competitors record
class SalesOpportunityCompetitor extends EntityBase {

  final String competitorPartyId; // pk
  final String strengths;
  final String weaknesses;
  final String positionEnumId;
  final String salesOpportunityId; // pk
  SalesOpportunityCompetitor({entityId,
    @required this.competitorPartyId, this.strengths, this.weaknesses, this.positionEnumId, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityCompetitor { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'competitorPartyId':competitorPartyId, 'strengths':strengths, 'weaknesses':weaknesses, 'positionEnumId':positionEnumId, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityHistory, Tracks a history of sales opportunity information
class SalesOpportunityHistory extends EntityBase {

  /// this entity has only one pk
  final double estimatedProbability;
  final String salesOpportunityHistoryId; // pk
  final String changeNote;
  final String description;
  final String opportunityStageId;
  final DateTime estimatedCloseDate;
  final String currencyUomId;
  final String nextStep;
  final DateTime modifiedTimestamp;
  final String modifiedByUserLogin;
  final double estimatedAmount;
  final String salesOpportunityId;
  SalesOpportunityHistory({entityId,
    this.estimatedProbability, @required this.salesOpportunityHistoryId, this.changeNote, this.description, this.opportunityStageId, this.estimatedCloseDate, this.currencyUomId, this.nextStep, this.modifiedTimestamp, this.modifiedByUserLogin, this.estimatedAmount, this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'estimatedProbability':estimatedProbability, 'salesOpportunityHistoryId':salesOpportunityHistoryId, 'changeNote':changeNote, 'description':description, 'opportunityStageId':opportunityStageId, 'estimatedCloseDate':estimatedCloseDate, 'currencyUomId':currencyUomId, 'nextStep':nextStep, 'modifiedTimestamp':modifiedTimestamp, 'modifiedByUserLogin':modifiedByUserLogin, 'estimatedAmount':estimatedAmount, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityQuote, Relates sales opportunities to their quotes.
class SalesOpportunityQuote extends EntityBase {

  final String quoteId; // pk
  final String salesOpportunityId; // pk
  SalesOpportunityQuote({entityId,
    @required this.quoteId, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityQuote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'quoteId':quoteId, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityRole, Describes roles of different parties involved in a sales opportunity
class SalesOpportunityRole extends EntityBase {

  final String roleTypeId; // pk
  final String partyId; // pk
  final String salesOpportunityId; // pk
  SalesOpportunityRole({entityId,
    @required this.roleTypeId, @required this.partyId, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'partyId':partyId, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityStage, Describes stages of a sales opportunity with associated probability factors.
class SalesOpportunityStage extends EntityBase {

  /// this entity has only one pk
  final int sequenceNum;
  final double defaultProbability;
  final String description;
  final String opportunityStageId; // pk
  SalesOpportunityStage({entityId,
    this.sequenceNum, this.defaultProbability, this.description, @required this.opportunityStageId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityStage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sequenceNum':sequenceNum, 'defaultProbability':defaultProbability, 'description':description, 'opportunityStageId':opportunityStageId};
  }

}

/// Entity SalesOpportunityTrckCode, Sales opportunity traking code
class SalesOpportunityTrckCode extends EntityBase {

  final String trackingCodeId; // pk
  final DateTime receivedDate;
  final String salesOpportunityId; // pk
  SalesOpportunityTrckCode({entityId,
    @required this.trackingCodeId, this.receivedDate, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityTrckCode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trackingCodeId':trackingCodeId, 'receivedDate':receivedDate, 'salesOpportunityId':salesOpportunityId};
  }

}

/// Entity SalesOpportunityWorkEffort, Relates sales opportunities to their work efforts.
class SalesOpportunityWorkEffort extends EntityBase {

  final String workEffortId; // pk
  final String salesOpportunityId; // pk
  SalesOpportunityWorkEffort({entityId,
    @required this.workEffortId, @required this.salesOpportunityId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalesOpportunityWorkEffort { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'salesOpportunityId':salesOpportunityId};
  }

}