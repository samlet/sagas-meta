import 'package:sagas_meta/src/models/common_datasource.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonDatasourceJsonifier{
  static DataSource extractDataSource(dynamic json) {
    return DataSource(
        entityId: create_id_from('DataSource', ['dataSourceId'], json),
        dataSourceId: json['dataSourceId'] as String,
        dataSourceTypeId: json['dataSourceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataSource overridesDataSource(Map<String, dynamic> map) {
    return DataSource(
        entityId: create_id_from('DataSource', ['dataSourceId'], map),
        dataSourceId: map['dataSourceId'],
        dataSourceTypeId: map['dataSourceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataSourceType extractDataSourceType(dynamic json) {
    return DataSourceType(
        entityId: create_id_from('DataSourceType', ['dataSourceTypeId'], json),
        dataSourceTypeId: json['dataSourceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataSourceType overridesDataSourceType(Map<String, dynamic> map) {
    return DataSourceType(
        entityId: create_id_from('DataSourceType', ['dataSourceTypeId'], map),
        dataSourceTypeId: map['dataSourceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}