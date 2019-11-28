import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';

void hi(brokerClient) async{
  ResponseHello hello=ResponseHello.create()
    ..response='hi';

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/artifacts'
    ..type='offer'
    ..body=hello.writeToBuffer()
  ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=BlueOffer.fromBuffer(result);
  print(resp);
}

void talk(brokerClient) async{
  BotMessage body=BotMessage.create()
    ..sender='samlet'
    ..message='i am greet';

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/artifacts'
    ..type='talk'
    ..body=body.writeToBuffer()
  ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    print('ok.');
    var val=BotResponse.fromBuffer(resp.body);
    print(val);
  }else{
    print('err.');
  }
}

void main() async{
  BrokerClient brokerClient=new BrokerClient('blue_queue');
  await hi(brokerClient);
  await talk(brokerClient);

  await brokerClient.close();
}
