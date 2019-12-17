import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OrderServicesPerm{
  final SrvClient client;
  OrderServicesPerm(this.client);

  /**
   * Order permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> returnPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('returnPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

}