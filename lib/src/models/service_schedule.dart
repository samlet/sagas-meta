import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity JobManagerLock, Lock Job Manager Scheduler
class JobManagerLock extends EntityBase {

  final String comments;
  final DateTime lastModifiedDate;
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String lastModifiedByUserLogin;
  final String instanceId; // pk
  final DateTime createdDate;
  final String reasonEnumId;
  final String createdByUserLogin;
  JobManagerLock({entityId,
    this.comments, this.lastModifiedDate, this.thruDate, @required this.fromDate, this.lastModifiedByUserLogin, @required this.instanceId, this.createdDate, this.reasonEnumId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JobManagerLock { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'lastModifiedDate':lastModifiedDate, 'thruDate':thruDate, 'fromDate':fromDate, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'instanceId':instanceId, 'createdDate':createdDate, 'reasonEnumId':reasonEnumId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity JobSandbox, Job Scheduler Sandbox
class JobSandbox extends EntityBase {

  /// this entity has only one pk
  final String recurrenceInfoId;
  final String tempExprId;
  final DateTime cancelDateTime;
  final String authUserLoginId;
  final int currentRetryCount;
  final String loaderName;
  final DateTime runTime;
  final String jobName;
  final String runByInstanceId;
  final int maxRecurrenceCount;
  final int currentRecurrenceCount;
  final String serviceName;
  final String runtimeDataId;
  final String runAsUser;
  final DateTime finishDateTime;
  final String jobId; // pk
  final int maxRetry;
  final DateTime startDateTime;
  final String statusId;
  final String previousJobId;
  final String parentJobId;
  final String jobResult;
  final String poolId;
  JobSandbox({entityId,
    this.recurrenceInfoId, this.tempExprId, this.cancelDateTime, this.authUserLoginId, this.currentRetryCount, this.loaderName, this.runTime, this.jobName, this.runByInstanceId, this.maxRecurrenceCount, this.currentRecurrenceCount, this.serviceName, this.runtimeDataId, this.runAsUser, this.finishDateTime, @required this.jobId, this.maxRetry, this.startDateTime, this.statusId, this.previousJobId, this.parentJobId, this.jobResult, this.poolId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'JobSandbox { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'recurrenceInfoId':recurrenceInfoId, 'tempExprId':tempExprId, 'cancelDateTime':cancelDateTime, 'authUserLoginId':authUserLoginId, 'currentRetryCount':currentRetryCount, 'loaderName':loaderName, 'runTime':runTime, 'jobName':jobName, 'runByInstanceId':runByInstanceId, 'maxRecurrenceCount':maxRecurrenceCount, 'currentRecurrenceCount':currentRecurrenceCount, 'serviceName':serviceName, 'runtimeDataId':runtimeDataId, 'runAsUser':runAsUser, 'finishDateTime':finishDateTime, 'jobId':jobId, 'maxRetry':maxRetry, 'startDateTime':startDateTime, 'statusId':statusId, 'previousJobId':previousJobId, 'parentJobId':parentJobId, 'jobResult':jobResult, 'poolId':poolId};
  }

}

/// Entity RecurrenceInfo, Recurrence Info
class RecurrenceInfo extends EntityBase {

  /// this entity has only one pk
  final String recurrenceInfoId; // pk
  final DateTime startDateTime;
  final String exceptionRuleId;
  final String recurrenceDateTimes;
  final String exceptionDateTimes;
  final int recurrenceCount;
  final String recurrenceRuleId;
  RecurrenceInfo({entityId,
    @required this.recurrenceInfoId, this.startDateTime, this.exceptionRuleId, this.recurrenceDateTimes, this.exceptionDateTimes, this.recurrenceCount, this.recurrenceRuleId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RecurrenceInfo { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'recurrenceInfoId':recurrenceInfoId, 'startDateTime':startDateTime, 'exceptionRuleId':exceptionRuleId, 'recurrenceDateTimes':recurrenceDateTimes, 'exceptionDateTimes':exceptionDateTimes, 'recurrenceCount':recurrenceCount, 'recurrenceRuleId':recurrenceRuleId};
  }

}

/// Entity RecurrenceRule, Recurrence Rule
class RecurrenceRule extends EntityBase {

  /// this entity has only one pk
  final int intervalNumber;
  final String bySetPosList;
  final String bySecondList;
  final String byMonthDayList;
  final String byMinuteList;
  final String byYearDayList;
  final String frequency;
  final String byWeekNoList;
  final DateTime untilDateTime;
  final String weekStart;
  final String byHourList;
  final String byDayList;
  final int countNumber;
  final String recurrenceRuleId; // pk
  final String xName;
  final String byMonthList;
  RecurrenceRule({entityId,
    this.intervalNumber, this.bySetPosList, this.bySecondList, this.byMonthDayList, this.byMinuteList, this.byYearDayList, this.frequency, this.byWeekNoList, this.untilDateTime, this.weekStart, this.byHourList, this.byDayList, this.countNumber, @required this.recurrenceRuleId, this.xName, this.byMonthList,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RecurrenceRule { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'intervalNumber':intervalNumber, 'bySetPosList':bySetPosList, 'bySecondList':bySecondList, 'byMonthDayList':byMonthDayList, 'byMinuteList':byMinuteList, 'byYearDayList':byYearDayList, 'frequency':frequency, 'byWeekNoList':byWeekNoList, 'untilDateTime':untilDateTime, 'weekStart':weekStart, 'byHourList':byHourList, 'byDayList':byDayList, 'countNumber':countNumber, 'recurrenceRuleId':recurrenceRuleId, 'xName':xName, 'byMonthList':byMonthList};
  }

}

/// Entity RuntimeData, Runtime Data
class RuntimeData extends EntityBase {

  /// this entity has only one pk
  final String runtimeDataId; // pk
  final String runtimeInfo;
  RuntimeData({entityId,
    @required this.runtimeDataId, this.runtimeInfo,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'RuntimeData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'runtimeDataId':runtimeDataId, 'runtimeInfo':runtimeInfo};
  }

}

/// Entity TemporalExpression, Temporal Expression
class TemporalExpression extends EntityBase {

  /// this entity has only one pk
  final String description;
  final int integer1;
  final String tempExprId; // pk
  final DateTime date2;
  final DateTime date1;
  final int integer2;
  final String string1;
  final String string2;
  final String tempExprTypeId;
  TemporalExpression({entityId,
    this.description, this.integer1, @required this.tempExprId, this.date2, this.date1, this.integer2, this.string1, this.string2, this.tempExprTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TemporalExpression { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'integer1':integer1, 'tempExprId':tempExprId, 'date2':date2, 'date1':date1, 'integer2':integer2, 'string1':string1, 'string2':string2, 'tempExprTypeId':tempExprTypeId};
  }

}

/// Entity TemporalExpressionAssoc, Temporal Expression Association
class TemporalExpressionAssoc extends EntityBase {

  final String fromTempExprId; // pk
  final String toTempExprId; // pk
  final String exprAssocType;
  TemporalExpressionAssoc({entityId,
    @required this.fromTempExprId, @required this.toTempExprId, this.exprAssocType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TemporalExpressionAssoc { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromTempExprId':fromTempExprId, 'toTempExprId':toTempExprId, 'exprAssocType':exprAssocType};
  }

}

/// Entity TemporalExpressionChild, Temporal Expression Children View
class TemporalExpressionChild extends EntityBase {

  final String fromTempExprId; // pk
  final String string1;
  final String string2;
  final String exprAssocType;
  final String description;
  final int integer1;
  final String tempExprId; // pk
  final DateTime date2;
  final DateTime date1;
  final int integer2;
  final String tempExprTypeId;
  TemporalExpressionChild({entityId,
    @required this.fromTempExprId, this.string1, this.string2, this.exprAssocType, this.description, this.integer1, @required this.tempExprId, this.date2, this.date1, this.integer2, this.tempExprTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TemporalExpressionChild { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromTempExprId':fromTempExprId, 'string1':string1, 'string2':string2, 'exprAssocType':exprAssocType, 'description':description, 'integer1':integer1, 'tempExprId':tempExprId, 'date2':date2, 'date1':date1, 'integer2':integer2, 'tempExprTypeId':tempExprTypeId};
  }

}