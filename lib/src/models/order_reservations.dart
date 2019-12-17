import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AccommodationSpot, Accommodation Spot
class AccommodationSpot extends EntityBase {

  /// this entity has only one pk
  final String accommodationSpotId; // pk
  final String fixedAssetId;
  final int numberOfSpaces;
  final String description;
  final String accommodationClassId;
  AccommodationSpot({entityId,
    @required this.accommodationSpotId, this.fixedAssetId, this.numberOfSpaces, this.description, this.accommodationClassId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AccommodationSpot { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'accommodationSpotId':accommodationSpotId, 'fixedAssetId':fixedAssetId, 'numberOfSpaces':numberOfSpaces, 'description':description, 'accommodationClassId':accommodationClassId};
  }

}