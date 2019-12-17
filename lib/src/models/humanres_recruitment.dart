import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EmplPositionFulfillmentAndReportingStruct, To view the employment details of an employee
class EmplPositionFulfillmentAndReportingStruct extends EntityBase {

  final String internalOrganisation;
  final String emplPositionId; // pk
  final DateTime reportingDate; // pk
  final String partyId; // pk
  final String emplPositionIdReportingTo; // pk
  EmplPositionFulfillmentAndReportingStruct({entityId,
    this.internalOrganisation, @required this.emplPositionId, @required this.reportingDate, @required this.partyId, @required this.emplPositionIdReportingTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplPositionFulfillmentAndReportingStruct { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'internalOrganisation':internalOrganisation, 'emplPositionId':emplPositionId, 'reportingDate':reportingDate, 'partyId':partyId, 'emplPositionIdReportingTo':emplPositionIdReportingTo};
  }

}

/// Entity JobInterview, Entity for storing data about Interviews conducted
class JobInterview extends EntityBase {

  /// this entity has only one pk
  final String jobInterviewId; // pk
  final String jobInterviewTypeId;
  final String gradeSecuredEnumId;
  final String jobIntervieweePartyId;
  final DateTime jobInterviewDate;
  final String jobInterviewerPartyId;
  final String jobInterviewResult;
  final String jobRequisitionId;
  JobInterview({entityId,
    @required this.jobInterviewId, this.jobInterviewTypeId, this.gradeSecuredEnumId, this.jobIntervieweePartyId, this.jobInterviewDate, this.jobInterviewerPartyId, this.jobInterviewResult, this.jobRequisitionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JobInterview { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'jobInterviewId':jobInterviewId, 'jobInterviewTypeId':jobInterviewTypeId, 'gradeSecuredEnumId':gradeSecuredEnumId, 'jobIntervieweePartyId':jobIntervieweePartyId, 'jobInterviewDate':jobInterviewDate, 'jobInterviewerPartyId':jobInterviewerPartyId, 'jobInterviewResult':jobInterviewResult, 'jobRequisitionId':jobRequisitionId};
  }

}

/// Entity JobInterviewType, Entity for storing data about Interview Types
class JobInterviewType extends EntityBase {

  /// this entity has only one pk
  final String jobInterviewTypeId; // pk
  final String description;
  JobInterviewType({entityId,
    @required this.jobInterviewTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JobInterviewType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'jobInterviewTypeId':jobInterviewTypeId, 'description':description};
  }

}

/// Entity JobRequisition, Entity for storing data about recruitment
class JobRequisition extends EntityBase {

  /// this entity has only one pk
  final int durationMonths;
  final String gender;
  final int noOfResources;
  final String jobRequisitionId; // pk
  final int experienceYears;
  final DateTime jobRequisitionDate;
  final DateTime requiredOnDate;
  final String qualification;
  final String skillTypeId;
  final int experienceMonths;
  final String jobLocation;
  final String examTypeEnumId;
  final int age;
  final String jobPostingTypeEnumId;
  JobRequisition({entityId,
    this.durationMonths, this.gender, this.noOfResources, @required this.jobRequisitionId, this.experienceYears, this.jobRequisitionDate, this.requiredOnDate, this.qualification, this.skillTypeId, this.experienceMonths, this.jobLocation, this.examTypeEnumId, this.age, this.jobPostingTypeEnumId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JobRequisition { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'durationMonths':durationMonths, 'gender':gender, 'noOfResources':noOfResources, 'jobRequisitionId':jobRequisitionId, 'experienceYears':experienceYears, 'jobRequisitionDate':jobRequisitionDate, 'requiredOnDate':requiredOnDate, 'qualification':qualification, 'skillTypeId':skillTypeId, 'experienceMonths':experienceMonths, 'jobLocation':jobLocation, 'examTypeEnumId':examTypeEnumId, 'age':age, 'jobPostingTypeEnumId':jobPostingTypeEnumId};
  }

}