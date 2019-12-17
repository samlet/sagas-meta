import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity MrpEvent, MRP Event
class MrpEvent extends EntityBase {

  final String mrpEventTypeId; // pk
  final String mrpId; // pk
  final String facilityId;
  final double quantity;
  final String productId; // pk
  final String isLate;
  final String eventName;
  final DateTime eventDate; // pk
  MrpEvent({entityId,
    @required this.mrpEventTypeId, @required this.mrpId, this.facilityId, this.quantity, @required this.productId, this.isLate, this.eventName, @required this.eventDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MrpEvent { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mrpEventTypeId':mrpEventTypeId, 'mrpId':mrpId, 'facilityId':facilityId, 'quantity':quantity, 'productId':productId, 'isLate':isLate, 'eventName':eventName, 'eventDate':eventDate};
  }

}

/// Entity MrpEventType, MRP Event Type
class MrpEventType extends EntityBase {

  /// this entity has only one pk
  final String mrpEventTypeId; // pk
  final String description;
  MrpEventType({entityId,
    @required this.mrpEventTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MrpEventType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mrpEventTypeId':mrpEventTypeId, 'description':description};
  }

}

/// Entity MrpEventView, MRP Event View
class MrpEventView extends EntityBase {

  final String mrpEventTypeId; // pk
  final String mrpId; // pk
  final String facilityId;
  final double quantity;
  final String productId; // pk
  final String isLate;
  final String eventName;
  final int billOfMaterialLevel;
  final DateTime eventDate; // pk
  MrpEventView({entityId,
    @required this.mrpEventTypeId, @required this.mrpId, this.facilityId, this.quantity, @required this.productId, this.isLate, this.eventName, this.billOfMaterialLevel, @required this.eventDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MrpEventView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mrpEventTypeId':mrpEventTypeId, 'mrpId':mrpId, 'facilityId':facilityId, 'quantity':quantity, 'productId':productId, 'isLate':isLate, 'eventName':eventName, 'billOfMaterialLevel':billOfMaterialLevel, 'eventDate':eventDate};
  }

}