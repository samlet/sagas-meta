import 'package:sagas_meta/src/models/return_communication.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class ReturnCommunicationJsonifier{
  static CommunicationEventAndReturn extractCommunicationEventAndReturn(dynamic json) {
    return CommunicationEventAndReturn(
        entityId: create_id_from('CommunicationEventAndReturn', ['returnId', 'communicationEventId'], json),
        partyIdFrom: json['partyIdFrom'] as String,
        note: json['note'] as String,
        subject: json['subject'] as String,
        ccString: json['ccString'] as String,
        contactMechTypeId: json['contactMechTypeId'] as String,
        communicationEventTypeId: json['communicationEventTypeId'] as String,
        content: json['content'] as String,
        contentMimeTypeId: json['contentMimeTypeId'] as String,
        datetimeStarted: check_dt(json['datetimeStarted']),
        returnId: json['returnId'] as String,
        contactListId: json['contactListId'] as String,
        contactMechIdFrom: json['contactMechIdFrom'] as String,
        reasonEnumId: json['reasonEnumId'] as String,
        roleTypeIdTo: json['roleTypeIdTo'] as String,
        parentCommEventId: json['parentCommEventId'] as String,
        entryDate: check_dt(json['entryDate']),
        datetimeEnded: check_dt(json['datetimeEnded']),
        origCommEventId: json['origCommEventId'] as String,
        messageId: json['messageId'] as String,
        roleTypeIdFrom: json['roleTypeIdFrom'] as String,
        contactMechIdTo: json['contactMechIdTo'] as String,
        headerString: json['headerString'] as String,
        statusId: json['statusId'] as String,
        communicationEventId: json['communicationEventId'] as String,
        bccString: json['bccString'] as String,
        partyIdTo: json['partyIdTo'] as String,
        toStr: json['toString'] as String,
        fromString: json['fromString'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static CommunicationEventAndReturn overridesCommunicationEventAndReturn(Map<String, dynamic> map) {
    return CommunicationEventAndReturn(
        entityId: create_id_from('CommunicationEventAndReturn', ['returnId', 'communicationEventId'], map),
        partyIdFrom: map['partyIdFrom'],
        note: map['note'],
        subject: map['subject'],
        ccString: map['ccString'],
        contactMechTypeId: map['contactMechTypeId'],
        communicationEventTypeId: map['communicationEventTypeId'],
        content: map['content'],
        contentMimeTypeId: map['contentMimeTypeId'],
        datetimeStarted: map['datetimeStarted'],
        returnId: map['returnId'],
        contactListId: map['contactListId'],
        contactMechIdFrom: map['contactMechIdFrom'],
        reasonEnumId: map['reasonEnumId'],
        roleTypeIdTo: map['roleTypeIdTo'],
        parentCommEventId: map['parentCommEventId'],
        entryDate: map['entryDate'],
        datetimeEnded: map['datetimeEnded'],
        origCommEventId: map['origCommEventId'],
        messageId: map['messageId'],
        roleTypeIdFrom: map['roleTypeIdFrom'],
        contactMechIdTo: map['contactMechIdTo'],
        headerString: map['headerString'],
        statusId: map['statusId'],
        communicationEventId: map['communicationEventId'],
        bccString: map['bccString'],
        partyIdTo: map['partyIdTo'],
        toStr: map['toString'],
        fromString: map['fromString'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}