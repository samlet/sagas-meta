import 'package:sagas_meta/src/models/humanres_ability.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class HumanresAbilityJsonifier{
  static PartyQual extractPartyQual(dynamic json) {
    return PartyQual(
        entityId: create_id_from('PartyQual', ['partyId', 'partyQualTypeId', 'fromDate'], json),
        qualificationDesc: json['qualificationDesc'] as String,
        fromDate: check_dt(json['fromDate']),
        statusId: json['statusId'] as String,
        verifStatusId: json['verifStatusId'] as String,
        partyQualTypeId: json['partyQualTypeId'] as String,
        partyId: json['partyId'] as String,
        title: json['title'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyQual overridesPartyQual(Map<String, dynamic> map) {
    return PartyQual(
        entityId: create_id_from('PartyQual', ['partyId', 'partyQualTypeId', 'fromDate'], map),
        qualificationDesc: map['qualificationDesc'],
        fromDate: map['fromDate'],
        statusId: map['statusId'],
        verifStatusId: map['verifStatusId'],
        partyQualTypeId: map['partyQualTypeId'],
        partyId: map['partyId'],
        title: map['title'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyQualType extractPartyQualType(dynamic json) {
    return PartyQualType(
        entityId: create_id_from('PartyQualType', ['partyQualTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        partyQualTypeId: json['partyQualTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyQualType overridesPartyQualType(Map<String, dynamic> map) {
    return PartyQualType(
        entityId: create_id_from('PartyQualType', ['partyQualTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        partyQualTypeId: map['partyQualTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartyResume extractPartyResume(dynamic json) {
    return PartyResume(
        entityId: create_id_from('PartyResume', ['resumeId'], json),
        resumeText: json['resumeText'] as String,
        resumeId: json['resumeId'] as String,
        contentId: json['contentId'] as String,
        partyId: json['partyId'] as String,
        resumeDate: check_dt(json['resumeDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartyResume overridesPartyResume(Map<String, dynamic> map) {
    return PartyResume(
        entityId: create_id_from('PartyResume', ['resumeId'], map),
        resumeText: map['resumeText'],
        resumeId: map['resumeId'],
        contentId: map['contentId'],
        partyId: map['partyId'],
        resumeDate: map['resumeDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PartySkill extractPartySkill(dynamic json) {
    return PartySkill(
        entityId: create_id_from('PartySkill', ['partyId', 'skillTypeId'], json),
        skillTypeId: json['skillTypeId'] as String,
        rating: json['rating'] as int,
        yearsExperience: json['yearsExperience'] as int,
        partyId: json['partyId'] as String,
        startedUsingDate: check_dt(json['startedUsingDate']),
        skillLevel: json['skillLevel'] as int,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PartySkill overridesPartySkill(Map<String, dynamic> map) {
    return PartySkill(
        entityId: create_id_from('PartySkill', ['partyId', 'skillTypeId'], map),
        skillTypeId: map['skillTypeId'],
        rating: map['rating'],
        yearsExperience: map['yearsExperience'],
        partyId: map['partyId'],
        startedUsingDate: map['startedUsingDate'],
        skillLevel: map['skillLevel'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PerfRatingType extractPerfRatingType(dynamic json) {
    return PerfRatingType(
        entityId: create_id_from('PerfRatingType', ['perfRatingTypeId'], json),
        perfRatingTypeId: json['perfRatingTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PerfRatingType overridesPerfRatingType(Map<String, dynamic> map) {
    return PerfRatingType(
        entityId: create_id_from('PerfRatingType', ['perfRatingTypeId'], map),
        perfRatingTypeId: map['perfRatingTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PerfReview extractPerfReview(dynamic json) {
    return PerfReview(
        entityId: create_id_from('PerfReview', ['employeePartyId', 'employeeRoleTypeId', 'perfReviewId'], json),
        employeePartyId: json['employeePartyId'] as String,
        comments: json['comments'] as String,
        perfReviewId: json['perfReviewId'] as String,
        emplPositionId: json['emplPositionId'] as String,
        managerPartyId: json['managerPartyId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        employeeRoleTypeId: json['employeeRoleTypeId'] as String,
        managerRoleTypeId: json['managerRoleTypeId'] as String,
        paymentId: json['paymentId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PerfReview overridesPerfReview(Map<String, dynamic> map) {
    return PerfReview(
        entityId: create_id_from('PerfReview', ['employeePartyId', 'employeeRoleTypeId', 'perfReviewId'], map),
        employeePartyId: map['employeePartyId'],
        comments: map['comments'],
        perfReviewId: map['perfReviewId'],
        emplPositionId: map['emplPositionId'],
        managerPartyId: map['managerPartyId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        employeeRoleTypeId: map['employeeRoleTypeId'],
        managerRoleTypeId: map['managerRoleTypeId'],
        paymentId: map['paymentId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PerfReviewItem extractPerfReviewItem(dynamic json) {
    return PerfReviewItem(
        entityId: create_id_from('PerfReviewItem', ['employeePartyId', 'employeeRoleTypeId', 'perfReviewId', 'perfReviewItemSeqId'], json),
        perfReviewItemTypeId: json['perfReviewItemTypeId'] as String,
        employeeRoleTypeId: json['employeeRoleTypeId'] as String,
        perfReviewItemSeqId: json['perfReviewItemSeqId'] as String,
        perfRatingTypeId: json['perfRatingTypeId'] as String,
        employeePartyId: json['employeePartyId'] as String,
        comments: json['comments'] as String,
        perfReviewId: json['perfReviewId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PerfReviewItem overridesPerfReviewItem(Map<String, dynamic> map) {
    return PerfReviewItem(
        entityId: create_id_from('PerfReviewItem', ['employeePartyId', 'employeeRoleTypeId', 'perfReviewId', 'perfReviewItemSeqId'], map),
        perfReviewItemTypeId: map['perfReviewItemTypeId'],
        employeeRoleTypeId: map['employeeRoleTypeId'],
        perfReviewItemSeqId: map['perfReviewItemSeqId'],
        perfRatingTypeId: map['perfRatingTypeId'],
        employeePartyId: map['employeePartyId'],
        comments: map['comments'],
        perfReviewId: map['perfReviewId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PerfReviewItemType extractPerfReviewItemType(dynamic json) {
    return PerfReviewItemType(
        entityId: create_id_from('PerfReviewItemType', ['perfReviewItemTypeId'], json),
        perfReviewItemTypeId: json['perfReviewItemTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PerfReviewItemType overridesPerfReviewItemType(Map<String, dynamic> map) {
    return PerfReviewItemType(
        entityId: create_id_from('PerfReviewItemType', ['perfReviewItemTypeId'], map),
        perfReviewItemTypeId: map['perfReviewItemTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PerformanceNote extractPerformanceNote(dynamic json) {
    return PerformanceNote(
        entityId: create_id_from('PerformanceNote', ['partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        comments: json['comments'] as String,
        communicationDate: check_dt(json['communicationDate']),
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PerformanceNote overridesPerformanceNote(Map<String, dynamic> map) {
    return PerformanceNote(
        entityId: create_id_from('PerformanceNote', ['partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        comments: map['comments'],
        communicationDate: map['communicationDate'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static PersonTraining extractPersonTraining(dynamic json) {
    return PersonTraining(
        entityId: create_id_from('PersonTraining', ['partyId', 'trainingClassTypeId', 'fromDate'], json),
        workEffortId: json['workEffortId'] as String,
        approvalStatus: json['approvalStatus'] as String,
        reason: json['reason'] as String,
        trainingRequestId: json['trainingRequestId'] as String,
        approverId: json['approverId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        partyId: json['partyId'] as String,
        trainingClassTypeId: json['trainingClassTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static PersonTraining overridesPersonTraining(Map<String, dynamic> map) {
    return PersonTraining(
        entityId: create_id_from('PersonTraining', ['partyId', 'trainingClassTypeId', 'fromDate'], map),
        workEffortId: map['workEffortId'],
        approvalStatus: map['approvalStatus'],
        reason: map['reason'],
        trainingRequestId: map['trainingRequestId'],
        approverId: map['approverId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        partyId: map['partyId'],
        trainingClassTypeId: map['trainingClassTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ResponsibilityType extractResponsibilityType(dynamic json) {
    return ResponsibilityType(
        entityId: create_id_from('ResponsibilityType', ['responsibilityTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        responsibilityTypeId: json['responsibilityTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ResponsibilityType overridesResponsibilityType(Map<String, dynamic> map) {
    return ResponsibilityType(
        entityId: create_id_from('ResponsibilityType', ['responsibilityTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        responsibilityTypeId: map['responsibilityTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static SkillType extractSkillType(dynamic json) {
    return SkillType(
        entityId: create_id_from('SkillType', ['skillTypeId'], json),
        skillTypeId: json['skillTypeId'] as String,
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static SkillType overridesSkillType(Map<String, dynamic> map) {
    return SkillType(
        entityId: create_id_from('SkillType', ['skillTypeId'], map),
        skillTypeId: map['skillTypeId'],
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TrainingClassType extractTrainingClassType(dynamic json) {
    return TrainingClassType(
        entityId: create_id_from('TrainingClassType', ['trainingClassTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        trainingClassTypeId: json['trainingClassTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrainingClassType overridesTrainingClassType(Map<String, dynamic> map) {
    return TrainingClassType(
        entityId: create_id_from('TrainingClassType', ['trainingClassTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        trainingClassTypeId: map['trainingClassTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}