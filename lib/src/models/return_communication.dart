import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity CommunicationEventAndReturn, Communication Event And Return View Entity
class CommunicationEventAndReturn extends EntityBase {

  final String partyIdFrom;
  final String note;
  final String subject;
  final String ccString;
  final String contactMechTypeId;
  final String communicationEventTypeId;
  final String content;
  final String contentMimeTypeId;
  final DateTime datetimeStarted;
  final String returnId; // pk
  final String contactListId;
  final String contactMechIdFrom;
  final String reasonEnumId;
  final String roleTypeIdTo;
  final String parentCommEventId;
  final DateTime entryDate;
  final DateTime datetimeEnded;
  final String origCommEventId;
  final String messageId;
  final String roleTypeIdFrom;
  final String contactMechIdTo;
  final String headerString;
  final String statusId;
  final String communicationEventId; // pk
  final String bccString;
  final String partyIdTo;
  final String toStr;
  final String fromString;
  CommunicationEventAndReturn({entityId,
    this.partyIdFrom, this.note, this.subject, this.ccString, this.contactMechTypeId, this.communicationEventTypeId, this.content, this.contentMimeTypeId, this.datetimeStarted, @required this.returnId, this.contactListId, this.contactMechIdFrom, this.reasonEnumId, this.roleTypeIdTo, this.parentCommEventId, this.entryDate, this.datetimeEnded, this.origCommEventId, this.messageId, this.roleTypeIdFrom, this.contactMechIdTo, this.headerString, this.statusId, @required this.communicationEventId, this.bccString, this.partyIdTo, this.toStr, this.fromString,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'CommunicationEventAndReturn { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'partyIdFrom':partyIdFrom, 'note':note, 'subject':subject, 'ccString':ccString, 'contactMechTypeId':contactMechTypeId, 'communicationEventTypeId':communicationEventTypeId, 'content':content, 'contentMimeTypeId':contentMimeTypeId, 'datetimeStarted':datetimeStarted, 'returnId':returnId, 'contactListId':contactListId, 'contactMechIdFrom':contactMechIdFrom, 'reasonEnumId':reasonEnumId, 'roleTypeIdTo':roleTypeIdTo, 'parentCommEventId':parentCommEventId, 'entryDate':entryDate, 'datetimeEnded':datetimeEnded, 'origCommEventId':origCommEventId, 'messageId':messageId, 'roleTypeIdFrom':roleTypeIdFrom, 'contactMechIdTo':contactMechIdTo, 'headerString':headerString, 'statusId':statusId, 'communicationEventId':communicationEventId, 'bccString':bccString, 'partyIdTo':partyIdTo, 'toString':toStr, 'fromString':fromString};
  }

}