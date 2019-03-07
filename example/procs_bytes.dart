
import 'dart:convert';
import 'dart:typed_data';

//⊕ [ByteData class - dart:typed_data library - Dart API](https://api.dartlang.org/stable/2.1.1/dart-typed_data/ByteData-class.html)
void proc_typed_data(){
  var buffer = new Uint8List(8).buffer;
  var bdata = new ByteData.view(buffer);
  bdata.setFloat32(0, 3.04);
  int huh = bdata.getInt32(0);
  print(huh);
}

String toBase64String(ByteData byteData){
  Uint8List pngBytes = byteData.buffer.asUint8List();
  String bs64 = base64Encode(pngBytes);
  return bs64;
}

main() {
  print(".. bytes");
  proc_typed_data();

  String aStr="xyz";
  var bytes=utf8.encode(aStr);
  var bdata = new ByteData.view(Uint8List.fromList(bytes).buffer);
  var b64=toBase64String(bdata);
  print(b64);
  Uint8List re_bdata=base64Decode(b64);
  print(utf8.decode(re_bdata));
}