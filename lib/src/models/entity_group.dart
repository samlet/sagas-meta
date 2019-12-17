import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EntityGroup, Entity Grouping
class EntityGroup extends EntityBase {

  /// this entity has only one pk
  final String entityGroupId; // pk
  final String entityGroupName;
  EntityGroup({entityId,
    @required this.entityGroupId, this.entityGroupName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntityGroup { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'entityGroupId':entityGroupId, 'entityGroupName':entityGroupName};
  }

}

/// Entity EntityGroupEntry, Entity Grouping
class EntityGroupEntry extends EntityBase {

  final String entityOrPackage; // pk
  final String entityGroupId; // pk
  final String applEnumId;
  EntityGroupEntry({entityId,
    @required this.entityOrPackage, @required this.entityGroupId, this.applEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntityGroupEntry { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'entityOrPackage':entityOrPackage, 'entityGroupId':entityGroupId, 'applEnumId':applEnumId};
  }

}