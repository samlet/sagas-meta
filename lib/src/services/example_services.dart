import 'package:sagas_meta/src/models/example_feature.dart';
import 'package:sagas_meta/src/models/example_example.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ExampleServices{
  final SrvClient client;
  ExampleServices(this.client);

  /**
   * Create a Example - Example
   *
   * Requires exampleTypeId, statusId, exampleName, exampleTypeId, statusId, exampleName
   * Returns exampleId[String]
   */
  Future<OfResult> createExample(Example ent, ) =>
      client.invoke('createExample', ent, {  });

  /**
   * Create a ExampleFeature - ExampleFeature
   *
   * Requires description, description
   * Returns exampleFeatureId[String]
   */
  Future<OfResult> createExampleFeature(ExampleFeature ent, ) =>
      client.invoke('createExampleFeature', ent, {  });

  /**
   * Create a ExampleFeatureAppl - ExampleFeatureAppl
   *
   * Requires exampleId, exampleFeatureId
   * Returns 
   */
  Future<OfResult> createExampleFeatureAppl(ExampleFeatureAppl ent, ) =>
      client.invoke('createExampleFeatureAppl', ent, {  });

  /**
   * Create a ExampleFeatureApplType - ExampleFeatureApplType
   *
   * Requires 
   * Returns exampleFeatureApplTypeId[String]
   */
  Future<OfResult> createExampleFeatureApplType(ExampleFeatureApplType ent, ) =>
      client.invoke('createExampleFeatureApplType', ent, {  });

  /**
   * Create a ExampleItem - ExampleItem
   *
   * Requires exampleId, description, description
   * Returns exampleItemSeqId[String], exampleItemSeqId[String]
   */
  Future<OfResult> createExampleItem(ExampleItem ent, ) =>
      client.invoke('createExampleItem', ent, {  });

  /**
   * Create a ExampleStatus - ExampleStatus
   *
   * Requires exampleId, statusId
   * Returns 
   */
  Future<OfResult> createExampleStatus(ExampleStatus ent, ) =>
      client.invoke('createExampleStatus', ent, {  });

  /**
   * Create a record of ExampleType - ExampleType
   *
   * Requires 
   * Returns exampleTypeId[String]
   */
  Future<OfResult> createExampleType(ExampleType ent, ) =>
      client.invoke('createExampleType', ent, {  });

  /**
   * Delete a Example - Example
   *
   * Requires exampleId
   * Returns 
   */
  Future<OfResult> deleteExample(Example ent, ) =>
      client.invoke('deleteExample', ent, {  });

  /**
   * Delete a ExampleFeature - ExampleFeature
   *
   * Requires exampleFeatureId
   * Returns 
   */
  Future<OfResult> deleteExampleFeature(ExampleFeature ent, ) =>
      client.invoke('deleteExampleFeature', ent, {  });

  /**
   * Delete a ExampleFeatureAppl - ExampleFeatureAppl
   *
   * Requires exampleId, exampleFeatureId, fromDate
   * Returns 
   */
  Future<OfResult> deleteExampleFeatureAppl(ExampleFeatureAppl ent, ) =>
      client.invoke('deleteExampleFeatureAppl', ent, {  });

  /**
   * Delete a ExampleFeatureApplType - ExampleFeatureApplType
   *
   * Requires exampleFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> deleteExampleFeatureApplType(ExampleFeatureApplType ent, ) =>
      client.invoke('deleteExampleFeatureApplType', ent, {  });

  /**
   * Delete a ExampleItem - ExampleItem
   *
   * Requires exampleId, exampleItemSeqId
   * Returns 
   */
  Future<OfResult> deleteExampleItem(ExampleItem ent, ) =>
      client.invoke('deleteExampleItem', ent, {  });

  /**
   * Delete a record of ExampleType - ExampleType
   *
   * Requires exampleTypeId
   * Returns 
   */
  Future<OfResult> deleteExampleType(ExampleType ent, ) =>
      client.invoke('deleteExampleType', ent, {  });

  /**
   *  - 
   *
   * Requires 
   * Returns hasPermission[Boolean], failMessage[String]
   */
  Future<OfResult> exampleGenericPermission({String mainAction, String primaryPermission, String altPermission, String resourceDescription}) =>
      client.invoke('exampleGenericPermission', null, { 'mainAction': mainAction, 'primaryPermission': primaryPermission, 'altPermission': altPermission, 'resourceDescription': resourceDescription });

  /**
   *  - 
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> sendExamplePushNotifications({String exampleId, String message, String successMessage}) =>
      client.invoke('sendExamplePushNotifications', null, { 'exampleId': exampleId, 'message': message, 'successMessage': successMessage });

  /**
   * Update a Example - Example
   *
   * Requires exampleId
   * Returns oldStatusId[String]
   */
  Future<OfResult> updateExample(Example ent, ) =>
      client.invoke('updateExample', ent, {  });

  /**
   * Update a ExampleFeature - ExampleFeature
   *
   * Requires exampleFeatureId
   * Returns 
   */
  Future<OfResult> updateExampleFeature(ExampleFeature ent, ) =>
      client.invoke('updateExampleFeature', ent, {  });

  /**
   * Update a ExampleFeatureAppl - ExampleFeatureAppl
   *
   * Requires exampleId, exampleFeatureId, fromDate
   * Returns 
   */
  Future<OfResult> updateExampleFeatureAppl(ExampleFeatureAppl ent, ) =>
      client.invoke('updateExampleFeatureAppl', ent, {  });

  /**
   * Update a ExampleFeatureApplType - ExampleFeatureApplType
   *
   * Requires exampleFeatureApplTypeId
   * Returns 
   */
  Future<OfResult> updateExampleFeatureApplType(ExampleFeatureApplType ent, ) =>
      client.invoke('updateExampleFeatureApplType', ent, {  });

  /**
   * Update a ExampleItem - ExampleItem
   *
   * Requires exampleId, exampleItemSeqId
   * Returns 
   */
  Future<OfResult> updateExampleItem(ExampleItem ent, ) =>
      client.invoke('updateExampleItem', ent, {  });

  /**
   * Update a record of ExampleType - ExampleType
   *
   * Requires exampleTypeId
   * Returns 
   */
  Future<OfResult> updateExampleType(ExampleType ent, ) =>
      client.invoke('updateExampleType', ent, {  });

}