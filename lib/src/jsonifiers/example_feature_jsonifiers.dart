import 'package:sagas_meta/src/models/example_feature.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ExampleFeatureJsonifier{
  static ExampleFeature extractExampleFeature(dynamic json) {
    return ExampleFeature(
        entityId: create_id_from('ExampleFeature', ['exampleFeatureId'], json),
        featureSourceEnumId: json['featureSourceEnumId'] as String,
        description: json['description'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeature overridesExampleFeature(Map<String, dynamic> map) {
    return ExampleFeature(
        entityId: create_id_from('ExampleFeature', ['exampleFeatureId'], map),
        featureSourceEnumId: map['featureSourceEnumId'],
        description: map['description'],
        exampleFeatureId: map['exampleFeatureId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureAppl extractExampleFeatureAppl(dynamic json) {
    return ExampleFeatureAppl(
        entityId: create_id_from('ExampleFeatureAppl', ['exampleId', 'exampleFeatureId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        exampleId: json['exampleId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureAppl overridesExampleFeatureAppl(Map<String, dynamic> map) {
    return ExampleFeatureAppl(
        entityId: create_id_from('ExampleFeatureAppl', ['exampleId', 'exampleFeatureId', 'fromDate'], map),
        fromDate: map['fromDate'],
        exampleId: map['exampleId'],
        sequenceNum: map['sequenceNum'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureApplType extractExampleFeatureApplType(dynamic json) {
    return ExampleFeatureApplType(
        entityId: create_id_from('ExampleFeatureApplType', ['exampleFeatureApplTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureApplType overridesExampleFeatureApplType(Map<String, dynamic> map) {
    return ExampleFeatureApplType(
        entityId: create_id_from('ExampleFeatureApplType', ['exampleFeatureApplTypeId'], map),
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}