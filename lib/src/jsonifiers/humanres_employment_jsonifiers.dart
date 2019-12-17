import 'package:sagas_meta/src/models/humanres_employment.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class HumanresEmploymentJsonifier{
  static BenefitType extractBenefitType(dynamic json) {
    return BenefitType(
        entityId: create_id_from('BenefitType', ['benefitTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        employerPaidPercentage: json['employerPaidPercentage'] as double,
        hasTable: json['hasTable'] as String,
        benefitName: json['benefitName'] as String,
        benefitTypeId: json['benefitTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BenefitType overridesBenefitType(Map<String, dynamic> map) {
    return BenefitType(
        entityId: create_id_from('BenefitType', ['benefitTypeId'], map),
        parentTypeId: map['parentTypeId'],
        employerPaidPercentage: map['employerPaidPercentage'],
        hasTable: map['hasTable'],
        benefitName: map['benefitName'],
        benefitTypeId: map['benefitTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static BenefitTypeAndParty extractBenefitTypeAndParty(dynamic json) {
    return BenefitTypeAndParty(
        entityId: create_id_from('BenefitTypeAndParty', ['benefitTypeId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        parentTypeId: json['parentTypeId'] as String,
        cost: json['cost'] as double,
        employerPaidPercentage: json['employerPaidPercentage'] as double,
        actualEmployerPaidPercent: json['actualEmployerPaidPercent'] as double,
        benefitTypeId: json['benefitTypeId'] as String,
        periodTypeId: json['periodTypeId'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        availableTime: json['availableTime'] as int,
        hasTable: json['hasTable'] as String,
        benefitName: json['benefitName'] as String,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static BenefitTypeAndParty overridesBenefitTypeAndParty(Map<String, dynamic> map) {
    return BenefitTypeAndParty(
        entityId: create_id_from('BenefitTypeAndParty', ['benefitTypeId', 'roleTypeIdTo', 'partyIdFrom', 'roleTypeIdFrom', 'fromDate', 'partyIdTo'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        parentTypeId: map['parentTypeId'],
        cost: map['cost'],
        employerPaidPercentage: map['employerPaidPercentage'],
        actualEmployerPaidPercent: map['actualEmployerPaidPercent'],
        benefitTypeId: map['benefitTypeId'],
        periodTypeId: map['periodTypeId'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        availableTime: map['availableTime'],
        hasTable: map['hasTable'],
        benefitName: map['benefitName'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplLeave extractEmplLeave(dynamic json) {
    return EmplLeave(
        entityId: create_id_from('EmplLeave', ['partyId', 'leaveTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        approverPartyId: json['approverPartyId'] as String,
        emplLeaveReasonTypeId: json['emplLeaveReasonTypeId'] as String,
        description: json['description'] as String,
        leaveTypeId: json['leaveTypeId'] as String,
        partyId: json['partyId'] as String,
        leaveStatus: json['leaveStatus'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplLeave overridesEmplLeave(Map<String, dynamic> map) {
    return EmplLeave(
        entityId: create_id_from('EmplLeave', ['partyId', 'leaveTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        approverPartyId: map['approverPartyId'],
        emplLeaveReasonTypeId: map['emplLeaveReasonTypeId'],
        description: map['description'],
        leaveTypeId: map['leaveTypeId'],
        partyId: map['partyId'],
        leaveStatus: map['leaveStatus'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplLeaveReasonType extractEmplLeaveReasonType(dynamic json) {
    return EmplLeaveReasonType(
        entityId: create_id_from('EmplLeaveReasonType', ['emplLeaveReasonTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        emplLeaveReasonTypeId: json['emplLeaveReasonTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplLeaveReasonType overridesEmplLeaveReasonType(Map<String, dynamic> map) {
    return EmplLeaveReasonType(
        entityId: create_id_from('EmplLeaveReasonType', ['emplLeaveReasonTypeId'], map),
        parentTypeId: map['parentTypeId'],
        emplLeaveReasonTypeId: map['emplLeaveReasonTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmplLeaveType extractEmplLeaveType(dynamic json) {
    return EmplLeaveType(
        entityId: create_id_from('EmplLeaveType', ['leaveTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        leaveTypeId: json['leaveTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmplLeaveType overridesEmplLeaveType(Map<String, dynamic> map) {
    return EmplLeaveType(
        entityId: create_id_from('EmplLeaveType', ['leaveTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        leaveTypeId: map['leaveTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Employment extractEmployment(dynamic json) {
    return Employment(
        entityId: create_id_from('Employment', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'fromDate'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        fromDate: check_dt(json['fromDate']),
        partyIdFrom: json['partyIdFrom'] as String,
        terminationReasonId: json['terminationReasonId'] as String,
        terminationTypeId: json['terminationTypeId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Employment overridesEmployment(Map<String, dynamic> map) {
    return Employment(
        entityId: create_id_from('Employment', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'fromDate'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        fromDate: map['fromDate'],
        partyIdFrom: map['partyIdFrom'],
        terminationReasonId: map['terminationReasonId'],
        terminationTypeId: map['terminationTypeId'],
        partyIdTo: map['partyIdTo'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmploymentAndPerson extractEmploymentAndPerson(dynamic json) {
    return EmploymentAndPerson(
        entityId: create_id_from('EmploymentAndPerson', ['roleTypeIdTo', 'fromDate', 'partyIdFrom', 'partyIdTo', 'roleTypeIdFrom', 'partyId'], json),
        yearsWithEmployer: json['yearsWithEmployer'] as int,
        partyIdFrom: json['partyIdFrom'] as String,
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
        terminationTypeId: json['terminationTypeId'] as String,
        nickname: json['nickname'] as String,
        partyId: json['partyId'] as String,
        memberId: json['memberId'] as String,
        height: json['height'] as double,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        passportNumber: json['passportNumber'] as String,
        lastNameLocal: json['lastNameLocal'] as String,
        comments: json['comments'] as String,
        monthsWithEmployer: json['monthsWithEmployer'] as int,
        terminationReasonId: json['terminationReasonId'] as String,
        weight: json['weight'] as double,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        birthDate: check_dt(json['birthDate']),
        otherLocal: json['otherLocal'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        firstName: json['firstName'] as String,
        cardId: json['cardId'] as String,
        partyIdTo: json['partyIdTo'] as String,
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

  static EmploymentAndPerson overridesEmploymentAndPerson(Map<String, dynamic> map) {
    return EmploymentAndPerson(
        entityId: create_id_from('EmploymentAndPerson', ['roleTypeIdTo', 'fromDate', 'partyIdFrom', 'partyIdTo', 'roleTypeIdFrom', 'partyId'], map),
        yearsWithEmployer: map['yearsWithEmployer'],
        partyIdFrom: map['partyIdFrom'],
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
        terminationTypeId: map['terminationTypeId'],
        nickname: map['nickname'],
        partyId: map['partyId'],
        memberId: map['memberId'],
        height: map['height'],
        roleTypeIdTo: map['roleTypeIdTo'],
        passportNumber: map['passportNumber'],
        lastNameLocal: map['lastNameLocal'],
        comments: map['comments'],
        monthsWithEmployer: map['monthsWithEmployer'],
        terminationReasonId: map['terminationReasonId'],
        weight: map['weight'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        birthDate: map['birthDate'],
        otherLocal: map['otherLocal'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        firstName: map['firstName'],
        cardId: map['cardId'],
        partyIdTo: map['partyIdTo'],
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

  static EmploymentApp extractEmploymentApp(dynamic json) {
    return EmploymentApp(
        entityId: create_id_from('EmploymentApp', ['applicationId'], json),
        approverPartyId: json['approverPartyId'] as String,
        emplPositionId: json['emplPositionId'] as String,
        jobRequisitionId: json['jobRequisitionId'] as String,
        applyingPartyId: json['applyingPartyId'] as String,
        statusId: json['statusId'] as String,
        employmentAppSourceTypeId: json['employmentAppSourceTypeId'] as String,
        applicationId: json['applicationId'] as String,
        referredByPartyId: json['referredByPartyId'] as String,
        applicationDate: check_dt(json['applicationDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmploymentApp overridesEmploymentApp(Map<String, dynamic> map) {
    return EmploymentApp(
        entityId: create_id_from('EmploymentApp', ['applicationId'], map),
        approverPartyId: map['approverPartyId'],
        emplPositionId: map['emplPositionId'],
        jobRequisitionId: map['jobRequisitionId'],
        applyingPartyId: map['applyingPartyId'],
        statusId: map['statusId'],
        employmentAppSourceTypeId: map['employmentAppSourceTypeId'],
        applicationId: map['applicationId'],
        referredByPartyId: map['referredByPartyId'],
        applicationDate: map['applicationDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static EmploymentAppSourceType extractEmploymentAppSourceType(dynamic json) {
    return EmploymentAppSourceType(
        entityId: create_id_from('EmploymentAppSourceType', ['employmentAppSourceTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        employmentAppSourceTypeId: json['employmentAppSourceTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmploymentAppSourceType overridesEmploymentAppSourceType(Map<String, dynamic> map) {
    return EmploymentAppSourceType(
        entityId: create_id_from('EmploymentAppSourceType', ['employmentAppSourceTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        employmentAppSourceTypeId: map['employmentAppSourceTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyBenefit extractPartyBenefit(dynamic json) {
    return PartyBenefit(
        entityId: create_id_from('PartyBenefit', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'benefitTypeId', 'fromDate'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        cost: json['cost'] as double,
        actualEmployerPaidPercent: json['actualEmployerPaidPercent'] as double,
        benefitTypeId: json['benefitTypeId'] as String,
        periodTypeId: json['periodTypeId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        availableTime: json['availableTime'] as int,
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyBenefit overridesPartyBenefit(Map<String, dynamic> map) {
    return PartyBenefit(
        entityId: create_id_from('PartyBenefit', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'benefitTypeId', 'fromDate'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        cost: map['cost'],
        actualEmployerPaidPercent: map['actualEmployerPaidPercent'],
        benefitTypeId: map['benefitTypeId'],
        periodTypeId: map['periodTypeId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        availableTime: map['availableTime'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PayGrade extractPayGrade(dynamic json) {
    return PayGrade(
        entityId: create_id_from('PayGrade', ['payGradeId'], json),
        comments: json['comments'] as String,
        payGradeName: json['payGradeName'] as String,
        payGradeId: json['payGradeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PayGrade overridesPayGrade(Map<String, dynamic> map) {
    return PayGrade(
        entityId: create_id_from('PayGrade', ['payGradeId'], map),
        comments: map['comments'],
        payGradeName: map['payGradeName'],
        payGradeId: map['payGradeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PayHistory extractPayHistory(dynamic json) {
    return PayHistory(
        entityId: create_id_from('PayHistory', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'fromDate'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        amount: json['amount'] as double,
        comments: json['comments'] as String,
        salaryStepSeqId: json['salaryStepSeqId'] as String,
        periodTypeId: json['periodTypeId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        payGradeId: json['payGradeId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyIdTo: json['partyIdTo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PayHistory overridesPayHistory(Map<String, dynamic> map) {
    return PayHistory(
        entityId: create_id_from('PayHistory', ['roleTypeIdFrom', 'roleTypeIdTo', 'partyIdFrom', 'partyIdTo', 'fromDate'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        amount: map['amount'],
        comments: map['comments'],
        salaryStepSeqId: map['salaryStepSeqId'],
        periodTypeId: map['periodTypeId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        payGradeId: map['payGradeId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyIdTo: map['partyIdTo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PayrollPreference extractPayrollPreference(dynamic json) {
    return PayrollPreference(
        entityId: create_id_from('PayrollPreference', ['partyId', 'roleTypeId', 'payrollPreferenceSeqId'], json),
        roleTypeId: json['roleTypeId'] as String,
        periodTypeId: json['periodTypeId'] as String,
        bankName: json['bankName'] as String,
        paymentMethodTypeId: json['paymentMethodTypeId'] as String,
        accountNumber: json['accountNumber'] as String,
        thruDate: check_dt(json['thruDate']),
        payrollPreferenceSeqId: json['payrollPreferenceSeqId'] as String,
        fromDate: check_dt(json['fromDate']),
        routingNumber: json['routingNumber'] as String,
        flatAmount: json['flatAmount'] as double,
        percentage: json['percentage'] as double,
        deductionTypeId: json['deductionTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PayrollPreference overridesPayrollPreference(Map<String, dynamic> map) {
    return PayrollPreference(
        entityId: create_id_from('PayrollPreference', ['partyId', 'roleTypeId', 'payrollPreferenceSeqId'], map),
        roleTypeId: map['roleTypeId'],
        periodTypeId: map['periodTypeId'],
        bankName: map['bankName'],
        paymentMethodTypeId: map['paymentMethodTypeId'],
        accountNumber: map['accountNumber'],
        thruDate: map['thruDate'],
        payrollPreferenceSeqId: map['payrollPreferenceSeqId'],
        fromDate: map['fromDate'],
        routingNumber: map['routingNumber'],
        flatAmount: map['flatAmount'],
        percentage: map['percentage'],
        deductionTypeId: map['deductionTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SalaryStep extractSalaryStep(dynamic json) {
    return SalaryStep(
        entityId: create_id_from('SalaryStep', ['salaryStepSeqId', 'payGradeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        amount: json['amount'] as double,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        salaryStepSeqId: json['salaryStepSeqId'] as String,
        dateModified: check_dt(json['dateModified']),
        payGradeId: json['payGradeId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SalaryStep overridesSalaryStep(Map<String, dynamic> map) {
    return SalaryStep(
        entityId: create_id_from('SalaryStep', ['salaryStepSeqId', 'payGradeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        amount: map['amount'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        salaryStepSeqId: map['salaryStepSeqId'],
        dateModified: map['dateModified'],
        payGradeId: map['payGradeId'],
        createdByUserLogin: map['createdByUserLogin'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TerminationReason extractTerminationReason(dynamic json) {
    return TerminationReason(
        entityId: create_id_from('TerminationReason', ['terminationReasonId'], json),
        terminationReasonId: json['terminationReasonId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TerminationReason overridesTerminationReason(Map<String, dynamic> map) {
    return TerminationReason(
        entityId: create_id_from('TerminationReason', ['terminationReasonId'], map),
        terminationReasonId: map['terminationReasonId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TerminationType extractTerminationType(dynamic json) {
    return TerminationType(
        entityId: create_id_from('TerminationType', ['terminationTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        terminationTypeId: json['terminationTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TerminationType overridesTerminationType(Map<String, dynamic> map) {
    return TerminationType(
        entityId: create_id_from('TerminationType', ['terminationTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        terminationTypeId: map['terminationTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static UnemploymentClaim extractUnemploymentClaim(dynamic json) {
    return UnemploymentClaim(
        entityId: create_id_from('UnemploymentClaim', ['unemploymentClaimId'], json),
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        partyIdFrom: json['partyIdFrom'] as String,
        description: json['description'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        unemploymentClaimId: json['unemploymentClaimId'] as String,
        statusId: json['statusId'] as String,
        partyIdTo: json['partyIdTo'] as String,
        unemploymentClaimDate: check_dt(json['unemploymentClaimDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static UnemploymentClaim overridesUnemploymentClaim(Map<String, dynamic> map) {
    return UnemploymentClaim(
        entityId: create_id_from('UnemploymentClaim', ['unemploymentClaimId'], map),
        roleTypeIdTo: map['roleTypeIdTo'],
        partyIdFrom: map['partyIdFrom'],
        description: map['description'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        unemploymentClaimId: map['unemploymentClaimId'],
        statusId: map['statusId'],
        partyIdTo: map['partyIdTo'],
        unemploymentClaimDate: map['unemploymentClaimDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}