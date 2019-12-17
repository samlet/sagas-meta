import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity AllExamplesWithDesiredCustomerFeaturesReport, AllExamplesWithDesiredCustomerFeaturesReport
class AllExamplesWithDesiredCustomerFeaturesReport extends EntityBase {

  final String longDescription;
  final String exampleTypeId;
  final DateTime anotherDate;
  final String exampleId; // pk
  final String parentTypeId;
  final String comments;
  final int sequenceNum;
  final String featureDescription;
  final String description;
  final String typeDescription;
  final String anotherText;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  final DateTime fromDate; // pk
  final String featureSourceEnumId;
  final DateTime exampleDate;
  final String statusId;
  final String exampleName;
  final int exampleSize;
  final String exampleFeatureApplTypeId;
  AllExamplesWithDesiredCustomerFeaturesReport({entityId,
    this.longDescription, this.exampleTypeId, this.anotherDate, @required this.exampleId, this.parentTypeId, this.comments, this.sequenceNum, this.featureDescription, this.description, this.typeDescription, this.anotherText, @required this.exampleFeatureId, this.thruDate, @required this.fromDate, this.featureSourceEnumId, this.exampleDate, this.statusId, this.exampleName, this.exampleSize, this.exampleFeatureApplTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'AllExamplesWithDesiredCustomerFeaturesReport { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'exampleTypeId':exampleTypeId, 'anotherDate':anotherDate, 'exampleId':exampleId, 'parentTypeId':parentTypeId, 'comments':comments, 'sequenceNum':sequenceNum, 'featureDescription':featureDescription, 'description':description, 'typeDescription':typeDescription, 'anotherText':anotherText, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate, 'fromDate':fromDate, 'featureSourceEnumId':featureSourceEnumId, 'exampleDate':exampleDate, 'statusId':statusId, 'exampleName':exampleName, 'exampleSize':exampleSize, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId};
  }

}

/// Entity ContrivedExamplesWithRequiredFeaturesReport, ContrivedExamplesWithRequiredFeaturesReport
class ContrivedExamplesWithRequiredFeaturesReport extends EntityBase {

  final String longDescription;
  final String exampleTypeId;
  final DateTime anotherDate;
  final String exampleId; // pk
  final String comments;
  final String parentTypeId;
  final int sequenceNum;
  final String featureDescription;
  final String description;
  final String anotherText;
  final String typeDescription;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  final String featureSourceEnumId;
  final DateTime fromDate; // pk
  final DateTime exampleDate;
  final String statusId;
  final String exampleName;
  final int exampleSize;
  final String exampleFeatureApplTypeId;
  ContrivedExamplesWithRequiredFeaturesReport({entityId,
    this.longDescription, this.exampleTypeId, this.anotherDate, @required this.exampleId, this.comments, this.parentTypeId, this.sequenceNum, this.featureDescription, this.description, this.anotherText, this.typeDescription, @required this.exampleFeatureId, this.thruDate, this.featureSourceEnumId, @required this.fromDate, this.exampleDate, this.statusId, this.exampleName, this.exampleSize, this.exampleFeatureApplTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ContrivedExamplesWithRequiredFeaturesReport { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'exampleTypeId':exampleTypeId, 'anotherDate':anotherDate, 'exampleId':exampleId, 'comments':comments, 'parentTypeId':parentTypeId, 'sequenceNum':sequenceNum, 'featureDescription':featureDescription, 'description':description, 'anotherText':anotherText, 'typeDescription':typeDescription, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate, 'featureSourceEnumId':featureSourceEnumId, 'fromDate':fromDate, 'exampleDate':exampleDate, 'statusId':statusId, 'exampleName':exampleName, 'exampleSize':exampleSize, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId};
  }

}

/// Entity Example, Example Entity
class Example extends EntityBase {

  /// this entity has only one pk
  final String longDescription;
  final String exampleTypeId;
  final DateTime anotherDate;
  final String exampleId; // pk
  final String comments;
  final String description;
  final String anotherText;
  final DateTime exampleDate;
  final String statusId;
  final String exampleName;
  final int exampleSize;
  Example({entityId,
    this.longDescription, this.exampleTypeId, this.anotherDate, @required this.exampleId, this.comments, this.description, this.anotherText, this.exampleDate, this.statusId, this.exampleName, this.exampleSize,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'Example { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'exampleTypeId':exampleTypeId, 'anotherDate':anotherDate, 'exampleId':exampleId, 'comments':comments, 'description':description, 'anotherText':anotherText, 'exampleDate':exampleDate, 'statusId':statusId, 'exampleName':exampleName, 'exampleSize':exampleSize};
  }

}

/// Entity ExampleCountByType, ExampleCountByType
class ExampleCountByType extends EntityBase {

  /// this entity has only one pk
  final int total; // pk
  final String exampleTypeId;
  ExampleCountByType({entityId,
    @required this.total, this.exampleTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleCountByType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'total':total, 'exampleTypeId':exampleTypeId};
  }

}

/// Entity ExampleFeatureAndApplAndType, ExampleFeatureAndApplAndType
class ExampleFeatureAndApplAndType extends EntityBase {

  final String featureSourceEnumId;
  final DateTime fromDate; // pk
  final String exampleId; // pk
  final String parentTypeId;
  final int sequenceNum;
  final String description;
  final String typeDescription;
  final String exampleFeatureApplTypeId;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  ExampleFeatureAndApplAndType({entityId,
    this.featureSourceEnumId, @required this.fromDate, @required this.exampleId, this.parentTypeId, this.sequenceNum, this.description, this.typeDescription, this.exampleFeatureApplTypeId, @required this.exampleFeatureId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureAndApplAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'featureSourceEnumId':featureSourceEnumId, 'fromDate':fromDate, 'exampleId':exampleId, 'parentTypeId':parentTypeId, 'sequenceNum':sequenceNum, 'description':description, 'typeDescription':typeDescription, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate};
  }

}

/// Entity ExampleFeatureAndApplFullView, ExampleFeatureAndApplFullView
class ExampleFeatureAndApplFullView extends EntityBase {

  final String longDescription;
  final String exampleTypeId;
  final DateTime anotherDate;
  final String exampleId; // pk
  final String comments;
  final String parentTypeId;
  final int sequenceNum;
  final String featureDescription;
  final String description;
  final String anotherText;
  final String typeDescription;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  final String featureSourceEnumId;
  final DateTime fromDate; // pk
  final DateTime exampleDate;
  final String statusId;
  final String exampleName;
  final int exampleSize;
  final String exampleFeatureApplTypeId;
  ExampleFeatureAndApplFullView({entityId,
    this.longDescription, this.exampleTypeId, this.anotherDate, @required this.exampleId, this.comments, this.parentTypeId, this.sequenceNum, this.featureDescription, this.description, this.anotherText, this.typeDescription, @required this.exampleFeatureId, this.thruDate, this.featureSourceEnumId, @required this.fromDate, this.exampleDate, this.statusId, this.exampleName, this.exampleSize, this.exampleFeatureApplTypeId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureAndApplFullView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'exampleTypeId':exampleTypeId, 'anotherDate':anotherDate, 'exampleId':exampleId, 'comments':comments, 'parentTypeId':parentTypeId, 'sequenceNum':sequenceNum, 'featureDescription':featureDescription, 'description':description, 'anotherText':anotherText, 'typeDescription':typeDescription, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate, 'featureSourceEnumId':featureSourceEnumId, 'fromDate':fromDate, 'exampleDate':exampleDate, 'statusId':statusId, 'exampleName':exampleName, 'exampleSize':exampleSize, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId};
  }

}

/// Entity ExampleFeatureApplAndType, ExampleFeatureApplAndType
class ExampleFeatureApplAndType extends EntityBase {

  final DateTime fromDate; // pk
  final String exampleId; // pk
  final String parentTypeId;
  final int sequenceNum;
  final String description;
  final String exampleFeatureApplTypeId;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  ExampleFeatureApplAndType({entityId,
    @required this.fromDate, @required this.exampleId, this.parentTypeId, this.sequenceNum, this.description, this.exampleFeatureApplTypeId, @required this.exampleFeatureId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureApplAndType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'exampleId':exampleId, 'parentTypeId':parentTypeId, 'sequenceNum':sequenceNum, 'description':description, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate};
  }

}

/// Entity ExampleFeatureApplAndTypeDesired, ExampleFeatureApplAndTypeDesired
class ExampleFeatureApplAndTypeDesired extends EntityBase {

  final DateTime fromDate; // pk
  final String exampleId; // pk
  final String parentTypeId;
  final int sequenceNum;
  final String typeDescription;
  final String exampleFeatureApplTypeId;
  final String exampleFeatureId; // pk
  final DateTime thruDate;
  ExampleFeatureApplAndTypeDesired({entityId,
    @required this.fromDate, @required this.exampleId, this.parentTypeId, this.sequenceNum, this.typeDescription, this.exampleFeatureApplTypeId, @required this.exampleFeatureId, this.thruDate,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleFeatureApplAndTypeDesired { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'fromDate':fromDate, 'exampleId':exampleId, 'parentTypeId':parentTypeId, 'sequenceNum':sequenceNum, 'typeDescription':typeDescription, 'exampleFeatureApplTypeId':exampleFeatureApplTypeId, 'exampleFeatureId':exampleFeatureId, 'thruDate':thruDate};
  }

}

/// Entity ExampleItem, Example Item Entity
class ExampleItem extends EntityBase {

  final double amount;
  final String amountUomId;
  final String exampleId; // pk
  final String exampleItemSeqId; // pk
  final String description;
  ExampleItem({entityId,
    this.amount, this.amountUomId, @required this.exampleId, @required this.exampleItemSeqId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'amount':amount, 'amountUomId':amountUomId, 'exampleId':exampleId, 'exampleItemSeqId':exampleItemSeqId, 'description':description};
  }

}

/// Entity ExampleStatus, Example Status Entity
class ExampleStatus extends EntityBase {

  final DateTime statusDate; // pk
  final String exampleId; // pk
  final String statusId;
  final DateTime statusEndDate;
  final String changeByUserLoginId;
  ExampleStatus({entityId,
    @required this.statusDate, @required this.exampleId, this.statusId, this.statusEndDate, this.changeByUserLoginId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleStatus { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusDate':statusDate, 'exampleId':exampleId, 'statusId':statusId, 'statusEndDate':statusEndDate, 'changeByUserLoginId':changeByUserLoginId};
  }

}

/// Entity ExampleStatusDetail, ExampleStatusDetail
class ExampleStatusDetail extends EntityBase {

  final String longDescription;
  final DateTime statusDate; // pk
  final String exampleTypeId;
  final DateTime anotherDate;
  final String exampleId; // pk
  final String comments;
  final String statusTypeId;
  final String description;
  final String anotherText;
  final DateTime statusEndDate;
  final String currentStatusId;
  final String sequenceId;
  final DateTime statusDelay;
  final String statusDescription;
  final DateTime exampleDate;
  final String statusId;
  final String exampleName;
  final int exampleSize;
  final String changeByUserLoginId;
  final String statusCode;
  ExampleStatusDetail({entityId,
    this.longDescription, @required this.statusDate, this.exampleTypeId, this.anotherDate, @required this.exampleId, this.comments, this.statusTypeId, this.description, this.anotherText, this.statusEndDate, this.currentStatusId, this.sequenceId, this.statusDelay, this.statusDescription, this.exampleDate, this.statusId, this.exampleName, this.exampleSize, this.changeByUserLoginId, this.statusCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleStatusDetail { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'longDescription':longDescription, 'statusDate':statusDate, 'exampleTypeId':exampleTypeId, 'anotherDate':anotherDate, 'exampleId':exampleId, 'comments':comments, 'statusTypeId':statusTypeId, 'description':description, 'anotherText':anotherText, 'statusEndDate':statusEndDate, 'currentStatusId':currentStatusId, 'sequenceId':sequenceId, 'statusDelay':statusDelay, 'statusDescription':statusDescription, 'exampleDate':exampleDate, 'statusId':statusId, 'exampleName':exampleName, 'exampleSize':exampleSize, 'changeByUserLoginId':changeByUserLoginId, 'statusCode':statusCode};
  }

}

/// Entity ExampleStatusItem, ExampleStatusItem
class ExampleStatusItem extends EntityBase {

  /// this entity has only one pk
  final String statusId; // pk
  final String statusTypeId;
  final String description;
  final String sequenceId;
  final String statusCode;
  ExampleStatusItem({entityId,
    @required this.statusId, this.statusTypeId, this.description, this.sequenceId, this.statusCode,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleStatusItem { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'statusId':statusId, 'statusTypeId':statusTypeId, 'description':description, 'sequenceId':sequenceId, 'statusCode':statusCode};
  }

}

/// Entity ExampleType, Example Type Entity
class ExampleType extends EntityBase {

  /// this entity has only one pk
  final String exampleTypeId; // pk
  final String parentTypeId;
  final String description;
  ExampleType({entityId,
    @required this.exampleTypeId, this.parentTypeId, this.description,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleType { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'exampleTypeId':exampleTypeId, 'parentTypeId':parentTypeId, 'description':description};
  }

}

/// Entity ExampleTypeView, ExampleTypeView
class ExampleTypeView extends EntityBase {

  /// this entity has only one pk
  final String exampleTypeId;
  final String exampleId; // pk
  ExampleTypeView({entityId,
    this.exampleTypeId, @required this.exampleId,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'ExampleTypeView { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'exampleTypeId':exampleTypeId, 'exampleId':exampleId};
  }

}