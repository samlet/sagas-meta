import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';

@immutable
abstract class StatsEvent extends Equatable {
  StatsEvent([List props = const []]) : super(props);
}

class UpdateStats extends StatsEvent {
  final List<BotResponse> items;

  UpdateStats(this.items) : super([items]);

  @override
  String toString() => 'UpdateStats { items: $items }';
}

class ClearStats extends StatsEvent {}

@immutable
abstract class StatsState extends Equatable {
  StatsState([List props = const []]) : super(props);
}

class StatsEmpty extends StatsState {
  @override
  String toString() => 'StatsEmpty';
}

class StatsLoaded extends StatsState {
  final List<BotResponse> items;

  StatsLoaded(this.items)
      : super([items]);

  @override
  String toString() {
    return 'StatsLoaded{items: $items}';
  }
}

class ResponserBloc extends Bloc<StatsEvent, StatsState> {
  /*
  final TodosBloc itemsBloc;
  StreamSubscription itemsSubscription;

  ResponserBloc({@required this.itemsBloc}) {
    itemsSubscription = itemsBloc.state.listen((state) {
      if (state is TodosLoaded) {
        dispatch(UpdateStats(state.items));
      }
    });
  }
  */

  @override
  StatsState get initialState => StatsEmpty();

  @override
  Stream<StatsState> mapEventToState(StatsEvent event) async* {
    if (event is UpdateStats) {
      if(currentState is StatsEmpty){
        yield StatsLoaded(event.items);
        return;
      }
      if(currentState is StatsLoaded) {
        yield StatsLoaded((currentState as StatsLoaded).items+event.items);
        return;
      }
    }

    if (event is ClearStats){
      if(currentState is StatsLoaded) {
        yield StatsLoaded([]);
        return;
      }
    }
  }

  /*
  @override
  void dispose() {
    itemsSubscription.cancel();
    super.dispose();
  }
  */
}
