import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';

abstract class BlackboardEvent extends Equatable {
  BlackboardEvent([List props = const []]) : super(props);
}

class SessionStarted extends BlackboardEvent {
  @override
  String toString() => 'AppStarted';
}

class LoggedIn extends BlackboardEvent {
  final String token;

  LoggedIn({@required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token }';
}

class LoggedOut extends BlackboardEvent {
  @override
  String toString() => 'LoggedOut';
}

class MessageEvent extends BlackboardEvent {
  final String message;
  MessageEvent({@required this.message}) : super([message]);

  @override
  String toString() => 'MessageEvent';
}

class BotEvent extends BlackboardEvent {
  final BotMessage message;
  BotEvent({@required this.message}) : super([message]);

  @override
  String toString() => 'BotEvent';
}

