import 'package:bloc/bloc.dart';
import 'package:sagas_meta/src/blocs/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:sagas_meta/src/blocs/form_bloc.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/data_fetcher.dart';
import 'package:sagas_meta/src/jsonifiers/sagas_dss_jsonifiers.dart';
import 'package:sagas_meta/src/models/sagas_dss.dart';
import 'package:sagas_meta/src/utils.dart';

class TrackBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
    var state = transition.nextState;
    if (state is FormInitialized) {
      if (state.formMeta==null) {
        print("no form.");
      } else {
        print("get ${state.formMeta.name}");
        print(state.formMeta);
      }
    }
  }
}

void main() async{
  BlocSupervisor().delegate = TrackBlocDelegate();
  final BrokerClient brokerClient=new BrokerClient('blue_queue');
  final bloc=FormBloc(formRepository:new FormRepository(brokerClient));
  // final uri="component://product/widget/catalog/ProductForms.xml;AddProductPaymentMethodType;en_US";
  // final uri="component://content/widget/forum/BlogForms.xml;EditBlog;zh_CN";
  final uri="component://sagas/widget/SagasForms.xml;SaCreateProductCategoryAttribute;zh_CN";
  bloc.dispatch(FormRetrieveEvent(uri: uri));
  print("...");

  await sleepSeconds(3);
  await brokerClient.close();
}

