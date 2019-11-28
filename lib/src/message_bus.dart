import "dart:async";
import "dart:math";
import 'package:bloc/bloc.dart';
import "package:dart_amqp/dart_amqp.dart";
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/blackboard/blackboard_event.dart';

class MessageBus{
  Client client;
  Channel channel;
  Exchange exchange;

  List<Bloc> subscribers=List<Bloc>();

  MessageBus({@required Client client}) {
    if (client == null) {
      client = new Client();
    }
    this.client = client;
  }

  void serve(List<String> routingKeys ) async{
    // List<String> routingKeys = ["anonymous.info"];
    this.channel=await this.client.channel();
    this.exchange=await this.channel.exchange("blackboard", ExchangeType.TOPIC, durable: false);
    Consumer consumer=await this.exchange.bindPrivateQueueConsumer(routingKeys,
          consumerTag: "blackboard", noAck: true
      );
    consumer.listen((AmqpMessage event) {
        print(" [x] ${event.routingKey}:'${event.payloadAsString}'");
        subscribers.forEach((sub)=>sub.dispatch(MessageEvent(message:event.payloadAsString)));
      });
  }

  void closeChannel() async{
    await this.channel.close();
  }

  void close(){
    client.close().then((_) {
      print("close message bus");
    });
  }

  Future<bool> hasToken() async{
    return await false;
  }
}


