import 'package:sagas_meta/src/models/marketing_opportunity.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class MarketingServicesOpportunity{
  final SrvClient client;
  MarketingServicesOpportunity(this.client);

  /**
   * Creates a Sales Forecast for the userLogin. Requires ORDERMGR_4C_CREATE permission.
            This will save the forecast into the history as well. Note that this service does not compute
            the forecast. That must be done in a higher level service. - SalesForecast
   *
   * Requires 
   * Returns salesForecastId[String]
   */
  Future<OfResult> createSalesForecast(SalesForecast ent, ) =>
      client.invoke('createSalesForecast', ent, {  });

  /**
   * Creates a Sales Forecast Detail - SalesForecastDetail
   *
   * Requires salesForecastId
   * Returns salesForecastDetailId[String], salesForecastDetailId[String]
   */
  Future<OfResult> createSalesForecastDetail(SalesForecastDetail ent, ) =>
      client.invoke('createSalesForecastDetail', ent, {  });

  /**
   * Create an sales opportunity - SalesOpportunity
   *
   * Requires 
   * Returns salesOpportunityId[String]
   */
  Future<OfResult> createSalesOpportunity(SalesOpportunity ent, {String accountPartyId, String leadPartyId}) =>
      client.invoke('createSalesOpportunity', ent, { 'accountPartyId': accountPartyId, 'leadPartyId': leadPartyId });

  /**
   * Create sales opportunity account role - SalesOpportunityRole
   *
   * Requires accountPartyId, salesOpportunityId
   * Returns 
   */
  Future<OfResult> createSalesOpportunityAccountRole(SalesOpportunityRole ent, {@required String accountPartyId}) =>
      client.invoke('createSalesOpportunityAccountRole', ent, { 'accountPartyId': accountPartyId });

  /**
   * Create a SalesOpportunityCompetitor - SalesOpportunityCompetitor
   *
   * Requires salesOpportunityId, competitorPartyId
   * Returns salesOpportunityId[String], competitorPartyId[String]
   */
  Future<OfResult> createSalesOpportunityCompetitor(SalesOpportunityCompetitor ent, ) =>
      client.invoke('createSalesOpportunityCompetitor', ent, {  });

  /**
   * Create sales opportunity lead role - SalesOpportunityRole
   *
   * Requires leadPartyId, salesOpportunityId
   * Returns 
   */
  Future<OfResult> createSalesOpportunityLeadRole(SalesOpportunityRole ent, {@required String leadPartyId}) =>
      client.invoke('createSalesOpportunityLeadRole', ent, { 'leadPartyId': leadPartyId });

  /**
   * Create a SalesOpportunityQuote - SalesOpportunityQuote
   *
   * Requires salesOpportunityId, quoteId
   * Returns salesOpportunityId[String], quoteId[String]
   */
  Future<OfResult> createSalesOpportunityQuote(SalesOpportunityQuote ent, ) =>
      client.invoke('createSalesOpportunityQuote', ent, {  });

  /**
   * Create sales opportunity role - SalesOpportunityRole
   *
   * Requires salesOpportunityId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createSalesOpportunityRole(SalesOpportunityRole ent, ) =>
      client.invoke('createSalesOpportunityRole', ent, {  });

  /**
   * Create a SalesOpportunityStage - SalesOpportunityStage
   *
   * Requires 
   * Returns opportunityStageId[String]
   */
  Future<OfResult> createSalesOpportunityStage(SalesOpportunityStage ent, ) =>
      client.invoke('createSalesOpportunityStage', ent, {  });

  /**
   * Create a SalesOpportunityTrckCode - SalesOpportunityTrckCode
   *
   * Requires salesOpportunityId, trackingCodeId
   * Returns salesOpportunityId[String], trackingCodeId[String]
   */
  Future<OfResult> createSalesOpportunityTrckCode(SalesOpportunityTrckCode ent, ) =>
      client.invoke('createSalesOpportunityTrckCode', ent, {  });

  /**
   * Create a SalesOpportunityWorkEffort - SalesOpportunityWorkEffort
   *
   * Requires salesOpportunityId, workEffortId
   * Returns salesOpportunityId[String], workEffortId[String]
   */
  Future<OfResult> createSalesOpportunityWorkEffort(SalesOpportunityWorkEffort ent, ) =>
      client.invoke('createSalesOpportunityWorkEffort', ent, {  });

  /**
   * Delete a Sales Forecast Detail - SalesForecastDetail
   *
   * Requires salesForecastId, salesForecastDetailId
   * Returns 
   */
  Future<OfResult> deleteSalesForecastDetail(SalesForecastDetail ent, ) =>
      client.invoke('deleteSalesForecastDetail', ent, {  });

  /**
   * Delete a SalesOpportunityCompetitor - SalesOpportunityCompetitor
   *
   * Requires salesOpportunityId, competitorPartyId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityCompetitor(SalesOpportunityCompetitor ent, ) =>
      client.invoke('deleteSalesOpportunityCompetitor', ent, {  });

  /**
   * Delete a SalesOpportunityQuote - SalesOpportunityQuote
   *
   * Requires salesOpportunityId, quoteId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityQuote(SalesOpportunityQuote ent, ) =>
      client.invoke('deleteSalesOpportunityQuote', ent, {  });

  /**
   * Delete a SalesOpportunityRole - SalesOpportunityRole
   *
   * Requires salesOpportunityId, partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityRole(SalesOpportunityRole ent, ) =>
      client.invoke('deleteSalesOpportunityRole', ent, {  });

  /**
   * Delete a SalesOpportunityStage - SalesOpportunityStage
   *
   * Requires opportunityStageId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityStage(SalesOpportunityStage ent, ) =>
      client.invoke('deleteSalesOpportunityStage', ent, {  });

  /**
   * Delete a SalesOpportunityTrckCode - SalesOpportunityTrckCode
   *
   * Requires salesOpportunityId, trackingCodeId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityTrckCode(SalesOpportunityTrckCode ent, ) =>
      client.invoke('deleteSalesOpportunityTrckCode', ent, {  });

  /**
   * Delete a SalesOpportunityWorkEffort - SalesOpportunityWorkEffort
   *
   * Requires salesOpportunityId, workEffortId
   * Returns 
   */
  Future<OfResult> deleteSalesOpportunityWorkEffort(SalesOpportunityWorkEffort ent, ) =>
      client.invoke('deleteSalesOpportunityWorkEffort', ent, {  });

  /**
   * find sales opportunity role party - SalesOpportunityRole
   *
   * Requires roleTypeId
   * Returns partyId[String]
   */
  Future<OfResult> findPartyInSalesOpportunityRole(SalesOpportunityRole ent, ) =>
      client.invoke('findPartyInSalesOpportunityRole', ent, {  });

  /**
   * Updates a Sales Forecast and marks it as modified by the userLogin. Requires ORDERMGR_4C_UPDATE
            permission. This will save the current forecast into the history before overwritting it.
            Note that this service does not compute the forecast. That must be done in a higher level service. - SalesForecast
   *
   * Requires salesForecastId
   * Returns 
   */
  Future<OfResult> updateSalesForecast(SalesForecast ent, {String changeNote}) =>
      client.invoke('updateSalesForecast', ent, { 'changeNote': changeNote });

  /**
   * Updates a Sales Forecast Detail - SalesForecastDetail
   *
   * Requires salesForecastId, salesForecastDetailId
   * Returns 
   */
  Future<OfResult> updateSalesForecastDetail(SalesForecastDetail ent, ) =>
      client.invoke('updateSalesForecastDetail', ent, {  });

  /**
   * Update an sales opportunity - SalesOpportunity
   *
   * Requires salesOpportunityId
   * Returns 
   */
  Future<OfResult> updateSalesOpportunity(SalesOpportunity ent, {String accountPartyId, String leadPartyId}) =>
      client.invoke('updateSalesOpportunity', ent, { 'accountPartyId': accountPartyId, 'leadPartyId': leadPartyId });

  /**
   * Update a SalesOpportunityCompetitor - SalesOpportunityCompetitor
   *
   * Requires salesOpportunityId, competitorPartyId
   * Returns 
   */
  Future<OfResult> updateSalesOpportunityCompetitor(SalesOpportunityCompetitor ent, ) =>
      client.invoke('updateSalesOpportunityCompetitor', ent, {  });

  /**
   * Update a SalesOpportunityStage - SalesOpportunityStage
   *
   * Requires opportunityStageId
   * Returns 
   */
  Future<OfResult> updateSalesOpportunityStage(SalesOpportunityStage ent, ) =>
      client.invoke('updateSalesOpportunityStage', ent, {  });

  /**
   * Update a SalesOpportunityTrckCode - SalesOpportunityTrckCode
   *
   * Requires salesOpportunityId, trackingCodeId
   * Returns 
   */
  Future<OfResult> updateSalesOpportunityTrckCode(SalesOpportunityTrckCode ent, ) =>
      client.invoke('updateSalesOpportunityTrckCode', ent, {  });

}