import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity DssLinearSales, Dss Linear Sales
class DssLinearSales extends EntityBase {

  /// this entity has only one pk
  final String dssLinearSalesId; // pk
  final int yearLower;
  final int yearUpper;
  final int year;
  final int salesLower;
  final int salesUpper;
  final double radius;
  final int sales;
  DssLinearSales({entityId,
    @required this.dssLinearSalesId, this.yearLower, this.yearUpper, this.year, this.salesLower, this.salesUpper, this.radius, this.sales,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DssLinearSales { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dssLinearSalesId':dssLinearSalesId, 'yearLower':yearLower, 'yearUpper':yearUpper, 'year':year, 'salesLower':salesLower, 'salesUpper':salesUpper, 'radius':radius, 'sales':sales};
  }

}

/// Entity DssOrdinalSales, Dss Ordinal Sales
class DssOrdinalSales extends EntityBase {

  /// this entity has only one pk
  final String year;
  final String dssOrdinalSalesId; // pk
  final int sales;
  DssOrdinalSales({entityId,
    this.year, @required this.dssOrdinalSalesId, this.sales,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DssOrdinalSales { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'year':year, 'dssOrdinalSalesId':dssOrdinalSalesId, 'sales':sales};
  }

}