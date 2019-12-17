import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity MarketingCampaign, Marketing Campaign
class MarketingCampaign extends EntityBase {

  /// this entity has only one pk
  final double expectedResponsePercent;
  final double expectedRevenue;
  final String convertedLeads;
  final String campaignSummary;
  final String marketingCampaignId; // pk
  final int numSent;
  final String parentCampaignId;
  final double estimatedCost;
  final String isActive;
  final DateTime thruDate;
  final DateTime fromDate;
  final String lastModifiedByUserLogin;
  final String currencyUomId;
  final String statusId;
  final double budgetedCost;
  final String campaignName;
  final String createdByUserLogin;
  final DateTime startDate;
  final double actualCost;
  MarketingCampaign({entityId,
    this.expectedResponsePercent, this.expectedRevenue, this.convertedLeads, this.campaignSummary, @required this.marketingCampaignId, this.numSent, this.parentCampaignId, this.estimatedCost, this.isActive, this.thruDate, this.fromDate, this.lastModifiedByUserLogin, this.currencyUomId, this.statusId, this.budgetedCost, this.campaignName, this.createdByUserLogin, this.startDate, this.actualCost,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaign { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'expectedResponsePercent':expectedResponsePercent, 'expectedRevenue':expectedRevenue, 'convertedLeads':convertedLeads, 'campaignSummary':campaignSummary, 'marketingCampaignId':marketingCampaignId, 'numSent':numSent, 'parentCampaignId':parentCampaignId, 'estimatedCost':estimatedCost, 'isActive':isActive, 'thruDate':thruDate, 'fromDate':fromDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'currencyUomId':currencyUomId, 'statusId':statusId, 'budgetedCost':budgetedCost, 'campaignName':campaignName, 'createdByUserLogin':createdByUserLogin, 'startDate':startDate, 'actualCost':actualCost};
  }

}

/// Entity MarketingCampaignNote, Marketing Campaign Note
class MarketingCampaignNote extends EntityBase {

  final String marketingCampaignId; // pk
  final String noteId; // pk
  MarketingCampaignNote({entityId,
    @required this.marketingCampaignId, @required this.noteId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'marketingCampaignId':marketingCampaignId, 'noteId':noteId};
  }

}

/// Entity MarketingCampaignPrice, Marketing Campaign Price
class MarketingCampaignPrice extends EntityBase {

  final DateTime fromDate; // pk
  final String marketingCampaignId; // pk
  final String productPriceRuleId; // pk
  final DateTime thruDate;
  MarketingCampaignPrice({entityId,
    @required this.fromDate, @required this.marketingCampaignId, @required this.productPriceRuleId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignPrice { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'marketingCampaignId':marketingCampaignId, 'productPriceRuleId':productPriceRuleId, 'thruDate':thruDate};
  }

}

/// Entity MarketingCampaignPromo, Marketing Campaign Promo
class MarketingCampaignPromo extends EntityBase {

  final DateTime fromDate; // pk
  final String marketingCampaignId; // pk
  final String productPromoId; // pk
  final DateTime thruDate;
  MarketingCampaignPromo({entityId,
    @required this.fromDate, @required this.marketingCampaignId, @required this.productPromoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignPromo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'marketingCampaignId':marketingCampaignId, 'productPromoId':productPromoId, 'thruDate':thruDate};
  }

}

/// Entity MarketingCampaignRole, Marketing Campaign Role
class MarketingCampaignRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String marketingCampaignId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  MarketingCampaignRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.marketingCampaignId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MarketingCampaignRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'marketingCampaignId':marketingCampaignId, 'partyId':partyId, 'thruDate':thruDate};
  }

}