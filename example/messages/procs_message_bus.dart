import 'package:dart_amqp/dart_amqp.dart';
import 'package:sagas_meta/src/message_bus.dart';
import 'package:sagas_meta/src/utils.dart';

void main() async{
  ConnectionSettings settings = new ConnectionSettings(
      host: "localhost"
  );

  Client client = new Client(settings: settings);

  MessageBus bus=new MessageBus(client: client);
  List<String> routingKeys = ["anonymous.info"];
  await bus.serve(routingKeys);
  print("serving ...");

  await sleepSeconds(5);
  // await brokerClient.close();
  // reconnect
  print("close ...");
  await bus.closeChannel();
  print("reconnect ...");
  routingKeys = ["anonymous.info", "user.system.#"];
  await bus.serve(routingKeys);
}

