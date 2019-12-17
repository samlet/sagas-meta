import 'package:sagas_meta/src/models/order_reservations.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesReservations{
  final SrvClient client;
  OrderServicesReservations(this.client);

  /**
   * Create a AccommodationSpot record - AccommodationSpot
   *
   * Requires 
   * Returns accommodationSpotId[String]
   */
  Future<OfResult> createAccommodationSpot(AccommodationSpot ent, ) =>
      client.invoke('createAccommodationSpot', ent, {  });

  /**
   * Delete an AccommodationSpot record - AccommodationSpot
   *
   * Requires accommodationSpotId
   * Returns 
   */
  Future<OfResult> deleteAccommodationSpot(AccommodationSpot ent, ) =>
      client.invoke('deleteAccommodationSpot', ent, {  });

  /**
   * Update a AccommodationSpot record - AccommodationSpot
   *
   * Requires accommodationSpotId
   * Returns 
   */
  Future<OfResult> updateAccommodationSpot(AccommodationSpot ent, ) =>
      client.invoke('updateAccommodationSpot', ent, {  });

}