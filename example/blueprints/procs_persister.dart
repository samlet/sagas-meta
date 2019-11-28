import 'dart:convert';

import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';
import 'package:sagas_meta/src/meta/values.pb.dart';
import 'package:sagas_meta/src/models/product_product.dart';

void testOffer(BrokerClient brokerClient) async{
  ResponseHello hello=ResponseHello.create()
    ..response='hi';

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/persister'
    ..type='offer'
    ..body=hello.writeToBuffer()
  ;
  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=BlueOffer.fromBuffer(result);
  print(resp);
}

void testStore(BrokerClient brokerClient) async{
  var value=ProductType(productTypeId:"Test_type_114");
  TaJsonEntities entities=TaJsonEntities.create();
  entities.entities.add(TaJsonEntity.create()
      ..entityName='ProductType'
      ..json=json.encode(value.asMap())
  );

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/persister'
    ..type='storeJson'
    ..body=entities.writeToBuffer();

  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    // var form = MetaForm.fromBuffer(resp.body);
    // print(form);
    print('ok.');
    var val=TaFieldValue.fromBuffer(resp.body);
    print(val);
  }else{
    print('err.');
  }
}


void testQuery(BrokerClient brokerClient) async{
  var value=ProductType(productTypeId:"Test_type_114");
  TaStringEntries entry=TaStringEntries.create()
    ..entityName='ProductType';
  entry.values.addAll(value.asMap().map((k,v) =>
      MapEntry<String,String>(k, v.toString())));

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/persister'
    ..type='get'
    ..body=entry.writeToBuffer();

  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    // var form = MetaForm.fromBuffer(resp.body);
    // print(form);
    print('ok.');
    var val=TaJsonEntity.fromBuffer(resp.body);
    print(val);
  }else{
    print('err.');
  }
}

void main() async{
  BrokerClient brokerClient=new BrokerClient('blue_queue');
  await testOffer(brokerClient);
  await testStore(brokerClient);
  await testQuery(brokerClient);

  await brokerClient.close();
}
