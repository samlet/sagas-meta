import 'package:equatable/equatable.dart';

abstract class EntityEvent extends Equatable {}

class Fetch extends EntityEvent {
  @override
  String toString() => 'Fetch';
}
