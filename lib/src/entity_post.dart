import 'package:sagas_meta/src/entity_base.dart';

class EntityPost extends EntityBase {
  final String postId;
  final String title;
  final String body;

  EntityPost({entityId,
    this.postId, this.title, this.body,
    lastUpdatedStamp,
    createdStamp}) : super(entityId, lastUpdatedStamp, createdStamp);

  @override
  String toString() => 'EntityPost { id: $entityId }';

  @override
  Map<String, dynamic> asMap() {
    return null;
  }
}

