///
//  Generated code. Do not modify.
//  source: blueprints.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'values.pb.dart' as $2;

class BlueOffer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BlueOffer', package: const $pb.PackageName('model'))
    ..aOS(1, 'user')
    ..aInt64(2, 'offer')
    ..hasRequiredFields = false
  ;

  BlueOffer() : super();
  BlueOffer.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BlueOffer.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BlueOffer clone() => new BlueOffer()..mergeFromMessage(this);
  BlueOffer copyWith(void Function(BlueOffer) updates) => super.copyWith((message) => updates(message as BlueOffer));
  $pb.BuilderInfo get info_ => _i;
  static BlueOffer create() => new BlueOffer();
  BlueOffer createEmptyInstance() => create();
  static $pb.PbList<BlueOffer> createRepeated() => new $pb.PbList<BlueOffer>();
  static BlueOffer getDefault() => _defaultInstance ??= create()..freeze();
  static BlueOffer _defaultInstance;

  String get user => $_getS(0, '');
  set user(String v) { $_setString(0, v); }
  bool hasUser() => $_has(0);
  void clearUser() => clearField(1);

  Int64 get offer => $_getI64(1);
  set offer(Int64 v) { $_setInt64(1, v); }
  bool hasOffer() => $_has(1);
  void clearOffer() => clearField(2);
}

class BlueMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BlueMessage', package: const $pb.PackageName('model'))
    ..aOS(1, 'actorPath')
    ..aOS(2, 'type')
    ..a<List<int>>(3, 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlueMessage() : super();
  BlueMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BlueMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BlueMessage clone() => new BlueMessage()..mergeFromMessage(this);
  BlueMessage copyWith(void Function(BlueMessage) updates) => super.copyWith((message) => updates(message as BlueMessage));
  $pb.BuilderInfo get info_ => _i;
  static BlueMessage create() => new BlueMessage();
  BlueMessage createEmptyInstance() => create();
  static $pb.PbList<BlueMessage> createRepeated() => new $pb.PbList<BlueMessage>();
  static BlueMessage getDefault() => _defaultInstance ??= create()..freeze();
  static BlueMessage _defaultInstance;

  String get actorPath => $_getS(0, '');
  set actorPath(String v) { $_setString(0, v); }
  bool hasActorPath() => $_has(0);
  void clearActorPath() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) { $_setString(1, v); }
  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  List<int> get body => $_getN(2);
  set body(List<int> v) { $_setBytes(2, v); }
  bool hasBody() => $_has(2);
  void clearBody() => clearField(3);
}

class BotMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BotMessage', package: const $pb.PackageName('model'))
    ..aOS(1, 'sender')
    ..aOS(2, 'message')
    ..pPS(3, 'attachments')
    ..a<$2.TaStringEntries>(4, 'slots', $pb.PbFieldType.OM, $2.TaStringEntries.getDefault, $2.TaStringEntries.create)
    ..hasRequiredFields = false
  ;

  BotMessage() : super();
  BotMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BotMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BotMessage clone() => new BotMessage()..mergeFromMessage(this);
  BotMessage copyWith(void Function(BotMessage) updates) => super.copyWith((message) => updates(message as BotMessage));
  $pb.BuilderInfo get info_ => _i;
  static BotMessage create() => new BotMessage();
  BotMessage createEmptyInstance() => create();
  static $pb.PbList<BotMessage> createRepeated() => new $pb.PbList<BotMessage>();
  static BotMessage getDefault() => _defaultInstance ??= create()..freeze();
  static BotMessage _defaultInstance;

  String get sender => $_getS(0, '');
  set sender(String v) { $_setString(0, v); }
  bool hasSender() => $_has(0);
  void clearSender() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);

  List<String> get attachments => $_getList(2);

  $2.TaStringEntries get slots => $_getN(3);
  set slots($2.TaStringEntries v) { setField(4, v); }
  bool hasSlots() => $_has(3);
  void clearSlots() => clearField(4);
}

class BotRecipient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BotRecipient', package: const $pb.PackageName('model'))
    ..aOS(1, 'id')
    ..aOS(2, 'text')
    ..hasRequiredFields = false
  ;

  BotRecipient() : super();
  BotRecipient.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BotRecipient.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BotRecipient clone() => new BotRecipient()..mergeFromMessage(this);
  BotRecipient copyWith(void Function(BotRecipient) updates) => super.copyWith((message) => updates(message as BotRecipient));
  $pb.BuilderInfo get info_ => _i;
  static BotRecipient create() => new BotRecipient();
  BotRecipient createEmptyInstance() => create();
  static $pb.PbList<BotRecipient> createRepeated() => new $pb.PbList<BotRecipient>();
  static BotRecipient getDefault() => _defaultInstance ??= create()..freeze();
  static BotRecipient _defaultInstance;

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get text => $_getS(1, '');
  set text(String v) { $_setString(1, v); }
  bool hasText() => $_has(1);
  void clearText() => clearField(2);
}

class BotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BotResponse', package: const $pb.PackageName('model'))
    ..pc<BotRecipient>(1, 'recipients', $pb.PbFieldType.PM,BotRecipient.create)
    ..hasRequiredFields = false
  ;

  BotResponse() : super();
  BotResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BotResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BotResponse clone() => new BotResponse()..mergeFromMessage(this);
  BotResponse copyWith(void Function(BotResponse) updates) => super.copyWith((message) => updates(message as BotResponse));
  $pb.BuilderInfo get info_ => _i;
  static BotResponse create() => new BotResponse();
  BotResponse createEmptyInstance() => create();
  static $pb.PbList<BotResponse> createRepeated() => new $pb.PbList<BotResponse>();
  static BotResponse getDefault() => _defaultInstance ??= create()..freeze();
  static BotResponse _defaultInstance;

  List<BotRecipient> get recipients => $_getList(0);
}

class BotSetSlot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BotSetSlot', package: const $pb.PackageName('model'))
    ..aOS(1, 'event')
    ..aOS(2, 'name')
    ..aOS(3, 'value')
    ..hasRequiredFields = false
  ;

  BotSetSlot() : super();
  BotSetSlot.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BotSetSlot.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BotSetSlot clone() => new BotSetSlot()..mergeFromMessage(this);
  BotSetSlot copyWith(void Function(BotSetSlot) updates) => super.copyWith((message) => updates(message as BotSetSlot));
  $pb.BuilderInfo get info_ => _i;
  static BotSetSlot create() => new BotSetSlot();
  BotSetSlot createEmptyInstance() => create();
  static $pb.PbList<BotSetSlot> createRepeated() => new $pb.PbList<BotSetSlot>();
  static BotSetSlot getDefault() => _defaultInstance ??= create()..freeze();
  static BotSetSlot _defaultInstance;

  String get event => $_getS(0, '');
  set event(String v) { $_setString(0, v); }
  bool hasEvent() => $_has(0);
  void clearEvent() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  String get value => $_getS(2, '');
  set value(String v) { $_setString(2, v); }
  bool hasValue() => $_has(2);
  void clearValue() => clearField(3);
}

class BotAck extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BotAck', package: const $pb.PackageName('model'))
    ..a<int>(1, 'errorCode', $pb.PbFieldType.O3)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  BotAck() : super();
  BotAck.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BotAck.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BotAck clone() => new BotAck()..mergeFromMessage(this);
  BotAck copyWith(void Function(BotAck) updates) => super.copyWith((message) => updates(message as BotAck));
  $pb.BuilderInfo get info_ => _i;
  static BotAck create() => new BotAck();
  BotAck createEmptyInstance() => create();
  static $pb.PbList<BotAck> createRepeated() => new $pb.PbList<BotAck>();
  static BotAck getDefault() => _defaultInstance ??= create()..freeze();
  static BotAck _defaultInstance;

  int get errorCode => $_get(0, 0);
  set errorCode(int v) { $_setSignedInt32(0, v); }
  bool hasErrorCode() => $_has(0);
  void clearErrorCode() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class PingRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PingRequest', package: const $pb.PackageName('model'))
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  PingRequest() : super();
  PingRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PingRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PingRequest clone() => new PingRequest()..mergeFromMessage(this);
  PingRequest copyWith(void Function(PingRequest) updates) => super.copyWith((message) => updates(message as PingRequest));
  $pb.BuilderInfo get info_ => _i;
  static PingRequest create() => new PingRequest();
  PingRequest createEmptyInstance() => create();
  static $pb.PbList<PingRequest> createRepeated() => new $pb.PbList<PingRequest>();
  static PingRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PingRequest _defaultInstance;

  String get message => $_getS(0, '');
  set message(String v) { $_setString(0, v); }
  bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

class PingResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PingResponse', package: const $pb.PackageName('model'))
    ..aOS(1, 'response')
    ..hasRequiredFields = false
  ;

  PingResponse() : super();
  PingResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PingResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PingResponse clone() => new PingResponse()..mergeFromMessage(this);
  PingResponse copyWith(void Function(PingResponse) updates) => super.copyWith((message) => updates(message as PingResponse));
  $pb.BuilderInfo get info_ => _i;
  static PingResponse create() => new PingResponse();
  PingResponse createEmptyInstance() => create();
  static $pb.PbList<PingResponse> createRepeated() => new $pb.PbList<PingResponse>();
  static PingResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PingResponse _defaultInstance;

  String get response => $_getS(0, '');
  set response(String v) { $_setString(0, v); }
  bool hasResponse() => $_has(0);
  void clearResponse() => clearField(1);
}

class BlueInteract extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('BlueInteract', package: const $pb.PackageName('model'))
    ..aOS(1, 'uri')
    ..aOS(2, 'type')
    ..a<List<int>>(3, 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BlueInteract() : super();
  BlueInteract.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  BlueInteract.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  BlueInteract clone() => new BlueInteract()..mergeFromMessage(this);
  BlueInteract copyWith(void Function(BlueInteract) updates) => super.copyWith((message) => updates(message as BlueInteract));
  $pb.BuilderInfo get info_ => _i;
  static BlueInteract create() => new BlueInteract();
  BlueInteract createEmptyInstance() => create();
  static $pb.PbList<BlueInteract> createRepeated() => new $pb.PbList<BlueInteract>();
  static BlueInteract getDefault() => _defaultInstance ??= create()..freeze();
  static BlueInteract _defaultInstance;

  String get uri => $_getS(0, '');
  set uri(String v) { $_setString(0, v); }
  bool hasUri() => $_has(0);
  void clearUri() => clearField(1);

  String get type => $_getS(1, '');
  set type(String v) { $_setString(1, v); }
  bool hasType() => $_has(1);
  void clearType() => clearField(2);

  List<int> get body => $_getN(2);
  set body(List<int> v) { $_setBytes(2, v); }
  bool hasBody() => $_has(2);
  void clearBody() => clearField(3);
}

