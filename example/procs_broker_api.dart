import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';

void main() async{
  BrokerClient brokerClient=new BrokerClient('rpc_queue_2');
  ResponseHello hello=ResponseHello.create()
    ..response='hi';
  var result=await brokerClient.invoke(hello.writeToBuffer());
  var resp=ResponseHello.fromBuffer(result);
  print(resp);

  await brokerClient.close();
}
