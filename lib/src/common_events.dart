import 'package:equatable/equatable.dart';

abstract class ServiceEvent extends Equatable {
  ServiceEvent([List props = const []]) : super(props);
  Map<String, dynamic> asMap();
}

class SimpleEv extends ServiceEvent {
  String message; //

  SimpleEv({this.message})
      : super([message]);

  @override
  String toString() => 'SimpleEv { message: $message }';

  @override
  Map<String, dynamic> asMap(){
    return {"message": message};
  }
}

