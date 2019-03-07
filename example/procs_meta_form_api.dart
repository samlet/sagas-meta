import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/forms.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';

void queryService(BrokerClient brokerClient) async{
  MetaQuery query=MetaQuery.create()
    ..infoType='form'
    ..uri="component://content/widget/forum/BlogForms.xml;EditBlog;zh_CN";
  var result=await brokerClient.invoke(query.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.META_FORM) {
    var form = MetaForm.fromBuffer(resp.body);
    print(form);
  }else{
    print('err.');
  }
}

void main() async{
  BrokerClient brokerClient=new BrokerClient('meta_queue');
  await queryService(brokerClient);

  await brokerClient.close();
}


