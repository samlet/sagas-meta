import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity DataSource, Data Source
class DataSource extends EntityBase {

  /// this entity has only one pk
  final String dataSourceId; // pk
  final String dataSourceTypeId;
  final String description;
  DataSource({entityId,
    @required this.dataSourceId, this.dataSourceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataSource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataSourceId':dataSourceId, 'dataSourceTypeId':dataSourceTypeId, 'description':description};
  }

}

/// Entity DataSourceType, Data Source Type
class DataSourceType extends EntityBase {

  /// this entity has only one pk
  final String dataSourceTypeId; // pk
  final String description;
  DataSourceType({entityId,
    @required this.dataSourceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataSourceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataSourceTypeId':dataSourceTypeId, 'description':description};
  }

}