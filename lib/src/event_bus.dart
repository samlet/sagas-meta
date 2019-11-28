import "dart:async";
import "dart:math";
import "package:dart_amqp/dart_amqp.dart";
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';

class EventBus{
  Client client;
  // Channel channel;

  EventBus({@required Client client}) {
    if (client == null) {
      client = new Client();
    }
    this.client = client;

    List<String> routingKeys = ["measure.entities.#"];
    this.client
        .channel()
        .then((Channel channel) {
      return channel.exchange("entity_events", ExchangeType.TOPIC, durable: false);
    })
        .then((Exchange exchange) {
      print(" [*] Waiting for messages in logs. To Exit press CTRL+C");
      return exchange.bindPrivateQueueConsumer(routingKeys,
          consumerTag: "entity_events", noAck: true
      );
    })
        .then((Consumer consumer) {
      consumer.listen((AmqpMessage event) {
        print(" [x] ${event.routingKey}:'${event.payloadAsString}'");
      });
    });
  }

  void close(){
    client.close().then((_) {
      print("close message bus");
    });
  }
}

