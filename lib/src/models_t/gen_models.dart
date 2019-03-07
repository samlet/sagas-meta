import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Testing, Testing
class Testing extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String testingTypeId;
  final int testingSize;
  final String testingId; // pk
  final String description;
  final DateTime testingDate;
  final String testingName;
  Testing({entityId,
    this.comments, this.testingTypeId, this.testingSize, @required this.testingId, this.description, this.testingDate, this.testingName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Testing { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'testingTypeId':testingTypeId, 'testingSize':testingSize, 'testingId':testingId, 'description':description, 'testingDate':testingDate, 'testingName':testingName};
  }

}

/// Entity TestingType, Testing Entity Type
class TestingType extends EntityBase {

  /// this entity has only one pk
  final String testingTypeId; // pk
  final String description;
  TestingType({entityId,
    @required this.testingTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingTypeId':testingTypeId, 'description':description};
  }

}

/// Entity TestFieldType, Entity for testing the field data types
class TestFieldType extends EntityBase {

  /// this entity has only one pk
  final String objectField;
  final int numericField;
  final DateTime timeField;
  final DateTime dateField;
  final DateTime dateTimeField;
  final String clobField;
  final String testFieldTypeId; // pk
  final Uint8List blobField;
  final double floatingPointField;
  final Uint8List byteArrayField;
  final double fixedPointField;
  TestFieldType({entityId,
    this.objectField, this.numericField, this.timeField, this.dateField, this.dateTimeField, this.clobField, @required this.testFieldTypeId, this.blobField, this.floatingPointField, this.byteArrayField, this.fixedPointField,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestFieldType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'objectField':objectField, 'numericField':numericField, 'timeField':timeField, 'dateField':dateField, 'dateTimeField':dateTimeField, 'clobField':clobField, 'testFieldTypeId':testFieldTypeId, 'blobField':blobField, 'floatingPointField':floatingPointField, 'byteArrayField':byteArrayField, 'fixedPointField':fixedPointField};
  }

}

/// Entity Person, Person
class Person extends EntityBase {

  /// this entity has only one pk
  final int yearsWithEmployer;
  final String lastName;
  final String occupation;
  final String gender;
  final String employmentStatusEnumId;
  final String socialSecurityNumber;
  final String suffix;
  final String mothersMaidenName;
  final String middleNameLocal;
  final String existingCustomer;
  final String residenceStatusEnumId;
  final String nickname;
  final String partyId; // pk
  final String memberId;
  final double height;
  final String passportNumber;
  final String lastNameLocal;
  final String comments;
  final int monthsWithEmployer;
  final double weight;
  final DateTime birthDate;
  final String otherLocal;
  final String firstName;
  final String cardId;
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String salutation;
  final String personalTitle;
  final DateTime deceasedDate;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  Person({entityId,
    this.yearsWithEmployer, this.lastName, this.occupation, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.suffix, this.mothersMaidenName, this.middleNameLocal, this.existingCustomer, this.residenceStatusEnumId, this.nickname, @required this.partyId, this.memberId, this.height, this.passportNumber, this.lastNameLocal, this.comments, this.monthsWithEmployer, this.weight, this.birthDate, this.otherLocal, this.firstName, this.cardId, this.middleName, this.firstNameLocal, this.passportExpireDate, this.salutation, this.personalTitle, this.deceasedDate, this.totalYearsWorkExperience, this.maritalStatus,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Person { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'yearsWithEmployer':yearsWithEmployer, 'lastName':lastName, 'occupation':occupation, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'middleNameLocal':middleNameLocal, 'existingCustomer':existingCustomer, 'residenceStatusEnumId':residenceStatusEnumId, 'nickname':nickname, 'partyId':partyId, 'memberId':memberId, 'height':height, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'comments':comments, 'monthsWithEmployer':monthsWithEmployer, 'weight':weight, 'birthDate':birthDate, 'otherLocal':otherLocal, 'firstName':firstName, 'cardId':cardId, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'salutation':salutation, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus};
  }

}