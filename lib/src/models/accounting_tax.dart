import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity PartyTaxAuthInfo, Party Tax Information
class PartyTaxAuthInfo extends EntityBase {

  final String taxAuthPartyId; // pk
  final DateTime fromDate; // pk
  final String partyTaxId;
  final String isNexus;
  final String taxAuthGeoId; // pk
  final String isExempt;
  final String partyId; // pk
  final DateTime thruDate;
  PartyTaxAuthInfo({entityId,
    @required this.taxAuthPartyId, @required this.fromDate, this.partyTaxId, this.isNexus, @required this.taxAuthGeoId, this.isExempt, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyTaxAuthInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'fromDate':fromDate, 'partyTaxId':partyTaxId, 'isNexus':isNexus, 'taxAuthGeoId':taxAuthGeoId, 'isExempt':isExempt, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PartyTaxAuthInfoAndDetail, PartyTaxAuthInfoAndDetail
class PartyTaxAuthInfoAndDetail extends EntityBase {

  final String geoName;
  final String geoTypeId;
  final String comments;
  final String geoCode;
  final String tickerSymbol;
  final String abbreviation;
  final String geoSecCode;
  final String logoImageUrl;
  final DateTime thruDate;
  final String taxAuthPartyId; // pk
  final DateTime fromDate; // pk
  final String partyTaxId;
  final String groupName;
  final String isNexus;
  final String groupNameLocal;
  final int numEmployees;
  final String geoId; // pk
  final String taxAuthGeoId; // pk
  final String isExempt;
  final String partyId; // pk
  final String officeSiteName;
  final double annualRevenue;
  final String wellKnownText;
  PartyTaxAuthInfoAndDetail({entityId,
    this.geoName, this.geoTypeId, this.comments, this.geoCode, this.tickerSymbol, this.abbreviation, this.geoSecCode, this.logoImageUrl, this.thruDate, @required this.taxAuthPartyId, @required this.fromDate, this.partyTaxId, this.groupName, this.isNexus, this.groupNameLocal, this.numEmployees, @required this.geoId, @required this.taxAuthGeoId, this.isExempt, @required this.partyId, this.officeSiteName, this.annualRevenue, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyTaxAuthInfoAndDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoTypeId':geoTypeId, 'comments':comments, 'geoCode':geoCode, 'tickerSymbol':tickerSymbol, 'abbreviation':abbreviation, 'geoSecCode':geoSecCode, 'logoImageUrl':logoImageUrl, 'thruDate':thruDate, 'taxAuthPartyId':taxAuthPartyId, 'fromDate':fromDate, 'partyTaxId':partyTaxId, 'groupName':groupName, 'isNexus':isNexus, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'geoId':geoId, 'taxAuthGeoId':taxAuthGeoId, 'isExempt':isExempt, 'partyId':partyId, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'wellKnownText':wellKnownText};
  }

}

/// Entity TaxAuthority, Tax Authority
class TaxAuthority extends EntityBase {

  final String taxAuthPartyId; // pk
  final String requireTaxIdForExemption;
  final String includeTaxInPrice;
  final String taxAuthGeoId; // pk
  final String taxIdFormatPattern;
  TaxAuthority({entityId,
    @required this.taxAuthPartyId, this.requireTaxIdForExemption, this.includeTaxInPrice, @required this.taxAuthGeoId, this.taxIdFormatPattern,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthority { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'requireTaxIdForExemption':requireTaxIdForExemption, 'includeTaxInPrice':includeTaxInPrice, 'taxAuthGeoId':taxAuthGeoId, 'taxIdFormatPattern':taxIdFormatPattern};
  }

}

/// Entity TaxAuthorityAndDetail, TaxAuthorityAndDetail
class TaxAuthorityAndDetail extends EntityBase {

  final String geoName;
  final String geoTypeId;
  final String comments;
  final String geoCode;
  final String tickerSymbol;
  final String abbreviation;
  final String geoSecCode;
  final String logoImageUrl;
  final String taxAuthPartyId; // pk
  final String requireTaxIdForExemption;
  final String groupName;
  final String includeTaxInPrice;
  final String groupNameLocal;
  final int numEmployees;
  final String geoId; // pk
  final String taxAuthGeoId; // pk
  final String taxIdFormatPattern;
  final String partyId; // pk
  final String officeSiteName;
  final double annualRevenue;
  final String wellKnownText;
  TaxAuthorityAndDetail({entityId,
    this.geoName, this.geoTypeId, this.comments, this.geoCode, this.tickerSymbol, this.abbreviation, this.geoSecCode, this.logoImageUrl, @required this.taxAuthPartyId, this.requireTaxIdForExemption, this.groupName, this.includeTaxInPrice, this.groupNameLocal, this.numEmployees, @required this.geoId, @required this.taxAuthGeoId, this.taxIdFormatPattern, @required this.partyId, this.officeSiteName, this.annualRevenue, this.wellKnownText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityAndDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'geoName':geoName, 'geoTypeId':geoTypeId, 'comments':comments, 'geoCode':geoCode, 'tickerSymbol':tickerSymbol, 'abbreviation':abbreviation, 'geoSecCode':geoSecCode, 'logoImageUrl':logoImageUrl, 'taxAuthPartyId':taxAuthPartyId, 'requireTaxIdForExemption':requireTaxIdForExemption, 'groupName':groupName, 'includeTaxInPrice':includeTaxInPrice, 'groupNameLocal':groupNameLocal, 'numEmployees':numEmployees, 'geoId':geoId, 'taxAuthGeoId':taxAuthGeoId, 'taxIdFormatPattern':taxIdFormatPattern, 'partyId':partyId, 'officeSiteName':officeSiteName, 'annualRevenue':annualRevenue, 'wellKnownText':wellKnownText};
  }

}

/// Entity TaxAuthorityAssoc, Tax Authority Association
class TaxAuthorityAssoc extends EntityBase {

  final String taxAuthPartyId; // pk
  final DateTime fromDate; // pk
  final String taxAuthorityAssocTypeId;
  final String taxAuthGeoId; // pk
  final String toTaxAuthPartyId; // pk
  final String toTaxAuthGeoId; // pk
  final DateTime thruDate;
  TaxAuthorityAssoc({entityId,
    @required this.taxAuthPartyId, @required this.fromDate, this.taxAuthorityAssocTypeId, @required this.taxAuthGeoId, @required this.toTaxAuthPartyId, @required this.toTaxAuthGeoId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'fromDate':fromDate, 'taxAuthorityAssocTypeId':taxAuthorityAssocTypeId, 'taxAuthGeoId':taxAuthGeoId, 'toTaxAuthPartyId':toTaxAuthPartyId, 'toTaxAuthGeoId':toTaxAuthGeoId, 'thruDate':thruDate};
  }

}

/// Entity TaxAuthorityAssocType, Tax Authority Assoc Type
class TaxAuthorityAssocType extends EntityBase {

  /// this entity has only one pk
  final String taxAuthorityAssocTypeId; // pk
  final String description;
  TaxAuthorityAssocType({entityId,
    @required this.taxAuthorityAssocTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityAssocType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthorityAssocTypeId':taxAuthorityAssocTypeId, 'description':description};
  }

}

/// Entity TaxAuthorityCategory, Tax Authority Product Category
class TaxAuthorityCategory extends EntityBase {

  final String taxAuthPartyId; // pk
  final String productCategoryId; // pk
  final String taxAuthGeoId; // pk
  TaxAuthorityCategory({entityId,
    @required this.taxAuthPartyId, @required this.productCategoryId, @required this.taxAuthGeoId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'productCategoryId':productCategoryId, 'taxAuthGeoId':taxAuthGeoId};
  }

}

/// Entity TaxAuthorityCategoryView, TaxAuthorityCategoryView
class TaxAuthorityCategoryView extends EntityBase {

  final String longDescription;
  final String productCategoryTypeId;
  final String detailScreen;
  final String description;
  final String linkTwoImageUrl;
  final String categoryName;
  final String taxAuthPartyId; // pk
  final String productCategoryId; // pk
  final String linkOneImageUrl;
  final String primaryParentCategoryId;
  final String categoryImageUrl;
  final String taxAuthGeoId; // pk
  final String showInSelect;
  TaxAuthorityCategoryView({entityId,
    this.longDescription, this.productCategoryTypeId, this.detailScreen, this.description, this.linkTwoImageUrl, this.categoryName, @required this.taxAuthPartyId, @required this.productCategoryId, this.linkOneImageUrl, this.primaryParentCategoryId, this.categoryImageUrl, @required this.taxAuthGeoId, this.showInSelect,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityCategoryView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'productCategoryTypeId':productCategoryTypeId, 'detailScreen':detailScreen, 'description':description, 'linkTwoImageUrl':linkTwoImageUrl, 'categoryName':categoryName, 'taxAuthPartyId':taxAuthPartyId, 'productCategoryId':productCategoryId, 'linkOneImageUrl':linkOneImageUrl, 'primaryParentCategoryId':primaryParentCategoryId, 'categoryImageUrl':categoryImageUrl, 'taxAuthGeoId':taxAuthGeoId, 'showInSelect':showInSelect};
  }

}

/// Entity TaxAuthorityGlAccount, Tax Authority GL Account
class TaxAuthorityGlAccount extends EntityBase {

  final String taxAuthPartyId; // pk
  final String glAccountId;
  final String taxAuthGeoId; // pk
  final String organizationPartyId; // pk
  TaxAuthorityGlAccount({entityId,
    @required this.taxAuthPartyId, this.glAccountId, @required this.taxAuthGeoId, @required this.organizationPartyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityGlAccount { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'glAccountId':glAccountId, 'taxAuthGeoId':taxAuthGeoId, 'organizationPartyId':organizationPartyId};
  }

}

/// Entity TaxAuthorityGlAccountBalance, For viewing balances of tax authority GL accounts
class TaxAuthorityGlAccountBalance extends EntityBase {

  final String taxAuthPartyId; // pk
  final DateTime fromDate;
  final String roleTypeId;
  final String baseCurrencyUomId;
  final String glAccountId;
  final String taxAuthGeoId; // pk
  final String organizationPartyId; // pk
  final DateTime thruDate;
  TaxAuthorityGlAccountBalance({entityId,
    @required this.taxAuthPartyId, this.fromDate, this.roleTypeId, this.baseCurrencyUomId, this.glAccountId, @required this.taxAuthGeoId, @required this.organizationPartyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityGlAccountBalance { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxAuthPartyId':taxAuthPartyId, 'fromDate':fromDate, 'roleTypeId':roleTypeId, 'baseCurrencyUomId':baseCurrencyUomId, 'glAccountId':glAccountId, 'taxAuthGeoId':taxAuthGeoId, 'organizationPartyId':organizationPartyId, 'thruDate':thruDate};
  }

}

/// Entity TaxAuthorityRateProduct, Tax Authority Rate
class TaxAuthorityRateProduct extends EntityBase {

  /// this entity has only one pk
  final String taxShipping;
  final double taxPercentage;
  final String isTaxInShippingPrice;
  final String taxAuthorityRateSeqId; // pk
  final String description;
  final String titleTransferEnumId;
  final String taxPromotions;
  final DateTime thruDate;
  final String taxAuthPartyId;
  final DateTime fromDate;
  final String productCategoryId;
  final String taxAuthGeoId;
  final double minItemPrice;
  final double minPurchase;
  final String taxAuthorityRateTypeId;
  final String productStoreId;
  TaxAuthorityRateProduct({entityId,
    this.taxShipping, this.taxPercentage, this.isTaxInShippingPrice, @required this.taxAuthorityRateSeqId, this.description, this.titleTransferEnumId, this.taxPromotions, this.thruDate, this.taxAuthPartyId, this.fromDate, this.productCategoryId, this.taxAuthGeoId, this.minItemPrice, this.minPurchase, this.taxAuthorityRateTypeId, this.productStoreId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityRateProduct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'taxShipping':taxShipping, 'taxPercentage':taxPercentage, 'isTaxInShippingPrice':isTaxInShippingPrice, 'taxAuthorityRateSeqId':taxAuthorityRateSeqId, 'description':description, 'titleTransferEnumId':titleTransferEnumId, 'taxPromotions':taxPromotions, 'thruDate':thruDate, 'taxAuthPartyId':taxAuthPartyId, 'fromDate':fromDate, 'productCategoryId':productCategoryId, 'taxAuthGeoId':taxAuthGeoId, 'minItemPrice':minItemPrice, 'minPurchase':minPurchase, 'taxAuthorityRateTypeId':taxAuthorityRateTypeId, 'productStoreId':productStoreId};
  }

}

/// Entity TaxAuthorityRateType, Tax Authority Rate Type
class TaxAuthorityRateType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String taxAuthorityRateTypeId; // pk
  TaxAuthorityRateType({entityId,
    this.description, @required this.taxAuthorityRateTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TaxAuthorityRateType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'taxAuthorityRateTypeId':taxAuthorityRateTypeId};
  }

}

/// Entity ZipSalesRuleLookup, Zip Sales Tax Lookup
class ZipSalesRuleLookup extends EntityBase {

  final DateTime fromDate; // pk
  final String taxable;
  final String city; // pk
  final String idCode;
  final String county; // pk
  final String shipCond;
  final String stateCode; // pk
  ZipSalesRuleLookup({entityId,
    @required this.fromDate, this.taxable, @required this.city, this.idCode, @required this.county, this.shipCond, @required this.stateCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ZipSalesRuleLookup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'taxable':taxable, 'city':city, 'idCode':idCode, 'county':county, 'shipCond':shipCond, 'stateCode':stateCode};
  }

}

/// Entity ZipSalesTaxLookup, Zip Sales Tax Lookup
class ZipSalesTaxLookup extends EntityBase {

  final String zipCode; // pk
  final double comboSalesTax;
  final String city; // pk
  final String county; // pk
  final double stateUseTax;
  final double cityUseTax;
  final double comboUseTax;
  final double countySalesTax;
  final String generalDefault;
  final String countyDefault;
  final double countyLocalUseTax;
  final String countyFips;
  final double cityLocalUseTax;
  final double citySalesTax;
  final double stateSalesTax;
  final String geoCode;
  final DateTime fromDate; // pk
  final double countyUseTax;
  final double countyLocalSalesTax;
  final String insideCity;
  final String stateCode; // pk
  final double cityLocalSalesTax;
  ZipSalesTaxLookup({entityId,
    @required this.zipCode, this.comboSalesTax, @required this.city, @required this.county, this.stateUseTax, this.cityUseTax, this.comboUseTax, this.countySalesTax, this.generalDefault, this.countyDefault, this.countyLocalUseTax, this.countyFips, this.cityLocalUseTax, this.citySalesTax, this.stateSalesTax, this.geoCode, @required this.fromDate, this.countyUseTax, this.countyLocalSalesTax, this.insideCity, @required this.stateCode, this.cityLocalSalesTax,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ZipSalesTaxLookup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'zipCode':zipCode, 'comboSalesTax':comboSalesTax, 'city':city, 'county':county, 'stateUseTax':stateUseTax, 'cityUseTax':cityUseTax, 'comboUseTax':comboUseTax, 'countySalesTax':countySalesTax, 'generalDefault':generalDefault, 'countyDefault':countyDefault, 'countyLocalUseTax':countyLocalUseTax, 'countyFips':countyFips, 'cityLocalUseTax':cityLocalUseTax, 'citySalesTax':citySalesTax, 'stateSalesTax':stateSalesTax, 'geoCode':geoCode, 'fromDate':fromDate, 'countyUseTax':countyUseTax, 'countyLocalSalesTax':countyLocalSalesTax, 'insideCity':insideCity, 'stateCode':stateCode, 'cityLocalSalesTax':cityLocalSalesTax};
  }

}