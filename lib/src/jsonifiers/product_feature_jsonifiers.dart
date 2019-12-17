import 'package:sagas_meta/src/models/product_feature.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductFeatureJsonifier{
  static ProdFeaGrpAppAndProdFeaApp extractProdFeaGrpAppAndProdFeaApp(dynamic json) {
    return ProdFeaGrpAppAndProdFeaApp(
        entityId: create_id_from('ProdFeaGrpAppAndProdFeaApp', ['productFeatureGroupId', 'productFeatureId', 'groupFromDate', 'productId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        amount: json['amount'] as double,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        recurringAmount: json['recurringAmount'] as double,
        groupFromDate: check_dt(json['groupFromDate']),
        groupThruDate: check_dt(json['groupThruDate']),
        productFeatureId: json['productFeatureId'] as String,
        productFeatureApplTypeId: json['productFeatureApplTypeId'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProdFeaGrpAppAndProdFeaApp overridesProdFeaGrpAppAndProdFeaApp(Map<String, dynamic> map) {
    return ProdFeaGrpAppAndProdFeaApp(
        entityId: create_id_from('ProdFeaGrpAppAndProdFeaApp', ['productFeatureGroupId', 'productFeatureId', 'groupFromDate', 'productId', 'fromDate'], map),
        fromDate: map['fromDate'],
        amount: map['amount'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        recurringAmount: map['recurringAmount'],
        groupFromDate: map['groupFromDate'],
        groupThruDate: map['groupThruDate'],
        productFeatureId: map['productFeatureId'],
        productFeatureApplTypeId: map['productFeatureApplTypeId'],
        productFeatureGroupId: map['productFeatureGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeature extractProductFeature(dynamic json) {
    return ProductFeature(
        entityId: create_id_from('ProductFeature', ['productFeatureId'], json),
        productFeatureTypeId: json['productFeatureTypeId'] as String,
        idCode: json['idCode'] as String,
        productFeatureId: json['productFeatureId'] as String,
        numberSpecified: json['numberSpecified'] as double,
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        defaultSequenceNum: json['defaultSequenceNum'] as int,
        defaultAmount: json['defaultAmount'] as double,
        abbrev: json['abbrev'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeature overridesProductFeature(Map<String, dynamic> map) {
    return ProductFeature(
        entityId: create_id_from('ProductFeature', ['productFeatureId'], map),
        productFeatureTypeId: map['productFeatureTypeId'],
        idCode: map['idCode'],
        productFeatureId: map['productFeatureId'],
        numberSpecified: map['numberSpecified'],
        productFeatureCategoryId: map['productFeatureCategoryId'],
        description: map['description'],
        uomId: map['uomId'],
        defaultSequenceNum: map['defaultSequenceNum'],
        defaultAmount: map['defaultAmount'],
        abbrev: map['abbrev'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureAndAppl extractProductFeatureAndAppl(dynamic json) {
    return ProductFeatureAndAppl(
        entityId: create_id_from('ProductFeatureAndAppl', ['productFeatureId', 'productId', 'fromDate'], json),
        productFeatureTypeId: json['productFeatureTypeId'] as String,
        amount: json['amount'] as double,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        recurringAmount: json['recurringAmount'] as double,
        idCode: json['idCode'] as String,
        productFeatureId: json['productFeatureId'] as String,
        numberSpecified: json['numberSpecified'] as double,
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        defaultSequenceNum: json['defaultSequenceNum'] as int,
        defaultAmount: json['defaultAmount'] as double,
        productFeatureApplTypeId: json['productFeatureApplTypeId'] as String,
        abbrev: json['abbrev'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureAndAppl overridesProductFeatureAndAppl(Map<String, dynamic> map) {
    return ProductFeatureAndAppl(
        entityId: create_id_from('ProductFeatureAndAppl', ['productFeatureId', 'productId', 'fromDate'], map),
        productFeatureTypeId: map['productFeatureTypeId'],
        amount: map['amount'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        recurringAmount: map['recurringAmount'],
        idCode: map['idCode'],
        productFeatureId: map['productFeatureId'],
        numberSpecified: map['numberSpecified'],
        productFeatureCategoryId: map['productFeatureCategoryId'],
        description: map['description'],
        uomId: map['uomId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        defaultSequenceNum: map['defaultSequenceNum'],
        defaultAmount: map['defaultAmount'],
        productFeatureApplTypeId: map['productFeatureApplTypeId'],
        abbrev: map['abbrev'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureAppl extractProductFeatureAppl(dynamic json) {
    return ProductFeatureAppl(
        entityId: create_id_from('ProductFeatureAppl', ['productId', 'productFeatureId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        amount: json['amount'] as double,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        recurringAmount: json['recurringAmount'] as double,
        productFeatureId: json['productFeatureId'] as String,
        productFeatureApplTypeId: json['productFeatureApplTypeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureAppl overridesProductFeatureAppl(Map<String, dynamic> map) {
    return ProductFeatureAppl(
        entityId: create_id_from('ProductFeatureAppl', ['productId', 'productFeatureId', 'fromDate'], map),
        fromDate: map['fromDate'],
        amount: map['amount'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        recurringAmount: map['recurringAmount'],
        productFeatureId: map['productFeatureId'],
        productFeatureApplTypeId: map['productFeatureApplTypeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureApplAttr extractProductFeatureApplAttr(dynamic json) {
    return ProductFeatureApplAttr(
        entityId: create_id_from('ProductFeatureApplAttr', ['productId', 'productFeatureId', 'fromDate', 'attrName'], json),
        fromDate: check_dt(json['fromDate']),
        productId: json['productId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureApplAttr overridesProductFeatureApplAttr(Map<String, dynamic> map) {
    return ProductFeatureApplAttr(
        entityId: create_id_from('ProductFeatureApplAttr', ['productId', 'productFeatureId', 'fromDate', 'attrName'], map),
        fromDate: map['fromDate'],
        productId: map['productId'],
        productFeatureId: map['productFeatureId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureApplType extractProductFeatureApplType(dynamic json) {
    return ProductFeatureApplType(
        entityId: create_id_from('ProductFeatureApplType', ['productFeatureApplTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        productFeatureApplTypeId: json['productFeatureApplTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureApplType overridesProductFeatureApplType(Map<String, dynamic> map) {
    return ProductFeatureApplType(
        entityId: create_id_from('ProductFeatureApplType', ['productFeatureApplTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        productFeatureApplTypeId: map['productFeatureApplTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureCatGrpAppl extractProductFeatureCatGrpAppl(dynamic json) {
    return ProductFeatureCatGrpAppl(
        entityId: create_id_from('ProductFeatureCatGrpAppl', ['productCategoryId', 'productFeatureGroupId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productCategoryId: json['productCategoryId'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureCatGrpAppl overridesProductFeatureCatGrpAppl(Map<String, dynamic> map) {
    return ProductFeatureCatGrpAppl(
        entityId: create_id_from('ProductFeatureCatGrpAppl', ['productCategoryId', 'productFeatureGroupId', 'fromDate'], map),
        fromDate: map['fromDate'],
        productCategoryId: map['productCategoryId'],
        productFeatureGroupId: map['productFeatureGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureCategory extractProductFeatureCategory(dynamic json) {
    return ProductFeatureCategory(
        entityId: create_id_from('ProductFeatureCategory', ['productFeatureCategoryId'], json),
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        description: json['description'] as String,
        parentCategoryId: json['parentCategoryId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureCategory overridesProductFeatureCategory(Map<String, dynamic> map) {
    return ProductFeatureCategory(
        entityId: create_id_from('ProductFeatureCategory', ['productFeatureCategoryId'], map),
        productFeatureCategoryId: map['productFeatureCategoryId'],
        description: map['description'],
        parentCategoryId: map['parentCategoryId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureCategoryAppl extractProductFeatureCategoryAppl(dynamic json) {
    return ProductFeatureCategoryAppl(
        entityId: create_id_from('ProductFeatureCategoryAppl', ['productCategoryId', 'productFeatureCategoryId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        productCategoryId: json['productCategoryId'] as String,
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureCategoryAppl overridesProductFeatureCategoryAppl(Map<String, dynamic> map) {
    return ProductFeatureCategoryAppl(
        entityId: create_id_from('ProductFeatureCategoryAppl', ['productCategoryId', 'productFeatureCategoryId', 'fromDate'], map),
        fromDate: map['fromDate'],
        productCategoryId: map['productCategoryId'],
        productFeatureCategoryId: map['productFeatureCategoryId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureDataResource extractProductFeatureDataResource(dynamic json) {
    return ProductFeatureDataResource(
        entityId: create_id_from('ProductFeatureDataResource', ['dataResourceId', 'productFeatureId'], json),
        dataResourceId: json['dataResourceId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureDataResource overridesProductFeatureDataResource(Map<String, dynamic> map) {
    return ProductFeatureDataResource(
        entityId: create_id_from('ProductFeatureDataResource', ['dataResourceId', 'productFeatureId'], map),
        dataResourceId: map['dataResourceId'],
        productFeatureId: map['productFeatureId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureGroup extractProductFeatureGroup(dynamic json) {
    return ProductFeatureGroup(
        entityId: create_id_from('ProductFeatureGroup', ['productFeatureGroupId'], json),
        description: json['description'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureGroup overridesProductFeatureGroup(Map<String, dynamic> map) {
    return ProductFeatureGroup(
        entityId: create_id_from('ProductFeatureGroup', ['productFeatureGroupId'], map),
        description: map['description'],
        productFeatureGroupId: map['productFeatureGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureGroupAndAppl extractProductFeatureGroupAndAppl(dynamic json) {
    return ProductFeatureGroupAndAppl(
        entityId: create_id_from('ProductFeatureGroupAndAppl', ['fromDate', 'productFeatureId', 'productFeatureGroupId'], json),
        productFeatureTypeId: json['productFeatureTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        idCode: json['idCode'] as String,
        productFeatureId: json['productFeatureId'] as String,
        numberSpecified: json['numberSpecified'] as double,
        productFeatureCategoryId: json['productFeatureCategoryId'] as String,
        description: json['description'] as String,
        uomId: json['uomId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        defaultSequenceNum: json['defaultSequenceNum'] as int,
        defaultAmount: json['defaultAmount'] as double,
        abbrev: json['abbrev'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureGroupAndAppl overridesProductFeatureGroupAndAppl(Map<String, dynamic> map) {
    return ProductFeatureGroupAndAppl(
        entityId: create_id_from('ProductFeatureGroupAndAppl', ['fromDate', 'productFeatureId', 'productFeatureGroupId'], map),
        productFeatureTypeId: map['productFeatureTypeId'],
        sequenceNum: map['sequenceNum'],
        idCode: map['idCode'],
        productFeatureId: map['productFeatureId'],
        numberSpecified: map['numberSpecified'],
        productFeatureCategoryId: map['productFeatureCategoryId'],
        description: map['description'],
        uomId: map['uomId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        defaultSequenceNum: map['defaultSequenceNum'],
        defaultAmount: map['defaultAmount'],
        abbrev: map['abbrev'],
        productFeatureGroupId: map['productFeatureGroupId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureGroupAppl extractProductFeatureGroupAppl(dynamic json) {
    return ProductFeatureGroupAppl(
        entityId: create_id_from('ProductFeatureGroupAppl', ['productFeatureGroupId', 'productFeatureId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        sequenceNum: json['sequenceNum'] as int,
        productFeatureId: json['productFeatureId'] as String,
        productFeatureGroupId: json['productFeatureGroupId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureGroupAppl overridesProductFeatureGroupAppl(Map<String, dynamic> map) {
    return ProductFeatureGroupAppl(
        entityId: create_id_from('ProductFeatureGroupAppl', ['productFeatureGroupId', 'productFeatureId', 'fromDate'], map),
        fromDate: map['fromDate'],
        sequenceNum: map['sequenceNum'],
        productFeatureId: map['productFeatureId'],
        productFeatureGroupId: map['productFeatureGroupId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureIactn extractProductFeatureIactn(dynamic json) {
    return ProductFeatureIactn(
        entityId: create_id_from('ProductFeatureIactn', ['productFeatureId', 'productFeatureIdTo'], json),
        productId: json['productId'] as String,
        productFeatureIactnTypeId: json['productFeatureIactnTypeId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        productFeatureIdTo: json['productFeatureIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureIactn overridesProductFeatureIactn(Map<String, dynamic> map) {
    return ProductFeatureIactn(
        entityId: create_id_from('ProductFeatureIactn', ['productFeatureId', 'productFeatureIdTo'], map),
        productId: map['productId'],
        productFeatureIactnTypeId: map['productFeatureIactnTypeId'],
        productFeatureId: map['productFeatureId'],
        productFeatureIdTo: map['productFeatureIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureIactnType extractProductFeatureIactnType(dynamic json) {
    return ProductFeatureIactnType(
        entityId: create_id_from('ProductFeatureIactnType', ['productFeatureIactnTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        productFeatureIactnTypeId: json['productFeatureIactnTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureIactnType overridesProductFeatureIactnType(Map<String, dynamic> map) {
    return ProductFeatureIactnType(
        entityId: create_id_from('ProductFeatureIactnType', ['productFeatureIactnTypeId'], map),
        parentTypeId: map['parentTypeId'],
        productFeatureIactnTypeId: map['productFeatureIactnTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductFeatureType extractProductFeatureType(dynamic json) {
    return ProductFeatureType(
        entityId: create_id_from('ProductFeatureType', ['productFeatureTypeId'], json),
        productFeatureTypeId: json['productFeatureTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductFeatureType overridesProductFeatureType(Map<String, dynamic> map) {
    return ProductFeatureType(
        entityId: create_id_from('ProductFeatureType', ['productFeatureTypeId'], map),
        productFeatureTypeId: map['productFeatureTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}