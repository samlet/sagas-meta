import 'package:sagas_meta/src/models/service_semaphore.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ServiceSemaphoreJsonifier{
  static ServiceSemaphore extractServiceSemaphore(dynamic json) {
    return ServiceSemaphore(
        entityId: create_id_from('ServiceSemaphore', ['serviceName'], json),
        lockTime: check_dt(json['lockTime']),
        lockThread: json['lockThread'] as String,
        lockedByInstanceId: json['lockedByInstanceId'] as String,
        serviceName: json['serviceName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ServiceSemaphore overridesServiceSemaphore(Map<String, dynamic> map) {
    return ServiceSemaphore(
        entityId: create_id_from('ServiceSemaphore', ['serviceName'], map),
        lockTime: map['lockTime'],
        lockThread: map['lockThread'],
        lockedByInstanceId: map['lockedByInstanceId'],
        serviceName: map['serviceName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}