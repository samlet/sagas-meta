import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity NoteData, NoteData
class NoteData extends EntityBase {

  /// this entity has only one pk
  final String noteName;
  final DateTime noteDateTime;
  final String moreInfoItemName;
  final String noteInfo;
  final String moreInfoUrl;
  final String noteId; // pk
  final String moreInfoItemId;
  final String noteParty;
  NoteData({entityId,
    this.noteName, this.noteDateTime, this.moreInfoItemName, this.noteInfo, this.moreInfoUrl, @required this.noteId, this.moreInfoItemId, this.noteParty,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'NoteData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'noteName':noteName, 'noteDateTime':noteDateTime, 'moreInfoItemName':moreInfoItemName, 'noteInfo':noteInfo, 'moreInfoUrl':moreInfoUrl, 'noteId':noteId, 'moreInfoItemId':moreInfoItemId, 'noteParty':noteParty};
  }

}