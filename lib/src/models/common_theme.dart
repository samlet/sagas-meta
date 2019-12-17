import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity VisualTheme, Defines a Visual Theme
class VisualTheme extends EntityBase {

  /// this entity has only one pk
  final String visualThemeId; // pk
  final String description;
  final String visualThemeSetId;
  VisualTheme({entityId,
    @required this.visualThemeId, this.description, this.visualThemeSetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VisualTheme { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'visualThemeId':visualThemeId, 'description':description, 'visualThemeSetId':visualThemeSetId};
  }

}

/// Entity VisualThemeResource, Contains All Visual Theme Resources
class VisualThemeResource extends EntityBase {

  final String resourceTypeEnumId; // pk
  final String visualThemeId; // pk
  final String sequenceId; // pk
  final String resourceValue;
  VisualThemeResource({entityId,
    @required this.resourceTypeEnumId, @required this.visualThemeId, @required this.sequenceId, this.resourceValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VisualThemeResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'resourceTypeEnumId':resourceTypeEnumId, 'visualThemeId':visualThemeId, 'sequenceId':sequenceId, 'resourceValue':resourceValue};
  }

}

/// Entity VisualThemeSet, Defines a set of Visual Themes
class VisualThemeSet extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String visualThemeSetId; // pk
  VisualThemeSet({entityId,
    this.description, @required this.visualThemeSetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VisualThemeSet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'visualThemeSetId':visualThemeSetId};
  }

}