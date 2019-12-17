import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ManufacturingServices{
  final SrvClient client;
  ManufacturingServices(this.client);

  /**
   * Runs the package configurator. - 
   *
   * Requires shipmentId
   * Returns 
   */
  Future<OfResult> createShipmentPackages({@required String shipmentId}) =>
      client.invoke('createShipmentPackages', null, { 'shipmentId': shipmentId });

}