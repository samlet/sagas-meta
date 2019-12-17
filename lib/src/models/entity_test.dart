import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity TestFieldType, Entity for testing the field data types
class TestFieldType extends EntityBase {

  /// this entity has only one pk
  final String objectField;
  final int numericField;
  final DateTime timeField;
  final DateTime dateField;
  final DateTime dateTimeField;
  final String clobField;
  final String testFieldTypeId; // pk
  final Uint8List blobField;
  final double floatingPointField;
  final Uint8List byteArrayField;
  final double fixedPointField;
  TestFieldType({entityId,
    this.objectField, this.numericField, this.timeField, this.dateField, this.dateTimeField, this.clobField, @required this.testFieldTypeId, this.blobField, this.floatingPointField, this.byteArrayField, this.fixedPointField,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestFieldType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'objectField':objectField, 'numericField':numericField, 'timeField':timeField, 'dateField':dateField, 'dateTimeField':dateTimeField, 'clobField':clobField, 'testFieldTypeId':testFieldTypeId, 'blobField':blobField, 'floatingPointField':floatingPointField, 'byteArrayField':byteArrayField, 'fixedPointField':fixedPointField};
  }

}

/// Entity Testing, Testing
class Testing extends EntityBase {

  /// this entity has only one pk
  final String comments;
  final String testingTypeId;
  final int testingSize;
  final String testingId; // pk
  final String description;
  final DateTime testingDate;
  final String testingName;
  Testing({entityId,
    this.comments, this.testingTypeId, this.testingSize, @required this.testingId, this.description, this.testingDate, this.testingName,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Testing { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'comments':comments, 'testingTypeId':testingTypeId, 'testingSize':testingSize, 'testingId':testingId, 'description':description, 'testingDate':testingDate, 'testingName':testingName};
  }

}

/// Entity TestingCrypto, Testing Crypto
class TestingCrypto extends EntityBase {

  /// this entity has only one pk
  final String testingCryptoId; // pk
  final String encryptedValue;
  final String saltedEncryptedValue;
  final String unencryptedValue;
  final String testingCryptoTypeId;
  TestingCrypto({entityId,
    @required this.testingCryptoId, this.encryptedValue, this.saltedEncryptedValue, this.unencryptedValue, this.testingCryptoTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingCrypto { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingCryptoId':testingCryptoId, 'encryptedValue':encryptedValue, 'saltedEncryptedValue':saltedEncryptedValue, 'unencryptedValue':unencryptedValue, 'testingCryptoTypeId':testingCryptoTypeId};
  }

}

/// Entity TestingCryptoRawView, TestingCrypto Raw View
class TestingCryptoRawView extends EntityBase {

  /// this entity has only one pk
  final String testingCryptoId; // pk
  final String rawSaltedEncryptedValue;
  final String encryptedValue;
  final String saltedEncryptedValue;
  final String unencryptedValue;
  final String testingCryptoTypeId;
  final String rawEncryptedValue;
  TestingCryptoRawView({entityId,
    @required this.testingCryptoId, this.rawSaltedEncryptedValue, this.encryptedValue, this.saltedEncryptedValue, this.unencryptedValue, this.testingCryptoTypeId, this.rawEncryptedValue,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingCryptoRawView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingCryptoId':testingCryptoId, 'rawSaltedEncryptedValue':rawSaltedEncryptedValue, 'encryptedValue':encryptedValue, 'saltedEncryptedValue':saltedEncryptedValue, 'unencryptedValue':unencryptedValue, 'testingCryptoTypeId':testingCryptoTypeId, 'rawEncryptedValue':rawEncryptedValue};
  }

}

/// Entity TestingItem, Testing Item
class TestingItem extends EntityBase {

  final String testingHistory;
  final String testingId; // pk
  final String testingSeqId; // pk
  TestingItem({entityId,
    this.testingHistory, @required this.testingId, @required this.testingSeqId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingHistory':testingHistory, 'testingId':testingId, 'testingSeqId':testingSeqId};
  }

}

/// Entity TestingNode, Testing Node
class TestingNode extends EntityBase {

  /// this entity has only one pk
  final String description;
  final String testingNodeId; // pk
  final String primaryParentNodeId;
  TestingNode({entityId,
    this.description, @required this.testingNodeId, this.primaryParentNodeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingNode { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'description':description, 'testingNodeId':testingNodeId, 'primaryParentNodeId':primaryParentNodeId};
  }

}

/// Entity TestingNodeAndMember, TestingNode And TestingNodeMember View
class TestingNodeAndMember extends EntityBase {

  final DateTime fromDate; // pk
  final DateTime extendFromDate;
  final String description;
  final String testingId; // pk
  final DateTime extendThruDate;
  final String testingNodeId; // pk
  final String primaryParentNodeId;
  final DateTime thruDate;
  TestingNodeAndMember({entityId,
    @required this.fromDate, this.extendFromDate, this.description, @required this.testingId, this.extendThruDate, @required this.testingNodeId, this.primaryParentNodeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingNodeAndMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'extendFromDate':extendFromDate, 'description':description, 'testingId':testingId, 'extendThruDate':extendThruDate, 'testingNodeId':testingNodeId, 'primaryParentNodeId':primaryParentNodeId, 'thruDate':thruDate};
  }

}

/// Entity TestingNodeMember, Testing Node Member
class TestingNodeMember extends EntityBase {

  final DateTime fromDate; // pk
  final DateTime extendFromDate;
  final String testingId; // pk
  final DateTime extendThruDate;
  final String testingNodeId; // pk
  final DateTime thruDate;
  TestingNodeMember({entityId,
    @required this.fromDate, this.extendFromDate, @required this.testingId, this.extendThruDate, @required this.testingNodeId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingNodeMember { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'extendFromDate':extendFromDate, 'testingId':testingId, 'extendThruDate':extendThruDate, 'testingNodeId':testingNodeId, 'thruDate':thruDate};
  }

}

/// Entity TestingRemoveAll, Testing
class TestingRemoveAll extends EntityBase {

  /// this entity has only one pk
  final String testingRemoveAllId; // pk
  final String description;
  TestingRemoveAll({entityId,
    @required this.testingRemoveAllId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingRemoveAll { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingRemoveAllId':testingRemoveAllId, 'description':description};
  }

}

/// Entity TestingStatus, Entity for testing EntityStatus concept
class TestingStatus extends EntityBase {

  /// this entity has only one pk
  final DateTime statusDate;
  final String statusId;
  final String testingId;
  final String testingStatusId; // pk
  final String changeByUserLoginId;
  TestingStatus({entityId,
    this.statusDate, this.statusId, this.testingId, @required this.testingStatusId, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'statusId':statusId, 'testingId':testingId, 'testingStatusId':testingStatusId, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity TestingSubtype, Testing Subtype
class TestingSubtype extends EntityBase {

  /// this entity has only one pk
  final String testingTypeId; // pk
  final String subtypeDescription;
  TestingSubtype({entityId,
    @required this.testingTypeId, this.subtypeDescription,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingSubtype { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingTypeId':testingTypeId, 'subtypeDescription':subtypeDescription};
  }

}

/// Entity TestingType, Testing Entity Type
class TestingType extends EntityBase {

  /// this entity has only one pk
  final String testingTypeId; // pk
  final String description;
  TestingType({entityId,
    @required this.testingTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingTypeId':testingTypeId, 'description':description};
  }

}

/// Entity TestingViewPks, Testing And TestingSubtype View
class TestingViewPks extends EntityBase {

  /// this entity has only one pk
  final String testingTypeId; // pk
  final String subtypeDescription;
  final String description;
  TestingViewPks({entityId,
    @required this.testingTypeId, this.subtypeDescription, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'TestingViewPks { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'testingTypeId':testingTypeId, 'subtypeDescription':subtypeDescription, 'description':description};
  }

}