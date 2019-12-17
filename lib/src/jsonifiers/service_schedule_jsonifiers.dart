import 'package:sagas_meta/src/models/service_schedule.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ServiceScheduleJsonifier{
  static JobManagerLock extractJobManagerLock(dynamic json) {
    return JobManagerLock(
        entityId: create_id_from('JobManagerLock', ['instanceId', 'fromDate'], json),
        comments: json['comments'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        instanceId: json['instanceId'] as String,
        createdDate: check_dt(json['createdDate']),
        reasonEnumId: json['reasonEnumId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JobManagerLock overridesJobManagerLock(Map<String, dynamic> map) {
    return JobManagerLock(
        entityId: create_id_from('JobManagerLock', ['instanceId', 'fromDate'], map),
        comments: map['comments'],
        lastModifiedDate: map['lastModifiedDate'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        instanceId: map['instanceId'],
        createdDate: map['createdDate'],
        reasonEnumId: map['reasonEnumId'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static JobSandbox extractJobSandbox(dynamic json) {
    return JobSandbox(
        entityId: create_id_from('JobSandbox', ['jobId'], json),
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        tempExprId: json['tempExprId'] as String,
        cancelDateTime: check_dt(json['cancelDateTime']),
        authUserLoginId: json['authUserLoginId'] as String,
        currentRetryCount: json['currentRetryCount'] as int,
        loaderName: json['loaderName'] as String,
        runTime: check_dt(json['runTime']),
        jobName: json['jobName'] as String,
        runByInstanceId: json['runByInstanceId'] as String,
        maxRecurrenceCount: json['maxRecurrenceCount'] as int,
        currentRecurrenceCount: json['currentRecurrenceCount'] as int,
        serviceName: json['serviceName'] as String,
        runtimeDataId: json['runtimeDataId'] as String,
        runAsUser: json['runAsUser'] as String,
        finishDateTime: check_dt(json['finishDateTime']),
        jobId: json['jobId'] as String,
        maxRetry: json['maxRetry'] as int,
        startDateTime: check_dt(json['startDateTime']),
        statusId: json['statusId'] as String,
        previousJobId: json['previousJobId'] as String,
        parentJobId: json['parentJobId'] as String,
        jobResult: json['jobResult'] as String,
        poolId: json['poolId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static JobSandbox overridesJobSandbox(Map<String, dynamic> map) {
    return JobSandbox(
        entityId: create_id_from('JobSandbox', ['jobId'], map),
        recurrenceInfoId: map['recurrenceInfoId'],
        tempExprId: map['tempExprId'],
        cancelDateTime: map['cancelDateTime'],
        authUserLoginId: map['authUserLoginId'],
        currentRetryCount: map['currentRetryCount'],
        loaderName: map['loaderName'],
        runTime: map['runTime'],
        jobName: map['jobName'],
        runByInstanceId: map['runByInstanceId'],
        maxRecurrenceCount: map['maxRecurrenceCount'],
        currentRecurrenceCount: map['currentRecurrenceCount'],
        serviceName: map['serviceName'],
        runtimeDataId: map['runtimeDataId'],
        runAsUser: map['runAsUser'],
        finishDateTime: map['finishDateTime'],
        jobId: map['jobId'],
        maxRetry: map['maxRetry'],
        startDateTime: map['startDateTime'],
        statusId: map['statusId'],
        previousJobId: map['previousJobId'],
        parentJobId: map['parentJobId'],
        jobResult: map['jobResult'],
        poolId: map['poolId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RecurrenceInfo extractRecurrenceInfo(dynamic json) {
    return RecurrenceInfo(
        entityId: create_id_from('RecurrenceInfo', ['recurrenceInfoId'], json),
        recurrenceInfoId: json['recurrenceInfoId'] as String,
        startDateTime: check_dt(json['startDateTime']),
        exceptionRuleId: json['exceptionRuleId'] as String,
        recurrenceDateTimes: json['recurrenceDateTimes'] as String,
        exceptionDateTimes: json['exceptionDateTimes'] as String,
        recurrenceCount: json['recurrenceCount'] as int,
        recurrenceRuleId: json['recurrenceRuleId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RecurrenceInfo overridesRecurrenceInfo(Map<String, dynamic> map) {
    return RecurrenceInfo(
        entityId: create_id_from('RecurrenceInfo', ['recurrenceInfoId'], map),
        recurrenceInfoId: map['recurrenceInfoId'],
        startDateTime: map['startDateTime'],
        exceptionRuleId: map['exceptionRuleId'],
        recurrenceDateTimes: map['recurrenceDateTimes'],
        exceptionDateTimes: map['exceptionDateTimes'],
        recurrenceCount: map['recurrenceCount'],
        recurrenceRuleId: map['recurrenceRuleId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RecurrenceRule extractRecurrenceRule(dynamic json) {
    return RecurrenceRule(
        entityId: create_id_from('RecurrenceRule', ['recurrenceRuleId'], json),
        intervalNumber: json['intervalNumber'] as int,
        bySetPosList: json['bySetPosList'] as String,
        bySecondList: json['bySecondList'] as String,
        byMonthDayList: json['byMonthDayList'] as String,
        byMinuteList: json['byMinuteList'] as String,
        byYearDayList: json['byYearDayList'] as String,
        frequency: json['frequency'] as String,
        byWeekNoList: json['byWeekNoList'] as String,
        untilDateTime: check_dt(json['untilDateTime']),
        weekStart: json['weekStart'] as String,
        byHourList: json['byHourList'] as String,
        byDayList: json['byDayList'] as String,
        countNumber: json['countNumber'] as int,
        recurrenceRuleId: json['recurrenceRuleId'] as String,
        xName: json['xName'] as String,
        byMonthList: json['byMonthList'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RecurrenceRule overridesRecurrenceRule(Map<String, dynamic> map) {
    return RecurrenceRule(
        entityId: create_id_from('RecurrenceRule', ['recurrenceRuleId'], map),
        intervalNumber: map['intervalNumber'],
        bySetPosList: map['bySetPosList'],
        bySecondList: map['bySecondList'],
        byMonthDayList: map['byMonthDayList'],
        byMinuteList: map['byMinuteList'],
        byYearDayList: map['byYearDayList'],
        frequency: map['frequency'],
        byWeekNoList: map['byWeekNoList'],
        untilDateTime: map['untilDateTime'],
        weekStart: map['weekStart'],
        byHourList: map['byHourList'],
        byDayList: map['byDayList'],
        countNumber: map['countNumber'],
        recurrenceRuleId: map['recurrenceRuleId'],
        xName: map['xName'],
        byMonthList: map['byMonthList'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static RuntimeData extractRuntimeData(dynamic json) {
    return RuntimeData(
        entityId: create_id_from('RuntimeData', ['runtimeDataId'], json),
        runtimeDataId: json['runtimeDataId'] as String,
        runtimeInfo: json['runtimeInfo'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static RuntimeData overridesRuntimeData(Map<String, dynamic> map) {
    return RuntimeData(
        entityId: create_id_from('RuntimeData', ['runtimeDataId'], map),
        runtimeDataId: map['runtimeDataId'],
        runtimeInfo: map['runtimeInfo'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TemporalExpression extractTemporalExpression(dynamic json) {
    return TemporalExpression(
        entityId: create_id_from('TemporalExpression', ['tempExprId'], json),
        description: json['description'] as String,
        integer1: json['integer1'] as int,
        tempExprId: json['tempExprId'] as String,
        date2: check_dt(json['date2']),
        date1: check_dt(json['date1']),
        integer2: json['integer2'] as int,
        string1: json['string1'] as String,
        string2: json['string2'] as String,
        tempExprTypeId: json['tempExprTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TemporalExpression overridesTemporalExpression(Map<String, dynamic> map) {
    return TemporalExpression(
        entityId: create_id_from('TemporalExpression', ['tempExprId'], map),
        description: map['description'],
        integer1: map['integer1'],
        tempExprId: map['tempExprId'],
        date2: map['date2'],
        date1: map['date1'],
        integer2: map['integer2'],
        string1: map['string1'],
        string2: map['string2'],
        tempExprTypeId: map['tempExprTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TemporalExpressionAssoc extractTemporalExpressionAssoc(dynamic json) {
    return TemporalExpressionAssoc(
        entityId: create_id_from('TemporalExpressionAssoc', ['fromTempExprId', 'toTempExprId'], json),
        fromTempExprId: json['fromTempExprId'] as String,
        toTempExprId: json['toTempExprId'] as String,
        exprAssocType: json['exprAssocType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TemporalExpressionAssoc overridesTemporalExpressionAssoc(Map<String, dynamic> map) {
    return TemporalExpressionAssoc(
        entityId: create_id_from('TemporalExpressionAssoc', ['fromTempExprId', 'toTempExprId'], map),
        fromTempExprId: map['fromTempExprId'],
        toTempExprId: map['toTempExprId'],
        exprAssocType: map['exprAssocType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TemporalExpressionChild extractTemporalExpressionChild(dynamic json) {
    return TemporalExpressionChild(
        entityId: create_id_from('TemporalExpressionChild', ['fromTempExprId', 'tempExprId'], json),
        fromTempExprId: json['fromTempExprId'] as String,
        string1: json['string1'] as String,
        string2: json['string2'] as String,
        exprAssocType: json['exprAssocType'] as String,
        description: json['description'] as String,
        integer1: json['integer1'] as int,
        tempExprId: json['tempExprId'] as String,
        date2: check_dt(json['date2']),
        date1: check_dt(json['date1']),
        integer2: json['integer2'] as int,
        tempExprTypeId: json['tempExprTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TemporalExpressionChild overridesTemporalExpressionChild(Map<String, dynamic> map) {
    return TemporalExpressionChild(
        entityId: create_id_from('TemporalExpressionChild', ['fromTempExprId', 'tempExprId'], map),
        fromTempExprId: map['fromTempExprId'],
        string1: map['string1'],
        string2: map['string2'],
        exprAssocType: map['exprAssocType'],
        description: map['description'],
        integer1: map['integer1'],
        tempExprId: map['tempExprId'],
        date2: map['date2'],
        date1: map['date1'],
        integer2: map['integer2'],
        tempExprTypeId: map['tempExprTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}