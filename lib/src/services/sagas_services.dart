import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class SagasServices{
  final SrvClient client;
  SagasServices(this.client);

  /**
   * 
            Dummy service to prevent empty files and syntax error - Remove when the 1st real service will be added here 
         - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> noSyntaxError() =>
      client.invoke('noSyntaxError', null, {  });

}