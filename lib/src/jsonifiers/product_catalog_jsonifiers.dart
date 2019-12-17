import 'package:sagas_meta/src/models/product_catalog.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductCatalogJsonifier{
  static ProdCatalog extractProdCatalog(dynamic json) {
    return ProdCatalog(
        entityId: create_id_from('ProdCatalog', ['prodCatalogId'], json),
        headerLogo: json['headerLogo'] as String,
        styleSheet: json['styleSheet'] as String,
        templatePathPrefix: json['templatePathPrefix'] as String,
        catalogName: json['catalogName'] as String,
        useQuickAdd: json['useQuickAdd'] as String,
        contentPathPrefix: json['contentPathPrefix'] as String,
        viewAllowPermReqd: json['viewAllowPermReqd'] as String,
        prodCatalogId: json['prodCatalogId'] as String,
        purchaseAllowPermReqd: json['purchaseAllowPermReqd'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdCatalog overridesProdCatalog(Map<String, dynamic> map) {
    return ProdCatalog(
        entityId: create_id_from('ProdCatalog', ['prodCatalogId'], map),
        headerLogo: map['headerLogo'],
        styleSheet: map['styleSheet'],
        templatePathPrefix: map['templatePathPrefix'],
        catalogName: map['catalogName'],
        useQuickAdd: map['useQuickAdd'],
        contentPathPrefix: map['contentPathPrefix'],
        viewAllowPermReqd: map['viewAllowPermReqd'],
        prodCatalogId: map['prodCatalogId'],
        purchaseAllowPermReqd: map['purchaseAllowPermReqd'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdCatalogCategory extractProdCatalogCategory(dynamic json) {
    return ProdCatalogCategory(
        entityId: create_id_from('ProdCatalogCategory', ['prodCatalogId', 'productCategoryId', 'prodCatalogCategoryTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        prodCatalogCategoryTypeId: json['prodCatalogCategoryTypeId'] as String,
        productCategoryId: json['productCategoryId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        prodCatalogId: json['prodCatalogId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdCatalogCategory overridesProdCatalogCategory(Map<String, dynamic> map) {
    return ProdCatalogCategory(
        entityId: create_id_from('ProdCatalogCategory', ['prodCatalogId', 'productCategoryId', 'prodCatalogCategoryTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        prodCatalogCategoryTypeId: map['prodCatalogCategoryTypeId'],
        productCategoryId: map['productCategoryId'],
        sequenceNum: map['sequenceNum'],
        prodCatalogId: map['prodCatalogId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdCatalogCategoryType extractProdCatalogCategoryType(dynamic json) {
    return ProdCatalogCategoryType(
        entityId: create_id_from('ProdCatalogCategoryType', ['prodCatalogCategoryTypeId'], json),
        prodCatalogCategoryTypeId: json['prodCatalogCategoryTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdCatalogCategoryType overridesProdCatalogCategoryType(Map<String, dynamic> map) {
    return ProdCatalogCategoryType(
        entityId: create_id_from('ProdCatalogCategoryType', ['prodCatalogCategoryTypeId'], map),
        prodCatalogCategoryTypeId: map['prodCatalogCategoryTypeId'],
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdCatalogInvFacility extractProdCatalogInvFacility(dynamic json) {
    return ProdCatalogInvFacility(
        entityId: create_id_from('ProdCatalogInvFacility', ['prodCatalogId', 'facilityId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        facilityId: json['facilityId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        prodCatalogId: json['prodCatalogId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdCatalogInvFacility overridesProdCatalogInvFacility(Map<String, dynamic> map) {
    return ProdCatalogInvFacility(
        entityId: create_id_from('ProdCatalogInvFacility', ['prodCatalogId', 'facilityId', 'fromDate'], map),
        fromDate: map['fromDate'],
        facilityId: map['facilityId'],
        sequenceNum: map['sequenceNum'],
        prodCatalogId: map['prodCatalogId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProdCatalogRole extractProdCatalogRole(dynamic json) {
    return ProdCatalogRole(
        entityId: create_id_from('ProdCatalogRole', ['partyId', 'roleTypeId', 'prodCatalogId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        partyId: json['partyId'] as String,
        prodCatalogId: json['prodCatalogId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdCatalogRole overridesProdCatalogRole(Map<String, dynamic> map) {
    return ProdCatalogRole(
        entityId: create_id_from('ProdCatalogRole', ['partyId', 'roleTypeId', 'prodCatalogId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        sequenceNum: map['sequenceNum'],
        partyId: map['partyId'],
        prodCatalogId: map['prodCatalogId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}