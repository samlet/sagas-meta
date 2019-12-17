import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity TrainingRequest, Training Request
class TrainingRequest extends EntityBase {

  /// this entity has only one pk
  final String trainingRequestId; // pk
  TrainingRequest({entityId,
    @required this.trainingRequestId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TrainingRequest { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'trainingRequestId':trainingRequestId};
  }

}