import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity KeywordThesaurus, KeywordThesaurus
class KeywordThesaurus extends EntityBase {

  final String relationshipEnumId;
  final String enteredKeyword; // pk
  final String alternateKeyword; // pk
  KeywordThesaurus({entityId,
    this.relationshipEnumId, @required this.enteredKeyword, @required this.alternateKeyword,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'KeywordThesaurus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'relationshipEnumId':relationshipEnumId, 'enteredKeyword':enteredKeyword, 'alternateKeyword':alternateKeyword};
  }

}