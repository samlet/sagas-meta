import 'package:sagas_meta/src/models/content_document.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesDocument{
  final SrvClient client;
  ContentServicesDocument(this.client);

  /**
   * Create a DocumentAttribute record - DocumentAttribute
   *
   * Requires documentId, attrName
   * Returns 
   */
  Future<OfResult> createDocumentAttribute(DocumentAttribute ent, ) =>
      client.invoke('createDocumentAttribute', ent, {  });

  /**
   * Create a DocumentType record - DocumentType
   *
   * Requires 
   * Returns documentTypeId[String]
   */
  Future<OfResult> createDocumentType(DocumentType ent, ) =>
      client.invoke('createDocumentType', ent, {  });

  /**
   * Create a DocumentTypeAttr record - DocumentTypeAttr
   *
   * Requires documentTypeId, attrName
   * Returns 
   */
  Future<OfResult> createDocumentTypeAttr(DocumentTypeAttr ent, ) =>
      client.invoke('createDocumentTypeAttr', ent, {  });

  /**
   * Delete a Document record - Document
   *
   * Requires documentId
   * Returns 
   */
  Future<OfResult> deleteDocument(Document ent, ) =>
      client.invoke('deleteDocument', ent, {  });

  /**
   * Delete a DocumentAttribute record - DocumentAttribute
   *
   * Requires documentId, attrName
   * Returns 
   */
  Future<OfResult> deleteDocumentAttribute(DocumentAttribute ent, ) =>
      client.invoke('deleteDocumentAttribute', ent, {  });

  /**
   * Delete a DocumentType record - DocumentType
   *
   * Requires documentTypeId
   * Returns 
   */
  Future<OfResult> deleteDocumentType(DocumentType ent, ) =>
      client.invoke('deleteDocumentType', ent, {  });

  /**
   * Delete a DocumentTypeAttr record - DocumentTypeAttr
   *
   * Requires documentTypeId, attrName
   * Returns 
   */
  Future<OfResult> deleteDocumentTypeAttr(DocumentTypeAttr ent, ) =>
      client.invoke('deleteDocumentTypeAttr', ent, {  });

  /**
   * Update a DocumentAttribute record - DocumentAttribute
   *
   * Requires documentId, attrName
   * Returns 
   */
  Future<OfResult> updateDocumentAttribute(DocumentAttribute ent, ) =>
      client.invoke('updateDocumentAttribute', ent, {  });

  /**
   * Update a DocumentType record - DocumentType
   *
   * Requires documentTypeId
   * Returns 
   */
  Future<OfResult> updateDocumentType(DocumentType ent, ) =>
      client.invoke('updateDocumentType', ent, {  });

  /**
   * Update a DocumentTypeAttr record - DocumentTypeAttr
   *
   * Requires documentTypeId, attrName
   * Returns 
   */
  Future<OfResult> updateDocumentTypeAttr(DocumentTypeAttr ent, ) =>
      client.invoke('updateDocumentTypeAttr', ent, {  });

}