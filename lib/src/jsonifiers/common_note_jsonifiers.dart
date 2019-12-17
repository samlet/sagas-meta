import 'package:sagas_meta/src/models/common_note.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonNoteJsonifier{
  static NoteData extractNoteData(dynamic json) {
    return NoteData(
        entityId: create_id_from('NoteData', ['noteId'], json),
        noteName: json['noteName'] as String,
        noteDateTime: check_dt(json['noteDateTime']),
        moreInfoItemName: json['moreInfoItemName'] as String,
        noteInfo: json['noteInfo'] as String,
        moreInfoUrl: json['moreInfoUrl'] as String,
        noteId: json['noteId'] as String,
        moreInfoItemId: json['moreInfoItemId'] as String,
        noteParty: json['noteParty'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static NoteData overridesNoteData(Map<String, dynamic> map) {
    return NoteData(
        entityId: create_id_from('NoteData', ['noteId'], map),
        noteName: map['noteName'],
        noteDateTime: map['noteDateTime'],
        moreInfoItemName: map['moreInfoItemName'],
        noteInfo: map['noteInfo'],
        moreInfoUrl: map['moreInfoUrl'],
        noteId: map['noteId'],
        moreInfoItemId: map['moreInfoItemId'],
        noteParty: map['noteParty'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}