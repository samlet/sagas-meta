import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sagas_meta/src/blackboard/blackboard_event.dart';

abstract class MessageIndicatorEvent extends Equatable {}

class ExtractableMessage extends MessageIndicatorEvent {
  final List<MessageEvent> ev;

  ExtractableMessage(this.ev);
}

enum MessageIndicator { display, hide }

class ExtractableMessageState extends Equatable {
  final MessageIndicator indicator;
  final int total;

  final List<MessageEvent> posts;
  bool hasReachedMax;

  ExtractableMessageState({@required this.indicator, this.total=0, this.posts})
      : assert(indicator != null),
        super([indicator, total, posts]){
    this.hasReachedMax=posts.length>=total;
  }

  ExtractableMessageState copyWith({
    List<MessageEvent> posts,
    bool hasReachedMax,
  }) {
    return ExtractableMessageState(
      indicator: this.indicator,
      total: this.total,
      posts: posts ?? this.posts
    );
  }

  @override
  String toString() =>
      'ExtractableMessageState { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}

class MessageIndicatorBloc extends Bloc<MessageIndicatorEvent, ExtractableMessageState> {
  @override
  ExtractableMessageState get initialState =>
      ExtractableMessageState(indicator: MessageIndicator.hide,
      total: 100, posts: List<MessageEvent>()
      );

  @override
  Stream<ExtractableMessageState> mapEventToState(MessageIndicatorEvent event) async* {
    if (event is ExtractableMessage) {
      yield ExtractableMessageState(
        indicator:
            currentState.indicator == MessageIndicator.display
                ? MessageIndicator.display
                : MessageIndicator.hide,
        total: currentState.total,
        posts: currentState.posts + event.ev
      );
    }
  }
}

