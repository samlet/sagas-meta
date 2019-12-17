import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity PartyQual, Party Qualification
class PartyQual extends EntityBase {

  final String qualificationDesc;
  final DateTime fromDate; // pk
  final String statusId;
  final String verifStatusId;
  final String partyQualTypeId; // pk
  final String partyId; // pk
  final String title;
  final DateTime thruDate;
  PartyQual({entityId,
    this.qualificationDesc, @required this.fromDate, this.statusId, this.verifStatusId, @required this.partyQualTypeId, @required this.partyId, this.title, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyQual { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'qualificationDesc':qualificationDesc, 'fromDate':fromDate, 'statusId':statusId, 'verifStatusId':verifStatusId, 'partyQualTypeId':partyQualTypeId, 'partyId':partyId, 'title':title, 'thruDate':thruDate};
  }

}

/// Entity PartyQualType, Party Qualification Type
class PartyQualType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String partyQualTypeId; // pk
  final String description;
  PartyQualType({entityId,
    this.parentTypeId, this.hasTable, @required this.partyQualTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyQualType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'partyQualTypeId':partyQualTypeId, 'description':description};
  }

}

/// Entity PartyResume, Resume
class PartyResume extends EntityBase {

  /// this entity has only one pk
  final String resumeText;
  final String resumeId; // pk
  final String contentId;
  final String partyId;
  final DateTime resumeDate;
  PartyResume({entityId,
    this.resumeText, @required this.resumeId, this.contentId, this.partyId, this.resumeDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartyResume { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'resumeText':resumeText, 'resumeId':resumeId, 'contentId':contentId, 'partyId':partyId, 'resumeDate':resumeDate};
  }

}

/// Entity PartySkill, Party Skill
class PartySkill extends EntityBase {

  final String skillTypeId; // pk
  final int rating;
  final int yearsExperience;
  final String partyId; // pk
  final DateTime startedUsingDate;
  final int skillLevel;
  PartySkill({entityId,
    @required this.skillTypeId, this.rating, this.yearsExperience, @required this.partyId, this.startedUsingDate, this.skillLevel,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PartySkill { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'skillTypeId':skillTypeId, 'rating':rating, 'yearsExperience':yearsExperience, 'partyId':partyId, 'startedUsingDate':startedUsingDate, 'skillLevel':skillLevel};
  }

}

/// Entity PerfRatingType, Performance Rating Type
class PerfRatingType extends EntityBase {

  /// this entity has only one pk
  final String perfRatingTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  PerfRatingType({entityId,
    @required this.perfRatingTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PerfRatingType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'perfRatingTypeId':perfRatingTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PerfReview, Employee Performance Review
class PerfReview extends EntityBase {

  final String employeePartyId; // pk
  final String comments;
  final String perfReviewId; // pk
  final String emplPositionId;
  final String managerPartyId;
  final DateTime thruDate;
  final DateTime fromDate;
  final String employeeRoleTypeId; // pk
  final String managerRoleTypeId;
  final String paymentId;
  PerfReview({entityId,
    @required this.employeePartyId, this.comments, @required this.perfReviewId, this.emplPositionId, this.managerPartyId, this.thruDate, this.fromDate, @required this.employeeRoleTypeId, this.managerRoleTypeId, this.paymentId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PerfReview { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'employeePartyId':employeePartyId, 'comments':comments, 'perfReviewId':perfReviewId, 'emplPositionId':emplPositionId, 'managerPartyId':managerPartyId, 'thruDate':thruDate, 'fromDate':fromDate, 'employeeRoleTypeId':employeeRoleTypeId, 'managerRoleTypeId':managerRoleTypeId, 'paymentId':paymentId};
  }

}

/// Entity PerfReviewItem, Performance Review Item
class PerfReviewItem extends EntityBase {

  final String perfReviewItemTypeId;
  final String employeeRoleTypeId; // pk
  final String perfReviewItemSeqId; // pk
  final String perfRatingTypeId;
  final String employeePartyId; // pk
  final String comments;
  final String perfReviewId; // pk
  PerfReviewItem({entityId,
    this.perfReviewItemTypeId, @required this.employeeRoleTypeId, @required this.perfReviewItemSeqId, this.perfRatingTypeId, @required this.employeePartyId, this.comments, @required this.perfReviewId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PerfReviewItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'perfReviewItemTypeId':perfReviewItemTypeId, 'employeeRoleTypeId':employeeRoleTypeId, 'perfReviewItemSeqId':perfReviewItemSeqId, 'perfRatingTypeId':perfRatingTypeId, 'employeePartyId':employeePartyId, 'comments':comments, 'perfReviewId':perfReviewId};
  }

}

/// Entity PerfReviewItemType, Performance Review Item Type
class PerfReviewItemType extends EntityBase {

  /// this entity has only one pk
  final String perfReviewItemTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  PerfReviewItemType({entityId,
    @required this.perfReviewItemTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PerfReviewItemType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'perfReviewItemTypeId':perfReviewItemTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity PerformanceNote, Performance Note
class PerformanceNote extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String comments;
  final DateTime communicationDate;
  final String partyId; // pk
  final DateTime thruDate;
  PerformanceNote({entityId,
    @required this.fromDate, @required this.roleTypeId, this.comments, this.communicationDate, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PerformanceNote { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'comments':comments, 'communicationDate':communicationDate, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity PersonTraining, Person Training
class PersonTraining extends EntityBase {

  final String workEffortId;
  final String approvalStatus;
  final String reason;
  final String trainingRequestId;
  final String approverId;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String partyId; // pk
  final String trainingClassTypeId; // pk
  PersonTraining({entityId,
    this.workEffortId, this.approvalStatus, this.reason, this.trainingRequestId, this.approverId, this.thruDate, @required this.fromDate, @required this.partyId, @required this.trainingClassTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'PersonTraining { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'workEffortId':workEffortId, 'approvalStatus':approvalStatus, 'reason':reason, 'trainingRequestId':trainingRequestId, 'approverId':approverId, 'thruDate':thruDate, 'fromDate':fromDate, 'partyId':partyId, 'trainingClassTypeId':trainingClassTypeId};
  }

}

/// Entity ResponsibilityType, Responsibility Type
class ResponsibilityType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String responsibilityTypeId; // pk
  final String description;
  ResponsibilityType({entityId,
    this.parentTypeId, this.hasTable, @required this.responsibilityTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ResponsibilityType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'responsibilityTypeId':responsibilityTypeId, 'description':description};
  }

}

/// Entity SkillType, Skill Type
class SkillType extends EntityBase {

  /// this entity has only one pk
  final String skillTypeId; // pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  SkillType({entityId,
    @required this.skillTypeId, this.parentTypeId, this.hasTable, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SkillType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'skillTypeId':skillTypeId, 'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description};
  }

}

/// Entity TrainingClassType, Training Class Type
class TrainingClassType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String trainingClassTypeId; // pk
  TrainingClassType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.trainingClassTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrainingClassType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'trainingClassTypeId':trainingClassTypeId};
  }

}