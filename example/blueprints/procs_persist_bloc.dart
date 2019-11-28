import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:sagas_meta/src/blocs/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sagas_meta/src/blocs/persist_bloc.dart';
import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/jsonifiers/product_product_jsonifiers.dart';
import 'package:sagas_meta/src/jsonifiers/sagas_dss_jsonifiers.dart';
import 'package:sagas_meta/src/models/product_product.dart';
import 'package:sagas_meta/src/models/sagas_dss.dart';
import 'package:sagas_meta/src/utils.dart';

class TrackBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
    var state = transition.nextState;
    if (state is PersistLoaded<ProductType>) {
      print("get ${state.data.asMap()}");
    }
  }
}


void main() async{
  BlocSupervisor().delegate = TrackBlocDelegate();
  final PersistBloc<ProductType> _entBloc = PersistBloc(
      repository: PersistRepository("ProductType"),
      modifier: (x)=> ProductProductJsonifier.overridesProductType(x),
      extractor: (x)=> ProductProductJsonifier.extractProductType(x)
  );

  print("❶. fetching ....");
  _entBloc.dispatch(FetchPersist(ids:{'productTypeId':"Test_type_114"}));
  print("...");
  // sleep(Duration(seconds: 1));
  await sleep1();

  print("❷. modify ....");
  _entBloc.dispatch(ModifyPersist(vars:{'description':"type-${DateTime.now().toString()}"}));
  await sleep1();

  print("❸. submit ....");
  // sleep(Duration(seconds: 1));
  _entBloc.dispatch(SubmitPersist(ids:{'productTypeId':"Test_type_114"}));
  await sleep1();

  print("♥. done");
  await brokerClient.close();
}

