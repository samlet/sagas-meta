import 'package:sagas_meta/src/models/content_document.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ContentDocumentJsonifier{
  static Document extractDocument(dynamic json) {
    return Document(
        entityId: create_id_from('Document', ['documentId'], json),
        dateCreated: check_dt(json['dateCreated']),
        comments: json['comments'] as String,
        imageData: json['imageData'] as String,
        documentTypeId: json['documentTypeId'] as String,
        documentText: json['documentText'] as String,
        documentId: json['documentId'] as String,
        documentLocation: json['documentLocation'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static Document overridesDocument(Map<String, dynamic> map) {
    return Document(
        entityId: create_id_from('Document', ['documentId'], map),
        dateCreated: map['dateCreated'],
        comments: map['comments'],
        imageData: map['imageData'],
        documentTypeId: map['documentTypeId'],
        documentText: map['documentText'],
        documentId: map['documentId'],
        documentLocation: map['documentLocation'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DocumentAttribute extractDocumentAttribute(dynamic json) {
    return DocumentAttribute(
        entityId: create_id_from('DocumentAttribute', ['documentId', 'attrName'], json),
        attrDescription: json['attrDescription'] as String,
        documentId: json['documentId'] as String,
        attrValue: json['attrValue'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DocumentAttribute overridesDocumentAttribute(Map<String, dynamic> map) {
    return DocumentAttribute(
        entityId: create_id_from('DocumentAttribute', ['documentId', 'attrName'], map),
        attrDescription: map['attrDescription'],
        documentId: map['documentId'],
        attrValue: map['attrValue'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DocumentType extractDocumentType(dynamic json) {
    return DocumentType(
        entityId: create_id_from('DocumentType', ['documentTypeId'], json),
        parentTypeId: json['parentTypeId'] as String,
        hasTable: json['hasTable'] as String,
        documentTypeId: json['documentTypeId'] as String,
        description: json['description'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DocumentType overridesDocumentType(Map<String, dynamic> map) {
    return DocumentType(
        entityId: create_id_from('DocumentType', ['documentTypeId'], map),
        parentTypeId: map['parentTypeId'],
        hasTable: map['hasTable'],
        documentTypeId: map['documentTypeId'],
        description: map['description'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

  static DocumentTypeAttr extractDocumentTypeAttr(dynamic json) {
    return DocumentTypeAttr(
        entityId: create_id_from('DocumentTypeAttr', ['documentTypeId', 'attrName'], json),
        documentTypeId: json['documentTypeId'] as String,
        description: json['description'] as String,
        attrName: json['attrName'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static DocumentTypeAttr overridesDocumentTypeAttr(Map<String, dynamic> map) {
    return DocumentTypeAttr(
        entityId: create_id_from('DocumentTypeAttr', ['documentTypeId', 'attrName'], map),
        documentTypeId: map['documentTypeId'],
        description: map['description'],
        attrName: map['attrName'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}