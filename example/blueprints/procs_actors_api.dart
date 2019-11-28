import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';

/*
servant: com.sagas.actors.bus.BlueSrvMain
 */
void main() async{
  BrokerClient brokerClient=new BrokerClient('blue_queue');

  ResponseHello hello=ResponseHello.create()
    ..response='hi';

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/blueGreeter'
    ..type='hi'
    ..body=hello.writeToBuffer()
    ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=BlueOffer.fromBuffer(result);
  print(resp);

  await brokerClient.close();
}
