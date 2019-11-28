import 'package:dart_amqp/dart_amqp.dart';
import 'package:sagas_meta/sagas_meta.dart';
import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/nlpserv.pb.dart';

void action(brokerClient) async{
  BotMessage cnt=BotMessage.create()
    ..message='找音乐会';

  BlueInteract msg=BlueInteract.create()
    ..uri='action_about_date'
    ..type='action'
    ..body=cnt.writeToBuffer()
  ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=TaJson.fromBuffer(result);
  print(resp);
}

void nlp(brokerClient) async{
  BotMessage cnt=BotMessage.create()
    ..message='我要找音乐会';

  BlueInteract msg=BlueInteract.create()
    ..uri=''
    ..type='nlp'
    ..body=cnt.writeToBuffer()
  ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=NlEntities.fromBuffer(result);
  print(resp);
}

void main() async{
  Client amqpClient = new Client();
  BrokerClient brokerClient=new BrokerClient('rpc_ai', client:amqpClient);

  await action(brokerClient);
  await nlp(brokerClient);

  await brokerClient.close();
}
