import 'package:equatable/equatable.dart';
import 'package:sagas_meta/src/entity_base.dart';
//import 'package:catalog/models/models.dart';

abstract class EntityState extends Equatable {
  EntityState([List props = const []]) : super(props);
}

class EntityUninitialized extends EntityState {
  @override
  String toString() => 'EntityUninitialized';
}

class EntityError extends EntityState {
  @override
  String toString() => 'EntityError';
}

class EntityLoaded<T> extends EntityState {
  final List<T> posts;
  final bool hasReachedMax;

  EntityLoaded({
    this.posts,
    this.hasReachedMax,
  }) : super([posts, hasReachedMax]);

  EntityLoaded copyWith({
    List<T> posts,
    bool hasReachedMax,
  }) {
    return EntityLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() =>
      'EntityLoaded { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
