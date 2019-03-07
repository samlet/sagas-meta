import 'package:sagas_meta/sagas_meta.dart';
import 'package:sagas_meta/src/entity_post.dart';
import 'package:intl/intl.dart';

main() {
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');

  var lastUpdated = DateTime.now();
  print(lastUpdated);

  var rawPost = {"noteId": '5', "noteName": "test", "noteInfo": "just a info"};
  EntityPost post = EntityPost(
      entityId: rawPost['noteId'],
      title: rawPost['noteName'],
      body: rawPost['noteInfo'],
      lastUpdatedStamp: DateTime.now(),
      createdStamp: DateTime.now());

  print("last update -> ${post.lastUpdatedStamp}");

  EntityPost postEmpty = EntityPost(
      entityId: rawPost['noteId'],
      title: rawPost['noteName'],
      body: rawPost['noteInfo']);
  print("empty update -> ${postEmpty.lastUpdatedStamp}");

  DateTime dt=DateTime.fromMillisecondsSinceEpoch(1549822155510);
  print(dt);
  dt=DateTime.fromMillisecondsSinceEpoch(1291910400000);
  print(dt);

  // TimeOfDay now = TimeOfDay.now();
  Duration fastestMarathon = new Duration(hours:2, minutes:3, seconds:2);
  print(fastestMarathon);
  var df=new DateFormat.Hms();
  dt=df.parse("12:12:10");
  print(DateFormat.Hms().parse("12:12:10"));
  print(dt);
  print(dt.timeZoneOffset);
  print("${dt.hour}:${dt.minute}:${dt.second}");
}
