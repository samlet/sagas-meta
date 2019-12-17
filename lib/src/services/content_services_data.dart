import 'package:sagas_meta/src/models/content_data.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesData{
  final SrvClient client;
  ContentServicesData(this.client);

  /**
   *  - DataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> clearAssociatedRenderCache(DataResource ent, ) =>
      client.invoke('clearAssociatedRenderCache', ent, {  });

  /**
   * Create an AudioDataResource - AudioDataResource
   *
   * Requires 
   * Returns dataResourceId[String]
   */
  Future<OfResult> createAudioDataResource(AudioDataResource ent, ) =>
      client.invoke('createAudioDataResource', ent, {  });

  /**
   * Create a DataResource and, possibly, ElectronicText or ImageDataResource - DataResource
   *
   * Requires 
   * Returns dataResourceId[String]
   */
  Future<OfResult> createDataResourceAndText(DataResource ent, {String textData, List<dynamic> targetOperationList, List<dynamic> contentPurposeList, String skipPermissionCheck}) =>
      client.invoke('createDataResourceAndText', ent, { 'textData': textData, 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'skipPermissionCheck': skipPermissionCheck });

  /**
   * Create an DataResourceMetaData - DataResourceMetaData
   *
   * Requires dataResourceId, metaDataPredicateId
   * Returns dataResourceId[String], metaDataPredicateId[String]
   */
  Future<OfResult> createDataResourceMetaData(DataResourceMetaData ent, ) =>
      client.invoke('createDataResourceMetaData', ent, {  });

  /**
   * Create an DataResourcePurpose - DataResourcePurpose
   *
   * Requires 
   * Returns dataResourceId[String], contentPurposeTypeId[String]
   */
  Future<OfResult> createDataResourcePurpose(DataResourcePurpose ent, ) =>
      client.invoke('createDataResourcePurpose', ent, {  });

  /**
   * Create a Data Template Type - DataTemplateType
   *
   * Requires 
   * Returns dataTemplateTypeId[String]
   */
  Future<OfResult> createDataTemplateType(DataTemplateType ent, ) =>
      client.invoke('createDataTemplateType', ent, {  });

  /**
   * Create an ImageDataResource - ImageDataResource
   *
   * Requires 
   * Returns dataResourceId[String]
   */
  Future<OfResult> createImageDataResource(ImageDataResource ent, ) =>
      client.invoke('createImageDataResource', ent, {  });

  /**
   * Create an OtherDataResource - OtherDataResource
   *
   * Requires 
   * Returns dataResourceId[String]
   */
  Future<OfResult> createOtherDataResource(OtherDataResource ent, ) =>
      client.invoke('createOtherDataResource', ent, {  });

  /**
   * Create a VideoDataResource - VideoDataResource
   *
   * Requires 
   * Returns dataResourceId[String]
   */
  Future<OfResult> createVideoDataResource(VideoDataResource ent, ) =>
      client.invoke('createVideoDataResource', ent, {  });

  /**
   * Delete a Data Template Type - DataTemplateType
   *
   * Requires dataTemplateTypeId
   * Returns 
   */
  Future<OfResult> deleteDataTemplateType(DataTemplateType ent, ) =>
      client.invoke('deleteDataTemplateType', ent, {  });

  /**
   * Get a ElectronicText: Can pass either content value object or contentId - ElectronicText
   *
   * Requires 
   * Returns dataResourceId[String], textData[String]
   */
  Future<OfResult> getElectronicText(ElectronicText ent, {String contentId, Map<String,dynamic> content}) =>
      client.invoke('getElectronicText', ent, { 'contentId': contentId, 'content': content });

  /**
   * Remove an AudioDataResource - AudioDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeAudioDataResource(AudioDataResource ent, ) =>
      client.invoke('removeAudioDataResource', ent, {  });

  /**
   * Remove DataResource - DataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeDataResource(DataResource ent, {List<dynamic> targetOperationList, List<dynamic> contentPurposeList, String skipPermissionCheck}) =>
      client.invoke('removeDataResource', ent, { 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'skipPermissionCheck': skipPermissionCheck });

  /**
   * Remove an DataResourceMetaData - DataResourceMetaData
   *
   * Requires dataResourceId, metaDataPredicateId
   * Returns 
   */
  Future<OfResult> removeDataResourceMetaData(DataResourceMetaData ent, ) =>
      client.invoke('removeDataResourceMetaData', ent, {  });

  /**
   * Remove an DataResourcePurpose - DataResourcePurpose
   *
   * Requires dataResourceId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> removeDataResourcePurpose(DataResourcePurpose ent, ) =>
      client.invoke('removeDataResourcePurpose', ent, {  });

  /**
   * Remove ElectronicText - ElectronicText
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeElectronicText(ElectronicText ent, ) =>
      client.invoke('removeElectronicText', ent, {  });

  /**
   * Remove an ImageDataResource - ImageDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeImageDataResource(ImageDataResource ent, ) =>
      client.invoke('removeImageDataResource', ent, {  });

  /**
   * Remove an OtherDataResource - OtherDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeOtherDataResource(OtherDataResource ent, ) =>
      client.invoke('removeOtherDataResource', ent, {  });

  /**
   * Remove an VideoDataResource - VideoDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> removeVideoDataResource(VideoDataResource ent, ) =>
      client.invoke('removeVideoDataResource', ent, {  });

  /**
   * Update an AudioDataResource - AudioDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> updateAudioDataResource(AudioDataResource ent, ) =>
      client.invoke('updateAudioDataResource', ent, {  });

  /**
   * Update a DataResource - DataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> updateDataResource(DataResource ent, ) =>
      client.invoke('updateDataResource', ent, {  });

  /**
   * Create a DataResource and, possibly, ElectronicText or ImageDataResource - DataResource
   *
   * Requires 
   * Returns 
   */
  Future<OfResult> updateDataResourceAndText(DataResource ent, {String textData, List<dynamic> targetOperationList, List<dynamic> contentPurposeList, String skipPermissionCheck}) =>
      client.invoke('updateDataResourceAndText', ent, { 'textData': textData, 'targetOperationList': targetOperationList, 'contentPurposeList': contentPurposeList, 'skipPermissionCheck': skipPermissionCheck });

  /**
   * Update an DataResourceMetaData - DataResourceMetaData
   *
   * Requires dataResourceId, metaDataPredicateId
   * Returns 
   */
  Future<OfResult> updateDataResourceMetaData(DataResourceMetaData ent, ) =>
      client.invoke('updateDataResourceMetaData', ent, {  });

  /**
   * Update an DataResourcePurpose - DataResourcePurpose
   *
   * Requires dataResourceId, contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateDataResourcePurpose(DataResourcePurpose ent, ) =>
      client.invoke('updateDataResourcePurpose', ent, {  });

  /**
   * Update a Data Template Type - DataTemplateType
   *
   * Requires dataTemplateTypeId
   * Returns 
   */
  Future<OfResult> updateDataTemplateType(DataTemplateType ent, ) =>
      client.invoke('updateDataTemplateType', ent, {  });

  /**
   * Uses ECA to decide if we should call updateElectronicText or just updateDataResource (SHORT_TEXT) - 
   *
   * Requires dataResourceId
   * Returns dataResourceId[String], contentId[String]
   */
  Future<OfResult> updateDataText({String dataResourceTypeId, String dataTemplateTypeId, String dataCategoryId, String dataSourceId, String statusId, String dataResourceName, String localeString, String mimeTypeId, String characterSetId, String objectInfo, String surveyId, String surveyResponseId, String relatedDetailId, String isPublic, DateTime createdDate, String createdByUserLogin, DateTime lastModifiedDate, String lastModifiedByUserLogin, @required String dataResourceId, String textData, String contentId}) =>
      client.invoke('updateDataText', null, { 'dataResourceTypeId': dataResourceTypeId, 'dataTemplateTypeId': dataTemplateTypeId, 'dataCategoryId': dataCategoryId, 'dataSourceId': dataSourceId, 'statusId': statusId, 'dataResourceName': dataResourceName, 'localeString': localeString, 'mimeTypeId': mimeTypeId, 'characterSetId': characterSetId, 'objectInfo': objectInfo, 'surveyId': surveyId, 'surveyResponseId': surveyResponseId, 'relatedDetailId': relatedDetailId, 'isPublic': isPublic, 'createdDate': createdDate, 'createdByUserLogin': createdByUserLogin, 'lastModifiedDate': lastModifiedDate, 'lastModifiedByUserLogin': lastModifiedByUserLogin, 'dataResourceId': dataResourceId, 'textData': textData, 'contentId': contentId });

  /**
   * Update a ElectronicText - ElectronicText
   *
   * Requires dataResourceId
   * Returns dataResourceId[String], contentId[String]
   */
  Future<OfResult> updateElectronicText(ElectronicText ent, {String contentId}) =>
      client.invoke('updateElectronicText', ent, { 'contentId': contentId });

  /**
   * Update a ElectronicText with Form code - ElectronicText
   *
   * Requires dataResourceId
   * Returns dataResourceId[String], contentId[String]
   */
  Future<OfResult> updateElectronicTextForm(ElectronicText ent, {String contentId}) =>
      client.invoke('updateElectronicTextForm', ent, { 'contentId': contentId });

  /**
   * Update an ImageDataResource - ImageDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> updateImageDataResource(ImageDataResource ent, ) =>
      client.invoke('updateImageDataResource', ent, {  });

  /**
   * Update an OtherDataResource - OtherDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> updateOtherDataResource(OtherDataResource ent, ) =>
      client.invoke('updateOtherDataResource', ent, {  });

  /**
   * Update an VideoDataResource - VideoDataResource
   *
   * Requires dataResourceId
   * Returns 
   */
  Future<OfResult> updateVideoDataResource(VideoDataResource ent, ) =>
      client.invoke('updateVideoDataResource', ent, {  });

}