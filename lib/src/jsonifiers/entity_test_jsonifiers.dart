import 'package:sagas_meta/src/models/entity_test.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class EntityTestJsonifier{
  static TestFieldType extractTestFieldType(dynamic json) {
    return TestFieldType(
        entityId: create_id_from('TestFieldType', ['testFieldTypeId'], json),
        objectField: json['objectField'] as String,
        numericField: json['numericField'] as int,
        timeField: check_time(json['timeField']),
        dateField: check_dt(json['dateField']),
        dateTimeField: check_dt(json['dateTimeField']),
        clobField: json['clobField'] as String,
        testFieldTypeId: json['testFieldTypeId'] as String,
        blobField: check_b64(json['blobField']),
        floatingPointField: json['floatingPointField'] as double,
        byteArrayField: check_b64(json['byteArrayField']),
        fixedPointField: json['fixedPointField'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestFieldType overridesTestFieldType(Map<String, dynamic> map) {
    return TestFieldType(
        entityId: create_id_from('TestFieldType', ['testFieldTypeId'], map),
        objectField: map['objectField'],
        numericField: map['numericField'],
        timeField: map['timeField'],
        dateField: map['dateField'],
        dateTimeField: map['dateTimeField'],
        clobField: map['clobField'],
        testFieldTypeId: map['testFieldTypeId'],
        blobField: map['blobField'],
        floatingPointField: map['floatingPointField'],
        byteArrayField: map['byteArrayField'],
        fixedPointField: map['fixedPointField'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Testing extractTesting(dynamic json) {
    return Testing(
        entityId: create_id_from('Testing', ['testingId'], json),
        comments: json['comments'] as String,
        testingTypeId: json['testingTypeId'] as String,
        testingSize: json['testingSize'] as int,
        testingId: json['testingId'] as String,
        description: json['description'] as String,
        testingDate: check_dt(json['testingDate']),
        testingName: json['testingName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Testing overridesTesting(Map<String, dynamic> map) {
    return Testing(
        entityId: create_id_from('Testing', ['testingId'], map),
        comments: map['comments'],
        testingTypeId: map['testingTypeId'],
        testingSize: map['testingSize'],
        testingId: map['testingId'],
        description: map['description'],
        testingDate: map['testingDate'],
        testingName: map['testingName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingCrypto extractTestingCrypto(dynamic json) {
    return TestingCrypto(
        entityId: create_id_from('TestingCrypto', ['testingCryptoId'], json),
        testingCryptoId: json['testingCryptoId'] as String,
        encryptedValue: json['encryptedValue'] as String,
        saltedEncryptedValue: json['saltedEncryptedValue'] as String,
        unencryptedValue: json['unencryptedValue'] as String,
        testingCryptoTypeId: json['testingCryptoTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingCrypto overridesTestingCrypto(Map<String, dynamic> map) {
    return TestingCrypto(
        entityId: create_id_from('TestingCrypto', ['testingCryptoId'], map),
        testingCryptoId: map['testingCryptoId'],
        encryptedValue: map['encryptedValue'],
        saltedEncryptedValue: map['saltedEncryptedValue'],
        unencryptedValue: map['unencryptedValue'],
        testingCryptoTypeId: map['testingCryptoTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingCryptoRawView extractTestingCryptoRawView(dynamic json) {
    return TestingCryptoRawView(
        entityId: create_id_from('TestingCryptoRawView', ['testingCryptoId'], json),
        testingCryptoId: json['testingCryptoId'] as String,
        rawSaltedEncryptedValue: json['rawSaltedEncryptedValue'] as String,
        encryptedValue: json['encryptedValue'] as String,
        saltedEncryptedValue: json['saltedEncryptedValue'] as String,
        unencryptedValue: json['unencryptedValue'] as String,
        testingCryptoTypeId: json['testingCryptoTypeId'] as String,
        rawEncryptedValue: json['rawEncryptedValue'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingCryptoRawView overridesTestingCryptoRawView(Map<String, dynamic> map) {
    return TestingCryptoRawView(
        entityId: create_id_from('TestingCryptoRawView', ['testingCryptoId'], map),
        testingCryptoId: map['testingCryptoId'],
        rawSaltedEncryptedValue: map['rawSaltedEncryptedValue'],
        encryptedValue: map['encryptedValue'],
        saltedEncryptedValue: map['saltedEncryptedValue'],
        unencryptedValue: map['unencryptedValue'],
        testingCryptoTypeId: map['testingCryptoTypeId'],
        rawEncryptedValue: map['rawEncryptedValue'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingItem extractTestingItem(dynamic json) {
    return TestingItem(
        entityId: create_id_from('TestingItem', ['testingId', 'testingSeqId'], json),
        testingHistory: json['testingHistory'] as String,
        testingId: json['testingId'] as String,
        testingSeqId: json['testingSeqId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingItem overridesTestingItem(Map<String, dynamic> map) {
    return TestingItem(
        entityId: create_id_from('TestingItem', ['testingId', 'testingSeqId'], map),
        testingHistory: map['testingHistory'],
        testingId: map['testingId'],
        testingSeqId: map['testingSeqId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingNode extractTestingNode(dynamic json) {
    return TestingNode(
        entityId: create_id_from('TestingNode', ['testingNodeId'], json),
        description: json['description'] as String,
        testingNodeId: json['testingNodeId'] as String,
        primaryParentNodeId: json['primaryParentNodeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingNode overridesTestingNode(Map<String, dynamic> map) {
    return TestingNode(
        entityId: create_id_from('TestingNode', ['testingNodeId'], map),
        description: map['description'],
        testingNodeId: map['testingNodeId'],
        primaryParentNodeId: map['primaryParentNodeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingNodeAndMember extractTestingNodeAndMember(dynamic json) {
    return TestingNodeAndMember(
        entityId: create_id_from('TestingNodeAndMember', ['testingNodeId', 'fromDate', 'testingId'], json),
        fromDate: check_dt(json['fromDate']),
        extendFromDate: check_dt(json['extendFromDate']),
        description: json['description'] as String,
        testingId: json['testingId'] as String,
        extendThruDate: check_dt(json['extendThruDate']),
        testingNodeId: json['testingNodeId'] as String,
        primaryParentNodeId: json['primaryParentNodeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingNodeAndMember overridesTestingNodeAndMember(Map<String, dynamic> map) {
    return TestingNodeAndMember(
        entityId: create_id_from('TestingNodeAndMember', ['testingNodeId', 'fromDate', 'testingId'], map),
        fromDate: map['fromDate'],
        extendFromDate: map['extendFromDate'],
        description: map['description'],
        testingId: map['testingId'],
        extendThruDate: map['extendThruDate'],
        testingNodeId: map['testingNodeId'],
        primaryParentNodeId: map['primaryParentNodeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingNodeMember extractTestingNodeMember(dynamic json) {
    return TestingNodeMember(
        entityId: create_id_from('TestingNodeMember', ['testingNodeId', 'testingId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        extendFromDate: check_dt(json['extendFromDate']),
        testingId: json['testingId'] as String,
        extendThruDate: check_dt(json['extendThruDate']),
        testingNodeId: json['testingNodeId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingNodeMember overridesTestingNodeMember(Map<String, dynamic> map) {
    return TestingNodeMember(
        entityId: create_id_from('TestingNodeMember', ['testingNodeId', 'testingId', 'fromDate'], map),
        fromDate: map['fromDate'],
        extendFromDate: map['extendFromDate'],
        testingId: map['testingId'],
        extendThruDate: map['extendThruDate'],
        testingNodeId: map['testingNodeId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingRemoveAll extractTestingRemoveAll(dynamic json) {
    return TestingRemoveAll(
        entityId: create_id_from('TestingRemoveAll', ['testingRemoveAllId'], json),
        testingRemoveAllId: json['testingRemoveAllId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingRemoveAll overridesTestingRemoveAll(Map<String, dynamic> map) {
    return TestingRemoveAll(
        entityId: create_id_from('TestingRemoveAll', ['testingRemoveAllId'], map),
        testingRemoveAllId: map['testingRemoveAllId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingStatus extractTestingStatus(dynamic json) {
    return TestingStatus(
        entityId: create_id_from('TestingStatus', ['testingStatusId'], json),
        statusDate: check_dt(json['statusDate']),
        statusId: json['statusId'] as String,
        testingId: json['testingId'] as String,
        testingStatusId: json['testingStatusId'] as String,
        changeByUserLoginId: json['changeByUserLoginId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingStatus overridesTestingStatus(Map<String, dynamic> map) {
    return TestingStatus(
        entityId: create_id_from('TestingStatus', ['testingStatusId'], map),
        statusDate: map['statusDate'],
        statusId: map['statusId'],
        testingId: map['testingId'],
        testingStatusId: map['testingStatusId'],
        changeByUserLoginId: map['changeByUserLoginId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingSubtype extractTestingSubtype(dynamic json) {
    return TestingSubtype(
        entityId: create_id_from('TestingSubtype', ['testingTypeId'], json),
        testingTypeId: json['testingTypeId'] as String,
        subtypeDescription: json['subtypeDescription'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingSubtype overridesTestingSubtype(Map<String, dynamic> map) {
    return TestingSubtype(
        entityId: create_id_from('TestingSubtype', ['testingTypeId'], map),
        testingTypeId: map['testingTypeId'],
        subtypeDescription: map['subtypeDescription'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingType extractTestingType(dynamic json) {
    return TestingType(
        entityId: create_id_from('TestingType', ['testingTypeId'], json),
        testingTypeId: json['testingTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingType overridesTestingType(Map<String, dynamic> map) {
    return TestingType(
        entityId: create_id_from('TestingType', ['testingTypeId'], map),
        testingTypeId: map['testingTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TestingViewPks extractTestingViewPks(dynamic json) {
    return TestingViewPks(
        entityId: create_id_from('TestingViewPks', ['testingTypeId'], json),
        testingTypeId: json['testingTypeId'] as String,
        subtypeDescription: json['subtypeDescription'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TestingViewPks overridesTestingViewPks(Map<String, dynamic> map) {
    return TestingViewPks(
        entityId: create_id_from('TestingViewPks', ['testingTypeId'], map),
        testingTypeId: map['testingTypeId'],
        subtypeDescription: map['subtypeDescription'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}