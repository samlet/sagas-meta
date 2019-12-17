import 'package:sagas_meta/src/models/manufacturing_bom.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ManufacturingBomJsonifier{
  static ProductManufacturingRule extractProductManufacturingRule(dynamic json) {
    return ProductManufacturingRule(
        entityId: create_id_from('ProductManufacturingRule', ['ruleId'], json),
        ruleSeqId: json['ruleSeqId'] as String,
        ruleOperator: json['ruleOperator'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        productIdFor: json['productIdFor'] as String,
        description: json['description'] as String,
        productFeature: json['productFeature'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        productIdInSubst: json['productIdInSubst'] as String,
        ruleId: json['ruleId'] as String,
        productIdIn: json['productIdIn'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ProductManufacturingRule overridesProductManufacturingRule(Map<String, dynamic> map) {
    return ProductManufacturingRule(
        entityId: create_id_from('ProductManufacturingRule', ['ruleId'], map),
        ruleSeqId: map['ruleSeqId'],
        ruleOperator: map['ruleOperator'],
        quantity: map['quantity'],
        productId: map['productId'],
        productIdFor: map['productIdFor'],
        description: map['description'],
        productFeature: map['productFeature'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        productIdInSubst: map['productIdInSubst'],
        ruleId: map['ruleId'],
        productIdIn: map['productIdIn'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}