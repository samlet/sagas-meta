import 'package:sagas_meta/src/models/order_reservations.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class OrderReservationsJsonifier{
  static AccommodationSpot extractAccommodationSpot(dynamic json) {
    return AccommodationSpot(
        entityId: create_id_from('AccommodationSpot', ['accommodationSpotId'], json),
        accommodationSpotId: json['accommodationSpotId'] as String,
        fixedAssetId: json['fixedAssetId'] as String,
        numberOfSpaces: json['numberOfSpaces'] as int,
        description: json['description'] as String,
        accommodationClassId: json['accommodationClassId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AccommodationSpot overridesAccommodationSpot(Map<String, dynamic> map) {
    return AccommodationSpot(
        entityId: create_id_from('AccommodationSpot', ['accommodationSpotId'], map),
        accommodationSpotId: map['accommodationSpotId'],
        fixedAssetId: map['fixedAssetId'],
        numberOfSpaces: map['numberOfSpaces'],
        description: map['description'],
        accommodationClassId: map['accommodationClassId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}