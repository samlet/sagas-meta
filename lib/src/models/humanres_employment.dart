import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity BenefitType, Benefit Type
class BenefitType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final double employerPaidPercentage;
  final String hasTable;
  final String benefitName;
  final String benefitTypeId; // pk
  final String description;
  BenefitType({entityId,
    this.parentTypeId, this.employerPaidPercentage, this.hasTable, this.benefitName, @required this.benefitTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BenefitType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'employerPaidPercentage':employerPaidPercentage, 'hasTable':hasTable, 'benefitName':benefitName, 'benefitTypeId':benefitTypeId, 'description':description};
  }

}

/// Entity BenefitTypeAndParty, Benefit Type
class BenefitTypeAndParty extends EntityBase {

  final String roleTypeIdTo; // pk
  final String partyIdFrom; // pk
  final String parentTypeId;
  final double cost;
  final double employerPaidPercentage;
  final double actualEmployerPaidPercent;
  final String benefitTypeId; // pk
  final String periodTypeId;
  final String description;
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final int availableTime;
  final String hasTable;
  final String benefitName;
  final String partyIdTo; // pk
  BenefitTypeAndParty({entityId,
    @required this.roleTypeIdTo, @required this.partyIdFrom, this.parentTypeId, this.cost, this.employerPaidPercentage, this.actualEmployerPaidPercent, @required this.benefitTypeId, this.periodTypeId, this.description, @required this.roleTypeIdFrom, this.thruDate, @required this.fromDate, this.availableTime, this.hasTable, this.benefitName, @required this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'BenefitTypeAndParty { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'parentTypeId':parentTypeId, 'cost':cost, 'employerPaidPercentage':employerPaidPercentage, 'actualEmployerPaidPercent':actualEmployerPaidPercent, 'benefitTypeId':benefitTypeId, 'periodTypeId':periodTypeId, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'availableTime':availableTime, 'hasTable':hasTable, 'benefitName':benefitName, 'partyIdTo':partyIdTo};
  }

}

/// Entity EmplLeave, Employee Leave
class EmplLeave extends EntityBase {

  final DateTime fromDate; // pk
  final String approverPartyId;
  final String emplLeaveReasonTypeId;
  final String description;
  final String leaveTypeId; // pk
  final String partyId; // pk
  final String leaveStatus;
  final DateTime thruDate;
  EmplLeave({entityId,
    @required this.fromDate, this.approverPartyId, this.emplLeaveReasonTypeId, this.description, @required this.leaveTypeId, @required this.partyId, this.leaveStatus, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplLeave { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'approverPartyId':approverPartyId, 'emplLeaveReasonTypeId':emplLeaveReasonTypeId, 'description':description, 'leaveTypeId':leaveTypeId, 'partyId':partyId, 'leaveStatus':leaveStatus, 'thruDate':thruDate};
  }

}

/// Entity EmplLeaveReasonType, Leave Reason Type
class EmplLeaveReasonType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String emplLeaveReasonTypeId; // pk
  final String hasTable;
  final String description;
  EmplLeaveReasonType({entityId,
    this.parentTypeId, @required this.emplLeaveReasonTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplLeaveReasonType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'emplLeaveReasonTypeId':emplLeaveReasonTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity EmplLeaveType, Employee Leave Type
class EmplLeaveType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String leaveTypeId; // pk
  EmplLeaveType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.leaveTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmplLeaveType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'leaveTypeId':leaveTypeId};
  }

}

/// Entity Employment, Employment
class Employment extends EntityBase {

  final String roleTypeIdTo; // pk
  final DateTime fromDate; // pk
  final String partyIdFrom; // pk
  final String terminationReasonId;
  final String terminationTypeId;
  final String partyIdTo; // pk
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  Employment({entityId,
    @required this.roleTypeIdTo, @required this.fromDate, @required this.partyIdFrom, this.terminationReasonId, this.terminationTypeId, @required this.partyIdTo, @required this.roleTypeIdFrom, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Employment { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'fromDate':fromDate, 'partyIdFrom':partyIdFrom, 'terminationReasonId':terminationReasonId, 'terminationTypeId':terminationTypeId, 'partyIdTo':partyIdTo, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate};
  }

}

/// Entity EmploymentAndPerson, Employment and Person
class EmploymentAndPerson extends EntityBase {

  final int yearsWithEmployer;
  final String partyIdFrom; // pk
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
  final String terminationTypeId;
  final String nickname;
  final String partyId; // pk
  final String memberId;
  final double height;
  final String roleTypeIdTo; // pk
  final String passportNumber;
  final String lastNameLocal;
  final String comments;
  final int monthsWithEmployer;
  final String terminationReasonId;
  final double weight;
  final String roleTypeIdFrom; // pk
  final DateTime birthDate;
  final String otherLocal;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String firstName;
  final String cardId;
  final String partyIdTo; // pk
  final String middleName;
  final String firstNameLocal;
  final DateTime passportExpireDate;
  final String salutation;
  final String personalTitle;
  final DateTime deceasedDate;
  final double totalYearsWorkExperience;
  final String maritalStatus;
  EmploymentAndPerson({entityId,
    this.yearsWithEmployer, @required this.partyIdFrom, this.lastName, this.occupation, this.gender, this.employmentStatusEnumId, this.socialSecurityNumber, this.suffix, this.mothersMaidenName, this.middleNameLocal, this.existingCustomer, this.residenceStatusEnumId, this.terminationTypeId, this.nickname, @required this.partyId, this.memberId, this.height, @required this.roleTypeIdTo, this.passportNumber, this.lastNameLocal, this.comments, this.monthsWithEmployer, this.terminationReasonId, this.weight, @required this.roleTypeIdFrom, this.birthDate, this.otherLocal, this.thruDate, @required this.fromDate, this.firstName, this.cardId, @required this.partyIdTo, this.middleName, this.firstNameLocal, this.passportExpireDate, this.salutation, this.personalTitle, this.deceasedDate, this.totalYearsWorkExperience, this.maritalStatus,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmploymentAndPerson { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'yearsWithEmployer':yearsWithEmployer, 'partyIdFrom':partyIdFrom, 'lastName':lastName, 'occupation':occupation, 'gender':gender, 'employmentStatusEnumId':employmentStatusEnumId, 'socialSecurityNumber':socialSecurityNumber, 'suffix':suffix, 'mothersMaidenName':mothersMaidenName, 'middleNameLocal':middleNameLocal, 'existingCustomer':existingCustomer, 'residenceStatusEnumId':residenceStatusEnumId, 'terminationTypeId':terminationTypeId, 'nickname':nickname, 'partyId':partyId, 'memberId':memberId, 'height':height, 'roleTypeIdTo':roleTypeIdTo, 'passportNumber':passportNumber, 'lastNameLocal':lastNameLocal, 'comments':comments, 'monthsWithEmployer':monthsWithEmployer, 'terminationReasonId':terminationReasonId, 'weight':weight, 'roleTypeIdFrom':roleTypeIdFrom, 'birthDate':birthDate, 'otherLocal':otherLocal, 'thruDate':thruDate, 'fromDate':fromDate, 'firstName':firstName, 'cardId':cardId, 'partyIdTo':partyIdTo, 'middleName':middleName, 'firstNameLocal':firstNameLocal, 'passportExpireDate':passportExpireDate, 'salutation':salutation, 'personalTitle':personalTitle, 'deceasedDate':deceasedDate, 'totalYearsWorkExperience':totalYearsWorkExperience, 'maritalStatus':maritalStatus};
  }

}

/// Entity EmploymentApp, Employment Application
class EmploymentApp extends EntityBase {

  /// this entity has only one pk
  final String approverPartyId;
  final String emplPositionId;
  final String jobRequisitionId;
  final String applyingPartyId;
  final String statusId;
  final String employmentAppSourceTypeId;
  final String applicationId; // pk
  final String referredByPartyId;
  final DateTime applicationDate;
  EmploymentApp({entityId,
    this.approverPartyId, this.emplPositionId, this.jobRequisitionId, this.applyingPartyId, this.statusId, this.employmentAppSourceTypeId, @required this.applicationId, this.referredByPartyId, this.applicationDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmploymentApp { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'approverPartyId':approverPartyId, 'emplPositionId':emplPositionId, 'jobRequisitionId':jobRequisitionId, 'applyingPartyId':applyingPartyId, 'statusId':statusId, 'employmentAppSourceTypeId':employmentAppSourceTypeId, 'applicationId':applicationId, 'referredByPartyId':referredByPartyId, 'applicationDate':applicationDate};
  }

}

/// Entity EmploymentAppSourceType, Employment Application Source Type
class EmploymentAppSourceType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String employmentAppSourceTypeId; // pk
  final String description;
  EmploymentAppSourceType({entityId,
    this.parentTypeId, this.hasTable, @required this.employmentAppSourceTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmploymentAppSourceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'employmentAppSourceTypeId':employmentAppSourceTypeId, 'description':description};
  }

}

/// Entity PartyBenefit, Party Benefit
class PartyBenefit extends EntityBase {

  final String roleTypeIdTo; // pk
  final String partyIdFrom; // pk
  final double cost;
  final double actualEmployerPaidPercent;
  final String benefitTypeId; // pk
  final String periodTypeId;
  final String roleTypeIdFrom; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final int availableTime;
  final String partyIdTo; // pk
  PartyBenefit({entityId,
    @required this.roleTypeIdTo, @required this.partyIdFrom, this.cost, this.actualEmployerPaidPercent, @required this.benefitTypeId, this.periodTypeId, @required this.roleTypeIdFrom, this.thruDate, @required this.fromDate, this.availableTime, @required this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyBenefit { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'cost':cost, 'actualEmployerPaidPercent':actualEmployerPaidPercent, 'benefitTypeId':benefitTypeId, 'periodTypeId':periodTypeId, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'availableTime':availableTime, 'partyIdTo':partyIdTo};
  }

}

/// Entity PayGrade, Pay Grade
class PayGrade extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String payGradeName;
  final String payGradeId; // pk
  PayGrade({entityId,
    this.comments, this.payGradeName, @required this.payGradeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PayGrade { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'payGradeName':payGradeName, 'payGradeId':payGradeId};
  }

}

/// Entity PayHistory, Pay History
class PayHistory extends EntityBase {

  final String roleTypeIdTo; // pk
  final String partyIdFrom; // pk
  final double amount;
  final String comments;
  final String salaryStepSeqId;
  final String periodTypeId;
  final String roleTypeIdFrom; // pk
  final String payGradeId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyIdTo; // pk
  PayHistory({entityId,
    @required this.roleTypeIdTo, @required this.partyIdFrom, this.amount, this.comments, this.salaryStepSeqId, this.periodTypeId, @required this.roleTypeIdFrom, this.payGradeId, this.thruDate, @required this.fromDate, @required this.partyIdTo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PayHistory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'amount':amount, 'comments':comments, 'salaryStepSeqId':salaryStepSeqId, 'periodTypeId':periodTypeId, 'roleTypeIdFrom':roleTypeIdFrom, 'payGradeId':payGradeId, 'thruDate':thruDate, 'fromDate':fromDate, 'partyIdTo':partyIdTo};
  }

}

/// Entity PayrollPreference, Payroll Preference
class PayrollPreference extends EntityBase {

  final String roleTypeId; // pk
  final String periodTypeId;
  final String bankName;
  final String paymentMethodTypeId;
  final String accountNumber;
  final DateTime thruDate;
  final String payrollPreferenceSeqId; // pk
  final DateTime fromDate;
  final String routingNumber;
  final double flatAmount;
  final double percentage;
  final String deductionTypeId;
  final String partyId; // pk
  PayrollPreference({entityId,
    @required this.roleTypeId, this.periodTypeId, this.bankName, this.paymentMethodTypeId, this.accountNumber, this.thruDate, @required this.payrollPreferenceSeqId, this.fromDate, this.routingNumber, this.flatAmount, this.percentage, this.deductionTypeId, @required this.partyId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PayrollPreference { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeId':roleTypeId, 'periodTypeId':periodTypeId, 'bankName':bankName, 'paymentMethodTypeId':paymentMethodTypeId, 'accountNumber':accountNumber, 'thruDate':thruDate, 'payrollPreferenceSeqId':payrollPreferenceSeqId, 'fromDate':fromDate, 'routingNumber':routingNumber, 'flatAmount':flatAmount, 'percentage':percentage, 'deductionTypeId':deductionTypeId, 'partyId':partyId};
  }

}

/// Entity SalaryStep, Salary Step
class SalaryStep extends EntityBase {

  final DateTime fromDate; // pk
  final double amount;
  final String lastModifiedByUserLogin;
  final String salaryStepSeqId; // pk
  final DateTime dateModified;
  final String payGradeId; // pk
  final String createdByUserLogin;
  final DateTime thruDate;
  SalaryStep({entityId,
    @required this.fromDate, this.amount, this.lastModifiedByUserLogin, @required this.salaryStepSeqId, this.dateModified, @required this.payGradeId, this.createdByUserLogin, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SalaryStep { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'amount':amount, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'salaryStepSeqId':salaryStepSeqId, 'dateModified':dateModified, 'payGradeId':payGradeId, 'createdByUserLogin':createdByUserLogin, 'thruDate':thruDate};
  }

}

/// Entity TerminationReason, Termination Reason
class TerminationReason extends EntityBase {

  /// this entity has only one pk
  final String terminationReasonId; // pk
  final String description;
  TerminationReason({entityId,
    @required this.terminationReasonId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TerminationReason { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'terminationReasonId':terminationReasonId, 'description':description};
  }

}

/// Entity TerminationType, Termination Type
class TerminationType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String terminationTypeId; // pk
  final String description;
  TerminationType({entityId,
    this.parentTypeId, this.hasTable, @required this.terminationTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TerminationType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'terminationTypeId':terminationTypeId, 'description':description};
  }

}

/// Entity UnemploymentClaim, Unemployment Claim
class UnemploymentClaim extends EntityBase {

  /// this entity has only one pk
  final String roleTypeIdTo;
  final String partyIdFrom;
  final String description;
  final String roleTypeIdFrom;
  final DateTime thruDate;
  final DateTime fromDate;
  final String unemploymentClaimId; // pk
  final String statusId;
  final String partyIdTo;
  final DateTime unemploymentClaimDate;
  UnemploymentClaim({entityId,
    this.roleTypeIdTo, this.partyIdFrom, this.description, this.roleTypeIdFrom, this.thruDate, this.fromDate, @required this.unemploymentClaimId, this.statusId, this.partyIdTo, this.unemploymentClaimDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'UnemploymentClaim { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'roleTypeIdTo':roleTypeIdTo, 'partyIdFrom':partyIdFrom, 'description':description, 'roleTypeIdFrom':roleTypeIdFrom, 'thruDate':thruDate, 'fromDate':fromDate, 'unemploymentClaimId':unemploymentClaimId, 'statusId':statusId, 'partyIdTo':partyIdTo, 'unemploymentClaimDate':unemploymentClaimDate};
  }

}