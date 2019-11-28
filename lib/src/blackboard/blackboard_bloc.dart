import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:sagas_meta/src/blackboard/message_indicator_bloc.dart';
import 'package:sagas_meta/src/blackboard/responser_bloc.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/message_bus.dart';

import 'package:sagas_meta/src/blackboard/blackboard.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';

class BlackboardBloc
    extends Bloc<BlackboardEvent, BlackboardState> {
  final MessageBus messageBus;
  final MessageIndicatorBloc indicatorBloc;
  final ResponserBloc responserBloc;
  // BrokerClient brokerClient=new BrokerClient('blue_queue');
  final BrokerClient brokerClient;

  BlackboardBloc({@required this.messageBus,
    @required this.brokerClient,
    @required this.indicatorBloc,
    @required this.responserBloc
  })
      : assert(messageBus != null),
        assert(brokerClient != null),
        assert(indicatorBloc != null),
        assert(responserBloc != null){
    messageBus.subscribers.add(this);
  }

  @override
  BlackboardState get initialState => BlackboardUninitialized();

  @override
  Stream<BlackboardState> mapEventToState(
    BlackboardEvent event,
  ) async* {
    if (event is SessionStarted) {
      final bool hasToken = await messageBus.hasToken();

      if (hasToken) {
        yield BlackboardAuthenticated();
      } else {
        yield BlackboardUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield BlackboardLoading();
      // await userRepository.persistToken(event.token);
      List<String> routingKeys = ["anonymous.info", "user.system.#"];
      await messageBus.serve(routingKeys);
      yield BlackboardAuthenticated();
    }

    if (event is LoggedOut) {
      yield BlackboardLoading();
      // await userRepository.deleteToken();
      await messageBus.closeChannel();
      yield BlackboardUnauthenticated();
    }

    if (event is MessageEvent){
      indicatorBloc.dispatch(ExtractableMessage([event]));
      yield currentState;
    }

    if (event is BotEvent){
      BlueMessage msg=BlueMessage.create()
        ..actorPath='akka://default/user/logins/system/artifacts'
        ..type='talk'
        ..body=event.message.writeToBuffer()
      ;
      var result=await brokerClient.invoke(msg.writeToBuffer());
      var resp=MetaPayload.fromBuffer(result);
      print(resp.type);
      if(resp.type==MetaPayloadType.ACTION_RESULT) {
        print('ok.');
        BotResponse val=BotResponse.fromBuffer(resp.body);
        print(val);
        responserBloc.dispatch(UpdateStats([val]));
      }else{
        print('err.');
      }

      yield currentState;
    }
  }
}
