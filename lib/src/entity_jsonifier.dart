import 'package:sagas_meta/src/entity_base.dart';
import 'package:sagas_meta/src/entity_post.dart';

class EntityJsonifier{
  static EntityPost fromJson(dynamic json) {
    return EntityPost(
        entityId: create_id_from('EntityPost', ['noteId'], json),
        postId: json['noteId'] as String,
        title: json['noteName'] as String,
        body: json['noteInfo'] as String,
        lastUpdatedStamp: DateTime.fromMillisecondsSinceEpoch(json['lastUpdatedStamp']),
        createdStamp: DateTime.fromMillisecondsSinceEpoch(json['createdStamp']));
  }
}

