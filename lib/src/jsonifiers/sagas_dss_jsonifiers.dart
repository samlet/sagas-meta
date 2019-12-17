import 'package:sagas_meta/src/models/sagas_dss.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class SagasDssJsonifier{
  static DssLinearSales extractDssLinearSales(dynamic json) {
    return DssLinearSales(
        entityId: create_id_from('DssLinearSales', ['dssLinearSalesId'], json),
        dssLinearSalesId: json['dssLinearSalesId'] as String,
        yearLower: json['yearLower'] as int,
        yearUpper: json['yearUpper'] as int,
        year: json['year'] as int,
        salesLower: json['salesLower'] as int,
        salesUpper: json['salesUpper'] as int,
        radius: json['radius'] as double,
        sales: json['sales'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DssLinearSales overridesDssLinearSales(Map<String, dynamic> map) {
    return DssLinearSales(
        entityId: create_id_from('DssLinearSales', ['dssLinearSalesId'], map),
        dssLinearSalesId: map['dssLinearSalesId'],
        yearLower: map['yearLower'],
        yearUpper: map['yearUpper'],
        year: map['year'],
        salesLower: map['salesLower'],
        salesUpper: map['salesUpper'],
        radius: map['radius'],
        sales: map['sales'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DssOrdinalSales extractDssOrdinalSales(dynamic json) {
    return DssOrdinalSales(
        entityId: create_id_from('DssOrdinalSales', ['dssOrdinalSalesId'], json),
        year: json['year'] as String,
        dssOrdinalSalesId: json['dssOrdinalSalesId'] as String,
        sales: json['sales'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DssOrdinalSales overridesDssOrdinalSales(Map<String, dynamic> map) {
    return DssOrdinalSales(
        entityId: create_id_from('DssOrdinalSales', ['dssOrdinalSalesId'], map),
        year: map['year'],
        dssOrdinalSalesId: map['dssOrdinalSalesId'],
        sales: map['sales'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}