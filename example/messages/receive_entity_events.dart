import "dart:io";
import "package:dart_amqp/dart_amqp.dart";

void main (List<String> arguments) {
    ConnectionSettings settings = new ConnectionSettings(
        host: "localhost"
    );

    Client client = new Client(settings: settings);

    ProcessSignal.sigint.watch().listen((_) {
        client.close().then((_) {
            print("close client");
            exit(0);
        });
    });

    List<String> routingKeys = ["measure.entities.#"];
    client
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
