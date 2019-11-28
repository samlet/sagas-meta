import 'dart:convert';

import 'package:sagas_meta/src/broker_api.dart';
import 'package:sagas_meta/src/meta/blueprints.pb.dart';
import 'package:sagas_meta/src/meta/forms.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/metainfo.pb.dart';
import 'package:sagas_meta/src/meta/values.pb.dart';


void testQuery(BrokerClient brokerClient) async{
  var value=TaFieldValue()..stringVal="component://content/widget/forum/BlogForms.xml;EditBlog;zh_CN";

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/representer'
    ..type='meta'
    ..body=value.writeToBuffer();

  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    // var form = MetaForm.fromBuffer(resp.body);
    // print(form);
    print('ok.');
    var val=MetaForm.fromBuffer(resp.body);
    print(val);
  }else{
    print('err.');
  }
}

void testQueryFormData(BrokerClient brokerClient) async{
  var value=FormDataRequestor()
    ..uri="component://product/widget/catalog/ProductForms.xml;AddProductPaymentMethodType;en_US";

  BlueMessage msg=BlueMessage.create()
    ..actorPath='akka://default/user/logins/system/representer'
    ..type='form-data'
    ..body=value.writeToBuffer();

  var result=await brokerClient.invoke(msg.writeToBuffer());
  var resp=MetaPayload.fromBuffer(result);
  print(resp.type);
  if(resp.type==MetaPayloadType.ACTION_RESULT) {
    // var form = MetaForm.fromBuffer(resp.body);
    // print(form);
    print('ok.');
    var val=MetaSingleFormData.fromBuffer(resp.body);
    print(val);
  }else{
    print('err.');
  }
}

void main() async{
  BrokerClient brokerClient=new BrokerClient('blue_queue');
  await testQuery(brokerClient);
  await testQueryFormData(brokerClient);

  await brokerClient.close();
}
