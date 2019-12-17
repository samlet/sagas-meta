import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CustomMethod, Custom Method
class CustomMethod extends EntityBase {

  /// this entity has only one pk
  final String customMethodTypeId;
  final String customMethodName;
  final String description;
  final String customMethodId; // pk
  CustomMethod({entityId,
    this.customMethodTypeId, this.customMethodName, this.description, @required this.customMethodId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustomMethod { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customMethodTypeId':customMethodTypeId, 'customMethodName':customMethodName, 'description':description, 'customMethodId':customMethodId};
  }

}

/// Entity CustomMethodType, Custom Method Type
class CustomMethodType extends EntityBase {

  /// this entity has only one pk
  final String customMethodTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  CustomMethodType({entityId,
    @required this.customMethodTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustomMethodType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customMethodTypeId':customMethodTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}