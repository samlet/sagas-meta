import 'package:sagas_meta/src/models/accounting_tax.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class AccountingTaxJsonifier{
  static PartyTaxAuthInfo extractPartyTaxAuthInfo(dynamic json) {
    return PartyTaxAuthInfo(
        entityId: create_id_from('PartyTaxAuthInfo', ['partyId', 'taxAuthGeoId', 'taxAuthPartyId', 'fromDate'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        fromDate: check_dt(json['fromDate']),
        partyTaxId: json['partyTaxId'] as String,
        isNexus: json['isNexus'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        isExempt: json['isExempt'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyTaxAuthInfo overridesPartyTaxAuthInfo(Map<String, dynamic> map) {
    return PartyTaxAuthInfo(
        entityId: create_id_from('PartyTaxAuthInfo', ['partyId', 'taxAuthGeoId', 'taxAuthPartyId', 'fromDate'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        fromDate: map['fromDate'],
        partyTaxId: map['partyTaxId'],
        isNexus: map['isNexus'],
        taxAuthGeoId: map['taxAuthGeoId'],
        isExempt: map['isExempt'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyTaxAuthInfoAndDetail extractPartyTaxAuthInfoAndDetail(dynamic json) {
    return PartyTaxAuthInfoAndDetail(
        entityId: create_id_from('PartyTaxAuthInfoAndDetail', ['taxAuthPartyId', 'fromDate', 'taxAuthGeoId', 'partyId', 'geoId'], json),
        geoName: json['geoName'] as String,
        geoTypeId: json['geoTypeId'] as String,
        comments: json['comments'] as String,
        geoCode: json['geoCode'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        abbreviation: json['abbreviation'] as String,
        geoSecCode: json['geoSecCode'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        thruDate: check_dt(json['thruDate']),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        fromDate: check_dt(json['fromDate']),
        partyTaxId: json['partyTaxId'] as String,
        groupName: json['groupName'] as String,
        isNexus: json['isNexus'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        geoId: json['geoId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        isExempt: json['isExempt'] as String,
        partyId: json['partyId'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyTaxAuthInfoAndDetail overridesPartyTaxAuthInfoAndDetail(Map<String, dynamic> map) {
    return PartyTaxAuthInfoAndDetail(
        entityId: create_id_from('PartyTaxAuthInfoAndDetail', ['taxAuthPartyId', 'fromDate', 'taxAuthGeoId', 'partyId', 'geoId'], map),
        geoName: map['geoName'],
        geoTypeId: map['geoTypeId'],
        comments: map['comments'],
        geoCode: map['geoCode'],
        tickerSymbol: map['tickerSymbol'],
        abbreviation: map['abbreviation'],
        geoSecCode: map['geoSecCode'],
        logoImageUrl: map['logoImageUrl'],
        thruDate: map['thruDate'],
        taxAuthPartyId: map['taxAuthPartyId'],
        fromDate: map['fromDate'],
        partyTaxId: map['partyTaxId'],
        groupName: map['groupName'],
        isNexus: map['isNexus'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        geoId: map['geoId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        isExempt: map['isExempt'],
        partyId: map['partyId'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthority extractTaxAuthority(dynamic json) {
    return TaxAuthority(
        entityId: create_id_from('TaxAuthority', ['taxAuthGeoId', 'taxAuthPartyId'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        requireTaxIdForExemption: json['requireTaxIdForExemption'] as String,
        includeTaxInPrice: json['includeTaxInPrice'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        taxIdFormatPattern: json['taxIdFormatPattern'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthority overridesTaxAuthority(Map<String, dynamic> map) {
    return TaxAuthority(
        entityId: create_id_from('TaxAuthority', ['taxAuthGeoId', 'taxAuthPartyId'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        requireTaxIdForExemption: map['requireTaxIdForExemption'],
        includeTaxInPrice: map['includeTaxInPrice'],
        taxAuthGeoId: map['taxAuthGeoId'],
        taxIdFormatPattern: map['taxIdFormatPattern'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityAndDetail extractTaxAuthorityAndDetail(dynamic json) {
    return TaxAuthorityAndDetail(
        entityId: create_id_from('TaxAuthorityAndDetail', ['taxAuthPartyId', 'taxAuthGeoId', 'partyId', 'geoId'], json),
        geoName: json['geoName'] as String,
        geoTypeId: json['geoTypeId'] as String,
        comments: json['comments'] as String,
        geoCode: json['geoCode'] as String,
        tickerSymbol: json['tickerSymbol'] as String,
        abbreviation: json['abbreviation'] as String,
        geoSecCode: json['geoSecCode'] as String,
        logoImageUrl: json['logoImageUrl'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        requireTaxIdForExemption: json['requireTaxIdForExemption'] as String,
        groupName: json['groupName'] as String,
        includeTaxInPrice: json['includeTaxInPrice'] as String,
        groupNameLocal: json['groupNameLocal'] as String,
        numEmployees: json['numEmployees'] as int,
        geoId: json['geoId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        taxIdFormatPattern: json['taxIdFormatPattern'] as String,
        partyId: json['partyId'] as String,
        officeSiteName: json['officeSiteName'] as String,
        annualRevenue: json['annualRevenue'] as double,
        wellKnownText: json['wellKnownText'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityAndDetail overridesTaxAuthorityAndDetail(Map<String, dynamic> map) {
    return TaxAuthorityAndDetail(
        entityId: create_id_from('TaxAuthorityAndDetail', ['taxAuthPartyId', 'taxAuthGeoId', 'partyId', 'geoId'], map),
        geoName: map['geoName'],
        geoTypeId: map['geoTypeId'],
        comments: map['comments'],
        geoCode: map['geoCode'],
        tickerSymbol: map['tickerSymbol'],
        abbreviation: map['abbreviation'],
        geoSecCode: map['geoSecCode'],
        logoImageUrl: map['logoImageUrl'],
        taxAuthPartyId: map['taxAuthPartyId'],
        requireTaxIdForExemption: map['requireTaxIdForExemption'],
        groupName: map['groupName'],
        includeTaxInPrice: map['includeTaxInPrice'],
        groupNameLocal: map['groupNameLocal'],
        numEmployees: map['numEmployees'],
        geoId: map['geoId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        taxIdFormatPattern: map['taxIdFormatPattern'],
        partyId: map['partyId'],
        officeSiteName: map['officeSiteName'],
        annualRevenue: map['annualRevenue'],
        wellKnownText: map['wellKnownText'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityAssoc extractTaxAuthorityAssoc(dynamic json) {
    return TaxAuthorityAssoc(
        entityId: create_id_from('TaxAuthorityAssoc', ['taxAuthGeoId', 'taxAuthPartyId', 'toTaxAuthGeoId', 'toTaxAuthPartyId', 'fromDate'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        fromDate: check_dt(json['fromDate']),
        taxAuthorityAssocTypeId: json['taxAuthorityAssocTypeId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        toTaxAuthPartyId: json['toTaxAuthPartyId'] as String,
        toTaxAuthGeoId: json['toTaxAuthGeoId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityAssoc overridesTaxAuthorityAssoc(Map<String, dynamic> map) {
    return TaxAuthorityAssoc(
        entityId: create_id_from('TaxAuthorityAssoc', ['taxAuthGeoId', 'taxAuthPartyId', 'toTaxAuthGeoId', 'toTaxAuthPartyId', 'fromDate'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        fromDate: map['fromDate'],
        taxAuthorityAssocTypeId: map['taxAuthorityAssocTypeId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        toTaxAuthPartyId: map['toTaxAuthPartyId'],
        toTaxAuthGeoId: map['toTaxAuthGeoId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityAssocType extractTaxAuthorityAssocType(dynamic json) {
    return TaxAuthorityAssocType(
        entityId: create_id_from('TaxAuthorityAssocType', ['taxAuthorityAssocTypeId'], json),
        taxAuthorityAssocTypeId: json['taxAuthorityAssocTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityAssocType overridesTaxAuthorityAssocType(Map<String, dynamic> map) {
    return TaxAuthorityAssocType(
        entityId: create_id_from('TaxAuthorityAssocType', ['taxAuthorityAssocTypeId'], map),
        taxAuthorityAssocTypeId: map['taxAuthorityAssocTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityCategory extractTaxAuthorityCategory(dynamic json) {
    return TaxAuthorityCategory(
        entityId: create_id_from('TaxAuthorityCategory', ['taxAuthGeoId', 'taxAuthPartyId', 'productCategoryId'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        productCategoryId: json['productCategoryId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityCategory overridesTaxAuthorityCategory(Map<String, dynamic> map) {
    return TaxAuthorityCategory(
        entityId: create_id_from('TaxAuthorityCategory', ['taxAuthGeoId', 'taxAuthPartyId', 'productCategoryId'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        productCategoryId: map['productCategoryId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityCategoryView extractTaxAuthorityCategoryView(dynamic json) {
    return TaxAuthorityCategoryView(
        entityId: create_id_from('TaxAuthorityCategoryView', ['taxAuthPartyId', 'productCategoryId', 'taxAuthGeoId'], json),
        longDescription: json['longDescription'] as String,
        productCategoryTypeId: json['productCategoryTypeId'] as String,
        detailScreen: json['detailScreen'] as String,
        description: json['description'] as String,
        linkTwoImageUrl: json['linkTwoImageUrl'] as String,
        categoryName: json['categoryName'] as String,
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        productCategoryId: json['productCategoryId'] as String,
        linkOneImageUrl: json['linkOneImageUrl'] as String,
        primaryParentCategoryId: json['primaryParentCategoryId'] as String,
        categoryImageUrl: json['categoryImageUrl'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        showInSelect: json['showInSelect'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityCategoryView overridesTaxAuthorityCategoryView(Map<String, dynamic> map) {
    return TaxAuthorityCategoryView(
        entityId: create_id_from('TaxAuthorityCategoryView', ['taxAuthPartyId', 'productCategoryId', 'taxAuthGeoId'], map),
        longDescription: map['longDescription'],
        productCategoryTypeId: map['productCategoryTypeId'],
        detailScreen: map['detailScreen'],
        description: map['description'],
        linkTwoImageUrl: map['linkTwoImageUrl'],
        categoryName: map['categoryName'],
        taxAuthPartyId: map['taxAuthPartyId'],
        productCategoryId: map['productCategoryId'],
        linkOneImageUrl: map['linkOneImageUrl'],
        primaryParentCategoryId: map['primaryParentCategoryId'],
        categoryImageUrl: map['categoryImageUrl'],
        taxAuthGeoId: map['taxAuthGeoId'],
        showInSelect: map['showInSelect'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityGlAccount extractTaxAuthorityGlAccount(dynamic json) {
    return TaxAuthorityGlAccount(
        entityId: create_id_from('TaxAuthorityGlAccount', ['taxAuthGeoId', 'taxAuthPartyId', 'organizationPartyId'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        glAccountId: json['glAccountId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityGlAccount overridesTaxAuthorityGlAccount(Map<String, dynamic> map) {
    return TaxAuthorityGlAccount(
        entityId: create_id_from('TaxAuthorityGlAccount', ['taxAuthGeoId', 'taxAuthPartyId', 'organizationPartyId'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        glAccountId: map['glAccountId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        organizationPartyId: map['organizationPartyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityGlAccountBalance extractTaxAuthorityGlAccountBalance(dynamic json) {
    return TaxAuthorityGlAccountBalance(
        entityId: create_id_from('TaxAuthorityGlAccountBalance', ['taxAuthPartyId', 'taxAuthGeoId', 'organizationPartyId'], json),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        baseCurrencyUomId: json['baseCurrencyUomId'] as String,
        glAccountId: json['glAccountId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        organizationPartyId: json['organizationPartyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityGlAccountBalance overridesTaxAuthorityGlAccountBalance(Map<String, dynamic> map) {
    return TaxAuthorityGlAccountBalance(
        entityId: create_id_from('TaxAuthorityGlAccountBalance', ['taxAuthPartyId', 'taxAuthGeoId', 'organizationPartyId'], map),
        taxAuthPartyId: map['taxAuthPartyId'],
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        baseCurrencyUomId: map['baseCurrencyUomId'],
        glAccountId: map['glAccountId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        organizationPartyId: map['organizationPartyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityRateProduct extractTaxAuthorityRateProduct(dynamic json) {
    return TaxAuthorityRateProduct(
        entityId: create_id_from('TaxAuthorityRateProduct', ['taxAuthorityRateSeqId'], json),
        taxShipping: json['taxShipping'] as String,
        taxPercentage: json['taxPercentage'] as double,
        isTaxInShippingPrice: json['isTaxInShippingPrice'] as String,
        taxAuthorityRateSeqId: json['taxAuthorityRateSeqId'] as String,
        description: json['description'] as String,
        titleTransferEnumId: json['titleTransferEnumId'] as String,
        taxPromotions: json['taxPromotions'] as String,
        thruDate: check_dt(json['thruDate']),
        taxAuthPartyId: json['taxAuthPartyId'] as String,
        fromDate: check_dt(json['fromDate']),
        productCategoryId: json['productCategoryId'] as String,
        taxAuthGeoId: json['taxAuthGeoId'] as String,
        minItemPrice: json['minItemPrice'] as double,
        minPurchase: json['minPurchase'] as double,
        taxAuthorityRateTypeId: json['taxAuthorityRateTypeId'] as String,
        productStoreId: json['productStoreId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityRateProduct overridesTaxAuthorityRateProduct(Map<String, dynamic> map) {
    return TaxAuthorityRateProduct(
        entityId: create_id_from('TaxAuthorityRateProduct', ['taxAuthorityRateSeqId'], map),
        taxShipping: map['taxShipping'],
        taxPercentage: map['taxPercentage'],
        isTaxInShippingPrice: map['isTaxInShippingPrice'],
        taxAuthorityRateSeqId: map['taxAuthorityRateSeqId'],
        description: map['description'],
        titleTransferEnumId: map['titleTransferEnumId'],
        taxPromotions: map['taxPromotions'],
        thruDate: map['thruDate'],
        taxAuthPartyId: map['taxAuthPartyId'],
        fromDate: map['fromDate'],
        productCategoryId: map['productCategoryId'],
        taxAuthGeoId: map['taxAuthGeoId'],
        minItemPrice: map['minItemPrice'],
        minPurchase: map['minPurchase'],
        taxAuthorityRateTypeId: map['taxAuthorityRateTypeId'],
        productStoreId: map['productStoreId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TaxAuthorityRateType extractTaxAuthorityRateType(dynamic json) {
    return TaxAuthorityRateType(
        entityId: create_id_from('TaxAuthorityRateType', ['taxAuthorityRateTypeId'], json),
        description: json['description'] as String,
        taxAuthorityRateTypeId: json['taxAuthorityRateTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TaxAuthorityRateType overridesTaxAuthorityRateType(Map<String, dynamic> map) {
    return TaxAuthorityRateType(
        entityId: create_id_from('TaxAuthorityRateType', ['taxAuthorityRateTypeId'], map),
        description: map['description'],
        taxAuthorityRateTypeId: map['taxAuthorityRateTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ZipSalesRuleLookup extractZipSalesRuleLookup(dynamic json) {
    return ZipSalesRuleLookup(
        entityId: create_id_from('ZipSalesRuleLookup', ['stateCode', 'city', 'county', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        taxable: json['taxable'] as String,
        city: json['city'] as String,
        idCode: json['idCode'] as String,
        county: json['county'] as String,
        shipCond: json['shipCond'] as String,
        stateCode: json['stateCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ZipSalesRuleLookup overridesZipSalesRuleLookup(Map<String, dynamic> map) {
    return ZipSalesRuleLookup(
        entityId: create_id_from('ZipSalesRuleLookup', ['stateCode', 'city', 'county', 'fromDate'], map),
        fromDate: map['fromDate'],
        taxable: map['taxable'],
        city: map['city'],
        idCode: map['idCode'],
        county: map['county'],
        shipCond: map['shipCond'],
        stateCode: map['stateCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ZipSalesTaxLookup extractZipSalesTaxLookup(dynamic json) {
    return ZipSalesTaxLookup(
        entityId: create_id_from('ZipSalesTaxLookup', ['zipCode', 'stateCode', 'city', 'county', 'fromDate'], json),
        zipCode: json['zipCode'] as String,
        comboSalesTax: json['comboSalesTax'] as double,
        city: json['city'] as String,
        county: json['county'] as String,
        stateUseTax: json['stateUseTax'] as double,
        cityUseTax: json['cityUseTax'] as double,
        comboUseTax: json['comboUseTax'] as double,
        countySalesTax: json['countySalesTax'] as double,
        generalDefault: json['generalDefault'] as String,
        countyDefault: json['countyDefault'] as String,
        countyLocalUseTax: json['countyLocalUseTax'] as double,
        countyFips: json['countyFips'] as String,
        cityLocalUseTax: json['cityLocalUseTax'] as double,
        citySalesTax: json['citySalesTax'] as double,
        stateSalesTax: json['stateSalesTax'] as double,
        geoCode: json['geoCode'] as String,
        fromDate: check_dt(json['fromDate']),
        countyUseTax: json['countyUseTax'] as double,
        countyLocalSalesTax: json['countyLocalSalesTax'] as double,
        insideCity: json['insideCity'] as String,
        stateCode: json['stateCode'] as String,
        cityLocalSalesTax: json['cityLocalSalesTax'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ZipSalesTaxLookup overridesZipSalesTaxLookup(Map<String, dynamic> map) {
    return ZipSalesTaxLookup(
        entityId: create_id_from('ZipSalesTaxLookup', ['zipCode', 'stateCode', 'city', 'county', 'fromDate'], map),
        zipCode: map['zipCode'],
        comboSalesTax: map['comboSalesTax'],
        city: map['city'],
        county: map['county'],
        stateUseTax: map['stateUseTax'],
        cityUseTax: map['cityUseTax'],
        comboUseTax: map['comboUseTax'],
        countySalesTax: map['countySalesTax'],
        generalDefault: map['generalDefault'],
        countyDefault: map['countyDefault'],
        countyLocalUseTax: map['countyLocalUseTax'],
        countyFips: map['countyFips'],
        cityLocalUseTax: map['cityLocalUseTax'],
        citySalesTax: map['citySalesTax'],
        stateSalesTax: map['stateSalesTax'],
        geoCode: map['geoCode'],
        fromDate: map['fromDate'],
        countyUseTax: map['countyUseTax'],
        countyLocalSalesTax: map['countyLocalSalesTax'],
        insideCity: map['insideCity'],
        stateCode: map['stateCode'],
        cityLocalSalesTax: map['cityLocalSalesTax'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}