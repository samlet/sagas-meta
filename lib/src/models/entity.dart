import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity JavaResource, Java Resource
class JavaResource extends EntityBase {

  /// this entity has only one pk
  final String resourceName; // pk
  final Uint8List resourceValue;
  JavaResource({entityId,
    @required this.resourceName, this.resourceValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JavaResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'resourceName':resourceName, 'resourceValue':resourceValue};
  }

}