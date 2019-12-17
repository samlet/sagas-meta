import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class SecurityextServices{
  final SrvClient client;
  SecurityextServices(this.client);

  /**
   * Import an x.509 certificate into a defined keystore and create the provision data - 
   *
   * Requires componentName, keystoreName, certString, alias
   * Returns 
   */
  Future<OfResult> importIssuerProvision({@required String componentName, @required String keystoreName, @required String certString, String importIssuer, @required String alias}) =>
      client.invoke('importIssuerProvision', null, { 'componentName': componentName, 'keystoreName': keystoreName, 'certString': certString, 'importIssuer': importIssuer, 'alias': alias });

}