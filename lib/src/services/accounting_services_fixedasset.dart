import 'package:sagas_meta/src/models/accounting_ledger.dart';
import 'package:sagas_meta/src/models/accounting_fixedasset.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class AccountingServicesFixedasset{
  final SrvClient client;
  AccountingServicesFixedasset(this.client);

  /**
   * Add Product To Fixed Asset - FixedAssetProduct
   *
   * Requires fixedAssetId, productId, fixedAssetProductTypeId
   * Returns 
   */
  Future<OfResult> addFixedAssetProduct(FixedAssetProduct ent, ) =>
      client.invoke('addFixedAssetProduct', ent, {  });

  /**
   * Select the depreciation method according to the entry in FixedAssetDepMethod - FixedAssetDepMethod
   *
   * Requires fixedAssetId
   * Returns assetDepreciationTillDate[List], assetNBVAfterDepreciation[List], assetDepreciationInfoList[List], nextDepreciationAmount[BigDecimal], plannedPastDepreciationTotal[BigDecimal]
   */
  Future<OfResult> calculateFixedAssetDepreciation(FixedAssetDepMethod ent, ) =>
      client.invoke('calculateFixedAssetDepreciation', ent, {  });

  /**
   * Cancel a Fixed Asset Standard Cost - FixedAssetStdCost
   *
   * Requires fixedAssetId, fixedAssetStdCostTypeId, fromDate
   * Returns 
   */
  Future<OfResult> cancelFixedAssetStdCost(FixedAssetStdCost ent, ) =>
      client.invoke('cancelFixedAssetStdCost', ent, {  });

  /**
   * If the accounting transaction is a depreciation transaction for a fixed asset, update the depreciation amount in the FixedAsset entity. - AcctgTrans
   *
   * Requires acctgTransId
   * Returns 
   */
  Future<OfResult> checkUpdateFixedAssetDepreciation(AcctgTrans ent, ) =>
      client.invoke('checkUpdateFixedAssetDepreciation', ent, {  });

  /**
   * Create an AccommodationClass - AccommodationClass
   *
   * Requires 
   * Returns accommodationClassId[String]
   */
  Future<OfResult> createAccommodationClass(AccommodationClass ent, ) =>
      client.invoke('createAccommodationClass', ent, {  });

  /**
   * Create a AccommodationMap - AccommodationMap
   *
   * Requires 
   * Returns accommodationMapId[String]
   */
  Future<OfResult> createAccommodationMap(AccommodationMap ent, ) =>
      client.invoke('createAccommodationMap', ent, {  });

  /**
   * Create a AccommodationMapType entry - AccommodationMapType
   *
   * Requires 
   * Returns accommodationMapTypeId[String]
   */
  Future<OfResult> createAccommodationMapType(AccommodationMapType ent, ) =>
      client.invoke('createAccommodationMapType', ent, {  });

  /**
   * Create a Fixed Asset - FixedAsset
   *
   * Requires fixedAssetTypeId, fixedAssetTypeId
   * Returns fixedAssetId[String]
   */
  Future<OfResult> createFixedAsset(FixedAsset ent, ) =>
      client.invoke('createFixedAsset', ent, {  });

  /**
   * Create a FixedAssetAttribute - FixedAssetAttribute
   *
   * Requires fixedAssetId, attrName
   * Returns fixedAssetId[String], attrName[String]
   */
  Future<OfResult> createFixedAssetAttribute(FixedAssetAttribute ent, ) =>
      client.invoke('createFixedAssetAttribute', ent, {  });

  /**
   * Create a Fixed Asset Depreciation Method - FixedAssetDepMethod
   *
   * Requires depreciationCustomMethodId, fixedAssetId
   * Returns 
   */
  Future<OfResult> createFixedAssetDepMethod(FixedAssetDepMethod ent, ) =>
      client.invoke('createFixedAssetDepMethod', ent, {  });

  /**
   * Create a FixedAssetGeoPoint - FixedAssetGeoPoint
   *
   * Requires fixedAssetId, geoPointId
   * Returns 
   */
  Future<OfResult> createFixedAssetGeoPoint(FixedAssetGeoPoint ent, ) =>
      client.invoke('createFixedAssetGeoPoint', ent, {  });

  /**
   * Create a Fixed Asset Identification - FixedAssetIdent
   *
   * Requires fixedAssetId, fixedAssetIdentTypeId
   * Returns 
   */
  Future<OfResult> createFixedAssetIdent(FixedAssetIdent ent, ) =>
      client.invoke('createFixedAssetIdent', ent, {  });

  /**
   * Create a FixedAssetIdentType - FixedAssetIdentType
   *
   * Requires 
   * Returns fixedAssetIdentTypeId[String]
   */
  Future<OfResult> createFixedAssetIdentType(FixedAssetIdentType ent, ) =>
      client.invoke('createFixedAssetIdentType', ent, {  });

  /**
   * Create a Fixed Asset Maintenance - FixedAssetMaint
   *
   * Requires fixedAssetId
   * Returns maintHistSeqId[String], maintHistSeqId[String]
   */
  Future<OfResult> createFixedAssetMaint(FixedAssetMaint ent, {DateTime estimatedStartDate, DateTime estimatedCompletionDate, String maintTemplateWorkEffortId}) =>
      client.invoke('createFixedAssetMaint', ent, { 'estimatedStartDate': estimatedStartDate, 'estimatedCompletionDate': estimatedCompletionDate, 'maintTemplateWorkEffortId': maintTemplateWorkEffortId });

  /**
   * Create a Fixed Asset Maintenance Order - FixedAssetMaintOrder
   *
   * Requires fixedAssetId, maintHistSeqId, orderId
   * Returns 
   */
  Future<OfResult> createFixedAssetMaintOrder(FixedAssetMaintOrder ent, ) =>
      client.invoke('createFixedAssetMaintOrder', ent, {  });

  /**
   * Create a Fixed Asset Maintenance Meter - FixedAssetMeter
   *
   * Requires fixedAssetId, productMeterTypeId, readingDate
   * Returns 
   */
  Future<OfResult> createFixedAssetMeter(FixedAssetMeter ent, ) =>
      client.invoke('createFixedAssetMeter', ent, {  });

  /**
   * Create a FixedAssetProductType - FixedAssetProductType
   *
   * Requires 
   * Returns fixedAssetProductTypeId[String]
   */
  Future<OfResult> createFixedAssetProductType(FixedAssetProductType ent, ) =>
      client.invoke('createFixedAssetProductType', ent, {  });

  /**
   * Create a Fixed Asset Registration - FixedAssetRegistration
   *
   * Requires fixedAssetId
   * Returns 
   */
  Future<OfResult> createFixedAssetRegistration(FixedAssetRegistration ent, ) =>
      client.invoke('createFixedAssetRegistration', ent, {  });

  /**
   * Create a Fixed Asset Standard Cost - FixedAssetStdCost
   *
   * Requires fixedAssetId, fixedAssetStdCostTypeId, fromDate
   * Returns 
   */
  Future<OfResult> createFixedAssetStdCost(FixedAssetStdCost ent, ) =>
      client.invoke('createFixedAssetStdCost', ent, {  });

  /**
   * Create a FixedAssetStdCostType - FixedAssetStdCostType
   *
   * Requires 
   * Returns fixedAssetStdCostTypeId[String]
   */
  Future<OfResult> createFixedAssetStdCostType(FixedAssetStdCostType ent, ) =>
      client.invoke('createFixedAssetStdCostType', ent, {  });

  /**
   * Create a FixedAssetType - FixedAssetType
   *
   * Requires 
   * Returns fixedAssetTypeId[String]
   */
  Future<OfResult> createFixedAssetType(FixedAssetType ent, ) =>
      client.invoke('createFixedAssetType', ent, {  });

  /**
   * Create a FixedAssetTypeAttr - FixedAssetTypeAttr
   *
   * Requires fixedAssetTypeId, attrName
   * Returns fixedAssetTypeId[String], attrName[String]
   */
  Future<OfResult> createFixedAssetTypeAttr(FixedAssetTypeAttr ent, ) =>
      client.invoke('createFixedAssetTypeAttr', ent, {  });

  /**
   * Create a Fixed Asset Type Gl Account Mapping - FixedAssetTypeGlAccount
   *
   * Requires organizationPartyId
   * Returns 
   */
  Future<OfResult> createFixedAssetTypeGlAccount(FixedAssetTypeGlAccount ent, ) =>
      client.invoke('createFixedAssetTypeGlAccount', ent, {  });

  /**
   * Create Fixed Asset Maintenances from ProductMaint time intervals. Currently works
        with day, month, and year interval types. This service is intended to be run as a regularly
        scheduled job. - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createMaintsFromTimeInterval() =>
      client.invoke('createMaintsFromTimeInterval', null, {  });

  /**
   * Add Party to a Fixed Asset - PartyFixedAssetAssignment
   *
   * Requires partyId, roleTypeId, fixedAssetId
   * Returns 
   */
  Future<OfResult> createPartyFixedAssetAssignment(PartyFixedAssetAssignment ent, ) =>
      client.invoke('createPartyFixedAssetAssignment', ent, {  });

  /**
   * Delete an AccommodationClass - AccommodationClass
   *
   * Requires accommodationClassId
   * Returns 
   */
  Future<OfResult> deleteAccommodationClass(AccommodationClass ent, ) =>
      client.invoke('deleteAccommodationClass', ent, {  });

  /**
   * Delete a AccommodationMap - AccommodationMap
   *
   * Requires accommodationMapId
   * Returns 
   */
  Future<OfResult> deleteAccommodationMap(AccommodationMap ent, ) =>
      client.invoke('deleteAccommodationMap', ent, {  });

  /**
   * Delete a AccommodationMapType record - AccommodationMapType
   *
   * Requires accommodationMapTypeId
   * Returns 
   */
  Future<OfResult> deleteAccommodationMapType(AccommodationMapType ent, ) =>
      client.invoke('deleteAccommodationMapType', ent, {  });

  /**
   * Delete a FixedAssetAttribute - FixedAssetAttribute
   *
   * Requires fixedAssetId, attrName
   * Returns 
   */
  Future<OfResult> deleteFixedAssetAttribute(FixedAssetAttribute ent, ) =>
      client.invoke('deleteFixedAssetAttribute', ent, {  });

  /**
   * Delete a Fixed Asset Depreciation Method - FixedAssetDepMethod
   *
   * Requires depreciationCustomMethodId, fixedAssetId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetDepMethod(FixedAssetDepMethod ent, ) =>
      client.invoke('deleteFixedAssetDepMethod', ent, {  });

  /**
   * Delete a FixedAssetGeoPoint - FixedAssetGeoPoint
   *
   * Requires fixedAssetId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFixedAssetGeoPoint(FixedAssetGeoPoint ent, ) =>
      client.invoke('deleteFixedAssetGeoPoint', ent, {  });

  /**
   * Delete a FixedAssetIdentType - FixedAssetIdentType
   *
   * Requires fixedAssetIdentTypeId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetIdentType(FixedAssetIdentType ent, ) =>
      client.invoke('deleteFixedAssetIdentType', ent, {  });

  /**
   * Remove a Fixed Asset Maintenance - FixedAssetMaint
   *
   * Requires fixedAssetId, maintHistSeqId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetMaint(FixedAssetMaint ent, ) =>
      client.invoke('deleteFixedAssetMaint', ent, {  });

  /**
   * Remove a Fixed Asset Maintenance Order - FixedAssetMaintOrder
   *
   * Requires fixedAssetId, maintHistSeqId, orderId, orderItemSeqId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetMaintOrder(FixedAssetMaintOrder ent, ) =>
      client.invoke('deleteFixedAssetMaintOrder', ent, {  });

  /**
   * Remove a Fixed Asset Maintenance Meter - FixedAssetMeter
   *
   * Requires fixedAssetId, productMeterTypeId, readingDate
   * Returns 
   */
  Future<OfResult> deleteFixedAssetMeter(FixedAssetMeter ent, ) =>
      client.invoke('deleteFixedAssetMeter', ent, {  });

  /**
   * Delete a FixedAssetProductType - FixedAssetProductType
   *
   * Requires fixedAssetProductTypeId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetProductType(FixedAssetProductType ent, ) =>
      client.invoke('deleteFixedAssetProductType', ent, {  });

  /**
   * Delete a Fixed Asset Registration - FixedAssetRegistration
   *
   * Requires fixedAssetId, fromDate
   * Returns 
   */
  Future<OfResult> deleteFixedAssetRegistration(FixedAssetRegistration ent, ) =>
      client.invoke('deleteFixedAssetRegistration', ent, {  });

  /**
   * Delete a FixedAssetStdCostType - FixedAssetStdCostType
   *
   * Requires fixedAssetStdCostTypeId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetStdCostType(FixedAssetStdCostType ent, ) =>
      client.invoke('deleteFixedAssetStdCostType', ent, {  });

  /**
   * Delete a FixedAssetType - FixedAssetType
   *
   * Requires fixedAssetTypeId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetType(FixedAssetType ent, ) =>
      client.invoke('deleteFixedAssetType', ent, {  });

  /**
   * Delete a FixedAssetTypeAttr - FixedAssetTypeAttr
   *
   * Requires fixedAssetTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteFixedAssetTypeAttr(FixedAssetTypeAttr ent, ) =>
      client.invoke('deleteFixedAssetTypeAttr', ent, {  });

  /**
   * Delete a Fixed Asset Type Gl Account Mapping - FixedAssetTypeGlAccount
   *
   * Requires fixedAssetTypeId, fixedAssetId, organizationPartyId
   * Returns 
   */
  Future<OfResult> deleteFixedAssetTypeGlAccount(FixedAssetTypeGlAccount ent, ) =>
      client.invoke('deleteFixedAssetTypeGlAccount', ent, {  });

  /**
   * Delete Party to Fixed Asset - PartyFixedAssetAssignment
   *
   * Requires partyId, roleTypeId, fixedAssetId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyFixedAssetAssignment(PartyFixedAssetAssignment ent, ) =>
      client.invoke('deletePartyFixedAssetAssignment', ent, {  });

  /**
   * Double declining balance depreciation service to Fixed Asset - FixedAsset
   *
   * Requires fixedAssetId, expEndOfLifeYear, assetAcquiredYear, purchaseCost, salvageValue, usageYears
   * Returns assetDepreciationTillDate[List], assetNBVAfterDepreciation[List], assetDepreciationInfoList[List], nextDepreciationAmount[BigDecimal], plannedPastDepreciationTotal[BigDecimal]
   */
  Future<OfResult> doubleDecliningBalanceDepreciation(FixedAsset ent, {@required int expEndOfLifeYear, @required int assetAcquiredYear, @required int usageYears}) =>
      client.invoke('doubleDecliningBalanceDepreciation', ent, { 'expEndOfLifeYear': expEndOfLifeYear, 'assetAcquiredYear': assetAcquiredYear, 'usageYears': usageYears });

  /**
   * Interface to describe base parameters for Depreciation Calculation Services - 
   *
   * Requires expEndOfLifeYear, assetAcquiredYear, purchaseCost, salvageValue, usageYears
   * Returns assetDepreciationTillDate[List], assetNBVAfterDepreciation[List], assetDepreciationInfoList[List], nextDepreciationAmount[BigDecimal], plannedPastDepreciationTotal[BigDecimal]
   */
  Future<OfResult> fixedAssetDepCalcInterface({@required int expEndOfLifeYear, @required int assetAcquiredYear, @required Decimal purchaseCost, @required Decimal salvageValue, @required int usageYears}) =>
      client.invoke('fixedAssetDepCalcInterface', null, { 'expEndOfLifeYear': expEndOfLifeYear, 'assetAcquiredYear': assetAcquiredYear, 'purchaseCost': purchaseCost, 'salvageValue': salvageValue, 'usageYears': usageYears });

  /**
   * Remove a Fixed Asset Identification - FixedAssetIdent
   *
   * Requires fixedAssetId, fixedAssetIdentTypeId
   * Returns 
   */
  Future<OfResult> removeFixedAssetIdent(FixedAssetIdent ent, ) =>
      client.invoke('removeFixedAssetIdent', ent, {  });

  /**
   * Remove Product From Fixed Asset - FixedAssetProduct
   *
   * Requires fixedAssetId, productId, fixedAssetProductTypeId, fromDate
   * Returns 
   */
  Future<OfResult> removeFixedAssetProduct(FixedAssetProduct ent, ) =>
      client.invoke('removeFixedAssetProduct', ent, {  });

  /**
   * Straight line depreciation service to Fixed Asset - FixedAsset
   *
   * Requires fixedAssetId, expEndOfLifeYear, assetAcquiredYear, purchaseCost, salvageValue, usageYears
   * Returns assetDepreciationTillDate[List], assetNBVAfterDepreciation[List], assetDepreciationInfoList[List], nextDepreciationAmount[BigDecimal], plannedPastDepreciationTotal[BigDecimal]
   */
  Future<OfResult> straightLineDepreciation(FixedAsset ent, {@required int expEndOfLifeYear, @required int assetAcquiredYear, @required int usageYears}) =>
      client.invoke('straightLineDepreciation', ent, { 'expEndOfLifeYear': expEndOfLifeYear, 'assetAcquiredYear': assetAcquiredYear, 'usageYears': usageYears });

  /**
   * Update an AccommodationClass - AccommodationClass
   *
   * Requires accommodationClassId
   * Returns 
   */
  Future<OfResult> updateAccommodationClass(AccommodationClass ent, ) =>
      client.invoke('updateAccommodationClass', ent, {  });

  /**
   * Update a AccommodationMap - AccommodationMap
   *
   * Requires accommodationMapId
   * Returns 
   */
  Future<OfResult> updateAccommodationMap(AccommodationMap ent, ) =>
      client.invoke('updateAccommodationMap', ent, {  });

  /**
   * Update a AccommodationMapType record - AccommodationMapType
   *
   * Requires accommodationMapTypeId
   * Returns 
   */
  Future<OfResult> updateAccommodationMapType(AccommodationMapType ent, ) =>
      client.invoke('updateAccommodationMapType', ent, {  });

  /**
   * Update a Fixed Asset - FixedAsset
   *
   * Requires fixedAssetId, fixedAssetTypeId, fixedAssetTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAsset(FixedAsset ent, ) =>
      client.invoke('updateFixedAsset', ent, {  });

  /**
   * Update a FixedAssetAttribute - FixedAssetAttribute
   *
   * Requires fixedAssetId, attrName
   * Returns 
   */
  Future<OfResult> updateFixedAssetAttribute(FixedAssetAttribute ent, ) =>
      client.invoke('updateFixedAssetAttribute', ent, {  });

  /**
   * Create a Fixed Asset Depreciation Method - FixedAssetDepMethod
   *
   * Requires depreciationCustomMethodId, fixedAssetId
   * Returns 
   */
  Future<OfResult> updateFixedAssetDepMethod(FixedAssetDepMethod ent, ) =>
      client.invoke('updateFixedAssetDepMethod', ent, {  });

  /**
   * Update a FixedAssetGeoPoint - FixedAssetGeoPoint
   *
   * Requires fixedAssetId, geoPointId, fromDate
   * Returns 
   */
  Future<OfResult> updateFixedAssetGeoPoint(FixedAssetGeoPoint ent, ) =>
      client.invoke('updateFixedAssetGeoPoint', ent, {  });

  /**
   * Update a Fixed Asset Identification - FixedAssetIdent
   *
   * Requires fixedAssetId, fixedAssetIdentTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAssetIdent(FixedAssetIdent ent, ) =>
      client.invoke('updateFixedAssetIdent', ent, {  });

  /**
   * Update a FixedAssetIdentType - FixedAssetIdentType
   *
   * Requires fixedAssetIdentTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAssetIdentType(FixedAssetIdentType ent, ) =>
      client.invoke('updateFixedAssetIdentType', ent, {  });

  /**
   * Update a Fixed Asset Maintenance - FixedAssetMaint
   *
   * Requires fixedAssetId, maintHistSeqId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateFixedAssetMaint(FixedAssetMaint ent, ) =>
      client.invoke('updateFixedAssetMaint', ent, {  });

  /**
   * Update a Fixed Asset Maintenance Meter - FixedAssetMeter
   *
   * Requires fixedAssetId, productMeterTypeId, readingDate
   * Returns 
   */
  Future<OfResult> updateFixedAssetMeter(FixedAssetMeter ent, ) =>
      client.invoke('updateFixedAssetMeter', ent, {  });

  /**
   * Update the Product to Fixed Asset information - FixedAssetProduct
   *
   * Requires fixedAssetId, productId, fixedAssetProductTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateFixedAssetProduct(FixedAssetProduct ent, ) =>
      client.invoke('updateFixedAssetProduct', ent, {  });

  /**
   * Update a FixedAssetProductType - FixedAssetProductType
   *
   * Requires fixedAssetProductTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAssetProductType(FixedAssetProductType ent, ) =>
      client.invoke('updateFixedAssetProductType', ent, {  });

  /**
   * Update a Fixed Asset Registration - FixedAssetRegistration
   *
   * Requires fixedAssetId, fromDate
   * Returns 
   */
  Future<OfResult> updateFixedAssetRegistration(FixedAssetRegistration ent, ) =>
      client.invoke('updateFixedAssetRegistration', ent, {  });

  /**
   * Update a Fixed Asset Standard Cost - FixedAssetStdCost
   *
   * Requires fixedAssetId, fixedAssetStdCostTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateFixedAssetStdCost(FixedAssetStdCost ent, ) =>
      client.invoke('updateFixedAssetStdCost', ent, {  });

  /**
   * Update a FixedAssetStdCostType - FixedAssetStdCostType
   *
   * Requires fixedAssetStdCostTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAssetStdCostType(FixedAssetStdCostType ent, ) =>
      client.invoke('updateFixedAssetStdCostType', ent, {  });

  /**
   * Update a FixedAssetType - FixedAssetType
   *
   * Requires fixedAssetTypeId
   * Returns 
   */
  Future<OfResult> updateFixedAssetType(FixedAssetType ent, ) =>
      client.invoke('updateFixedAssetType', ent, {  });

  /**
   * Update a FixedAssetTypeAttr - FixedAssetTypeAttr
   *
   * Requires fixedAssetTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateFixedAssetTypeAttr(FixedAssetTypeAttr ent, ) =>
      client.invoke('updateFixedAssetTypeAttr', ent, {  });

  /**
   * Update a Fixed Asset Type Gl Account Mapping - FixedAssetTypeGlAccount
   *
   * Requires fixedAssetTypeId, fixedAssetId, organizationPartyId
   * Returns 
   */
  Future<OfResult> updateFixedAssetTypeGlAccount(FixedAssetTypeGlAccount ent, ) =>
      client.invoke('updateFixedAssetTypeGlAccount', ent, {  });

  /**
   * Update Party to Fixed Asset - PartyFixedAssetAssignment
   *
   * Requires partyId, roleTypeId, fixedAssetId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyFixedAssetAssignment(PartyFixedAssetAssignment ent, ) =>
      client.invoke('updatePartyFixedAssetAssignment', ent, {  });

}