import 'package:sagas_meta/src/models/humanres_trainings.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class HumanresTrainingsJsonifier{
  static TrainingRequest extractTrainingRequest(dynamic json) {
    return TrainingRequest(
        entityId: create_id_from('TrainingRequest', ['trainingRequestId'], json),
        trainingRequestId: json['trainingRequestId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static TrainingRequest overridesTrainingRequest(Map<String, dynamic> map) {
    return TrainingRequest(
        entityId: create_id_from('TrainingRequest', ['trainingRequestId'], map),
        trainingRequestId: map['trainingRequestId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}