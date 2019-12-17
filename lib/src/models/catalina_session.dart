import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CatalinaSession, Catalina Session Store
class CatalinaSession extends EntityBase {

  /// this entity has only one pk
  final Uint8List sessionInfo;
  final int maxIdle;
  final String isValid;
  final int lastAccessed;
  final String sessionId; // pk
  final int sessionSize;
  CatalinaSession({entityId,
    this.sessionInfo, this.maxIdle, this.isValid, this.lastAccessed, @required this.sessionId, this.sessionSize,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CatalinaSession { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'sessionInfo':sessionInfo, 'maxIdle':maxIdle, 'isValid':isValid, 'lastAccessed':lastAccessed, 'sessionId':sessionId, 'sessionSize':sessionSize};
  }

}