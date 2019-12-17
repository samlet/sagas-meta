import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CostComponent, Cost Component
class CostComponent extends EntityBase {

  /// this entity has only one pk
  final String workEffortId;
  final String costComponentTypeId;
  final double cost;
  final String productId;
  final String productFeatureId;
  final String costComponentId; // pk
  final String costComponentCalcId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String geoId;
  final String fixedAssetId;
  final String costUomId;
  final String partyId;
  CostComponent({entityId,
    this.workEffortId, this.costComponentTypeId, this.cost, this.productId, this.productFeatureId, @required this.costComponentId, this.costComponentCalcId, this.thruDate, this.fromDate, this.geoId, this.fixedAssetId, this.costUomId, this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CostComponent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'costComponentTypeId':costComponentTypeId, 'cost':cost, 'productId':productId, 'productFeatureId':productFeatureId, 'costComponentId':costComponentId, 'costComponentCalcId':costComponentCalcId, 'thruDate':thruDate, 'fromDate':fromDate, 'geoId':geoId, 'fixedAssetId':fixedAssetId, 'costUomId':costUomId, 'partyId':partyId};
  }

}

/// Entity CostComponentAttribute, Cost Component Attribute
class CostComponentAttribute extends EntityBase {

  final String attrDescription;
  final String attrValue;
  final String attrName; // pk
  final String costComponentId; // pk
  CostComponentAttribute({entityId,
    this.attrDescription, this.attrValue, @required this.attrName, @required this.costComponentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CostComponentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'attrValue':attrValue, 'attrName':attrName, 'costComponentId':costComponentId};
  }

}

/// Entity CostComponentCalc, Cost Component Calculation
class CostComponentCalc extends EntityBase {

  /// this entity has only one pk
  final double fixedCost;
  final String description;
  final int perMilliSecond;
  final String costComponentCalcId; // pk
  final String costCustomMethodId;
  final String currencyUomId;
  final double variableCost;
  final String costGlAccountTypeId;
  final String offsettingGlAccountTypeId;
  CostComponentCalc({entityId,
    this.fixedCost, this.description, this.perMilliSecond, @required this.costComponentCalcId, this.costCustomMethodId, this.currencyUomId, this.variableCost, this.costGlAccountTypeId, this.offsettingGlAccountTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CostComponentCalc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fixedCost':fixedCost, 'description':description, 'perMilliSecond':perMilliSecond, 'costComponentCalcId':costComponentCalcId, 'costCustomMethodId':costCustomMethodId, 'currencyUomId':currencyUomId, 'variableCost':variableCost, 'costGlAccountTypeId':costGlAccountTypeId, 'offsettingGlAccountTypeId':offsettingGlAccountTypeId};
  }

}

/// Entity CostComponentType, Cost Component Type
class CostComponentType extends EntityBase {

  /// this entity has only one pk
  final String costComponentTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  CostComponentType({entityId,
    @required this.costComponentTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CostComponentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'costComponentTypeId':costComponentTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity CostComponentTypeAttr, Cost Component Type Attribute
class CostComponentTypeAttr extends EntityBase {

  final String costComponentTypeId; // pk
  final String description;
  final String attrName; // pk
  CostComponentTypeAttr({entityId,
    @required this.costComponentTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CostComponentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'costComponentTypeId':costComponentTypeId, 'description':description, 'attrName':attrName};
  }

}

/// Entity ProductCostComponentCalc, Product Cost Calculation
class ProductCostComponentCalc extends EntityBase {

  final DateTime fromDate; // pk
  final String costComponentTypeId; // pk
  final String productId; // pk
  final int sequenceNum;
  final String costComponentCalcId;
  final DateTime thruDate;
  ProductCostComponentCalc({entityId,
    @required this.fromDate, @required this.costComponentTypeId, @required this.productId, this.sequenceNum, this.costComponentCalcId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductCostComponentCalc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'costComponentTypeId':costComponentTypeId, 'productId':productId, 'sequenceNum':sequenceNum, 'costComponentCalcId':costComponentCalcId, 'thruDate':thruDate};
  }

}