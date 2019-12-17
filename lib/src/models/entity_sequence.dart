import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity SequenceValueItem, Sequence Value Item
class SequenceValueItem extends EntityBase {

  /// this entity has only one pk
  final String seqName; // pk
  final int seqId;
  SequenceValueItem({entityId,
    @required this.seqName, this.seqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'SequenceValueItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'seqName':seqName, 'seqId':seqId};
  }

}