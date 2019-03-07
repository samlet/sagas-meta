import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';

void queryEntity(BrokerClient brokerClient) async{
  MetaQuery query=MetaQuery.create()
    ..infoType='entity'
    ..uri='Person';
  var result=await brokerClient.invoke(query.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  var ent=MetaEntity.fromBuffer(resp.body);
  print(ent);
}

void main() async{
  BrokerClient brokerClient=new BrokerClient('meta_queue');
  await queryEntity(brokerClient);

  await brokerClient.close();
}


