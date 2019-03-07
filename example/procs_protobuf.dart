import 'package:sagas_meta/src/meta/google/protobuf/empty.pb.dart';
import 'package:sagas_meta/src/meta/hello.pb.dart';
import 'package:sagas_meta/src/meta/values.pb.dart';

void testOneOf(){
  TaFieldValue tf=new TaFieldValue();
  tf.stringVal="hi";
  print("$tf -> ${tf.hasStringVal()}, ${tf.hasDoubleVal()}");
  print(tf.writeToJson());
}

void main(){
  ResponseHello hello=ResponseHello.create()
    ..response='hi';
  print(hello);
  testOneOf();
}

