import 'package:bloc/bloc.dart';
import 'package:sagas_meta/src/blocs/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/jsonifiers/sagas_dss_jsonifiers.dart';
import 'package:sagas_meta/src/models/sagas_dss.dart';

class TrackBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
    var state = transition.nextState;
    if (state is EntityLoaded<DssOrdinalSales>) {
      if (state.posts.isEmpty) {
        print("no posts.");
      } else {
        print("get ${state.posts.length}");
        for(var post in state.posts){
          print("${post.year} - ${post.sales}");
        }
      }
    }
  }
}

void main() {
  BlocSupervisor().delegate = TrackBlocDelegate();
  final client= http.Client();
  final fetcher= new DataFetcher<DssOrdinalSales>(client,
          (jsonData)=> SagasDssJsonifier.extractDssOrdinalSales(jsonData));
  final EntityBloc<DssOrdinalSales> _postBloc = EntityBloc(fetcher: fetcher);

  _postBloc.dispatch(Fetch());
  print("...");
}

