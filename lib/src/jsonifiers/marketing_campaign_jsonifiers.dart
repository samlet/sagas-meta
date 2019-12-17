import 'package:sagas_meta/src/models/marketing_campaign.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class MarketingCampaignJsonifier{
  static MarketingCampaign extractMarketingCampaign(dynamic json) {
    return MarketingCampaign(
        entityId: create_id_from('MarketingCampaign', ['marketingCampaignId'], json),
        expectedResponsePercent: json['expectedResponsePercent'] as double,
        expectedRevenue: json['expectedRevenue'] as double,
        convertedLeads: json['convertedLeads'] as String,
        campaignSummary: json['campaignSummary'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        numSent: json['numSent'] as int,
        parentCampaignId: json['parentCampaignId'] as String,
        estimatedCost: json['estimatedCost'] as double,
        isActive: json['isActive'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        currencyUomId: json['currencyUomId'] as String,
        statusId: json['statusId'] as String,
        budgetedCost: json['budgetedCost'] as double,
        campaignName: json['campaignName'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        startDate: check_dt(json['startDate']),
        actualCost: json['actualCost'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaign overridesMarketingCampaign(Map<String, dynamic> map) {
    return MarketingCampaign(
        entityId: create_id_from('MarketingCampaign', ['marketingCampaignId'], map),
        expectedResponsePercent: map['expectedResponsePercent'],
        expectedRevenue: map['expectedRevenue'],
        convertedLeads: map['convertedLeads'],
        campaignSummary: map['campaignSummary'],
        marketingCampaignId: map['marketingCampaignId'],
        numSent: map['numSent'],
        parentCampaignId: map['parentCampaignId'],
        estimatedCost: map['estimatedCost'],
        isActive: map['isActive'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        currencyUomId: map['currencyUomId'],
        statusId: map['statusId'],
        budgetedCost: map['budgetedCost'],
        campaignName: map['campaignName'],
        createdByUserLogin: map['createdByUserLogin'],
        startDate: map['startDate'],
        actualCost: map['actualCost'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MarketingCampaignNote extractMarketingCampaignNote(dynamic json) {
    return MarketingCampaignNote(
        entityId: create_id_from('MarketingCampaignNote', ['marketingCampaignId', 'noteId'], json),
        marketingCampaignId: json['marketingCampaignId'] as String,
        noteId: json['noteId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignNote overridesMarketingCampaignNote(Map<String, dynamic> map) {
    return MarketingCampaignNote(
        entityId: create_id_from('MarketingCampaignNote', ['marketingCampaignId', 'noteId'], map),
        marketingCampaignId: map['marketingCampaignId'],
        noteId: map['noteId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MarketingCampaignPrice extractMarketingCampaignPrice(dynamic json) {
    return MarketingCampaignPrice(
        entityId: create_id_from('MarketingCampaignPrice', ['marketingCampaignId', 'productPriceRuleId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        marketingCampaignId: json['marketingCampaignId'] as String,
        productPriceRuleId: json['productPriceRuleId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignPrice overridesMarketingCampaignPrice(Map<String, dynamic> map) {
    return MarketingCampaignPrice(
        entityId: create_id_from('MarketingCampaignPrice', ['marketingCampaignId', 'productPriceRuleId', 'fromDate'], map),
        fromDate: map['fromDate'],
        marketingCampaignId: map['marketingCampaignId'],
        productPriceRuleId: map['productPriceRuleId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MarketingCampaignPromo extractMarketingCampaignPromo(dynamic json) {
    return MarketingCampaignPromo(
        entityId: create_id_from('MarketingCampaignPromo', ['marketingCampaignId', 'productPromoId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        marketingCampaignId: json['marketingCampaignId'] as String,
        productPromoId: json['productPromoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignPromo overridesMarketingCampaignPromo(Map<String, dynamic> map) {
    return MarketingCampaignPromo(
        entityId: create_id_from('MarketingCampaignPromo', ['marketingCampaignId', 'productPromoId', 'fromDate'], map),
        fromDate: map['fromDate'],
        marketingCampaignId: map['marketingCampaignId'],
        productPromoId: map['productPromoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MarketingCampaignRole extractMarketingCampaignRole(dynamic json) {
    return MarketingCampaignRole(
        entityId: create_id_from('MarketingCampaignRole', ['marketingCampaignId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        marketingCampaignId: json['marketingCampaignId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MarketingCampaignRole overridesMarketingCampaignRole(Map<String, dynamic> map) {
    return MarketingCampaignRole(
        entityId: create_id_from('MarketingCampaignRole', ['marketingCampaignId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        marketingCampaignId: map['marketingCampaignId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}