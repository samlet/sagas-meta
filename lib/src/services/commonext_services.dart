import 'package:sagas_meta/src/models/common_note.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonextServices{
  final SrvClient client;
  CommonextServices(this.client);

  /**
   * Create a system info note - NoteData
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> createSystemInfoNote(NoteData ent, ) =>
      client.invoke('createSystemInfoNote', ent, {  });

  /**
   * Delete all system notes for the logged on party - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> deleteAllSystemNotes() =>
      client.invoke('deleteAllSystemNotes', null, {  });

  /**
   * Delete a system info note - NoteData
   *
   * Requires noteId
   * Returns 
   */
  Future<OfResult> deleteSystemInfoNote(NoteData ent, ) =>
      client.invoke('deleteSystemInfoNote', ent, {  });

  /**
   * Get last system note for the logged on party - 
   *
   * Requires 
   * Returns lastSystemInfoNote1[GenericValue], lastSystemInfoNote2[GenericValue], lastSystemInfoNote3[GenericValue]
   */
  Future<OfResult> getLastSystemInfoNote() =>
      client.invoke('getLastSystemInfoNote', null, {  });

  /**
   * Get system notes for the logged on party - 
   *
   * Requires 
   * Returns systemInfoNotes[List]
   */
  Future<OfResult> getSystemInfoNotes() =>
      client.invoke('getSystemInfoNotes', null, {  });

  /**
   * Get system status for the logged on party - 
   *
   * Requires 
   * Returns systemInfoStatus[List]
   */
  Future<OfResult> getSystemInfoStatus() =>
      client.invoke('getSystemInfoStatus', null, {  });

}