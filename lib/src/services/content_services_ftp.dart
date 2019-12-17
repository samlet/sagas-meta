import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesFtp{
  final SrvClient client;
  ContentServicesFtp(this.client);

  /**
   * Send content to FtpAddress - 
   *
   * Requires contentId, contactMechId
   * Returns communicationEventId[String]
   */
  Future<OfResult> sendContentToFtp({@required String contentId, @required String contactMechId, String partyId, String communicationEventId}) =>
      client.invoke('sendContentToFtp', null, { 'contentId': contentId, 'contactMechId': contactMechId, 'partyId': partyId, 'communicationEventId': communicationEventId });

}