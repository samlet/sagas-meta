import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/entity_base.dart';

/// Entity EmailTemplateSetting, Email Template Setting
class EmailTemplateSetting extends EntityBase {

  /// this entity has only one pk
  final String xslfoAttachScreenLocation;
  final String bodyScreenLocation;
  final String subject;
  final String description;
  final String bccAddress;
  final String emailTemplateSettingId; // pk
  final String ccAddress;
  final String emailType;
  final String fromAddress;
  final String contentType;
  EmailTemplateSetting({entityId,
    this.xslfoAttachScreenLocation, this.bodyScreenLocation, this.subject, this.description, this.bccAddress, @required this.emailTemplateSettingId, this.ccAddress, this.emailType, this.fromAddress, this.contentType,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EmailTemplateSetting { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return {'xslfoAttachScreenLocation':xslfoAttachScreenLocation, 'bodyScreenLocation':bodyScreenLocation, 'subject':subject, 'description':description, 'bccAddress':bccAddress, 'emailTemplateSettingId':emailTemplateSettingId, 'ccAddress':ccAddress, 'emailType':emailType, 'fromAddress':fromAddress, 'contentType':contentType};
  }

}