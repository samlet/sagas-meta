import 'package:sagas_meta/src/models/workeffort_timesheet.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class WorkeffortTimesheetJsonifier{
  static TimeEntry extractTimeEntry(dynamic json) {
    return TimeEntry(
        entityId: create_id_from('TimeEntry', ['timeEntryId'], json),
        workEffortId: json['workEffortId'] as String,
        rateTypeId: json['rateTypeId'] as String,
        hours: json['hours'] as double,
        comments: json['comments'] as String,
        invoiceItemSeqId: json['invoiceItemSeqId'] as String,
        thruDate: check_dt(json['thruDate']),
        fromDate: check_dt(json['fromDate']),
        timesheetId: json['timesheetId'] as String,
        timeEntryId: json['timeEntryId'] as String,
        invoiceId: json['invoiceId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TimeEntry overridesTimeEntry(Map<String, dynamic> map) {
    return TimeEntry(
        entityId: create_id_from('TimeEntry', ['timeEntryId'], map),
        workEffortId: map['workEffortId'],
        rateTypeId: map['rateTypeId'],
        hours: map['hours'],
        comments: map['comments'],
        invoiceItemSeqId: map['invoiceItemSeqId'],
        thruDate: map['thruDate'],
        fromDate: map['fromDate'],
        timesheetId: map['timesheetId'],
        timeEntryId: map['timeEntryId'],
        invoiceId: map['invoiceId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static Timesheet extractTimesheet(dynamic json) {
    return Timesheet(
        entityId: create_id_from('Timesheet', ['timesheetId'], json),
        timesheetId: json['timesheetId'] as String,
        fromDate: check_dt(json['fromDate']),
        comments: json['comments'] as String,
        statusId: json['statusId'] as String,
        approvedByUserLoginId: json['approvedByUserLoginId'] as String,
        partyId: json['partyId'] as String,
        clientPartyId: json['clientPartyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Timesheet overridesTimesheet(Map<String, dynamic> map) {
    return Timesheet(
        entityId: create_id_from('Timesheet', ['timesheetId'], map),
        timesheetId: map['timesheetId'],
        fromDate: map['fromDate'],
        comments: map['comments'],
        statusId: map['statusId'],
        approvedByUserLoginId: map['approvedByUserLoginId'],
        partyId: map['partyId'],
        clientPartyId: map['clientPartyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TimesheetRole extractTimesheetRole(dynamic json) {
    return TimesheetRole(
        entityId: create_id_from('TimesheetRole', ['timesheetId', 'partyId', 'roleTypeId'], json),
        timesheetId: json['timesheetId'] as String,
        roleTypeId: json['roleTypeId'] as String,
        partyId: json['partyId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TimesheetRole overridesTimesheetRole(Map<String, dynamic> map) {
    return TimesheetRole(
        entityId: create_id_from('TimesheetRole', ['timesheetId', 'partyId', 'roleTypeId'], map),
        timesheetId: map['timesheetId'],
        roleTypeId: map['roleTypeId'],
        partyId: map['partyId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}