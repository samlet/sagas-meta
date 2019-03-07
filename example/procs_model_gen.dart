import 'dart:convert';
import 'dart:typed_data';
import 'package:sagas_meta/src/entity_base.dart';
import 'package:sagas_meta/src/models_t/gen_jsonifiers.dart';
import 'package:sagas_meta/src/models_t/gen_models.dart';

void testDataTypes(){
  int i=5;
  print(i.toString());
  double x=16.6;
  print(x.toString());
}

TestingType overridesTestingType(Map<String, dynamic> map) {
  return TestingType(
      entityId: create_id_from('TestingType', ['testingTypeId'], map),
      testingTypeId: map['testingTypeId'],
      description: map['description'],
      lastUpdatedStamp: map['lastUpdatedStamp'],
      createdStamp: map['createdStamp']);
}

void testModel(){
  TestingType tt=new TestingType(testingTypeId: 'hi', description: 'just hi');
  var vals=tt.asMap();
  print(vals);
  vals.addAll({"description":"updated"});
  print(vals);
  TestingType ttNew=overridesTestingType(vals);
  print("${ttNew.entityId} ${ttNew.asMap()}");

  // use overrides method
  var ttMap=new TestingType(testingTypeId: 'hi', description: 'just hi').asMap();
  ttMap.addAll({"description":"updated again"});
  ttNew=TestingEntityJsonifier.overridesTestingType(ttMap);
  print("${ttNew.entityId} ${ttNew.asMap()}");
}

void testJson(){
  String jsonString='{"yearsWithEmployer":null,"lastName":"小飞","occupation":null,"gender":null,"employmentStatusEnumId":null,"socialSecurityNumber":null,"createdStamp":1550327797315,"suffix":null,"mothersMaidenName":null,"middleNameLocal":null,"existingCustomer":null,"residenceStatusEnumId":null,"nickname":null,"partyId":"10004","memberId":null,"height":null,"passportNumber":null,"lastUpdatedStamp":1550327797315,"lastNameLocal":null,"comments":null,"monthsWithEmployer":null,"createdTxStamp":1550327797300,"weight":null,"lastUpdatedTxStamp":1550327797300,"birthDate":944755200000,"otherLocal":null,"firstName":"吴","cardId":null,"middleName":null,"firstNameLocal":null,"passportExpireDate":null,"salutation":null,"personalTitle":null,"deceasedDate":null,"totalYearsWorkExperience":null,"maritalStatus":null}';
  var jsonResponse = json.decode(jsonString) as Map;
  print(jsonResponse['createdStamp']);
  print(create_id_from('TestFieldType', ["partyId", 'createdTxStamp'], jsonResponse));

  String testJson='{"objectField":null,"lastUpdatedStamp":1550332209989,"numericField":null,"createdTxStamp":1550323338366,"timeField":"12:12:10","createdStamp":1550323338397,"dateField":1291910400000,"lastUpdatedTxStamp":1550332209988,"dateTimeField":null,"clobField":null,"testFieldTypeId":"test_type_1","blobField":null,"floatingPointField":null,"byteArrayField":"eHl6","fixedPointField":null}';
  jsonResponse = json.decode(testJson) as Map;
  print(jsonResponse);
  TestFieldType val=TestingEntityJsonifier.extractTestFieldType(jsonResponse);
  print(val);
}

void main(){
  testDataTypes();
  testJson();
  testModel();
}
