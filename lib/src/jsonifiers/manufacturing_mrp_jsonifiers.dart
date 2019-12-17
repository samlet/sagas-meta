import 'package:sagas_meta/src/models/manufacturing_mrp.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ManufacturingMrpJsonifier{
  static MrpEvent extractMrpEvent(dynamic json) {
    return MrpEvent(
        entityId: create_id_from('MrpEvent', ['mrpId', 'productId', 'eventDate', 'mrpEventTypeId'], json),
        mrpEventTypeId: json['mrpEventTypeId'] as String,
        mrpId: json['mrpId'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        isLate: json['isLate'] as String,
        eventName: json['eventName'] as String,
        eventDate: check_dt(json['eventDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MrpEvent overridesMrpEvent(Map<String, dynamic> map) {
    return MrpEvent(
        entityId: create_id_from('MrpEvent', ['mrpId', 'productId', 'eventDate', 'mrpEventTypeId'], map),
        mrpEventTypeId: map['mrpEventTypeId'],
        mrpId: map['mrpId'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        productId: map['productId'],
        isLate: map['isLate'],
        eventName: map['eventName'],
        eventDate: map['eventDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MrpEventType extractMrpEventType(dynamic json) {
    return MrpEventType(
        entityId: create_id_from('MrpEventType', ['mrpEventTypeId'], json),
        mrpEventTypeId: json['mrpEventTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MrpEventType overridesMrpEventType(Map<String, dynamic> map) {
    return MrpEventType(
        entityId: create_id_from('MrpEventType', ['mrpEventTypeId'], map),
        mrpEventTypeId: map['mrpEventTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MrpEventView extractMrpEventView(dynamic json) {
    return MrpEventView(
        entityId: create_id_from('MrpEventView', ['mrpEventTypeId', 'mrpId', 'productId', 'eventDate'], json),
        mrpEventTypeId: json['mrpEventTypeId'] as String,
        mrpId: json['mrpId'] as String,
        facilityId: json['facilityId'] as String,
        quantity: json['quantity'] as double,
        productId: json['productId'] as String,
        isLate: json['isLate'] as String,
        eventName: json['eventName'] as String,
        billOfMaterialLevel: json['billOfMaterialLevel'] as int,
        eventDate: check_dt(json['eventDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MrpEventView overridesMrpEventView(Map<String, dynamic> map) {
    return MrpEventView(
        entityId: create_id_from('MrpEventView', ['mrpEventTypeId', 'mrpId', 'productId', 'eventDate'], map),
        mrpEventTypeId: map['mrpEventTypeId'],
        mrpId: map['mrpId'],
        facilityId: map['facilityId'],
        quantity: map['quantity'],
        productId: map['productId'],
        isLate: map['isLate'],
        eventName: map['eventName'],
        billOfMaterialLevel: map['billOfMaterialLevel'],
        eventDate: map['eventDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}