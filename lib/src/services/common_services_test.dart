import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesTest{
  final SrvClient client;
  CommonServicesTest(this.client);

  /**
   * Blocking Test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> blockingTestScv({int duration, String message}) =>
      client.invoke('blockingTestScv', null, { 'duration': duration, 'message': message });

  /**
   * Test Entity Comparable - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> entitySortTest() =>
      client.invoke('entitySortTest', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> groupTest({double defaultValue, String message}) =>
      client.invoke('groupTest', null, { 'defaultValue': defaultValue, 'message': message });

  /**
   * Test JavaScript Service - 
   *
   * Requires count
   * Returns 
   */
  Future<OfResult> makeALotOfVisits({@required int count, bool rollback}) =>
      client.invoke('makeALotOfVisits', null, { 'count': count, 'rollback': rollback });

  /**
   * Test Ping Service - 
   *
   * Requires 
   * Returns message[String]
   */
  Future<OfResult> ping({String message}) =>
      client.invoke('ping', null, { 'message': message });

  /**
   * Test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testCommit({String message}) =>
      client.invoke('testCommit', null, { 'message': message });

  /**
   * Cause a Referential Integrity Error - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testEntityFailure() =>
      client.invoke('testEntityFailure', null, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testError() =>
      client.invoke('testError', null, {  });

  /**
   * Test Groovy Script Service - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testGroovy({String message}) =>
      client.invoke('testGroovy', null, { 'message': message });

  /**
   * Test Groovy Script Service Method Invocation - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testGroovyMethod({String message}) =>
      client.invoke('testGroovyMethod', null, { 'message': message });

  /**
   * HTTP service wrapper around the test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testHttp({String message}) =>
      client.invoke('testHttp', null, { 'message': message });

  /**
   * Test JMS Queue service - 
   *
   * Requires message
   * Returns 
   */
  Future<OfResult> testJMSQueue({@required String message}) =>
      client.invoke('testJMSQueue', null, { 'message': message });

  /**
   * Test JMS Topic service - 
   *
   * Requires message
   * Returns 
   */
  Future<OfResult> testJMSTopic({@required String message}) =>
      client.invoke('testJMSTopic', null, { 'message': message });

  /**
   * Test JavaScript Service - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testJavaScript({String message}) =>
      client.invoke('testJavaScript', null, { 'message': message });

  /**
   *  - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testRemoteSoap({double defaultValue, String message}) =>
      client.invoke('testRemoteSoap', null, { 'defaultValue': defaultValue, 'message': message });

  /**
   * A service to invoke the NWS web service - 
   *
   * Requires ZipCode, invoke
   * Returns result[String]
   */
  Future<OfResult> testRemoteSoap1({@required String ZipCode, @required String invoke}) =>
      client.invoke('testRemoteSoap1', null, { 'ZipCode': ZipCode, 'invoke': invoke });

  /**
   * A service to invoke the NWS web service - 
   *
   * Requires CityName, invoke
   * Returns result[String]
   */
  Future<OfResult> testRemoteSoap2({@required String CityName, @required String invoke}) =>
      client.invoke('testRemoteSoap2', null, { 'CityName': CityName, 'invoke': invoke });

  /**
   *  - 
   *
   * Requires ZipCode, invoke
   * Returns result[String]
   */
  Future<OfResult> testRemoteSoap3({@required String ZipCode, @required String invoke}) =>
      client.invoke('testRemoteSoap3', null, { 'ZipCode': ZipCode, 'invoke': invoke });

  /**
   *  - 
   *
   * Requires invoke
   * Returns result[String]
   */
  Future<OfResult> testRemoteSoap4({@required String invoke}) =>
      client.invoke('testRemoteSoap4', null, { 'invoke': invoke });

  /**
   * Test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testRollback({String message}) =>
      client.invoke('testRollback', null, { 'message': message });

  /**
   * Test the Route engine - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> testRoute() =>
      client.invoke('testRoute', null, {  });

  /**
   * Test SOAP service - 
   *
   * Requires testing
   * Returns testingNodes[List]
   */
  Future<OfResult> testSOAPScv({@required Map<String,dynamic> testing}) =>
      client.invoke('testSOAPScv', null, { 'testing': testing });

  /**
   * Test Script Engine With Groovy Script - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testScriptEngineGroovy({String message}) =>
      client.invoke('testScriptEngineGroovy', null, { 'message': message });

  /**
   * Test Script Engine With Groovy Script Method Invocation - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testScriptEngineGroovyMethod({String message}) =>
      client.invoke('testScriptEngineGroovyMethod', null, { 'message': message });

  /**
   * Test Script Engine With JavaScript - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testScriptEngineJavaScript({String message, String exampleId}) =>
      client.invoke('testScriptEngineJavaScript', null, { 'message': message, 'exampleId': exampleId });

  /**
   * Test Script Engine With JavaScript Function Invocation - 
   *
   * Requires 
   * Returns result[String]
   */
  Future<OfResult> testScriptEngineJavaScriptFunction({String message}) =>
      client.invoke('testScriptEngineJavaScriptFunction', null, { 'message': message });

  /**
   * Test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testScv({double defaultValue, String message}) =>
      client.invoke('testScv', null, { 'defaultValue': defaultValue, 'message': message });

  /**
   * SOAP service; calls the OFBiz test SOAP service - 
   *
   * Requires testing
   * Returns testingNodes[List]
   */
  Future<OfResult> testSoap({@required Map<String,dynamic> testing}) =>
      client.invoke('testSoap', null, { 'testing': testing });

  /**
   * simple SOAP service; calls the OFBiz test service - 
   *
   * Requires 
   * Returns resp[String]
   */
  Future<OfResult> testSoapSimple({double defaultValue, String message}) =>
      client.invoke('testSoapSimple', null, { 'defaultValue': defaultValue, 'message': message });

}