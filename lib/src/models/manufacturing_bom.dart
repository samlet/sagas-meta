import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ProductManufacturingRule, Product To Part Rule
class ProductManufacturingRule extends EntityBase {

  /// this entity has only one pk
  final String ruleSeqId;
  final String ruleOperator;
  final double quantity;
  final String productId;
  final String productIdFor;
  final String description;
  final String productFeature;
  final DateTime thruDate;
  final DateTime fromDate;
  final String productIdInSubst;
  final String ruleId; // pk
  final String productIdIn;
  ProductManufacturingRule({entityId,
    this.ruleSeqId, this.ruleOperator, this.quantity, this.productId, this.productIdFor, this.description, this.productFeature, this.thruDate, this.fromDate, this.productIdInSubst, @required this.ruleId, this.productIdIn,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ProductManufacturingRule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'ruleSeqId':ruleSeqId, 'ruleOperator':ruleOperator, 'quantity':quantity, 'productId':productId, 'productIdFor':productIdFor, 'description':description, 'productFeature':productFeature, 'thruDate':thruDate, 'fromDate':fromDate, 'productIdInSubst':productIdInSubst, 'ruleId':ruleId, 'productIdIn':productIdIn};
  }

}