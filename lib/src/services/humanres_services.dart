import 'package:sagas_meta/src/models/humanres_recruitment.dart';
import 'package:sagas_meta/src/models/humanres_ability.dart';
import 'package:sagas_meta/src/models/party_agreement.dart';
import 'package:sagas_meta/src/models/humanres_position.dart';
import 'package:sagas_meta/src/models/humanres_employment.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class HumanresServices{
  final SrvClient client;
  HumanresServices(this.client);

  /**
   * Create Training Request - PersonTraining
   *
   * Requires partyId, trainingClassTypeId, workEffortId, approverId, approverId, trainingClassTypeId, workEffortId
   * Returns 
   */
  Future<OfResult> applyTraining(PersonTraining ent, ) =>
      client.invoke('applyTraining', ent, {  });

  /**
   * Create Training Request - PersonTraining
   *
   * Requires partyId, trainingClassTypeId, fromDate, approverId, approverId, trainingClassTypeId
   * Returns 
   */
  Future<OfResult> assignTraining(PersonTraining ent, ) =>
      client.invoke('assignTraining', ent, {  });

  /**
   * Create Agreement Employment Appl - AgreementEmploymentAppl
   *
   * Requires agreementId, agreementItemSeqId, partyIdFrom, partyIdTo, roleTypeIdFrom, roleTypeIdTo, fromDate
   * Returns 
   */
  Future<OfResult> createAgreementEmploymentAppl(AgreementEmploymentAppl ent, ) =>
      client.invoke('createAgreementEmploymentAppl', ent, {  });

  /**
   * Create Employee Leave - EmplLeave
   *
   * Requires partyId, leaveTypeId, fromDate, thruDate, approverPartyId, approverPartyId, thruDate
   * Returns 
   */
  Future<OfResult> createEmplLeave(EmplLeave ent, ) =>
      client.invoke('createEmplLeave', ent, {  });

  /**
   * Create Valid Leave Reason Type - EmplLeaveReasonType
   *
   * Requires description, description
   * Returns emplLeaveReasonTypeId[String]
   */
  Future<OfResult> createEmplLeaveReasonType(EmplLeaveReasonType ent, ) =>
      client.invoke('createEmplLeaveReasonType', ent, {  });

  /**
   * Create Valid LeaveType - EmplLeaveType
   *
   * Requires description, description
   * Returns leaveTypeId[String]
   */
  Future<OfResult> createEmplLeaveType(EmplLeaveType ent, ) =>
      client.invoke('createEmplLeaveType', ent, {  });

  /**
   * Create an Employee Position - EmplPosition
   *
   * Requires 
   * Returns emplPositionId[String]
   */
  Future<OfResult> createEmplPosition(EmplPosition ent, ) =>
      client.invoke('createEmplPosition', ent, {  });

  /**
   * Create Employee Position Fulfillment - EmplPositionFulfillment
   *
   * Requires emplPositionId, partyId
   * Returns 
   */
  Future<OfResult> createEmplPositionFulfillment(EmplPositionFulfillment ent, ) =>
      client.invoke('createEmplPositionFulfillment', ent, {  });

  /**
   * Create Employee Position Reporting Structure - EmplPositionReportingStruct
   *
   * Requires emplPositionIdReportingTo, emplPositionIdManagedBy
   * Returns 
   */
  Future<OfResult> createEmplPositionReportingStruct(EmplPositionReportingStruct ent, ) =>
      client.invoke('createEmplPositionReportingStruct', ent, {  });

  /**
   * Create Employee Position Responsibility - EmplPositionResponsibility
   *
   * Requires emplPositionId, responsibilityTypeId
   * Returns 
   */
  Future<OfResult> createEmplPositionResponsibility(EmplPositionResponsibility ent, ) =>
      client.invoke('createEmplPositionResponsibility', ent, {  });

  /**
   * Create Valid PositionType - EmplPositionType
   *
   * Requires description, description
   * Returns emplPositionTypeId[String]
   */
  Future<OfResult> createEmplPositionType(EmplPositionType ent, ) =>
      client.invoke('createEmplPositionType', ent, {  });

  /**
   * Create an Employee its role and contact details - 
   *
   * Requires postalAddContactMechPurpTypeId
   * Returns partyId[String]
   */
  Future<OfResult> createEmployee({String salutation, String firstName, String middleName, String lastName, String personalTitle, String suffix, String nickname, String firstNameLocal, String middleNameLocal, String lastNameLocal, String otherLocal, String memberId, String gender, DateTime birthDate, DateTime deceasedDate, double height, double weight, String mothersMaidenName, String maritalStatus, String socialSecurityNumber, String passportNumber, DateTime passportExpireDate, double totalYearsWorkExperience, String comments, String employmentStatusEnumId, String residenceStatusEnumId, String occupation, int yearsWithEmployer, int monthsWithEmployer, String existingCustomer, String cardId, String toName, String attnName, String address1, String address2, int houseNumber, String houseNumberExt, String directions, String city, String cityGeoId, String postalCode, String postalCodeExt, String countryGeoId, String stateProvinceGeoId, String countyGeoId, String municipalityGeoId, String postalCodeGeoId, String geoPointId, String countryCode, String areaCode, String contactNumber, String askForName, String emailAddress, String fromDate, @required String postalAddContactMechPurpTypeId}) =>
      client.invoke('createEmployee', null, { 'salutation': salutation, 'firstName': firstName, 'middleName': middleName, 'lastName': lastName, 'personalTitle': personalTitle, 'suffix': suffix, 'nickname': nickname, 'firstNameLocal': firstNameLocal, 'middleNameLocal': middleNameLocal, 'lastNameLocal': lastNameLocal, 'otherLocal': otherLocal, 'memberId': memberId, 'gender': gender, 'birthDate': birthDate, 'deceasedDate': deceasedDate, 'height': height, 'weight': weight, 'mothersMaidenName': mothersMaidenName, 'maritalStatus': maritalStatus, 'socialSecurityNumber': socialSecurityNumber, 'passportNumber': passportNumber, 'passportExpireDate': passportExpireDate, 'totalYearsWorkExperience': totalYearsWorkExperience, 'comments': comments, 'employmentStatusEnumId': employmentStatusEnumId, 'residenceStatusEnumId': residenceStatusEnumId, 'occupation': occupation, 'yearsWithEmployer': yearsWithEmployer, 'monthsWithEmployer': monthsWithEmployer, 'existingCustomer': existingCustomer, 'cardId': cardId, 'toName': toName, 'attnName': attnName, 'address1': address1, 'address2': address2, 'houseNumber': houseNumber, 'houseNumberExt': houseNumberExt, 'directions': directions, 'city': city, 'cityGeoId': cityGeoId, 'postalCode': postalCode, 'postalCodeExt': postalCodeExt, 'countryGeoId': countryGeoId, 'stateProvinceGeoId': stateProvinceGeoId, 'countyGeoId': countyGeoId, 'municipalityGeoId': municipalityGeoId, 'postalCodeGeoId': postalCodeGeoId, 'geoPointId': geoPointId, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'askForName': askForName, 'emailAddress': emailAddress, 'fromDate': fromDate, 'postalAddContactMechPurpTypeId': postalAddContactMechPurpTypeId });

  /**
   * Create Employment - Employment
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo
   * Returns 
   */
  Future<OfResult> createEmployment(Employment ent, ) =>
      client.invoke('createEmployment', ent, {  });

  /**
   * Create an Employment Application - EmploymentApp
   *
   * Requires 
   * Returns applicationId[String]
   */
  Future<OfResult> createEmploymentApp(EmploymentApp ent, ) =>
      client.invoke('createEmploymentApp', ent, {  });

  /**
   * Create a New Internal Job Posting - EmploymentApp
   *
   * Requires applyingPartyId, approverPartyId, jobRequisitionId, applyingPartyId, approverPartyId, jobRequisitionId
   * Returns applicationId[String]
   */
  Future<OfResult> createInternalJobPosting(EmploymentApp ent, ) =>
      client.invoke('createInternalJobPosting', ent, {  });

  /**
   * Create Job Interview - JobInterview
   *
   * Requires jobIntervieweePartyId, jobRequisitionId, jobInterviewerPartyId, jobIntervieweePartyId, jobRequisitionId, jobInterviewerPartyId
   * Returns jobInterviewId[String]
   */
  Future<OfResult> createJobInterview(JobInterview ent, ) =>
      client.invoke('createJobInterview', ent, {  });

  /**
   * Create a New Interview Type - JobInterviewType
   *
   * Requires description, description
   * Returns jobInterviewTypeId[String]
   */
  Future<OfResult> createJobInterviewType(JobInterviewType ent, ) =>
      client.invoke('createJobInterviewType', ent, {  });

  /**
   * Create a new Job Requisition - JobRequisition
   *
   * Requires experienceMonths, experienceYears, qualification, jobLocation, skillTypeId, noOfResources, noOfResources, qualification, jobLocation, skillTypeId, experienceMonths, experienceYears
   * Returns jobRequisitionId[String]
   */
  Future<OfResult> createJobRequisition(JobRequisition ent, ) =>
      client.invoke('createJobRequisition', ent, {  });

  /**
   * Create Party Benefit - PartyBenefit
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, benefitTypeId
   * Returns 
   */
  Future<OfResult> createPartyBenefit(PartyBenefit ent, ) =>
      client.invoke('createPartyBenefit', ent, {  });

  /**
   * Create a Party Qualification entry - PartyQual
   *
   * Requires partyId, partyQualTypeId
   * Returns fromDate[Timestamp]
   */
  Future<OfResult> createPartyQual(PartyQual ent, ) =>
      client.invoke('createPartyQual', ent, {  });

  /**
   * Create a PartyQualType record - PartyQualType
   *
   * Requires 
   * Returns partyQualTypeId[String]
   */
  Future<OfResult> createPartyQualType(PartyQualType ent, ) =>
      client.invoke('createPartyQualType', ent, {  });

  /**
   * Create Resume for a Party - PartyResume
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createPartyResume(PartyResume ent, ) =>
      client.invoke('createPartyResume', ent, {  });

  /**
   * Create Skill for a Party - PartySkill
   *
   * Requires partyId, skillTypeId
   * Returns 
   */
  Future<OfResult> createPartySkill(PartySkill ent, ) =>
      client.invoke('createPartySkill', ent, {  });

  /**
   * Create a Pay Grade - PayGrade
   *
   * Requires payGradeName, payGradeName
   * Returns payGradeId[String]
   */
  Future<OfResult> createPayGrade(PayGrade ent, ) =>
      client.invoke('createPayGrade', ent, {  });

  /**
   * Create Pay History - PayHistory
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo
   * Returns 
   */
  Future<OfResult> createPayHistory(PayHistory ent, ) =>
      client.invoke('createPayHistory', ent, {  });

  /**
   * Create Payroll Preference - PayrollPreference
   *
   * Requires partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createPayrollPreference(PayrollPreference ent, ) =>
      client.invoke('createPayrollPreference', ent, {  });

  /**
   * Create an Performance Review - PerfReview
   *
   * Requires employeePartyId, employeeRoleTypeId
   * Returns perfReviewId[String], employeePartyId[String], employeeRoleTypeId[String]
   */
  Future<OfResult> createPerfReview(PerfReview ent, ) =>
      client.invoke('createPerfReview', ent, {  });

  /**
   * Create Performance Review Item - PerfReviewItem
   *
   * Requires employeePartyId, employeeRoleTypeId, perfReviewId
   * Returns perfReviewItemSeqId[String]
   */
  Future<OfResult> createPerfReviewItem(PerfReviewItem ent, ) =>
      client.invoke('createPerfReviewItem', ent, {  });

  /**
   * Create Performance Note - PerformanceNote
   *
   * Requires partyId, roleTypeId
   * Returns 
   */
  Future<OfResult> createPerformanceNote(PerformanceNote ent, ) =>
      client.invoke('createPerformanceNote', ent, {  });

  /**
   * Create Valid ResponsibilityType - ResponsibilityType
   *
   * Requires description, description
   * Returns responsibilityTypeId[String]
   */
  Future<OfResult> createResponsibilityType(ResponsibilityType ent, ) =>
      client.invoke('createResponsibilityType', ent, {  });

  /**
   * Create Salary Step - SalaryStep
   *
   * Requires payGradeId, fromDate
   * Returns 
   */
  Future<OfResult> createSalaryStep(SalaryStep ent, ) =>
      client.invoke('createSalaryStep', ent, {  });

  /**
   * Create Valid SkillType - SkillType
   *
   * Requires description, description
   * Returns skillTypeId[String]
   */
  Future<OfResult> createSkillType(SkillType ent, ) =>
      client.invoke('createSkillType', ent, {  });

  /**
   * Create an Termination Reason - TerminationReason
   *
   * Requires description, description
   * Returns terminationReasonId[String]
   */
  Future<OfResult> createTerminationReason(TerminationReason ent, ) =>
      client.invoke('createTerminationReason', ent, {  });

  /**
   * Create Valid TerminationType - TerminationType
   *
   * Requires description, description
   * Returns terminationTypeId[String]
   */
  Future<OfResult> createTerminationType(TerminationType ent, ) =>
      client.invoke('createTerminationType', ent, {  });

  /**
   * Create a New Training type - TrainingClassType
   *
   * Requires trainingClassTypeId, description
   * Returns 
   */
  Future<OfResult> createTrainingTypes(TrainingClassType ent, ) =>
      client.invoke('createTrainingTypes', ent, {  });

  /**
   * Create an Unemployment Claim - UnemploymentClaim
   *
   * Requires 
   * Returns unemploymentClaimId[String]
   */
  Future<OfResult> createUnemploymentClaim(UnemploymentClaim ent, ) =>
      client.invoke('createUnemploymentClaim', ent, {  });

  /**
   * Create Valid Responsibility - ValidResponsibility
   *
   * Requires emplPositionTypeId, responsibilityTypeId
   * Returns 
   */
  Future<OfResult> createValidResponsibility(ValidResponsibility ent, ) =>
      client.invoke('createValidResponsibility', ent, {  });

  /**
   * Delete AgreementEmploymentAppl - AgreementEmploymentAppl
   *
   * Requires agreementId, agreementItemSeqId, partyIdFrom, partyIdTo, roleTypeIdFrom, roleTypeIdTo, fromDate
   * Returns 
   */
  Future<OfResult> deleteAgreementEmploymentAppl(AgreementEmploymentAppl ent, ) =>
      client.invoke('deleteAgreementEmploymentAppl', ent, {  });

  /**
   * Delete AgreementEmploymentAppl - EmplLeave
   *
   * Requires partyId, leaveTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmplLeave(EmplLeave ent, ) =>
      client.invoke('deleteEmplLeave', ent, {  });

  /**
   * Delete Valid Leave Reason Type - EmplLeaveReasonType
   *
   * Requires emplLeaveReasonTypeId
   * Returns 
   */
  Future<OfResult> deleteEmplLeaveReasonType(EmplLeaveReasonType ent, ) =>
      client.invoke('deleteEmplLeaveReasonType', ent, {  });

  /**
   * Delete Valid LeaveType - EmplLeaveType
   *
   * Requires leaveTypeId
   * Returns 
   */
  Future<OfResult> deleteEmplLeaveType(EmplLeaveType ent, ) =>
      client.invoke('deleteEmplLeaveType', ent, {  });

  /**
   * Delete an Employee Position - EmplPosition
   *
   * Requires emplPositionId
   * Returns 
   */
  Future<OfResult> deleteEmplPosition(EmplPosition ent, ) =>
      client.invoke('deleteEmplPosition', ent, {  });

  /**
   * Delete Employee Position Fulfillment - EmplPositionFulfillment
   *
   * Requires emplPositionId, partyId, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmplPositionFulfillment(EmplPositionFulfillment ent, ) =>
      client.invoke('deleteEmplPositionFulfillment', ent, {  });

  /**
   * Delete Employee Position Reporting Structure - EmplPositionReportingStruct
   *
   * Requires emplPositionIdReportingTo, emplPositionIdManagedBy, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmplPositionReportingStruct(EmplPositionReportingStruct ent, ) =>
      client.invoke('deleteEmplPositionReportingStruct', ent, {  });

  /**
   * Delete Employee Position Responsibility - EmplPositionResponsibility
   *
   * Requires emplPositionId, responsibilityTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmplPositionResponsibility(EmplPositionResponsibility ent, ) =>
      client.invoke('deleteEmplPositionResponsibility', ent, {  });

  /**
   * Delete EmplPositionType - EmplPositionType
   *
   * Requires emplPositionTypeId
   * Returns 
   */
  Future<OfResult> deleteEmplPositionType(EmplPositionType ent, ) =>
      client.invoke('deleteEmplPositionType', ent, {  });

  /**
   * Delete Valid EmplPositionTypeRate - EmplPositionTypeRate
   *
   * Requires emplPositionTypeId, rateTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmplPositionTypeRate(EmplPositionTypeRate ent, {DateTime rateAmountFromDate, String periodTypeId}) =>
      client.invoke('deleteEmplPositionTypeRate', ent, { 'rateAmountFromDate': rateAmountFromDate, 'periodTypeId': periodTypeId });

  /**
   * Delete an Employment - Employment
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> deleteEmployment(Employment ent, ) =>
      client.invoke('deleteEmployment', ent, {  });

  /**
   * Delete an Employment Application - EmploymentApp
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> deleteEmploymentApp(EmploymentApp ent, ) =>
      client.invoke('deleteEmploymentApp', ent, {  });

  /**
   * Delete an Internal Job Posting - EmploymentApp
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> deleteInternalJobPosting(EmploymentApp ent, ) =>
      client.invoke('deleteInternalJobPosting', ent, {  });

  /**
   * Delete Job Interview - JobInterview
   *
   * Requires jobInterviewId
   * Returns 
   */
  Future<OfResult> deleteJobInterview(JobInterview ent, ) =>
      client.invoke('deleteJobInterview', ent, {  });

  /**
   * Delete Interview Type - JobInterviewType
   *
   * Requires jobInterviewTypeId
   * Returns 
   */
  Future<OfResult> deleteJobInterviewType(JobInterviewType ent, ) =>
      client.invoke('deleteJobInterviewType', ent, {  });

  /**
   * Delete a Job Requisition - JobRequisition
   *
   * Requires jobRequisitionId
   * Returns 
   */
  Future<OfResult> deleteJobRequisition(JobRequisition ent, ) =>
      client.invoke('deleteJobRequisition', ent, {  });

  /**
   * Delete Party Benefit - PartyBenefit
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, benefitTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyBenefit(PartyBenefit ent, ) =>
      client.invoke('deletePartyBenefit', ent, {  });

  /**
   * Delete Qualification of Party - PartyQual
   *
   * Requires partyId, partyQualTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePartyQual(PartyQual ent, ) =>
      client.invoke('deletePartyQual', ent, {  });

  /**
   * Delete a PartyQualType record - PartyQualType
   *
   * Requires partyQualTypeId
   * Returns 
   */
  Future<OfResult> deletePartyQualType(PartyQualType ent, ) =>
      client.invoke('deletePartyQualType', ent, {  });

  /**
   * Delete a Resume of Party - PartyResume
   *
   * Requires resumeId
   * Returns 
   */
  Future<OfResult> deletePartyResume(PartyResume ent, ) =>
      client.invoke('deletePartyResume', ent, {  });

  /**
   * Delete a PartySkill - PartySkill
   *
   * Requires partyId, skillTypeId
   * Returns 
   */
  Future<OfResult> deletePartySkill(PartySkill ent, ) =>
      client.invoke('deletePartySkill', ent, {  });

  /**
   * Delete a Pay Grade - PayGrade
   *
   * Requires payGradeId
   * Returns 
   */
  Future<OfResult> deletePayGrade(PayGrade ent, ) =>
      client.invoke('deletePayGrade', ent, {  });

  /**
   * Delete Pay History - PayHistory
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> deletePayHistory(PayHistory ent, ) =>
      client.invoke('deletePayHistory', ent, {  });

  /**
   * Delete Payroll Preference - PayrollPreference
   *
   * Requires partyId, roleTypeId, payrollPreferenceSeqId
   * Returns 
   */
  Future<OfResult> deletePayrollPreference(PayrollPreference ent, ) =>
      client.invoke('deletePayrollPreference', ent, {  });

  /**
   * Delete a Performance Review - PerfReview
   *
   * Requires employeePartyId, employeeRoleTypeId, perfReviewId
   * Returns 
   */
  Future<OfResult> deletePerfReview(PerfReview ent, ) =>
      client.invoke('deletePerfReview', ent, {  });

  /**
   * Delete a Performance Review Item - PerfReviewItem
   *
   * Requires employeePartyId, employeeRoleTypeId, perfReviewId, perfReviewItemSeqId
   * Returns 
   */
  Future<OfResult> deletePerfReviewItem(PerfReviewItem ent, ) =>
      client.invoke('deletePerfReviewItem', ent, {  });

  /**
   * Delete a Performance Note - PerformanceNote
   *
   * Requires partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deletePerformanceNote(PerformanceNote ent, ) =>
      client.invoke('deletePerformanceNote', ent, {  });

  /**
   * Delete Valid ResponsibilityTrype - ResponsibilityType
   *
   * Requires responsibilityTypeId
   * Returns 
   */
  Future<OfResult> deleteResponsibilityType(ResponsibilityType ent, ) =>
      client.invoke('deleteResponsibilityType', ent, {  });

  /**
   * Delete Salary Step - SalaryStep
   *
   * Requires salaryStepSeqId, payGradeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteSalaryStep(SalaryStep ent, ) =>
      client.invoke('deleteSalaryStep', ent, {  });

  /**
   * Delete Valid SkillType - SkillType
   *
   * Requires skillTypeId
   * Returns 
   */
  Future<OfResult> deleteSkillType(SkillType ent, ) =>
      client.invoke('deleteSkillType', ent, {  });

  /**
   * Delete an Termination Reason - TerminationReason
   *
   * Requires terminationReasonId
   * Returns 
   */
  Future<OfResult> deleteTerminationReason(TerminationReason ent, ) =>
      client.invoke('deleteTerminationReason', ent, {  });

  /**
   * Delete Valid TerminationType - TerminationType
   *
   * Requires terminationTypeId
   * Returns 
   */
  Future<OfResult> deleteTerminationType(TerminationType ent, ) =>
      client.invoke('deleteTerminationType', ent, {  });

  /**
   * Delete a Training Type - TrainingClassType
   *
   * Requires trainingClassTypeId
   * Returns 
   */
  Future<OfResult> deleteTrainingTypes(TrainingClassType ent, ) =>
      client.invoke('deleteTrainingTypes', ent, {  });

  /**
   * Delete an Unemployment Claim - UnemploymentClaim
   *
   * Requires unemploymentClaimId
   * Returns 
   */
  Future<OfResult> deleteUnemploymentClaim(UnemploymentClaim ent, ) =>
      client.invoke('deleteUnemploymentClaim', ent, {  });

  /**
   * Delete Valid Responsibility - ValidResponsibility
   *
   * Requires emplPositionTypeId, responsibilityTypeId, fromDate
   * Returns 
   */
  Future<OfResult> deleteValidResponsibility(ValidResponsibility ent, ) =>
      client.invoke('deleteValidResponsibility', ent, {  });

  /**
   * Expire Pay History - PayHistory
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> expirePayHistory(PayHistory ent, ) =>
      client.invoke('expirePayHistory', ent, {  });

  /**
   * Delete Valid LeaveType - 
   *
   * Requires partyId
   * Returns partyBenefitTypes[java.util.List], employment[org.apache.ofbiz.entity.GenericValue], emplPosition[org.apache.ofbiz.entity.GenericValue], emplPositionType[org.apache.ofbiz.entity.GenericValue], emplPositionRateType[org.apache.ofbiz.entity.GenericValue], emplPositionRateAmount[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getCurrentPartyEmploymentData({@required String partyId}) =>
      client.invoke('getCurrentPartyEmploymentData', null, { 'partyId': partyId });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> humanResManagerPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('humanResManagerPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   * Update Valid AgreementEmploymentAppl - AgreementEmploymentAppl
   *
   * Requires agreementId, agreementItemSeqId, partyIdFrom, partyIdTo, roleTypeIdFrom, roleTypeIdTo, fromDate
   * Returns 
   */
  Future<OfResult> updateAgreementEmploymentAppl(AgreementEmploymentAppl ent, ) =>
      client.invoke('updateAgreementEmploymentAppl', ent, {  });

  /**
   * Update Approval Status - EmploymentApp
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> updateApprovalStatus(EmploymentApp ent, ) =>
      client.invoke('updateApprovalStatus', ent, {  });

  /**
   * Update Valid Employee Leave - EmplLeave
   *
   * Requires partyId, leaveTypeId, fromDate, thruDate, approverPartyId, approverPartyId, thruDate
   * Returns 
   */
  Future<OfResult> updateEmplLeave(EmplLeave ent, ) =>
      client.invoke('updateEmplLeave', ent, {  });

  /**
   * Update Valid Leave Reason Type - EmplLeaveReasonType
   *
   * Requires emplLeaveReasonTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateEmplLeaveReasonType(EmplLeaveReasonType ent, ) =>
      client.invoke('updateEmplLeaveReasonType', ent, {  });

  /**
   * Update Leave Approval Status - EmplLeave
   *
   * Requires partyId, leaveTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateEmplLeaveStatus(EmplLeave ent, ) =>
      client.invoke('updateEmplLeaveStatus', ent, {  });

  /**
   * Update Valid LeaveType - EmplLeaveType
   *
   * Requires leaveTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateEmplLeaveType(EmplLeaveType ent, ) =>
      client.invoke('updateEmplLeaveType', ent, {  });

  /**
   * Update an Employee Position - EmplPosition
   *
   * Requires emplPositionId
   * Returns 
   */
  Future<OfResult> updateEmplPosition(EmplPosition ent, ) =>
      client.invoke('updateEmplPosition', ent, {  });

  /**
   * Update Employee Position Fulfillment - EmplPositionFulfillment
   *
   * Requires emplPositionId, partyId, fromDate
   * Returns 
   */
  Future<OfResult> updateEmplPositionFulfillment(EmplPositionFulfillment ent, ) =>
      client.invoke('updateEmplPositionFulfillment', ent, {  });

  /**
   * Update Employee Position Reporting Structure - EmplPositionReportingStruct
   *
   * Requires emplPositionIdReportingTo, emplPositionIdManagedBy, fromDate
   * Returns 
   */
  Future<OfResult> updateEmplPositionReportingStruct(EmplPositionReportingStruct ent, ) =>
      client.invoke('updateEmplPositionReportingStruct', ent, {  });

  /**
   * Update Employee Position Responsibility - EmplPositionResponsibility
   *
   * Requires emplPositionId, responsibilityTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateEmplPositionResponsibility(EmplPositionResponsibility ent, ) =>
      client.invoke('updateEmplPositionResponsibility', ent, {  });

  /**
   * Update Valid PositionType - EmplPositionType
   *
   * Requires emplPositionTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateEmplPositionType(EmplPositionType ent, ) =>
      client.invoke('updateEmplPositionType', ent, {  });

  /**
   * Update Valid EmplPositionTypeRate - EmplPositionTypeRate
   *
   * Requires emplPositionTypeId, rateTypeId, periodTypeId
   * Returns 
   */
  Future<OfResult> updateEmplPositionTypeRate(EmplPositionTypeRate ent, {Decimal rateAmount, String rateCurrencyUomId, @required String periodTypeId}) =>
      client.invoke('updateEmplPositionTypeRate', ent, { 'rateAmount': rateAmount, 'rateCurrencyUomId': rateCurrencyUomId, 'periodTypeId': periodTypeId });

  /**
   * Update an Employment - Employment
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> updateEmployment(Employment ent, ) =>
      client.invoke('updateEmployment', ent, {  });

  /**
   * Update an Employment Application - EmploymentApp
   *
   * Requires applicationId
   * Returns 
   */
  Future<OfResult> updateEmploymentApp(EmploymentApp ent, ) =>
      client.invoke('updateEmploymentApp', ent, {  });

  /**
   * Update Internal Job Posting - EmploymentApp
   *
   * Requires applicationId, applyingPartyId, approverPartyId, jobRequisitionId, applyingPartyId, approverPartyId, jobRequisitionId
   * Returns 
   */
  Future<OfResult> updateInternalJobPosting(EmploymentApp ent, ) =>
      client.invoke('updateInternalJobPosting', ent, {  });

  /**
   * Update Job Interview - JobInterview
   *
   * Requires jobInterviewId, jobIntervieweePartyId, jobRequisitionId, jobInterviewTypeId, jobIntervieweePartyId, jobRequisitionId, jobInterviewTypeId
   * Returns 
   */
  Future<OfResult> updateJobInterview(JobInterview ent, ) =>
      client.invoke('updateJobInterview', ent, {  });

  /**
   * Update Interview Type - JobInterviewType
   *
   * Requires jobInterviewTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateJobInterviewType(JobInterviewType ent, ) =>
      client.invoke('updateJobInterviewType', ent, {  });

  /**
   * Update Job Requisition - JobRequisition
   *
   * Requires jobRequisitionId, experienceMonths, experienceYears, jobLocation, skillTypeId, noOfResources, noOfResources, jobLocation, skillTypeId, experienceMonths, experienceYears
   * Returns 
   */
  Future<OfResult> updateJobRequisition(JobRequisition ent, ) =>
      client.invoke('updateJobRequisition', ent, {  });

  /**
   * Update Party Benefit - PartyBenefit
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, benefitTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyBenefit(PartyBenefit ent, ) =>
      client.invoke('updatePartyBenefit', ent, {  });

  /**
   * Update Qualification of Party - PartyQual
   *
   * Requires partyId, partyQualTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePartyQual(PartyQual ent, ) =>
      client.invoke('updatePartyQual', ent, {  });

  /**
   * Update a PartyQualType record - PartyQualType
   *
   * Requires partyQualTypeId
   * Returns 
   */
  Future<OfResult> updatePartyQualType(PartyQualType ent, ) =>
      client.invoke('updatePartyQualType', ent, {  });

  /**
   * Update a Resume of Party - PartyResume
   *
   * Requires resumeId
   * Returns 
   */
  Future<OfResult> updatePartyResume(PartyResume ent, ) =>
      client.invoke('updatePartyResume', ent, {  });

  /**
   * Update a PartySkill - PartySkill
   *
   * Requires partyId, skillTypeId
   * Returns 
   */
  Future<OfResult> updatePartySkill(PartySkill ent, ) =>
      client.invoke('updatePartySkill', ent, {  });

  /**
   * Update a Pay Grade - PayGrade
   *
   * Requires payGradeId, payGradeName, payGradeName
   * Returns 
   */
  Future<OfResult> updatePayGrade(PayGrade ent, ) =>
      client.invoke('updatePayGrade', ent, {  });

  /**
   * Update Pay History - PayHistory
   *
   * Requires roleTypeIdFrom, roleTypeIdTo, partyIdFrom, partyIdTo, fromDate
   * Returns 
   */
  Future<OfResult> updatePayHistory(PayHistory ent, ) =>
      client.invoke('updatePayHistory', ent, {  });

  /**
   * Update Payroll Preference - PayrollPreference
   *
   * Requires partyId, roleTypeId, payrollPreferenceSeqId
   * Returns 
   */
  Future<OfResult> updatePayrollPreference(PayrollPreference ent, ) =>
      client.invoke('updatePayrollPreference', ent, {  });

  /**
   * Update a Performance Review - PerfReview
   *
   * Requires employeePartyId, employeeRoleTypeId, perfReviewId
   * Returns employeePartyId[String], employeeRoleTypeId[String], perfReviewId[String]
   */
  Future<OfResult> updatePerfReview(PerfReview ent, ) =>
      client.invoke('updatePerfReview', ent, {  });

  /**
   * Update a Performance Review Item - PerfReviewItem
   *
   * Requires employeePartyId, employeeRoleTypeId, perfReviewId, perfReviewItemSeqId
   * Returns 
   */
  Future<OfResult> updatePerfReviewItem(PerfReviewItem ent, ) =>
      client.invoke('updatePerfReviewItem', ent, {  });

  /**
   * Update a Performance Note - PerformanceNote
   *
   * Requires partyId, roleTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updatePerformanceNote(PerformanceNote ent, ) =>
      client.invoke('updatePerformanceNote', ent, {  });

  /**
   * Update Valid ResponsibilityType - ResponsibilityType
   *
   * Requires responsibilityTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateResponsibilityType(ResponsibilityType ent, ) =>
      client.invoke('updateResponsibilityType', ent, {  });

  /**
   * Update Salary Step - SalaryStep
   *
   * Requires salaryStepSeqId, payGradeId, fromDate
   * Returns 
   */
  Future<OfResult> updateSalaryStep(SalaryStep ent, ) =>
      client.invoke('updateSalaryStep', ent, {  });

  /**
   * Update Valid SkillType - SkillType
   *
   * Requires skillTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateSkillType(SkillType ent, ) =>
      client.invoke('updateSkillType', ent, {  });

  /**
   * Update an Termination Reason - TerminationReason
   *
   * Requires terminationReasonId, description, description
   * Returns 
   */
  Future<OfResult> updateTerminationReason(TerminationReason ent, ) =>
      client.invoke('updateTerminationReason', ent, {  });

  /**
   * Update Valid TerminationType - TerminationType
   *
   * Requires terminationTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateTerminationType(TerminationType ent, ) =>
      client.invoke('updateTerminationType', ent, {  });

  /**
   * Update Training Status - PersonTraining
   *
   * Requires partyId, trainingClassTypeId, fromDate, reason, reason
   * Returns 
   */
  Future<OfResult> updateTrainingStatus(PersonTraining ent, ) =>
      client.invoke('updateTrainingStatus', ent, {  });

  /**
   * Update a Training Type - TrainingClassType
   *
   * Requires trainingClassTypeId, description, description
   * Returns 
   */
  Future<OfResult> updateTrainingTypes(TrainingClassType ent, ) =>
      client.invoke('updateTrainingTypes', ent, {  });

  /**
   * Update an Unemployment Claim - UnemploymentClaim
   *
   * Requires unemploymentClaimId
   * Returns 
   */
  Future<OfResult> updateUnemploymentClaim(UnemploymentClaim ent, ) =>
      client.invoke('updateUnemploymentClaim', ent, {  });

  /**
   * Update Valid Responsibility - ValidResponsibility
   *
   * Requires emplPositionTypeId, responsibilityTypeId, fromDate
   * Returns 
   */
  Future<OfResult> updateValidResponsibility(ValidResponsibility ent, ) =>
      client.invoke('updateValidResponsibility', ent, {  });

}