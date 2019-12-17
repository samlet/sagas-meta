import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EnumTypeChildAndEnum, EnumTypeChildAndEnum
class EnumTypeChildAndEnum extends EntityBase {

  final String parentParentTypeId;
  final String enumTypeId;
  final String enumId; // pk
  final String childEnumTypeId; // pk
  final String parentDescription;
  final String enumCode;
  final String childHasTable;
  final String parentEnumTypeId; // pk
  final String description;
  final String sequenceId;
  final String parentHasTable;
  final String childDescription;
  EnumTypeChildAndEnum({entityId,
    this.parentParentTypeId, this.enumTypeId, @required this.enumId, @required this.childEnumTypeId, this.parentDescription, this.enumCode, this.childHasTable, @required this.parentEnumTypeId, this.description, this.sequenceId, this.parentHasTable, this.childDescription,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EnumTypeChildAndEnum { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentParentTypeId':parentParentTypeId, 'enumTypeId':enumTypeId, 'enumId':enumId, 'childEnumTypeId':childEnumTypeId, 'parentDescription':parentDescription, 'enumCode':enumCode, 'childHasTable':childHasTable, 'parentEnumTypeId':parentEnumTypeId, 'description':description, 'sequenceId':sequenceId, 'parentHasTable':parentHasTable, 'childDescription':childDescription};
  }

}

/// Entity Enumeration, Enumeration
class Enumeration extends EntityBase {

  /// this entity has only one pk
  final String enumTypeId;
  final String enumId; // pk
  final String enumCode;
  final String description;
  final String sequenceId;
  Enumeration({entityId,
    this.enumTypeId, @required this.enumId, this.enumCode, this.description, this.sequenceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Enumeration { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'enumTypeId':enumTypeId, 'enumId':enumId, 'enumCode':enumCode, 'description':description, 'sequenceId':sequenceId};
  }

}

/// Entity EnumerationType, Enumeration Type
class EnumerationType extends EntityBase {

  /// this entity has only one pk
  final String enumTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  EnumerationType({entityId,
    @required this.enumTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EnumerationType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'enumTypeId':enumTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}