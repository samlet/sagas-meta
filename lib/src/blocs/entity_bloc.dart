import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;
import 'package:bloc/bloc.dart';
import 'package:sagas_meta/src/blocs/bloc.dart';
import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/entity_base.dart';
//import 'package:catalog/models/models.dart';

class EntityBloc<T> extends Bloc<EntityEvent, EntityState> {
  final DataFetcher<T> fetcher;
  int defaultLimit=10;

  EntityBloc({@required this.fetcher});

  /*
  @override
  Stream<EntityEvent> transform(Stream<EntityEvent> events) {
    return (events as Observable<EntityEvent>)
        .debounce(Duration(milliseconds: 500));
  }
   */

  @override
  get initialState => EntityUninitialized();

  @override
  Stream<EntityState> mapEventToState(EntityEvent event) async* {
    if (event is Fetch && !_hasReachedMax(currentState)) {
      try {
        if (currentState is EntityUninitialized) {
          final posts = await _fetchEntitys(0, defaultLimit);
          yield EntityLoaded<T>(posts: posts, hasReachedMax: false);
        }
        if (currentState is EntityLoaded) {
          final posts = await _fetchEntitys((currentState as EntityLoaded).posts.length,
              defaultLimit);
          yield posts.isEmpty
              ? (currentState as EntityLoaded).copyWith(hasReachedMax: true)
              : EntityLoaded<T>(
                  posts: (currentState as EntityLoaded).posts + posts,
                  hasReachedMax: false,
                );
        }
      } catch (e, s) {
        print('Exception details:\n $e');
        print('Stack trace:\n $s');

        yield EntityError();
      }
    }
  }

  bool _hasReachedMax(EntityState state) =>
      state is EntityLoaded && state.hasReachedMax;

  Future<List<T>> _fetchEntitys(int startIndex, int limit) async {
    return fetcher.fetchData("DssOrdinalSales", 0, 10);
  }
}
