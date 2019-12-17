import 'package:sagas_meta/src/models/example_example.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ExampleExampleJsonifier{
  static AllExamplesWithDesiredCustomerFeaturesReport extractAllExamplesWithDesiredCustomerFeaturesReport(dynamic json) {
    return AllExamplesWithDesiredCustomerFeaturesReport(
        entityId: create_id_from('AllExamplesWithDesiredCustomerFeaturesReport', ['fromDate', 'exampleId', 'exampleFeatureId'], json),
        longDescription: json['longDescription'] as String,
        exampleTypeId: json['exampleTypeId'] as String,
        anotherDate: check_dt(json['anotherDate']),
        exampleId: json['exampleId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        comments: json['comments'] as String,
        sequenceNum: json['sequenceNum'] as int,
        featureDescription: json['featureDescription'] as String,
        description: json['description'] as String,
        typeDescription: json['typeDescription'] as String,
        anotherText: json['anotherText'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        featureSourceEnumId: json['featureSourceEnumId'] as String,
        exampleDate: check_dt(json['exampleDate']),
        statusId: json['statusId'] as String,
        exampleName: json['exampleName'] as String,
        exampleSize: json['exampleSize'] as int,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AllExamplesWithDesiredCustomerFeaturesReport overridesAllExamplesWithDesiredCustomerFeaturesReport(Map<String, dynamic> map) {
    return AllExamplesWithDesiredCustomerFeaturesReport(
        entityId: create_id_from('AllExamplesWithDesiredCustomerFeaturesReport', ['fromDate', 'exampleId', 'exampleFeatureId'], map),
        longDescription: map['longDescription'],
        exampleTypeId: map['exampleTypeId'],
        anotherDate: map['anotherDate'],
        exampleId: map['exampleId'],
        parentTypeId: map['parentTypeId'],
        comments: map['comments'],
        sequenceNum: map['sequenceNum'],
        featureDescription: map['featureDescription'],
        description: map['description'],
        typeDescription: map['typeDescription'],
        anotherText: map['anotherText'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        featureSourceEnumId: map['featureSourceEnumId'],
        exampleDate: map['exampleDate'],
        statusId: map['statusId'],
        exampleName: map['exampleName'],
        exampleSize: map['exampleSize'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ContrivedExamplesWithRequiredFeaturesReport extractContrivedExamplesWithRequiredFeaturesReport(dynamic json) {
    return ContrivedExamplesWithRequiredFeaturesReport(
        entityId: create_id_from('ContrivedExamplesWithRequiredFeaturesReport', ['exampleId', 'exampleFeatureId', 'fromDate'], json),
        longDescription: json['longDescription'] as String,
        exampleTypeId: json['exampleTypeId'] as String,
        anotherDate: check_dt(json['anotherDate']),
        exampleId: json['exampleId'] as String,
        comments: json['comments'] as String,
        parentTypeId: json['parentTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        featureDescription: json['featureDescription'] as String,
        description: json['description'] as String,
        anotherText: json['anotherText'] as String,
        typeDescription: json['typeDescription'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        featureSourceEnumId: json['featureSourceEnumId'] as String,
        fromDate: check_dt(json['fromDate']),
        exampleDate: check_dt(json['exampleDate']),
        statusId: json['statusId'] as String,
        exampleName: json['exampleName'] as String,
        exampleSize: json['exampleSize'] as int,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ContrivedExamplesWithRequiredFeaturesReport overridesContrivedExamplesWithRequiredFeaturesReport(Map<String, dynamic> map) {
    return ContrivedExamplesWithRequiredFeaturesReport(
        entityId: create_id_from('ContrivedExamplesWithRequiredFeaturesReport', ['exampleId', 'exampleFeatureId', 'fromDate'], map),
        longDescription: map['longDescription'],
        exampleTypeId: map['exampleTypeId'],
        anotherDate: map['anotherDate'],
        exampleId: map['exampleId'],
        comments: map['comments'],
        parentTypeId: map['parentTypeId'],
        sequenceNum: map['sequenceNum'],
        featureDescription: map['featureDescription'],
        description: map['description'],
        anotherText: map['anotherText'],
        typeDescription: map['typeDescription'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        featureSourceEnumId: map['featureSourceEnumId'],
        fromDate: map['fromDate'],
        exampleDate: map['exampleDate'],
        statusId: map['statusId'],
        exampleName: map['exampleName'],
        exampleSize: map['exampleSize'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Example extractExample(dynamic json) {
    return Example(
        entityId: create_id_from('Example', ['exampleId'], json),
        longDescription: json['longDescription'] as String,
        exampleTypeId: json['exampleTypeId'] as String,
        anotherDate: check_dt(json['anotherDate']),
        exampleId: json['exampleId'] as String,
        comments: json['comments'] as String,
        description: json['description'] as String,
        anotherText: json['anotherText'] as String,
        exampleDate: check_dt(json['exampleDate']),
        statusId: json['statusId'] as String,
        exampleName: json['exampleName'] as String,
        exampleSize: json['exampleSize'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Example overridesExample(Map<String, dynamic> map) {
    return Example(
        entityId: create_id_from('Example', ['exampleId'], map),
        longDescription: map['longDescription'],
        exampleTypeId: map['exampleTypeId'],
        anotherDate: map['anotherDate'],
        exampleId: map['exampleId'],
        comments: map['comments'],
        description: map['description'],
        anotherText: map['anotherText'],
        exampleDate: map['exampleDate'],
        statusId: map['statusId'],
        exampleName: map['exampleName'],
        exampleSize: map['exampleSize'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleCountByType extractExampleCountByType(dynamic json) {
    return ExampleCountByType(
        entityId: create_id_from('ExampleCountByType', ['total'], json),
        total: json['total'] as int,
        exampleTypeId: json['exampleTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleCountByType overridesExampleCountByType(Map<String, dynamic> map) {
    return ExampleCountByType(
        entityId: create_id_from('ExampleCountByType', ['total'], map),
        total: map['total'],
        exampleTypeId: map['exampleTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureAndApplAndType extractExampleFeatureAndApplAndType(dynamic json) {
    return ExampleFeatureAndApplAndType(
        entityId: create_id_from('ExampleFeatureAndApplAndType', ['exampleFeatureId', 'fromDate', 'exampleId'], json),
        featureSourceEnumId: json['featureSourceEnumId'] as String,
        fromDate: check_dt(json['fromDate']),
        exampleId: json['exampleId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        typeDescription: json['typeDescription'] as String,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureAndApplAndType overridesExampleFeatureAndApplAndType(Map<String, dynamic> map) {
    return ExampleFeatureAndApplAndType(
        entityId: create_id_from('ExampleFeatureAndApplAndType', ['exampleFeatureId', 'fromDate', 'exampleId'], map),
        featureSourceEnumId: map['featureSourceEnumId'],
        fromDate: map['fromDate'],
        exampleId: map['exampleId'],
        parentTypeId: map['parentTypeId'],
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        typeDescription: map['typeDescription'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureAndApplFullView extractExampleFeatureAndApplFullView(dynamic json) {
    return ExampleFeatureAndApplFullView(
        entityId: create_id_from('ExampleFeatureAndApplFullView', ['exampleId', 'fromDate', 'exampleFeatureId'], json),
        longDescription: json['longDescription'] as String,
        exampleTypeId: json['exampleTypeId'] as String,
        anotherDate: check_dt(json['anotherDate']),
        exampleId: json['exampleId'] as String,
        comments: json['comments'] as String,
        parentTypeId: json['parentTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        featureDescription: json['featureDescription'] as String,
        description: json['description'] as String,
        anotherText: json['anotherText'] as String,
        typeDescription: json['typeDescription'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        featureSourceEnumId: json['featureSourceEnumId'] as String,
        fromDate: check_dt(json['fromDate']),
        exampleDate: check_dt(json['exampleDate']),
        statusId: json['statusId'] as String,
        exampleName: json['exampleName'] as String,
        exampleSize: json['exampleSize'] as int,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureAndApplFullView overridesExampleFeatureAndApplFullView(Map<String, dynamic> map) {
    return ExampleFeatureAndApplFullView(
        entityId: create_id_from('ExampleFeatureAndApplFullView', ['exampleId', 'fromDate', 'exampleFeatureId'], map),
        longDescription: map['longDescription'],
        exampleTypeId: map['exampleTypeId'],
        anotherDate: map['anotherDate'],
        exampleId: map['exampleId'],
        comments: map['comments'],
        parentTypeId: map['parentTypeId'],
        sequenceNum: map['sequenceNum'],
        featureDescription: map['featureDescription'],
        description: map['description'],
        anotherText: map['anotherText'],
        typeDescription: map['typeDescription'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        featureSourceEnumId: map['featureSourceEnumId'],
        fromDate: map['fromDate'],
        exampleDate: map['exampleDate'],
        statusId: map['statusId'],
        exampleName: map['exampleName'],
        exampleSize: map['exampleSize'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureApplAndType extractExampleFeatureApplAndType(dynamic json) {
    return ExampleFeatureApplAndType(
        entityId: create_id_from('ExampleFeatureApplAndType', ['fromDate', 'exampleId', 'exampleFeatureId'], json),
        fromDate: check_dt(json['fromDate']),
        exampleId: json['exampleId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        description: json['description'] as String,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureApplAndType overridesExampleFeatureApplAndType(Map<String, dynamic> map) {
    return ExampleFeatureApplAndType(
        entityId: create_id_from('ExampleFeatureApplAndType', ['fromDate', 'exampleId', 'exampleFeatureId'], map),
        fromDate: map['fromDate'],
        exampleId: map['exampleId'],
        parentTypeId: map['parentTypeId'],
        sequenceNum: map['sequenceNum'],
        description: map['description'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleFeatureApplAndTypeDesired extractExampleFeatureApplAndTypeDesired(dynamic json) {
    return ExampleFeatureApplAndTypeDesired(
        entityId: create_id_from('ExampleFeatureApplAndTypeDesired', ['fromDate', 'exampleId', 'exampleFeatureId'], json),
        fromDate: check_dt(json['fromDate']),
        exampleId: json['exampleId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        sequenceNum: json['sequenceNum'] as int,
        typeDescription: json['typeDescription'] as String,
        exampleFeatureApplTypeId: json['exampleFeatureApplTypeId'] as String,
        exampleFeatureId: json['exampleFeatureId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleFeatureApplAndTypeDesired overridesExampleFeatureApplAndTypeDesired(Map<String, dynamic> map) {
    return ExampleFeatureApplAndTypeDesired(
        entityId: create_id_from('ExampleFeatureApplAndTypeDesired', ['fromDate', 'exampleId', 'exampleFeatureId'], map),
        fromDate: map['fromDate'],
        exampleId: map['exampleId'],
        parentTypeId: map['parentTypeId'],
        sequenceNum: map['sequenceNum'],
        typeDescription: map['typeDescription'],
        exampleFeatureApplTypeId: map['exampleFeatureApplTypeId'],
        exampleFeatureId: map['exampleFeatureId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleItem extractExampleItem(dynamic json) {
    return ExampleItem(
        entityId: create_id_from('ExampleItem', ['exampleId', 'exampleItemSeqId'], json),
        amount: json['amount'] as double,
        amountUomId: json['amountUomId'] as String,
        exampleId: json['exampleId'] as String,
        exampleItemSeqId: json['exampleItemSeqId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleItem overridesExampleItem(Map<String, dynamic> map) {
    return ExampleItem(
        entityId: create_id_from('ExampleItem', ['exampleId', 'exampleItemSeqId'], map),
        amount: map['amount'],
        amountUomId: map['amountUomId'],
        exampleId: map['exampleId'],
        exampleItemSeqId: map['exampleItemSeqId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleStatus extractExampleStatus(dynamic json) {
    return ExampleStatus(
        entityId: create_id_from('ExampleStatus', ['exampleId', 'statusDate'], json),
        statusDate: check_dt(json['statusDate']),
        exampleId: json['exampleId'] as String,
        statusId: json['statusId'] as String,
        statusEndDate: check_dt(json['statusEndDate']),
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleStatus overridesExampleStatus(Map<String, dynamic> map) {
    return ExampleStatus(
        entityId: create_id_from('ExampleStatus', ['exampleId', 'statusDate'], map),
        statusDate: map['statusDate'],
        exampleId: map['exampleId'],
        statusId: map['statusId'],
        statusEndDate: map['statusEndDate'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleStatusDetail extractExampleStatusDetail(dynamic json) {
    return ExampleStatusDetail(
        entityId: create_id_from('ExampleStatusDetail', ['exampleId', 'statusDate'], json),
        longDescription: json['longDescription'] as String,
        statusDate: check_dt(json['statusDate']),
        exampleTypeId: json['exampleTypeId'] as String,
        anotherDate: check_dt(json['anotherDate']),
        exampleId: json['exampleId'] as String,
        comments: json['comments'] as String,
        statusTypeId: json['statusTypeId'] as String,
        description: json['description'] as String,
        anotherText: json['anotherText'] as String,
        statusEndDate: check_dt(json['statusEndDate']),
        currentStatusId: json['currentStatusId'] as String,
        sequenceId: json['sequenceId'] as String,
        statusDelay: check_dt(json['statusDelay']),
        statusDescription: json['statusDescription'] as String,
        exampleDate: check_dt(json['exampleDate']),
        statusId: json['statusId'] as String,
        exampleName: json['exampleName'] as String,
        exampleSize: json['exampleSize'] as int,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        statusCode: json['statusCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleStatusDetail overridesExampleStatusDetail(Map<String, dynamic> map) {
    return ExampleStatusDetail(
        entityId: create_id_from('ExampleStatusDetail', ['exampleId', 'statusDate'], map),
        longDescription: map['longDescription'],
        statusDate: map['statusDate'],
        exampleTypeId: map['exampleTypeId'],
        anotherDate: map['anotherDate'],
        exampleId: map['exampleId'],
        comments: map['comments'],
        statusTypeId: map['statusTypeId'],
        description: map['description'],
        anotherText: map['anotherText'],
        statusEndDate: map['statusEndDate'],
        currentStatusId: map['currentStatusId'],
        sequenceId: map['sequenceId'],
        statusDelay: map['statusDelay'],
        statusDescription: map['statusDescription'],
        exampleDate: map['exampleDate'],
        statusId: map['statusId'],
        exampleName: map['exampleName'],
        exampleSize: map['exampleSize'],
        changeByUserLoginId: map['changeByUserLoginId'],
        statusCode: map['statusCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleStatusItem extractExampleStatusItem(dynamic json) {
    return ExampleStatusItem(
        entityId: create_id_from('ExampleStatusItem', ['statusId'], json),
        statusId: json['statusId'] as String,
        statusTypeId: json['statusTypeId'] as String,
        description: json['description'] as String,
        sequenceId: json['sequenceId'] as String,
        statusCode: json['statusCode'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleStatusItem overridesExampleStatusItem(Map<String, dynamic> map) {
    return ExampleStatusItem(
        entityId: create_id_from('ExampleStatusItem', ['statusId'], map),
        statusId: map['statusId'],
        statusTypeId: map['statusTypeId'],
        description: map['description'],
        sequenceId: map['sequenceId'],
        statusCode: map['statusCode'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleType extractExampleType(dynamic json) {
    return ExampleType(
        entityId: create_id_from('ExampleType', ['exampleTypeId'], json),
        exampleTypeId: json['exampleTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleType overridesExampleType(Map<String, dynamic> map) {
    return ExampleType(
        entityId: create_id_from('ExampleType', ['exampleTypeId'], map),
        exampleTypeId: map['exampleTypeId'],
        parentTypeId: map['parentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ExampleTypeView extractExampleTypeView(dynamic json) {
    return ExampleTypeView(
        entityId: create_id_from('ExampleTypeView', ['exampleId'], json),
        exampleTypeId: json['exampleTypeId'] as String,
        exampleId: json['exampleId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ExampleTypeView overridesExampleTypeView(Map<String, dynamic> map) {
    return ExampleTypeView(
        entityId: create_id_from('ExampleTypeView', ['exampleId'], map),
        exampleTypeId: map['exampleTypeId'],
        exampleId: map['exampleId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}