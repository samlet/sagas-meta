import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity ServiceSemaphore, Semaphore Lock
class ServiceSemaphore extends EntityBase {

  /// this entity has only one pk
  final DateTime lockTime;
  final String lockThread;
  final String lockedByInstanceId;
  final String serviceName; // pk
  ServiceSemaphore({entityId,
    this.lockTime, this.lockThread, this.lockedByInstanceId, @required this.serviceName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ServiceSemaphore { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'lockTime':lockTime, 'lockThread':lockThread, 'lockedByInstanceId':lockedByInstanceId, 'serviceName':serviceName};
  }

}