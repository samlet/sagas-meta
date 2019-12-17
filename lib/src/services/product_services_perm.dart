import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ProductServicesPerm{
  final SrvClient client;
  ProductServicesPerm(this.client);

  /**
   * Facility Manager permission Checking Logic - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> facilityPermissionCheck({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('facilityPermissionCheck', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

}