import 'package:equatable/equatable.dart';
import 'package:sagas_meta/src/result_api.dart';

abstract class ServiceState extends Equatable {
  ServiceState([List props = const []]) : super(props);
}

class ServiceLoading extends ServiceState {
  @override
  String toString() => 'ServiceLoading';
}

class ServiceLoaded extends ServiceState {
  final OfResult result;

  ServiceLoaded([this.result]) : super([result]);

  @override
  String toString() => 'ServiceLoaded { result: $result }';
}

class ServiceNotLoaded extends ServiceState {
  @override
  String toString() => 'ServiceNotLoaded';
}

