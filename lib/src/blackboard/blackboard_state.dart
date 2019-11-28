import 'package:equatable/equatable.dart';

abstract class BlackboardState extends Equatable {}

class BlackboardUninitialized extends BlackboardState {
  @override
  String toString() => 'BlackboardUninitialized';
}

class BlackboardAuthenticated extends BlackboardState {
  @override
  String toString() => 'BlackboardAuthenticated';
}

class BlackboardUnauthenticated extends BlackboardState {
  @override
  String toString() => 'BlackboardUnauthenticated';
}

class BlackboardLoading extends BlackboardState {
  @override
  String toString() => 'BlackboardLoading';
}
