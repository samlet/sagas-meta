import 'package:sagas_meta/src/models/content_content.dart';
import 'package:sagas_meta/src/models/content_data.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesContenttypes{
  final SrvClient client;
  ContentServicesContenttypes(this.client);

  /**
   * Create a CharacterSet - CharacterSet
   *
   * Requires characterSetId
   * Returns characterSetId[String]
   */
  Future<OfResult> createCharacterSet(CharacterSet ent, ) =>
      client.invoke('createCharacterSet', ent, {  });

  /**
   * Create a ContentAssocPredicate - ContentAssocPredicate
   *
   * Requires 
   * Returns contentAssocPredicateId[String]
   */
  Future<OfResult> createContentAssocPredicate(ContentAssocPredicate ent, ) =>
      client.invoke('createContentAssocPredicate', ent, {  });

  /**
   * Create a ContentAssocType - ContentAssocType
   *
   * Requires 
   * Returns contentAssocTypeId[String]
   */
  Future<OfResult> createContentAssocType(ContentAssocType ent, ) =>
      client.invoke('createContentAssocType', ent, {  });

  /**
   * Create a ContentPurposeType - ContentPurposeType
   *
   * Requires 
   * Returns contentPurposeTypeId[String]
   */
  Future<OfResult> createContentPurposeType(ContentPurposeType ent, ) =>
      client.invoke('createContentPurposeType', ent, {  });

  /**
   * Create a ContentType - ContentType
   *
   * Requires 
   * Returns contentTypeId[String]
   */
  Future<OfResult> createContentType(ContentType ent, ) =>
      client.invoke('createContentType', ent, {  });

  /**
   * Create a ContentTypeAttr - ContentTypeAttr
   *
   * Requires contentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createContentTypeAttr(ContentTypeAttr ent, ) =>
      client.invoke('createContentTypeAttr', ent, {  });

  /**
   * Create a DataResourceType - DataResourceType
   *
   * Requires dataResourceTypeId
   * Returns dataResourceTypeId[String]
   */
  Future<OfResult> createDataResourceType(DataResourceType ent, ) =>
      client.invoke('createDataResourceType', ent, {  });

  /**
   * Create a DataResourceTypeAttr - DataResourceTypeAttr
   *
   * Requires dataResourceTypeId, attrName
   * Returns 
   */
  Future<OfResult> createDataResourceTypeAttr(DataResourceTypeAttr ent, ) =>
      client.invoke('createDataResourceTypeAttr', ent, {  });

  /**
   * Create a FileExtension - FileExtension
   *
   * Requires fileExtensionId
   * Returns fileExtensionId[String]
   */
  Future<OfResult> createFileExtension(FileExtension ent, ) =>
      client.invoke('createFileExtension', ent, {  });

  /**
   * Create a MetaDataPredicate - MetaDataPredicate
   *
   * Requires metaDataPredicateId
   * Returns metaDataPredicateId[String]
   */
  Future<OfResult> createMetaDataPredicate(MetaDataPredicate ent, ) =>
      client.invoke('createMetaDataPredicate', ent, {  });

  /**
   * Create a MimeType - MimeType
   *
   * Requires mimeTypeId
   * Returns mimeTypeId[String]
   */
  Future<OfResult> createMimeType(MimeType ent, ) =>
      client.invoke('createMimeType', ent, {  });

  /**
   * Create a MimeTypeHtmlTemplate - MimeTypeHtmlTemplate
   *
   * Requires mimeTypeId
   * Returns 
   */
  Future<OfResult> createMimeTypeHtmlTemplate(MimeTypeHtmlTemplate ent, ) =>
      client.invoke('createMimeTypeHtmlTemplate', ent, {  });

  /**
   * Remove CharacterSet - CharacterSet
   *
   * Requires characterSetId
   * Returns 
   */
  Future<OfResult> removeCharacterSet(CharacterSet ent, ) =>
      client.invoke('removeCharacterSet', ent, {  });

  /**
   * Remove ContentAssocPredicate - ContentAssocPredicate
   *
   * Requires contentAssocPredicateId
   * Returns 
   */
  Future<OfResult> removeContentAssocPredicate(ContentAssocPredicate ent, ) =>
      client.invoke('removeContentAssocPredicate', ent, {  });

  /**
   * Remove ContentAssocType - ContentAssocType
   *
   * Requires contentAssocTypeId
   * Returns 
   */
  Future<OfResult> removeContentAssocType(ContentAssocType ent, ) =>
      client.invoke('removeContentAssocType', ent, {  });

  /**
   * Remove ContentPurposeType - ContentPurposeType
   *
   * Requires contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> removeContentPurposeType(ContentPurposeType ent, ) =>
      client.invoke('removeContentPurposeType', ent, {  });

  /**
   * Remove ContentType - ContentType
   *
   * Requires contentTypeId
   * Returns 
   */
  Future<OfResult> removeContentType(ContentType ent, ) =>
      client.invoke('removeContentType', ent, {  });

  /**
   * Remove ContentTypeAttr - ContentTypeAttr
   *
   * Requires contentTypeId, attrName
   * Returns 
   */
  Future<OfResult> removeContentTypeAttr(ContentTypeAttr ent, ) =>
      client.invoke('removeContentTypeAttr', ent, {  });

  /**
   * Remove DataResourceType - DataResourceType
   *
   * Requires dataResourceTypeId
   * Returns 
   */
  Future<OfResult> removeDataResourceType(DataResourceType ent, ) =>
      client.invoke('removeDataResourceType', ent, {  });

  /**
   * Remove DataResourceTypeAttr - DataResourceTypeAttr
   *
   * Requires dataResourceTypeId, attrName
   * Returns 
   */
  Future<OfResult> removeDataResourceTypeAttr(DataResourceTypeAttr ent, ) =>
      client.invoke('removeDataResourceTypeAttr', ent, {  });

  /**
   * Remove FileExtension - FileExtension
   *
   * Requires fileExtensionId
   * Returns 
   */
  Future<OfResult> removeFileExtension(FileExtension ent, ) =>
      client.invoke('removeFileExtension', ent, {  });

  /**
   * Remove MetaDataPredicate - MetaDataPredicate
   *
   * Requires metaDataPredicateId
   * Returns 
   */
  Future<OfResult> removeMetaDataPredicate(MetaDataPredicate ent, ) =>
      client.invoke('removeMetaDataPredicate', ent, {  });

  /**
   * Remove MimeType - MimeType
   *
   * Requires mimeTypeId
   * Returns 
   */
  Future<OfResult> removeMimeType(MimeType ent, ) =>
      client.invoke('removeMimeType', ent, {  });

  /**
   * Remove MimeTypeHtmlTemplate - MimeTypeHtmlTemplate
   *
   * Requires mimeTypeId
   * Returns 
   */
  Future<OfResult> removeMimeTypeHtmlTemplate(MimeTypeHtmlTemplate ent, ) =>
      client.invoke('removeMimeTypeHtmlTemplate', ent, {  });

  /**
   * Update a CharacterSet - CharacterSet
   *
   * Requires characterSetId
   * Returns 
   */
  Future<OfResult> updateCharacterSet(CharacterSet ent, ) =>
      client.invoke('updateCharacterSet', ent, {  });

  /**
   * Update a ContentAssocPredicate - ContentAssocPredicate
   *
   * Requires contentAssocPredicateId
   * Returns 
   */
  Future<OfResult> updateContentAssocPredicate(ContentAssocPredicate ent, ) =>
      client.invoke('updateContentAssocPredicate', ent, {  });

  /**
   * Update a ContentAssocType - ContentAssocType
   *
   * Requires contentAssocTypeId
   * Returns 
   */
  Future<OfResult> updateContentAssocType(ContentAssocType ent, ) =>
      client.invoke('updateContentAssocType', ent, {  });

  /**
   * Update a ContentPurposeType - ContentPurposeType
   *
   * Requires contentPurposeTypeId
   * Returns 
   */
  Future<OfResult> updateContentPurposeType(ContentPurposeType ent, ) =>
      client.invoke('updateContentPurposeType', ent, {  });

  /**
   * Update a ContentType - ContentType
   *
   * Requires contentTypeId
   * Returns 
   */
  Future<OfResult> updateContentType(ContentType ent, ) =>
      client.invoke('updateContentType', ent, {  });

  /**
   * Update a DataResourceType - DataResourceType
   *
   * Requires dataResourceTypeId
   * Returns 
   */
  Future<OfResult> updateDataResourceType(DataResourceType ent, ) =>
      client.invoke('updateDataResourceType', ent, {  });

  /**
   * Update a DataResourceTypeAttr - DataResourceTypeAttr
   *
   * Requires dataResourceTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateDataResourceTypeAttr(DataResourceTypeAttr ent, ) =>
      client.invoke('updateDataResourceTypeAttr', ent, {  });

  /**
   * Update a FileExtension - FileExtension
   *
   * Requires fileExtensionId
   * Returns 
   */
  Future<OfResult> updateFileExtension(FileExtension ent, ) =>
      client.invoke('updateFileExtension', ent, {  });

  /**
   * Update a MetaDataPredicate - MetaDataPredicate
   *
   * Requires metaDataPredicateId
   * Returns 
   */
  Future<OfResult> updateMetaDataPredicate(MetaDataPredicate ent, ) =>
      client.invoke('updateMetaDataPredicate', ent, {  });

  /**
   * Update a MimeType - MimeType
   *
   * Requires mimeTypeId
   * Returns 
   */
  Future<OfResult> updateMimeType(MimeType ent, ) =>
      client.invoke('updateMimeType', ent, {  });

  /**
   * Update a MimeTypeHtmlTemplate - MimeTypeHtmlTemplate
   *
   * Requires mimeTypeId
   * Returns 
   */
  Future<OfResult> updateMimeTypeHtmlTemplate(MimeTypeHtmlTemplate ent, ) =>
      client.invoke('updateMimeTypeHtmlTemplate', ent, {  });

}