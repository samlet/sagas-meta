import 'package:sagas_meta/src/models/ofbizdemo.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OfbizdemoJsonifier{
  static OfbizDemo extractOfbizDemo(dynamic json) {
    return OfbizDemo(
        entityId: create_id_from('OfbizDemo', ['ofbizDemoId'], json),
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        comments: json['comments'] as String,
        ofbizDemoId: json['ofbizDemoId'] as String,
        ofbizDemoTypeId: json['ofbizDemoTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static OfbizDemo overridesOfbizDemo(Map<String, dynamic> map) {
    return OfbizDemo(
        entityId: create_id_from('OfbizDemo', ['ofbizDemoId'], map),
        firstName: map['firstName'],
        lastName: map['lastName'],
        comments: map['comments'],
        ofbizDemoId: map['ofbizDemoId'],
        ofbizDemoTypeId: map['ofbizDemoTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static OfbizDemoType extractOfbizDemoType(dynamic json) {
    return OfbizDemoType(
        entityId: create_id_from('OfbizDemoType', ['ofbizDemoTypeId'], json),
        description: json['description'] as String,
        ofbizDemoTypeId: json['ofbizDemoTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static OfbizDemoType overridesOfbizDemoType(Map<String, dynamic> map) {
    return OfbizDemoType(
        entityId: create_id_from('OfbizDemoType', ['ofbizDemoTypeId'], map),
        description: map['description'],
        ofbizDemoTypeId: map['ofbizDemoTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}