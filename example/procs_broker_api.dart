import 'package:dart_amqp/dart_amqp.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';

void main() async{
  Client amqpClient = new Client();
  BrokerClient brokerClient=new BrokerClient('rpc_queue_2', client:amqpClient);
  ResponseHello hello=ResponseHello.create()
    ..response='hi';
  var result=await brokerClient.invoke(hello.writeToBuffer());
  var resp=ResponseHello.fromBuffer(result);
  print(resp);

  await brokerClient.close();
}
