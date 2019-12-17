import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesShipmentFedex{
  final SrvClient client;
  ProductServicesShipmentFedex(this.client);

  /**
   * Schedule a shipment route segment with FedEx.  You will get back a label image and tracking number which are stored for you in the same
        ShipmentRouteSegment. - 
   *
   * Requires shipmentId, shipmentRouteSegmentId
   * Returns 
   */
  Future<OfResult> fedexShipRequest({@required String shipmentId, @required String shipmentRouteSegmentId}) =>
      client.invoke('fedexShipRequest', null, { 'shipmentId': shipmentId, 'shipmentRouteSegmentId': shipmentRouteSegmentId });

  /**
   * Sends a subscription request to FedEx to get the meter number, which is required for Fedex Ship Manager Direct as shipping credential.
        You must supply a contact name and a partyId (usually your company's with a valid address and phone number per Fedex requirements. - 
   *
   * Requires contactPartyName, companyPartyId, replaceMeterNumber, shipmentGatewayConfigId, configProps
   * Returns meterNumber[String]
   */
  Future<OfResult> fedexSubscriptionRequest({@required String contactPartyName, @required String companyPartyId, @required bool replaceMeterNumber, @required String shipmentGatewayConfigId, @required String configProps}) =>
      client.invoke('fedexSubscriptionRequest', null, { 'contactPartyName': contactPartyName, 'companyPartyId': companyPartyId, 'replaceMeterNumber': replaceMeterNumber, 'shipmentGatewayConfigId': shipmentGatewayConfigId, 'configProps': configProps });

}