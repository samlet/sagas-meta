import 'dart:io';

import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';
import 'package:sagas_meta/src/meta/values.pb.dart';

Future<String> create(BrokerClient brokerClient, String user) async{
  var entries=TaStringEntries.create()
    ..values.addAll({"name":"general", "user":user});
  MetaQuery query=MetaQuery.create()
    ..infoType='action'
    ..uri="SecurityManager.createToken"
    ..data=entries.writeToBuffer();
  var result=await brokerClient.invoke(query.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    // var form = MetaForm.fromBuffer(resp.body);
    var token=TaFieldValue.fromBuffer(resp.body);
    print('ok.');
    print(token);
    return token.stringVal;
  }else{
    print('err.');
    return "";
  }
}

void logError(String s) { print(s); }

void main(List<String> args) async{
  if (args.length != 1) {
    logError('Must has a login name');
    exit(255);
  }
  BrokerClient brokerClient=new BrokerClient('meta_queue');
  var token=await create(brokerClient, args[0]);
  await brokerClient.close();
  exit(0);
}

