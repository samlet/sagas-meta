import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ExampleFeature, Example Feature Entity
class ExampleFeature extends EntityBase {

  /// this entity has only one pk
  final String featureSourceEnumId;
  final String description;
  final String exampleFeatureId; // pk
  ExampleFeature({entityId,
    this.featureSourceEnumId, this.description, @required this.exampleFeatureId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeature { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'featureSourceEnumId':featureSourceEnumId, 'description':description, 'exampleFeatureId':exampleFeatureId};
  }

}

/// Entity ExampleFeatureAppl, Example Feature Application Entity
class ExampleFeatureAppl extends EntityBase {

  final DateTime fromDate; // pk
  final String exampleId; // pk
  final int sequenceNum;
  final String exampleFeatureApplTypeId;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  ExampleFeatureAppl({entityId,
    @required this.fromDate, @required this.exampleId, this.sequenceNum, this.exampleFeatureApplTypeId, @required this.exampleFeatureId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureAppl { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'exampleId':exampleId, 'sequenceNum':sequenceNum, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate};
  }

}

/// Entity ExampleFeatureApplType, Example Feature Application Type Entity
class ExampleFeatureApplType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String description;
  final String exampleFeatureApplTypeId; // pk
  ExampleFeatureApplType({entityId,
    this.parentTypeId, this.description, @required this.exampleFeatureApplTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureApplType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'description':description, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId};
  }

}