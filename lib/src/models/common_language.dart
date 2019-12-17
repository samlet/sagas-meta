import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity StandardLanguage, StandardLanguage
class StandardLanguage extends EntityBase {

  /// this entity has only one pk
  final String langCode3t;
  final String langCode2;
  final String standardLanguageId; // pk
  final String langCode3b;
  final String langFamily;
  final String langName;
  final String langCharset;
  StandardLanguage({entityId,
    this.langCode3t, this.langCode2, @required this.standardLanguageId, this.langCode3b, this.langFamily, this.langName, this.langCharset,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'StandardLanguage { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'langCode3t':langCode3t, 'langCode2':langCode2, 'standardLanguageId':standardLanguageId, 'langCode3b':langCode3b, 'langFamily':langFamily, 'langName':langName, 'langCharset':langCharset};
  }

}