import 'package:sagas_meta/src/models/common_email.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class CommonServicesEmail{
  final SrvClient client;
  CommonServicesEmail(this.client);

  /**
   * Create a EmailTemplateSetting record - EmailTemplateSetting
   *
   * Requires 
   * Returns emailTemplateSettingId[String]
   */
  Future<OfResult> createEmailTemplateSetting(EmailTemplateSetting ent, ) =>
      client.invoke('createEmailTemplateSetting', ent, {  });

  /**
   * Delete a EmailTemplateSetting record - EmailTemplateSetting
   *
   * Requires emailTemplateSettingId
   * Returns 
   */
  Future<OfResult> deleteEmailTemplateSetting(EmailTemplateSetting ent, ) =>
      client.invoke('deleteEmailTemplateSetting', ent, {  });

  /**
   * Send E-Mail Service.  partyId and communicationEventId aren't used by sendMail
            but are passed down to storeEmailAsCommunication during the SECA chain.  See sendMailInterface for more comments. - 
   *
   * Requires body, subject, sendTo
   * Returns body[String], partyId[String], messageId[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String], subject[String], emailType[String]
   */
  Future<OfResult> sendMail({@required String body, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType, @required String subject, String emailType, @required String sendTo}) =>
      client.invoke('sendMail', null, { 'body': body, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType, 'subject': subject, 'emailType': emailType, 'sendTo': sendTo });

  /**
   * Send E-Mail Service.  partyId and communicationEventId aren't used by sendMail
            but are passed down to storeEmailAsCommunication during the SECA chain.  See sendMailInterface for more comments. - 
   *
   * Requires body, subject, sendTo
   * Returns body[String], partyId[String], messageId[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String], subject[String], emailType[String]
   */
  Future<OfResult> sendMailHiddenInLog({bool hideInLog, @required String body, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType, @required String subject, String emailType, @required String sendTo}) =>
      client.invoke('sendMailHiddenInLog', null, { 'hideInLog': hideInLog, 'body': body, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType, 'subject': subject, 'emailType': emailType, 'sendTo': sendTo });

  /**
   * Interface service for mail services.  contentType defaults to "text/html", sendType defaults to
            "mail.smtp.host".  sendVia must be specified if sendType is different.  Configured in general.properties - 
   *
   * Requires 
   * Returns subject[String], contentType[String], partyId[String], messageId[String], emailType[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String]
   */
  Future<OfResult> sendMailInterface({String sendTo, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String subject, String contentType, String partyId, String messageId, String emailType, String orderId, String returnId, String custRequestId, String communicationEventId}) =>
      client.invoke('sendMailInterface', null, { 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'subject': subject, 'contentType': contentType, 'partyId': partyId, 'messageId': messageId, 'emailType': emailType, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId });

  /**
   * Send Multi-Part E-Mail Service - 
   *
   * Requires bodyParts, subject
   * Returns bodyParts[java.util.List], subject[String], partyId[String], messageId[String], emailType[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String]
   */
  Future<OfResult> sendMailMultiPart({@required List<dynamic> bodyParts, @required String subject, String sendTo, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String emailType, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType}) =>
      client.invoke('sendMailMultiPart', null, { 'bodyParts': bodyParts, 'subject': subject, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'emailType': emailType, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType });

  /**
   * Send Multi-Part E-Mail Service - 
   *
   * Requires bodyParts, subject
   * Returns bodyParts[java.util.List], subject[String], partyId[String], messageId[String], emailType[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String]
   */
  Future<OfResult> sendMailMultiPartHiddenInLog({@required List<dynamic> bodyParts, @required String subject, String sendTo, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String emailType, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType}) =>
      client.invoke('sendMailMultiPartHiddenInLog', null, { 'bodyParts': bodyParts, 'subject': subject, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'emailType': emailType, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType });

  /**
   * Interface service for sendMailMultiPart* services - 
   *
   * Requires bodyParts, subject
   * Returns bodyParts[java.util.List], subject[String], partyId[String], messageId[String], emailType[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String]
   */
  Future<OfResult> sendMailMultiPartInterface({@required List<dynamic> bodyParts, @required String subject, String sendTo, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String emailType, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType}) =>
      client.invoke('sendMailMultiPartInterface', null, { 'bodyParts': bodyParts, 'subject': subject, 'sendTo': sendTo, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'emailType': emailType, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType });

  /**
   * Interface service for sendMail* services. - 
   *
   * Requires body, subject, sendTo
   * Returns body[String], partyId[String], messageId[String], orderId[String], returnId[String], custRequestId[String], messageWrapper[org.apache.ofbiz.service.mail.MimeMessageWrapper], communicationEventId[String], contentType[String], subject[String], emailType[String]
   */
  Future<OfResult> sendMailOnePartInterface({@required String body, String sendCc, String sendBcc, String sendFrom, String authUser, String authPass, String port, String sendVia, String sendType, String socketFactoryClass, String socketFactoryPort, String socketFactoryFallback, bool sendFailureNotification, bool sendPartial, bool startTLSEnabled, String partyId, String messageId, String orderId, String returnId, String custRequestId, String communicationEventId, String contentType, @required String subject, String emailType, @required String sendTo}) =>
      client.invoke('sendMailOnePartInterface', null, { 'body': body, 'sendCc': sendCc, 'sendBcc': sendBcc, 'sendFrom': sendFrom, 'authUser': authUser, 'authPass': authPass, 'port': port, 'sendVia': sendVia, 'sendType': sendType, 'socketFactoryClass': socketFactoryClass, 'socketFactoryPort': socketFactoryPort, 'socketFactoryFallback': socketFactoryFallback, 'sendFailureNotification': sendFailureNotification, 'sendPartial': sendPartial, 'startTLSEnabled': startTLSEnabled, 'partyId': partyId, 'messageId': messageId, 'orderId': orderId, 'returnId': returnId, 'custRequestId': custRequestId, 'communicationEventId': communicationEventId, 'contentType': contentType, 'subject': subject, 'emailType': emailType, 'sendTo': sendTo });

  /**
   * Update a EmailTemplateSetting record - EmailTemplateSetting
   *
   * Requires emailTemplateSettingId
   * Returns 
   */
  Future<OfResult> updateEmailTemplateSetting(EmailTemplateSetting ent, ) =>
      client.invoke('updateEmailTemplateSetting', ent, {  });

}