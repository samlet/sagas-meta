import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity SystemProperty, Defines a System Property
class SystemProperty extends EntityBase {

  final String systemResourceId; // pk
  final String systemPropertyValue;
  final String description;
  final String systemPropertyId; // pk
  SystemProperty({entityId,
    @required this.systemResourceId, this.systemPropertyValue, this.description, @required this.systemPropertyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SystemProperty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'systemResourceId':systemResourceId, 'systemPropertyValue':systemPropertyValue, 'description':description, 'systemPropertyId':systemPropertyId};
  }

}