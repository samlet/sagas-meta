import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EntityKeyStore, Entity Key Store
class EntityKeyStore extends EntityBase {

  /// this entity has only one pk
  final String keyName; // pk
  final String keyText;
  EntityKeyStore({entityId,
    @required this.keyName, this.keyText,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntityKeyStore { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'keyName':keyName, 'keyText':keyText};
  }

}