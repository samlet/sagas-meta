import 'package:sagas_meta/src/models/manufacturing_techdata.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServicesCalendar{
  final SrvClient client;
  ManufacturingServicesCalendar(this.client);

  /**
   * Create a calendar - TechDataCalendar
   *
   * Requires calendarId
   * Returns 
   */
  Future<OfResult> createCalendar(TechDataCalendar ent, ) =>
      client.invoke('createCalendar', ent, {  });

  /**
   * Create a calendar ExceptionDay - TechDataCalendarExcDay
   *
   * Requires calendarId, exceptionDateStartTime
   * Returns 
   */
  Future<OfResult> createCalendarExceptionDay(TechDataCalendarExcDay ent, ) =>
      client.invoke('createCalendarExceptionDay', ent, {  });

  /**
   * Create a Calendar Exception Week - TechDataCalendarExcWeek
   *
   * Requires calendarId, exceptionDateStart
   * Returns 
   */
  Future<OfResult> createCalendarExceptionWeek(TechDataCalendarExcWeek ent, ) =>
      client.invoke('createCalendarExceptionWeek', ent, {  });

  /**
   * Create a Calendar Week - TechDataCalendarWeek
   *
   * Requires calendarWeekId
   * Returns 
   */
  Future<OfResult> createCalendarWeek(TechDataCalendarWeek ent, ) =>
      client.invoke('createCalendarWeek', ent, {  });

  /**
   * Remove a calendar - TechDataCalendar
   *
   * Requires calendarId
   * Returns 
   */
  Future<OfResult> removeCalendar(TechDataCalendar ent, ) =>
      client.invoke('removeCalendar', ent, {  });

  /**
   * Update a calendar ExceptionDay - TechDataCalendarExcDay
   *
   * Requires calendarId, exceptionDateStartTime
   * Returns 
   */
  Future<OfResult> removeCalendarExceptionDay(TechDataCalendarExcDay ent, ) =>
      client.invoke('removeCalendarExceptionDay', ent, {  });

  /**
   * Remove a Calendar Exception Week - TechDataCalendarExcWeek
   *
   * Requires calendarId, exceptionDateStart
   * Returns 
   */
  Future<OfResult> removeCalendarExceptionWeek(TechDataCalendarExcWeek ent, ) =>
      client.invoke('removeCalendarExceptionWeek', ent, {  });

  /**
   * Remove a Calendar Week - TechDataCalendarWeek
   *
   * Requires calendarWeekId
   * Returns 
   */
  Future<OfResult> removeCalendarWeek(TechDataCalendarWeek ent, ) =>
      client.invoke('removeCalendarWeek', ent, {  });

  /**
   * Update a calendar - TechDataCalendar
   *
   * Requires calendarId
   * Returns 
   */
  Future<OfResult> updateCalendar(TechDataCalendar ent, ) =>
      client.invoke('updateCalendar', ent, {  });

  /**
   * Update a calendar ExceptionDay - TechDataCalendarExcDay
   *
   * Requires calendarId, exceptionDateStartTime
   * Returns 
   */
  Future<OfResult> updateCalendarExceptionDay(TechDataCalendarExcDay ent, ) =>
      client.invoke('updateCalendarExceptionDay', ent, {  });

  /**
   * Update a Calendar Exception Week - TechDataCalendarExcWeek
   *
   * Requires calendarId, exceptionDateStart
   * Returns 
   */
  Future<OfResult> updateCalendarExceptionWeek(TechDataCalendarExcWeek ent, ) =>
      client.invoke('updateCalendarExceptionWeek', ent, {  });

  /**
   * Update a Calendar Week - TechDataCalendarWeek
   *
   * Requires calendarWeekId
   * Returns 
   */
  Future<OfResult> updateCalendarWeek(TechDataCalendarWeek ent, ) =>
      client.invoke('updateCalendarWeek', ent, {  });

}