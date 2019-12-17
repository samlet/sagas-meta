import 'package:sagas_meta/src/models/party_communication.dart';
import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class ContentServicesCommevent{
  final SrvClient client;
  ContentServicesCommevent(this.client);

  /**
   * Create a new Comm Content Assoc Type Record - CommContentAssocType
   *
   * Requires 
   * Returns commContentAssocTypeId[String]
   */
  Future<OfResult> createCommContentAssocType(CommContentAssocType ent, ) =>
      client.invoke('createCommContentAssocType', ent, {  });

  /**
   * Create CommEventContentAssoc - 
   *
   * Requires communicationEventId, contentId
   * Returns fromDate[java.sql.Timestamp]
   */
  Future<OfResult> createCommEventContentAssoc({@required String communicationEventId, @required String contentId, DateTime fromDate, DateTime thruDate, int sequenceNum}) =>
      client.invoke('createCommEventContentAssoc', null, { 'communicationEventId': communicationEventId, 'contentId': contentId, 'fromDate': fromDate, 'thruDate': thruDate, 'sequenceNum': sequenceNum });

  /**
   * Delete an existing Comm Content Assoc Type Record - CommContentAssocType
   *
   * Requires commContentAssocTypeId
   * Returns 
   */
  Future<OfResult> deleteCommContentAssocType(CommContentAssocType ent, ) =>
      client.invoke('deleteCommContentAssocType', ent, {  });

  /**
   * Expire CommEventContentAssoc - CommEventContentAssoc
   *
   * Requires contentId, communicationEventId, fromDate
   * Returns 
   */
  Future<OfResult> expireCommEventContentAssoc(CommEventContentAssoc ent, ) =>
      client.invoke('expireCommEventContentAssoc', ent, {  });

  /**
   * Update a Comm Content Assoc Type - CommContentAssocType
   *
   * Requires commContentAssocTypeId
   * Returns 
   */
  Future<OfResult> updateCommContentAssocType(CommContentAssocType ent, ) =>
      client.invoke('updateCommContentAssocType', ent, {  });

  /**
   * Update CommEventContentAssoc - CommEventContentAssoc
   *
   * Requires communicationEventId, contentId, fromDate
   * Returns 
   */
  Future<OfResult> updateCommEventContentAssoc(CommEventContentAssoc ent, ) =>
      client.invoke('updateCommEventContentAssoc', ent, {  });

}