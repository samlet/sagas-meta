import 'package:sagas_meta/src/models/ofbizdemo.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class OfbizdemoServices{
  final SrvClient client;
  OfbizdemoServices(this.client);

  /**
   * Create an Ofbiz Demo record - OfbizDemo
   *
   * Requires ofbizDemoTypeId, firstName, lastName
   * Returns ofbizDemoId[String]
   */
  Future<OfResult> createOfbizDemo(OfbizDemo ent, ) =>
      client.invoke('createOfbizDemo', ent, {  });

  /**
   * Create an Ofbiz Demo record using a service in Java - OfbizDemo
   *
   * Requires ofbizDemoTypeId, firstName, lastName
   * Returns ofbizDemoId[String]
   */
  Future<OfResult> createOfbizDemoByJavaService(OfbizDemo ent, ) =>
      client.invoke('createOfbizDemoByJavaService', ent, {  });

}