import 'package:decimal/decimal.dart';
import 'package:meta/meta.dart';
import 'package:sagas_meta/src/result_api.dart';
import 'package:sagas_meta/src/srv_api.dart';

class PartyServicesView{
  final SrvClient client;
  PartyServicesView(this.client);

  /**
   * General Party Find Service, Used in the findparty page in the Party Manager, etc - 
   *
   * Requires 
   * Returns roleTypes[List], partyTypes[List], currentRole[org.apache.ofbiz.entity.GenericValue], currentPartyType[org.apache.ofbiz.entity.GenericValue], currentStateGeo[org.apache.ofbiz.entity.GenericValue], viewIndex[Integer], viewSize[Integer], partyList[List], partyListSize[Integer], paramList[String], highIndex[Integer], lowIndex[Integer], sortField[String]
   */
  Future<OfResult> findParty({String extInfo, String roleTypeId, String VIEW_INDEX, String VIEW_SIZE, String lookupFlag, String showAll, String partyId, String partyTypeId, String userLoginId, String groupName, String firstName, String lastName, String address1, String address2, String city, String stateProvinceGeoId, String postalCode, String infoString, String countryCode, String areaCode, String contactNumber, String inventoryItemId, String serialNumber, String softIdentifier, String partyRelationshipTypeId, List<dynamic> ownerPartyIds, String sortField}) =>
      client.invoke('findParty', null, { 'extInfo': extInfo, 'roleTypeId': roleTypeId, 'VIEW_INDEX': VIEW_INDEX, 'VIEW_SIZE': VIEW_SIZE, 'lookupFlag': lookupFlag, 'showAll': showAll, 'partyId': partyId, 'partyTypeId': partyTypeId, 'userLoginId': userLoginId, 'groupName': groupName, 'firstName': firstName, 'lastName': lastName, 'address1': address1, 'address2': address2, 'city': city, 'stateProvinceGeoId': stateProvinceGeoId, 'postalCode': postalCode, 'infoString': infoString, 'countryCode': countryCode, 'areaCode': areaCode, 'contactNumber': contactNumber, 'inventoryItemId': inventoryItemId, 'serialNumber': serialNumber, 'softIdentifier': softIdentifier, 'partyRelationshipTypeId': partyRelationshipTypeId, 'ownerPartyIds': ownerPartyIds, 'sortField': sortField });

  /**
   * 
            Get Child RoleTypes.
            The childRoleTypeIdList coming out will contain the original roleTypeId.
         - 
   *
   * Requires roleTypeId
   * Returns childRoleTypeIdList[List]
   */
  Future<OfResult> getChildRoleTypes({@required String roleTypeId}) =>
      client.invoke('getChildRoleTypes', null, { 'roleTypeId': roleTypeId });

  /**
   * 
            Gets Parent Organizations for an Organization Party.
            This uses the PartyRelationship table with partyRelationshipTypeId="GROUP_ROLLUP".
            The Parent Organization will be in the relationship on either side with roleTypeId="PARENT_ORGANIZATION".
            The Child Organization will be in the relationship on either side with roleTypeId="ORGANIZATION_UNIT", or any child of that type.
            The getParentsOfParents attribute defaults to Y.
            The parentOrganizationPartyIdList coming out will contain the original organizationPartyId.
         - 
   *
   * Requires organizationPartyId
   * Returns parentOrganizationPartyIdList[List]
   */
  Future<OfResult> getParentOrganizations({@required String organizationPartyId, String getParentsOfParents}) =>
      client.invoke('getParentOrganizations', null, { 'organizationPartyId': organizationPartyId, 'getParentsOfParents': getParentsOfParents });

  /**
   * Get Contact Mechs associated with party. It produces a list of Maps (valueMaps) which can contain a list of contactMechPurposes, a partyContactMech Map, contactMechtype Map and a contactMech Map - 
   *
   * Requires 
   * Returns valueMaps[java.util.List]
   */
  Future<OfResult> getPartyContactMechValueMaps({String partyId, String contactMechTypeId, bool showOld, Map<String,dynamic> userLogin}) =>
      client.invoke('getPartyContactMechValueMaps', null, { 'partyId': partyId, 'contactMechTypeId': contactMechTypeId, 'showOld': showOld, 'userLogin': userLogin });

  /**
   * Gets a person entity from the cache/database - 
   *
   * Requires partyId
   * Returns lookupPerson[org.apache.ofbiz.entity.GenericValue]
   */
  Future<OfResult> getPerson({@required String partyId}) =>
      client.invoke('getPerson', null, { 'partyId': partyId });

  /**
   * Get all Postal Address Boundaries - 
   *
   * Requires contactMechId
   * Returns geos[java.util.List]
   */
  Future<OfResult> getPostalAddressBoundary({@required String contactMechId}) =>
      client.invoke('getPostalAddressBoundary', null, { 'contactMechId': contactMechId });

  /**
   * 
            Get Parties Related to a Party
            - The relatedPartyIdList coming out will include the original partyIdFrom
            - The includeFromToSwitched and recurse attributes should by "Y" or "N" and default to N.
            - The useCache attribute should be "true" or "false", defaults to "false"
         - 
   *
   * Requires partyIdFrom
   * Returns relatedPartyIdList[List]
   */
  Future<OfResult> getRelatedParties({@required String partyIdFrom, String partyRelationshipTypeId, String roleTypeIdFrom, String roleTypeIdFromInclueAllChildTypes, String roleTypeIdTo, String roleTypeIdToIncludeAllChildTypes, String includeFromToSwitched, String recurse, String useCache}) =>
      client.invoke('getRelatedParties', null, { 'partyIdFrom': partyIdFrom, 'partyRelationshipTypeId': partyRelationshipTypeId, 'roleTypeIdFrom': roleTypeIdFrom, 'roleTypeIdFromInclueAllChildTypes': roleTypeIdFromInclueAllChildTypes, 'roleTypeIdTo': roleTypeIdTo, 'roleTypeIdToIncludeAllChildTypes': roleTypeIdToIncludeAllChildTypes, 'includeFromToSwitched': includeFromToSwitched, 'recurse': recurse, 'useCache': useCache });

}