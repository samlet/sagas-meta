import 'package:bloc/bloc.dart';
import 'package:dart_amqp/dart_amqp.dart';
import 'package:sagas_meta/sagas_meta.dart';
import 'package:sagas_meta/src/blackboard/blackboard.dart';
import 'package:sagas_meta/src/blackboard/message_indicator_bloc.dart';
import 'package:sagas_meta/src/blackboard/responser_bloc.dart';
import 'package:sagas_meta/src/message_bus.dart';
import 'package:sagas_meta/src/utils.dart';


class TrackBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
    var state = transition.nextState;
    if (state is BlackboardAuthenticated) {
      /*
      if (state.formMeta==null) {
        print("no form.");
      } else {
        print("get ${state.formMeta.name}");
        print(state.formMeta);
      }
      */
    }
  }
}

void main() async{
  BlocSupervisor().delegate = TrackBlocDelegate();
  ConnectionSettings settings = new ConnectionSettings(
      host: "localhost"
  );

  Client client = new Client(settings: settings);

  MessageBus bus=new MessageBus(client: client);
  final MessageIndicatorBloc indicatorBloc=MessageIndicatorBloc();
  BlackboardBloc bb=BlackboardBloc(indicatorBloc: indicatorBloc,
      brokerClient: BrokerClient('blue_queue'),
      responserBloc: ResponserBloc(),
      messageBus: bus);
  bb.dispatch(LoggedIn(token:'system'));
  print("serving ...");

  await sleepSeconds(2);
  // await brokerClient.close();
  // reconnect
  print("logout ...");
  bb.dispatch(LoggedOut());

  print("relogin ...");
  bb.dispatch(LoggedIn(token:'system'));

  while(true) {
    await sleepSeconds(3);
    print(indicatorBloc.currentState);
  }
}

