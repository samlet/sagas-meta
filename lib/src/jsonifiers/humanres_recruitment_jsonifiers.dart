import 'package:sagas_meta/src/models/humanres_recruitment.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class HumanresRecruitmentJsonifier{
  static EmplPositionFulfillmentAndReportingStruct extractEmplPositionFulfillmentAndReportingStruct(dynamic json) {
    return EmplPositionFulfillmentAndReportingStruct(
        entityId: create_id_from('EmplPositionFulfillmentAndReportingStruct', ['partyId', 'emplPositionId', 'emplPositionIdReportingTo', 'reportingDate'], json),
        internalOrganisation: json['internalOrganisation'] as String,
        emplPositionId: json['emplPositionId'] as String,
        reportingDate: check_dt(json['reportingDate']),
        partyId: json['partyId'] as String,
        emplPositionIdReportingTo: json['emplPositionIdReportingTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplPositionFulfillmentAndReportingStruct overridesEmplPositionFulfillmentAndReportingStruct(Map<String, dynamic> map) {
    return EmplPositionFulfillmentAndReportingStruct(
        entityId: create_id_from('EmplPositionFulfillmentAndReportingStruct', ['partyId', 'emplPositionId', 'emplPositionIdReportingTo', 'reportingDate'], map),
        internalOrganisation: map['internalOrganisation'],
        emplPositionId: map['emplPositionId'],
        reportingDate: map['reportingDate'],
        partyId: map['partyId'],
        emplPositionIdReportingTo: map['emplPositionIdReportingTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static JobInterview extractJobInterview(dynamic json) {
    return JobInterview(
        entityId: create_id_from('JobInterview', ['jobInterviewId'], json),
        jobInterviewId: json['jobInterviewId'] as String,
        jobInterviewTypeId: json['jobInterviewTypeId'] as String,
        gradeSecuredEnumId: json['gradeSecuredEnumId'] as String,
        jobIntervieweePartyId: json['jobIntervieweePartyId'] as String,
        jobInterviewDate: check_dt(json['jobInterviewDate']),
        jobInterviewerPartyId: json['jobInterviewerPartyId'] as String,
        jobInterviewResult: json['jobInterviewResult'] as String,
        jobRequisitionId: json['jobRequisitionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JobInterview overridesJobInterview(Map<String, dynamic> map) {
    return JobInterview(
        entityId: create_id_from('JobInterview', ['jobInterviewId'], map),
        jobInterviewId: map['jobInterviewId'],
        jobInterviewTypeId: map['jobInterviewTypeId'],
        gradeSecuredEnumId: map['gradeSecuredEnumId'],
        jobIntervieweePartyId: map['jobIntervieweePartyId'],
        jobInterviewDate: map['jobInterviewDate'],
        jobInterviewerPartyId: map['jobInterviewerPartyId'],
        jobInterviewResult: map['jobInterviewResult'],
        jobRequisitionId: map['jobRequisitionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static JobInterviewType extractJobInterviewType(dynamic json) {
    return JobInterviewType(
        entityId: create_id_from('JobInterviewType', ['jobInterviewTypeId'], json),
        jobInterviewTypeId: json['jobInterviewTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JobInterviewType overridesJobInterviewType(Map<String, dynamic> map) {
    return JobInterviewType(
        entityId: create_id_from('JobInterviewType', ['jobInterviewTypeId'], map),
        jobInterviewTypeId: map['jobInterviewTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static JobRequisition extractJobRequisition(dynamic json) {
    return JobRequisition(
        entityId: create_id_from('JobRequisition', ['jobRequisitionId'], json),
        durationMonths: json['durationMonths'] as int,
        gender: json['gender'] as String,
        noOfResources: json['noOfResources'] as int,
        jobRequisitionId: json['jobRequisitionId'] as String,
        experienceYears: json['experienceYears'] as int,
        jobRequisitionDate: check_dt(json['jobRequisitionDate']),
        requiredOnDate: check_dt(json['requiredOnDate']),
        qualification: json['qualification'] as String,
        skillTypeId: json['skillTypeId'] as String,
        experienceMonths: json['experienceMonths'] as int,
        jobLocation: json['jobLocation'] as String,
        examTypeEnumId: json['examTypeEnumId'] as String,
        age: json['age'] as int,
        jobPostingTypeEnumId: json['jobPostingTypeEnumId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JobRequisition overridesJobRequisition(Map<String, dynamic> map) {
    return JobRequisition(
        entityId: create_id_from('JobRequisition', ['jobRequisitionId'], map),
        durationMonths: map['durationMonths'],
        gender: map['gender'],
        noOfResources: map['noOfResources'],
        jobRequisitionId: map['jobRequisitionId'],
        experienceYears: map['experienceYears'],
        jobRequisitionDate: map['jobRequisitionDate'],
        requiredOnDate: map['requiredOnDate'],
        qualification: map['qualification'],
        skillTypeId: map['skillTypeId'],
        experienceMonths: map['experienceMonths'],
        jobLocation: map['jobLocation'],
        examTypeEnumId: map['examTypeEnumId'],
        age: map['age'],
        jobPostingTypeEnumId: map['jobPostingTypeEnumId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}