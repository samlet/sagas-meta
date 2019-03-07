import 'package:sagas_meta/src/models_t/gen_models.dart';  // preserve for this file

import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class TestingEntityJsonifier{
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

  static Person extractPerson(dynamic json) {
    return Person(
        entityId: create_id_from('Person', ['partyId'], json),
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        lastName: json['lastName'] as String,
        occupation: json['occupation'] as String,
        gender: json['gender'] as String,
        employmentStatusEnumId: json['employmentStatusEnumId'] as String,
        socialSecurityNumber: json['socialSecurityNumber'] as String,
        suffix: json['suffix'] as String,
        mothersMaidenName: json['mothersMaidenName'] as String,
        middleNameLocal: json['middleNameLocal'] as String,
        existingCustomer: json['existingCustomer'] as String,
        residenceStatusEnumId: json['residenceStatusEnumId'] as String,
        nickname: json['nickname'] as String,
        partyId: json['partyId'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        comments: json['comments'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        weight: json['weight'] as double,
        birthDate: check_dt(json['birthDate']),
        otherLocal: json['otherLocal'] as String,
        firstName: json['firstName'] as String,
        cardId: json['cardId'] as String,
        middleName: json['middleName'] as String,
        firstNameLocal: json['firstNameLocal'] as String,
        passportExpireDate: check_dt(json['passportExpireDate']),
        salutation: json['salutation'] as String,
        personalTitle: json['personalTitle'] as String,
        deceasedDate: check_dt(json['deceasedDate']),
        totalYearsWorkExperience: json['totalYearsWorkExperience'] as double,
        maritalStatus: json['maritalStatus'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Person overridesPerson(Map<String, dynamic> map) {
    return Person(
        entityId: create_id_from('Person', ['partyId'], map),
        yearsWithEmployer: map['yearsWithEmployer'],
        lastName: map['lastName'],
        occupation: map['occupation'],
        gender: map['gender'],
        employmentStatusEnumId: map['employmentStatusEnumId'],
        socialSecurityNumber: map['socialSecurityNumber'],
        suffix: map['suffix'],
        mothersMaidenName: map['mothersMaidenName'],
        middleNameLocal: map['middleNameLocal'],
        existingCustomer: map['existingCustomer'],
        residenceStatusEnumId: map['residenceStatusEnumId'],
        nickname: map['nickname'],
        partyId: map['partyId'],
        memberId: map['memberId'],
        height: map['height'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        comments: map['comments'],
        monthsWithEmployer: map['monthsWithEmployer'],
        weight: map['weight'],
        birthDate: map['birthDate'],
        otherLocal: map['otherLocal'],
        firstName: map['firstName'],
        cardId: map['cardId'],
        middleName: map['middleName'],
        firstNameLocal: map['firstNameLocal'],
        passportExpireDate: map['passportExpireDate'],
        salutation: map['salutation'],
        personalTitle: map['personalTitle'],
        deceasedDate: map['deceasedDate'],
        totalYearsWorkExperience: map['totalYearsWorkExperience'],
        maritalStatus: map['maritalStatus'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}