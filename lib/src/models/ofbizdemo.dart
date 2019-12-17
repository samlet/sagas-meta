import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity OfbizDemo, OfbizDemo Entity
class OfbizDemo extends EntityBase {

  /// this entity has only one pk
  final String firstName;
  final String lastName;
  final String comments;
  final String ofbizDemoId; // pk
  final String ofbizDemoTypeId;
  OfbizDemo({entityId,
    this.firstName, this.lastName, this.comments, @required this.ofbizDemoId, this.ofbizDemoTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OfbizDemo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'firstName':firstName, 'lastName':lastName, 'comments':comments, 'ofbizDemoId':ofbizDemoId, 'ofbizDemoTypeId':ofbizDemoTypeId};
  }

}

/// Entity OfbizDemoType, OfbizDemo Type Entity
class OfbizDemoType extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String ofbizDemoTypeId; // pk
  OfbizDemoType({entityId,
    this.description, @required this.ofbizDemoTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OfbizDemoType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'ofbizDemoTypeId':ofbizDemoTypeId};
  }

}