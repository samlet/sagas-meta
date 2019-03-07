import 'dart:io';

import 'package:sagas_meta/src/meta/values.pb.dart';

Stopwatch stopwatch = new Stopwatch();

Future<TaStringEntriesMap> readPrefabs() async{
  // var dataFile = File('data/entities.data');
  stopwatch.start();
  var dataFile = File('data/_entities.data');
  var contents = await dataFile.readAsBytes();
  var entries=TaStringEntriesMap.fromBuffer(contents);
  print("read data file cost ${stopwatch.elapsedMilliseconds} ms");
  return entries;
}

Future main() async{
  var config = File('data/ofbizDemo.data');

  var contents = await config.readAsBytes();
  print('The file is ${contents.length} bytes long.');
  var protoData=TaRecordset.fromBuffer(contents);
  // print(protoData);

  TaStringEntriesMap entriesMap=await readPrefabs();

  print('1.');
  //*
  TaStringEntries val=entriesMap.entries['T2ZiaXpEZW1vOlNBTVBMRV9ERU1PXzE='];
  print(val);

  print('2.');
  // U2VjdXJpdHlQZXJtaXNzaW9uOk9GQklaREVNT19DUkVBVEU=
  val=entriesMap.entries['U2VjdXJpdHlQZXJtaXNzaW9uOk9GQklaREVNT19DUkVBVEU='];
  print(val);

  print('3.');
  // U2VjdXJpdHlHcm91cFBlcm1pc3Npb246U1VQRVLilqtPRkJJWkRFTU9fQURNSU7ilqsyMDAxLTA1LTEzIDEyOjAwOjAwLjA=
  val=entriesMap.entries['U2VjdXJpdHlHcm91cFBlcm1pc3Npb246U1VQRVLilqtPRkJJWkRFTU9fQURNSU7ilqsyMDAxLTA1LTEzIDEyOjAwOjAwLjA='];
  print(val);
  //*/
  // print(entriesMap);

  print('Group data -->');
  var idBag=protoData.recordGroups['OfbizDemoDemoData'];
  //*
  idBag.ids.forEach((id){
    var rec=entriesMap.entries[id];
    print(rec);
  });
  //*/
}
