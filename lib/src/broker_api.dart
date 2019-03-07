import "dart:async";
import 'dart:typed_data';

import "package:dart_amqp/dart_amqp.dart";
import 'package:sagas_meta/src/amqp_api.dart';

class BrokerClient extends ApiBase<Uint8List>{
  BrokerClient(String queueTag, {Client client}) : super(queueTag, client);

  @override
  void handler(AmqpMessage event) {
    if (!channels.containsKey(event.properties.corellationId)) return;
    print(" [.] Got response");
    channels
        .remove(event.properties.corellationId)
        .complete(event.payload);
  }

  Future<Uint8List> invoke(Uint8List parameter) async {
    return await call(parameter);
  }
}


