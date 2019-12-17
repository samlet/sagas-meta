import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity StatusItem, Status
class StatusItem extends EntityBase {

  /// this entity has only one pk
  final String statusId; // pk
  final String statusTypeId;
  final String description;
  final String sequenceId;
  final String statusCode;
  StatusItem({entityId,
    @required this.statusId, this.statusTypeId, this.description, this.sequenceId, this.statusCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'StatusItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusId':statusId, 'statusTypeId':statusTypeId, 'description':description, 'sequenceId':sequenceId, 'statusCode':statusCode};
  }

}

/// Entity StatusType, Status Type
class StatusType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String statusTypeId; // pk
  final String description;
  StatusType({entityId,
    this.parentTypeId, this.hasTable, @required this.statusTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'StatusType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'statusTypeId':statusTypeId, 'description':description};
  }

}

/// Entity StatusValidChange, Status Valid Change
class StatusValidChange extends EntityBase {

  final String conditionExpression;
  final String statusId; // pk
  final String statusIdTo; // pk
  final String transitionName;
  StatusValidChange({entityId,
    this.conditionExpression, @required this.statusId, @required this.statusIdTo, this.transitionName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'StatusValidChange { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'conditionExpression':conditionExpression, 'statusId':statusId, 'statusIdTo':statusIdTo, 'transitionName':transitionName};
  }

}

/// Entity StatusValidChangeToDetail, Status Valid Change To Detail View
class StatusValidChangeToDetail extends EntityBase {

  final String conditionExpression;
  final String statusId; // pk
  final String statusTypeId;
  final String description;
  final String statusIdTo; // pk
  final String sequenceId;
  final String transitionName;
  final String statusCode;
  StatusValidChangeToDetail({entityId,
    this.conditionExpression, @required this.statusId, this.statusTypeId, this.description, @required this.statusIdTo, this.sequenceId, this.transitionName, this.statusCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'StatusValidChangeToDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'conditionExpression':conditionExpression, 'statusId':statusId, 'statusTypeId':statusTypeId, 'description':description, 'statusIdTo':statusIdTo, 'sequenceId':sequenceId, 'transitionName':transitionName, 'statusCode':statusCode};
  }

}