import 'package:sagas_meta/src/models/manufacturing_techdata.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ManufacturingTechdataJsonifier{
  static TechDataCalendar extractTechDataCalendar(dynamic json) {
    return TechDataCalendar(
        entityId: create_id_from('TechDataCalendar', ['calendarId'], json),
        calendarWeekId: json['calendarWeekId'] as String,
        calendarId: json['calendarId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TechDataCalendar overridesTechDataCalendar(Map<String, dynamic> map) {
    return TechDataCalendar(
        entityId: create_id_from('TechDataCalendar', ['calendarId'], map),
        calendarWeekId: map['calendarWeekId'],
        calendarId: map['calendarId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TechDataCalendarExcDay extractTechDataCalendarExcDay(dynamic json) {
    return TechDataCalendarExcDay(
        entityId: create_id_from('TechDataCalendarExcDay', ['calendarId', 'exceptionDateStartTime'], json),
        exceptionDateStartTime: check_dt(json['exceptionDateStartTime']),
        calendarId: json['calendarId'] as String,
        exceptionCapacity: json['exceptionCapacity'] as double,
        usedCapacity: json['usedCapacity'] as double,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TechDataCalendarExcDay overridesTechDataCalendarExcDay(Map<String, dynamic> map) {
    return TechDataCalendarExcDay(
        entityId: create_id_from('TechDataCalendarExcDay', ['calendarId', 'exceptionDateStartTime'], map),
        exceptionDateStartTime: map['exceptionDateStartTime'],
        calendarId: map['calendarId'],
        exceptionCapacity: map['exceptionCapacity'],
        usedCapacity: map['usedCapacity'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TechDataCalendarExcWeek extractTechDataCalendarExcWeek(dynamic json) {
    return TechDataCalendarExcWeek(
        entityId: create_id_from('TechDataCalendarExcWeek', ['calendarId', 'exceptionDateStart'], json),
        calendarWeekId: json['calendarWeekId'] as String,
        exceptionDateStart: check_dt(json['exceptionDateStart']),
        calendarId: json['calendarId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TechDataCalendarExcWeek overridesTechDataCalendarExcWeek(Map<String, dynamic> map) {
    return TechDataCalendarExcWeek(
        entityId: create_id_from('TechDataCalendarExcWeek', ['calendarId', 'exceptionDateStart'], map),
        calendarWeekId: map['calendarWeekId'],
        exceptionDateStart: map['exceptionDateStart'],
        calendarId: map['calendarId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static TechDataCalendarWeek extractTechDataCalendarWeek(dynamic json) {
    return TechDataCalendarWeek(
        entityId: create_id_from('TechDataCalendarWeek', ['calendarWeekId'], json),
        calendarWeekId: json['calendarWeekId'] as String,
        sundayCapacity: json['sundayCapacity'] as double,
        wednesdayStartTime: check_time(json['wednesdayStartTime']),
        thursdayCapacity: json['thursdayCapacity'] as double,
        tuesdayStartTime: check_time(json['tuesdayStartTime']),
        wednesdayCapacity: json['wednesdayCapacity'] as double,
        fridayStartTime: check_time(json['fridayStartTime']),
        description: json['description'] as String,
        saturdayCapacity: json['saturdayCapacity'] as double,
        mondayCapacity: json['mondayCapacity'] as double,
        mondayStartTime: check_time(json['mondayStartTime']),
        saturdayStartTime: check_time(json['saturdayStartTime']),
        thursdayStartTime: check_time(json['thursdayStartTime']),
        sundayStartTime: check_time(json['sundayStartTime']),
        fridayCapacity: json['fridayCapacity'] as double,
        tuesdayCapacity: json['tuesdayCapacity'] as double,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TechDataCalendarWeek overridesTechDataCalendarWeek(Map<String, dynamic> map) {
    return TechDataCalendarWeek(
        entityId: create_id_from('TechDataCalendarWeek', ['calendarWeekId'], map),
        calendarWeekId: map['calendarWeekId'],
        sundayCapacity: map['sundayCapacity'],
        wednesdayStartTime: map['wednesdayStartTime'],
        thursdayCapacity: map['thursdayCapacity'],
        tuesdayStartTime: map['tuesdayStartTime'],
        wednesdayCapacity: map['wednesdayCapacity'],
        fridayStartTime: map['fridayStartTime'],
        description: map['description'],
        saturdayCapacity: map['saturdayCapacity'],
        mondayCapacity: map['mondayCapacity'],
        mondayStartTime: map['mondayStartTime'],
        saturdayStartTime: map['saturdayStartTime'],
        thursdayStartTime: map['thursdayStartTime'],
        sundayStartTime: map['sundayStartTime'],
        fridayCapacity: map['fridayCapacity'],
        tuesdayCapacity: map['tuesdayCapacity'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}