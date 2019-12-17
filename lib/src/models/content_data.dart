import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AudioDataResource, Audio Data Object
class AudioDataResource extends EntityBase {

  /// this entity has only one pk
  final Uint8List audioData;
  final String dataResourceId; // pk
  AudioDataResource({entityId,
    this.audioData, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AudioDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'audioData':audioData, 'dataResourceId':dataResourceId};
  }

}

/// Entity CharacterSet, Character Set
class CharacterSet extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String characterSetId; // pk
  CharacterSet({entityId,
    this.description, @required this.characterSetId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CharacterSet { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'characterSetId':characterSetId};
  }

}

/// Entity DataCategory, Data Category
class DataCategory extends EntityBase {

  /// this entity has only one pk
  final String parentCategoryId;
  final String dataCategoryId; // pk
  final String categoryName;
  DataCategory({entityId,
    this.parentCategoryId, @required this.dataCategoryId, this.categoryName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataCategory { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentCategoryId':parentCategoryId, 'dataCategoryId':dataCategoryId, 'categoryName':categoryName};
  }

}

/// Entity DataResource, Data Object
class DataResource extends EntityBase {

  /// this entity has only one pk
  final String dataResourceName;
  final String surveyId;
  final String dataTemplateTypeId;
  final DateTime lastModifiedDate;
  final String mimeTypeId;
  final String dataCategoryId;
  final String surveyResponseId;
  final String characterSetId;
  final String dataSourceId;
  final String lastModifiedByUserLogin;
  final DateTime createdDate;
  final String statusId;
  final String localeString;
  final String relatedDetailId;
  final String dataResourceId; // pk
  final String isPublic;
  final String objectInfo;
  final String dataResourceTypeId;
  final String createdByUserLogin;
  DataResource({entityId,
    this.dataResourceName, this.surveyId, this.dataTemplateTypeId, this.lastModifiedDate, this.mimeTypeId, this.dataCategoryId, this.surveyResponseId, this.characterSetId, this.dataSourceId, this.lastModifiedByUserLogin, this.createdDate, this.statusId, this.localeString, this.relatedDetailId, @required this.dataResourceId, this.isPublic, this.objectInfo, this.dataResourceTypeId, this.createdByUserLogin,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataResourceName':dataResourceName, 'surveyId':surveyId, 'dataTemplateTypeId':dataTemplateTypeId, 'lastModifiedDate':lastModifiedDate, 'mimeTypeId':mimeTypeId, 'dataCategoryId':dataCategoryId, 'surveyResponseId':surveyResponseId, 'characterSetId':characterSetId, 'dataSourceId':dataSourceId, 'lastModifiedByUserLogin':lastModifiedByUserLogin, 'createdDate':createdDate, 'statusId':statusId, 'localeString':localeString, 'relatedDetailId':relatedDetailId, 'dataResourceId':dataResourceId, 'isPublic':isPublic, 'objectInfo':objectInfo, 'dataResourceTypeId':dataResourceTypeId, 'createdByUserLogin':createdByUserLogin};
  }

}

/// Entity DataResourceAttribute, Data Object Attribute
class DataResourceAttribute extends EntityBase {

  final String attrDescription;
  final String dataResourceId; // pk
  final String attrValue;
  final String attrName; // pk
  DataResourceAttribute({entityId,
    this.attrDescription, @required this.dataResourceId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'dataResourceId':dataResourceId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity DataResourceMetaData, Data Resource Meta-Data Predicate
class DataResourceMetaData extends EntityBase {

  final String dataSourceId;
  final String metaDataValue;
  final String metaDataPredicateId; // pk
  final String dataResourceId; // pk
  DataResourceMetaData({entityId,
    this.dataSourceId, this.metaDataValue, @required this.metaDataPredicateId, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceMetaData { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataSourceId':dataSourceId, 'metaDataValue':metaDataValue, 'metaDataPredicateId':metaDataPredicateId, 'dataResourceId':dataResourceId};
  }

}

/// Entity DataResourcePurpose, Data Object Purpose
class DataResourcePurpose extends EntityBase {

  final String contentPurposeTypeId; // pk
  final String dataResourceId; // pk
  DataResourcePurpose({entityId,
    @required this.contentPurposeTypeId, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourcePurpose { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'contentPurposeTypeId':contentPurposeTypeId, 'dataResourceId':dataResourceId};
  }

}

/// Entity DataResourceRole, DataResource Role
class DataResourceRole extends EntityBase {

  final DateTime fromDate; // pk
  final String roleTypeId; // pk
  final String dataResourceId; // pk
  final String partyId; // pk
  final DateTime thruDate;
  DataResourceRole({entityId,
    @required this.fromDate, @required this.roleTypeId, @required this.dataResourceId, @required this.partyId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceRole { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'roleTypeId':roleTypeId, 'dataResourceId':dataResourceId, 'partyId':partyId, 'thruDate':thruDate};
  }

}

/// Entity DataResourceType, Data Object Type
class DataResourceType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String description;
  final String dataResourceTypeId; // pk
  DataResourceType({entityId,
    this.parentTypeId, this.hasTable, this.description, @required this.dataResourceTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'description':description, 'dataResourceTypeId':dataResourceTypeId};
  }

}

/// Entity DataResourceTypeAttr, Data Object Type Attribute
class DataResourceTypeAttr extends EntityBase {

  final String description;
  final String dataResourceTypeId; // pk
  final String attrName; // pk
  DataResourceTypeAttr({entityId,
    this.description, @required this.dataResourceTypeId, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataResourceTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'dataResourceTypeId':dataResourceTypeId, 'attrName':attrName};
  }

}

/// Entity DataTemplateType, Data Template Type
class DataTemplateType extends EntityBase {

  /// this entity has only one pk
  final String extension;
  final String dataTemplateTypeId; // pk
  final String description;
  DataTemplateType({entityId,
    this.extension, @required this.dataTemplateTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DataTemplateType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'extension':extension, 'dataTemplateTypeId':dataTemplateTypeId, 'description':description};
  }

}

/// Entity ElectronicText, Electronic Text
class ElectronicText extends EntityBase {

  /// this entity has only one pk
  final String textData;
  final String dataResourceId; // pk
  ElectronicText({entityId,
    this.textData, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ElectronicText { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'textData':textData, 'dataResourceId':dataResourceId};
  }

}

/// Entity FileExtension, File Extension
class FileExtension extends EntityBase {

  /// this entity has only one pk
  final String mimeTypeId;
  final String fileExtensionId; // pk
  FileExtension({entityId,
    this.mimeTypeId, @required this.fileExtensionId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'FileExtension { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mimeTypeId':mimeTypeId, 'fileExtensionId':fileExtensionId};
  }

}

/// Entity ImageDataResource, Image Data Object
class ImageDataResource extends EntityBase {

  /// this entity has only one pk
  final Uint8List imageData;
  final String dataResourceId; // pk
  ImageDataResource({entityId,
    this.imageData, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ImageDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'imageData':imageData, 'dataResourceId':dataResourceId};
  }

}

/// Entity MetaDataPredicate, Data Meta-Data Predicate
class MetaDataPredicate extends EntityBase {

  /// this entity has only one pk
  final String metaDataPredicateId; // pk
  final String description;
  MetaDataPredicate({entityId,
    @required this.metaDataPredicateId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MetaDataPredicate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'metaDataPredicateId':metaDataPredicateId, 'description':description};
  }

}

/// Entity MimeType, Mime Type
class MimeType extends EntityBase {

  /// this entity has only one pk
  final String mimeTypeId; // pk
  final String description;
  MimeType({entityId,
    @required this.mimeTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MimeType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mimeTypeId':mimeTypeId, 'description':description};
  }

}

/// Entity MimeTypeHtmlTemplate, Mime Text Template
class MimeTypeHtmlTemplate extends EntityBase {

  /// this entity has only one pk
  final String mimeTypeId; // pk
  final String templateLocation;
  MimeTypeHtmlTemplate({entityId,
    @required this.mimeTypeId, this.templateLocation,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'MimeTypeHtmlTemplate { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'mimeTypeId':mimeTypeId, 'templateLocation':templateLocation};
  }

}

/// Entity OtherDataResource, Other Data Object
class OtherDataResource extends EntityBase {

  /// this entity has only one pk
  final Uint8List dataResourceContent;
  final String dataResourceId; // pk
  OtherDataResource({entityId,
    this.dataResourceContent, @required this.dataResourceId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'OtherDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataResourceContent':dataResourceContent, 'dataResourceId':dataResourceId};
  }

}

/// Entity VideoDataResource, Video Data Object
class VideoDataResource extends EntityBase {

  /// this entity has only one pk
  final String dataResourceId; // pk
  final Uint8List videoData;
  VideoDataResource({entityId,
    @required this.dataResourceId, this.videoData,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'VideoDataResource { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dataResourceId':dataResourceId, 'videoData':videoData};
  }

}