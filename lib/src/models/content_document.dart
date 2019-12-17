import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity Document, Document
class Document extends EntityBase {

  /// this entity has only one pk
  final DateTime dateCreated;
  final String comments;
  final String imageData;
  final String documentTypeId;
  final String documentText;
  final String documentId; // pk
  final String documentLocation;
  Document({entityId,
    this.dateCreated, this.comments, this.imageData, this.documentTypeId, this.documentText, @required this.documentId, this.documentLocation,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Document { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'dateCreated':dateCreated, 'comments':comments, 'imageData':imageData, 'documentTypeId':documentTypeId, 'documentText':documentText, 'documentId':documentId, 'documentLocation':documentLocation};
  }

}

/// Entity DocumentAttribute, Document Attribute
class DocumentAttribute extends EntityBase {

  final String attrDescription;
  final String documentId; // pk
  final String attrValue;
  final String attrName; // pk
  DocumentAttribute({entityId,
    this.attrDescription, @required this.documentId, this.attrValue, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DocumentAttribute { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'attrDescription':attrDescription, 'documentId':documentId, 'attrValue':attrValue, 'attrName':attrName};
  }

}

/// Entity DocumentType, Document Type
class DocumentType extends EntityBase {

  /// this entity has only one pk
  final String parentTypeId;
  final String hasTable;
  final String documentTypeId; // pk
  final String description;
  DocumentType({entityId,
    this.parentTypeId, this.hasTable, @required this.documentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DocumentType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'parentTypeId':parentTypeId, 'hasTable':hasTable, 'documentTypeId':documentTypeId, 'description':description};
  }

}

/// Entity DocumentTypeAttr, Document Type Attribute
class DocumentTypeAttr extends EntityBase {

  final String documentTypeId; // pk
  final String description;
  final String attrName; // pk
  DocumentTypeAttr({entityId,
    @required this.documentTypeId, this.description, @required this.attrName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'DocumentTypeAttr { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'documentTypeId':documentTypeId, 'description':description, 'attrName':attrName};
  }

}