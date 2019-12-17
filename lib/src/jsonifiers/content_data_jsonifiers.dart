import 'package:sagas_meta/src/models/content_data.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentDataJsonifier{
  static AudioDataResource extractAudioDataResource(dynamic json) {
    return AudioDataResource(
        entityId: create_id_from('AudioDataResource', ['dataResourceId'], json),
        audioData: check_b64(json['audioData']),
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static AudioDataResource overridesAudioDataResource(Map<String, dynamic> map) {
    return AudioDataResource(
        entityId: create_id_from('AudioDataResource', ['dataResourceId'], map),
        audioData: map['audioData'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static CharacterSet extractCharacterSet(dynamic json) {
    return CharacterSet(
        entityId: create_id_from('CharacterSet', ['characterSetId'], json),
        description: json['description'] as String,
        characterSetId: json['characterSetId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CharacterSet overridesCharacterSet(Map<String, dynamic> map) {
    return CharacterSet(
        entityId: create_id_from('CharacterSet', ['characterSetId'], map),
        description: map['description'],
        characterSetId: map['characterSetId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataCategory extractDataCategory(dynamic json) {
    return DataCategory(
        entityId: create_id_from('DataCategory', ['dataCategoryId'], json),
        parentCategoryId: json['parentCategoryId'] as String,
        dataCategoryId: json['dataCategoryId'] as String,
        categoryName: json['categoryName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataCategory overridesDataCategory(Map<String, dynamic> map) {
    return DataCategory(
        entityId: create_id_from('DataCategory', ['dataCategoryId'], map),
        parentCategoryId: map['parentCategoryId'],
        dataCategoryId: map['dataCategoryId'],
        categoryName: map['categoryName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResource extractDataResource(dynamic json) {
    return DataResource(
        entityId: create_id_from('DataResource', ['dataResourceId'], json),
        dataResourceName: json['dataResourceName'] as String,
        surveyId: json['surveyId'] as String,
        dataTemplateTypeId: json['dataTemplateTypeId'] as String,
        lastModifiedDate: check_dt(json['lastModifiedDate']),
        mimeTypeId: json['mimeTypeId'] as String,
        dataCategoryId: json['dataCategoryId'] as String,
        surveyResponseId: json['surveyResponseId'] as String,
        characterSetId: json['characterSetId'] as String,
        dataSourceId: json['dataSourceId'] as String,
        lastModifiedByUserLogin: json['lastModifiedByUserLogin'] as String,
        createdDate: check_dt(json['createdDate']),
        statusId: json['statusId'] as String,
        localeString: json['localeString'] as String,
        relatedDetailId: json['relatedDetailId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        isPublic: json['isPublic'] as String,
        objectInfo: json['objectInfo'] as String,
        dataResourceTypeId: json['dataResourceTypeId'] as String,
        createdByUserLogin: json['createdByUserLogin'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResource overridesDataResource(Map<String, dynamic> map) {
    return DataResource(
        entityId: create_id_from('DataResource', ['dataResourceId'], map),
        dataResourceName: map['dataResourceName'],
        surveyId: map['surveyId'],
        dataTemplateTypeId: map['dataTemplateTypeId'],
        lastModifiedDate: map['lastModifiedDate'],
        mimeTypeId: map['mimeTypeId'],
        dataCategoryId: map['dataCategoryId'],
        surveyResponseId: map['surveyResponseId'],
        characterSetId: map['characterSetId'],
        dataSourceId: map['dataSourceId'],
        lastModifiedByUserLogin: map['lastModifiedByUserLogin'],
        createdDate: map['createdDate'],
        statusId: map['statusId'],
        localeString: map['localeString'],
        relatedDetailId: map['relatedDetailId'],
        dataResourceId: map['dataResourceId'],
        isPublic: map['isPublic'],
        objectInfo: map['objectInfo'],
        dataResourceTypeId: map['dataResourceTypeId'],
        createdByUserLogin: map['createdByUserLogin'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourceAttribute extractDataResourceAttribute(dynamic json) {
    return DataResourceAttribute(
        entityId: create_id_from('DataResourceAttribute', ['dataResourceId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        dataResourceId: json['dataResourceId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourceAttribute overridesDataResourceAttribute(Map<String, dynamic> map) {
    return DataResourceAttribute(
        entityId: create_id_from('DataResourceAttribute', ['dataResourceId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        dataResourceId: map['dataResourceId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourceMetaData extractDataResourceMetaData(dynamic json) {
    return DataResourceMetaData(
        entityId: create_id_from('DataResourceMetaData', ['dataResourceId', 'metaDataPredicateId'], json),
        dataSourceId: json['dataSourceId'] as String,
        metaDataValue: json['metaDataValue'] as String,
        metaDataPredicateId: json['metaDataPredicateId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourceMetaData overridesDataResourceMetaData(Map<String, dynamic> map) {
    return DataResourceMetaData(
        entityId: create_id_from('DataResourceMetaData', ['dataResourceId', 'metaDataPredicateId'], map),
        dataSourceId: map['dataSourceId'],
        metaDataValue: map['metaDataValue'],
        metaDataPredicateId: map['metaDataPredicateId'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourcePurpose extractDataResourcePurpose(dynamic json) {
    return DataResourcePurpose(
        entityId: create_id_from('DataResourcePurpose', ['dataResourceId', 'contentPurposeTypeId'], json),
        contentPurposeTypeId: json['contentPurposeTypeId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourcePurpose overridesDataResourcePurpose(Map<String, dynamic> map) {
    return DataResourcePurpose(
        entityId: create_id_from('DataResourcePurpose', ['dataResourceId', 'contentPurposeTypeId'], map),
        contentPurposeTypeId: map['contentPurposeTypeId'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourceRole extractDataResourceRole(dynamic json) {
    return DataResourceRole(
        entityId: create_id_from('DataResourceRole', ['dataResourceId', 'partyId', 'roleTypeId', 'fromDate'], json),
        fromDate: check_dt(json['fromDate']),
        roleTypeId: json['roleTypeId'] as String,
        dataResourceId: json['dataResourceId'] as String,
        partyId: json['partyId'] as String,
        thruDate: check_dt(json['thruDate']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourceRole overridesDataResourceRole(Map<String, dynamic> map) {
    return DataResourceRole(
        entityId: create_id_from('DataResourceRole', ['dataResourceId', 'partyId', 'roleTypeId', 'fromDate'], map),
        fromDate: map['fromDate'],
        roleTypeId: map['roleTypeId'],
        dataResourceId: map['dataResourceId'],
        partyId: map['partyId'],
        thruDate: map['thruDate'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourceType extractDataResourceType(dynamic json) {
    return DataResourceType(
        entityId: create_id_from('DataResourceType', ['dataResourceTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        description: json['description'] as String,
        dataResourceTypeId: json['dataResourceTypeId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourceType overridesDataResourceType(Map<String, dynamic> map) {
    return DataResourceType(
        entityId: create_id_from('DataResourceType', ['dataResourceTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        description: map['description'],
        dataResourceTypeId: map['dataResourceTypeId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataResourceTypeAttr extractDataResourceTypeAttr(dynamic json) {
    return DataResourceTypeAttr(
        entityId: create_id_from('DataResourceTypeAttr', ['dataResourceTypeId', 'attrName'], json),
        description: json['description'] as String,
        dataResourceTypeId: json['dataResourceTypeId'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataResourceTypeAttr overridesDataResourceTypeAttr(Map<String, dynamic> map) {
    return DataResourceTypeAttr(
        entityId: create_id_from('DataResourceTypeAttr', ['dataResourceTypeId', 'attrName'], map),
        description: map['description'],
        dataResourceTypeId: map['dataResourceTypeId'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DataTemplateType extractDataTemplateType(dynamic json) {
    return DataTemplateType(
        entityId: create_id_from('DataTemplateType', ['dataTemplateTypeId'], json),
        extension: json['extension'] as String,
        dataTemplateTypeId: json['dataTemplateTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DataTemplateType overridesDataTemplateType(Map<String, dynamic> map) {
    return DataTemplateType(
        entityId: create_id_from('DataTemplateType', ['dataTemplateTypeId'], map),
        extension: map['extension'],
        dataTemplateTypeId: map['dataTemplateTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ElectronicText extractElectronicText(dynamic json) {
    return ElectronicText(
        entityId: create_id_from('ElectronicText', ['dataResourceId'], json),
        textData: json['textData'] as String,
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ElectronicText overridesElectronicText(Map<String, dynamic> map) {
    return ElectronicText(
        entityId: create_id_from('ElectronicText', ['dataResourceId'], map),
        textData: map['textData'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static FileExtension extractFileExtension(dynamic json) {
    return FileExtension(
        entityId: create_id_from('FileExtension', ['fileExtensionId'], json),
        mimeTypeId: json['mimeTypeId'] as String,
        fileExtensionId: json['fileExtensionId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static FileExtension overridesFileExtension(Map<String, dynamic> map) {
    return FileExtension(
        entityId: create_id_from('FileExtension', ['fileExtensionId'], map),
        mimeTypeId: map['mimeTypeId'],
        fileExtensionId: map['fileExtensionId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static ImageDataResource extractImageDataResource(dynamic json) {
    return ImageDataResource(
        entityId: create_id_from('ImageDataResource', ['dataResourceId'], json),
        imageData: check_b64(json['imageData']),
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static ImageDataResource overridesImageDataResource(Map<String, dynamic> map) {
    return ImageDataResource(
        entityId: create_id_from('ImageDataResource', ['dataResourceId'], map),
        imageData: map['imageData'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MetaDataPredicate extractMetaDataPredicate(dynamic json) {
    return MetaDataPredicate(
        entityId: create_id_from('MetaDataPredicate', ['metaDataPredicateId'], json),
        metaDataPredicateId: json['metaDataPredicateId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MetaDataPredicate overridesMetaDataPredicate(Map<String, dynamic> map) {
    return MetaDataPredicate(
        entityId: create_id_from('MetaDataPredicate', ['metaDataPredicateId'], map),
        metaDataPredicateId: map['metaDataPredicateId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MimeType extractMimeType(dynamic json) {
    return MimeType(
        entityId: create_id_from('MimeType', ['mimeTypeId'], json),
        mimeTypeId: json['mimeTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MimeType overridesMimeType(Map<String, dynamic> map) {
    return MimeType(
        entityId: create_id_from('MimeType', ['mimeTypeId'], map),
        mimeTypeId: map['mimeTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static MimeTypeHtmlTemplate extractMimeTypeHtmlTemplate(dynamic json) {
    return MimeTypeHtmlTemplate(
        entityId: create_id_from('MimeTypeHtmlTemplate', ['mimeTypeId'], json),
        mimeTypeId: json['mimeTypeId'] as String,
        templateLocation: json['templateLocation'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static MimeTypeHtmlTemplate overridesMimeTypeHtmlTemplate(Map<String, dynamic> map) {
    return MimeTypeHtmlTemplate(
        entityId: create_id_from('MimeTypeHtmlTemplate', ['mimeTypeId'], map),
        mimeTypeId: map['mimeTypeId'],
        templateLocation: map['templateLocation'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static OtherDataResource extractOtherDataResource(dynamic json) {
    return OtherDataResource(
        entityId: create_id_from('OtherDataResource', ['dataResourceId'], json),
        dataResourceContent: check_b64(json['dataResourceContent']),
        dataResourceId: json['dataResourceId'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static OtherDataResource overridesOtherDataResource(Map<String, dynamic> map) {
    return OtherDataResource(
        entityId: create_id_from('OtherDataResource', ['dataResourceId'], map),
        dataResourceContent: map['dataResourceContent'],
        dataResourceId: map['dataResourceId'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static VideoDataResource extractVideoDataResource(dynamic json) {
    return VideoDataResource(
        entityId: create_id_from('VideoDataResource', ['dataResourceId'], json),
        dataResourceId: json['dataResourceId'] as String,
        videoData: check_b64(json['videoData']),
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static VideoDataResource overridesVideoDataResource(Map<String, dynamic> map) {
    return VideoDataResource(
        entityId: create_id_from('VideoDataResource', ['dataResourceId'], map),
        dataResourceId: map['dataResourceId'],
        videoData: map['videoData'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}