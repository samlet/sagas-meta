import 'package:sagas_meta/src/models/product_cost.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ProductCostJsonifier{
  static CostComponent extractCostComponent(dynamic json) {
    return CostComponent(
        entityId: create_id_from('CostComponent', ['costComponentId'], json),
        workEffortId: json['workEffortId'] as String,
        costComponentTypeId: json['costComponentTypeId'] as String,
        cost: json['cost'] as double,
        productId: json['productId'] as String,
        productFeatureId: json['productFeatureId'] as String,
        costComponentId: json['costComponentId'] as String,
        costComponentCalcId: json['costComponentCalcId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        geoId: json['geoId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        costUomId: json['costUomId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CostComponent overridesCostComponent(Map<String, dynamic> map) {
    return CostComponent(
        entityId: create_id_from('CostComponent', ['costComponentId'], map),
        workEffortId: map['workEffortId'],
        costComponentTypeId: map['costComponentTypeId'],
        cost: map['cost'],
        productId: map['productId'],
        productFeatureId: map['productFeatureId'],
        costComponentId: map['costComponentId'],
        costComponentCalcId: map['costComponentCalcId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        geoId: map['geoId'],
        fixedAssetId: map['fixedAssetId'],
        costUomId: map['costUomId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CostComponentAttribute extractCostComponentAttribute(dynamic json) {
    return CostComponentAttribute(
        entityId: create_id_from('CostComponentAttribute', ['costComponentId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        costComponentId: json['costComponentId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CostComponentAttribute overridesCostComponentAttribute(Map<String, dynamic> map) {
    return CostComponentAttribute(
        entityId: create_id_from('CostComponentAttribute', ['costComponentId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        costComponentId: map['costComponentId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CostComponentCalc extractCostComponentCalc(dynamic json) {
    return CostComponentCalc(
        entityId: create_id_from('CostComponentCalc', ['costComponentCalcId'], json),
        fixedCost: json['fixedCost'] as double,
        description: json['description'] as String,
        perMilliSecond: json['perMilliSecond'] as int,
        costComponentCalcId: json['costComponentCalcId'] as String,
        costCustomMethodId: json['costCustomMethodId'] as String,
        currencyUomId: json['currencyUomId'] as String,
        variableCost: json['variableCost'] as double,
        costGlAccountTypeId: json['costGlAccountTypeId'] as String,
        offsettingGlAccountTypeId: json['offsettingGlAccountTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CostComponentCalc overridesCostComponentCalc(Map<String, dynamic> map) {
    return CostComponentCalc(
        entityId: create_id_from('CostComponentCalc', ['costComponentCalcId'], map),
        fixedCost: map['fixedCost'],
        description: map['description'],
        perMilliSecond: map['perMilliSecond'],
        costComponentCalcId: map['costComponentCalcId'],
        costCustomMethodId: map['costCustomMethodId'],
        currencyUomId: map['currencyUomId'],
        variableCost: map['variableCost'],
        costGlAccountTypeId: map['costGlAccountTypeId'],
        offsettingGlAccountTypeId: map['offsettingGlAccountTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CostComponentType extractCostComponentType(dynamic json) {
    return CostComponentType(
        entityId: create_id_from('CostComponentType', ['costComponentTypeId'], json),
        costComponentTypeId: json['costComponentTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CostComponentType overridesCostComponentType(Map<String, dynamic> map) {
    return CostComponentType(
        entityId: create_id_from('CostComponentType', ['costComponentTypeId'], map),
        costComponentTypeId: map['costComponentTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CostComponentTypeAttr extractCostComponentTypeAttr(dynamic json) {
    return CostComponentTypeAttr(
        entityId: create_id_from('CostComponentTypeAttr', ['costComponentTypeId', 'attrName'], json),
        costComponentTypeId: json['costComponentTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CostComponentTypeAttr overridesCostComponentTypeAttr(Map<String, dynamic> map) {
    return CostComponentTypeAttr(
        entityId: create_id_from('CostComponentTypeAttr', ['costComponentTypeId', 'attrName'], map),
        costComponentTypeId: map['costComponentTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ProductCostComponentCalc extractProductCostComponentCalc(dynamic json) {
    return ProductCostComponentCalc(
        entityId: create_id_from('ProductCostComponentCalc', ['productId', 'costComponentTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        costComponentTypeId: json['costComponentTypeId'] as String,
        productId: json['productId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        costComponentCalcId: json['costComponentCalcId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductCostComponentCalc overridesProductCostComponentCalc(Map<String, dynamic> map) {
    return ProductCostComponentCalc(
        entityId: create_id_from('ProductCostComponentCalc', ['productId', 'costComponentTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        costComponentTypeId: map['costComponentTypeId'],
        productId: map['productId'],
        sequenceNum: map['sequenceNum'],
        costComponentCalcId: map['costComponentCalcId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}