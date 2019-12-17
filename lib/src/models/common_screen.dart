import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CustomScreen, Custom Screen
class CustomScreen extends EntityBase {

  /// this entity has only one pk
  final String customScreenLocation;
  final String customScreenTypeId;
  final String description;
  final String customScreenId; // pk
  final String customScreenName;
  CustomScreen({entityId,
    this.customScreenLocation, this.customScreenTypeId, this.description, @required this.customScreenId, this.customScreenName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustomScreen { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'customScreenLocation':customScreenLocation, 'customScreenTypeId':customScreenTypeId, 'description':description, 'customScreenId':customScreenId, 'customScreenName':customScreenName};
  }

}

/// Entity CustomScreenType, Custom Screen Type
class CustomScreenType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String customScreenTypeId; // pk
  final String description;
  CustomScreenType({entityId,
    this.parentTypeId, this.hasTable, @required this.customScreenTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CustomScreenType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'customScreenTypeId':customScreenTypeId, 'description':description};
  }

}