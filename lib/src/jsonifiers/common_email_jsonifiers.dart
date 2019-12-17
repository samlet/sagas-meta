import 'package:sagas_meta/src/models/common_email.dart';
import 'package:sagas_meta/src/entity_base.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:intl/intl.dart';

class CommonEmailJsonifier{
  static EmailTemplateSetting extractEmailTemplateSetting(dynamic json) {
    return EmailTemplateSetting(
        entityId: create_id_from('EmailTemplateSetting', ['emailTemplateSettingId'], json),
        xslfoAttachScreenLocation: json['xslfoAttachScreenLocation'] as String,
        bodyScreenLocation: json['bodyScreenLocation'] as String,
        subject: json['subject'] as String,
        description: json['description'] as String,
        bccAddress: json['bccAddress'] as String,
        emailTemplateSettingId: json['emailTemplateSettingId'] as String,
        ccAddress: json['ccAddress'] as String,
        emailType: json['emailType'] as String,
        fromAddress: json['fromAddress'] as String,
        contentType: json['contentType'] as String,
        lastUpdatedStamp: check_dt(json['lastUpdatedStamp']),
        createdStamp: check_dt(json['createdStamp']));
  }

  static EmailTemplateSetting overridesEmailTemplateSetting(Map<String, dynamic> map) {
    return EmailTemplateSetting(
        entityId: create_id_from('EmailTemplateSetting', ['emailTemplateSettingId'], map),
        xslfoAttachScreenLocation: map['xslfoAttachScreenLocation'],
        bodyScreenLocation: map['bodyScreenLocation'],
        subject: map['subject'],
        description: map['description'],
        bccAddress: map['bccAddress'],
        emailTemplateSettingId: map['emailTemplateSettingId'],
        ccAddress: map['ccAddress'],
        emailType: map['emailType'],
        fromAddress: map['fromAddress'],
        contentType: map['contentType'],
        lastUpdatedStamp: map['lastUpdatedStamp'],
        createdStamp: map['createdStamp']);
  }

}