///
//  Generated code. Do not modify.
//  source: metainfo.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const MetaPayloadType$json = const {
  '1': 'MetaPayloadType',
  '2': const [
    const {'1': 'ERROR_INFO', '2': 0},
    const {'1': 'META_ENTITY', '2': 1},
    const {'1': 'META_SERVICE', '2': 2},
    const {'1': 'ENTITY_VALUE', '2': 3},
    const {'1': 'ENTITY_VALUE_LIST', '2': 4},
    const {'1': 'META_FORM', '2': 5},
    const {'1': 'META_FORM_DATA', '2': 6},
    const {'1': 'ACTION_RESULT', '2': 7},
  ],
};

const ErrorType$json = const {
  '1': 'ErrorType',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'NOT_FOUND', '2': 1},
    const {'1': 'UNSUPPORT_META', '2': 2},
    const {'1': 'RETRIEVE_INFO_FAIL', '2': 3},
  ],
};

const MetaQuery$json = const {
  '1': 'MetaQuery',
  '2': const [
    const {'1': 'infoType', '3': 1, '4': 1, '5': 9, '10': 'infoType'},
    const {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

const MetaPayload$json = const {
  '1': 'MetaPayload',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.model.MetaPayloadType', '10': 'type'},
    const {'1': 'body', '3': 2, '4': 1, '5': 12, '10': 'body'},
  ],
};

const ErrorInfo$json = const {
  '1': 'ErrorInfo',
  '2': const [
    const {'1': 'errorType', '3': 1, '4': 1, '5': 14, '6': '.model.ErrorType', '10': 'errorType'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const MetaField$json = const {
  '1': 'MetaField',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'pk', '3': 3, '4': 1, '5': 8, '10': 'pk'},
    const {'1': 'notNull', '3': 4, '4': 1, '5': 8, '10': 'notNull'},
    const {'1': 'autoCreatedInternal', '3': 5, '4': 1, '5': 8, '10': 'autoCreatedInternal'},
    const {'1': 'enableAuditLog', '3': 6, '4': 1, '5': 8, '10': 'enableAuditLog'},
    const {'1': 'validators', '3': 7, '4': 3, '5': 9, '10': 'validators'},
    const {'1': 'encrypt', '3': 8, '4': 1, '5': 8, '10': 'encrypt'},
  ],
};

const MetaKeyMap$json = const {
  '1': 'MetaKeyMap',
  '2': const [
    const {'1': 'fieldName', '3': 1, '4': 1, '5': 9, '10': 'fieldName'},
    const {'1': 'relFieldName', '3': 2, '4': 1, '5': 9, '10': 'relFieldName'},
    const {'1': 'fullName', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
  ],
};

const MetaRelation$json = const {
  '1': 'MetaRelation',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'relEntityName', '3': 3, '4': 1, '5': 9, '10': 'relEntityName'},
    const {'1': 'fkName', '3': 4, '4': 1, '5': 9, '10': 'fkName'},
    const {'1': 'keyMaps', '3': 5, '4': 3, '5': 11, '6': '.model.MetaKeyMap', '10': 'keyMaps'},
    const {'1': 'autoRelation', '3': 6, '4': 1, '5': 8, '10': 'autoRelation'},
    const {'1': 'combinedName', '3': 7, '4': 1, '5': 9, '10': 'combinedName'},
  ],
};

const MetaEntity$json = const {
  '1': 'MetaEntity',
  '2': const [
    const {'1': 'entityName', '3': 1, '4': 1, '5': 9, '10': 'entityName'},
    const {'1': 'packageName', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    const {'1': 'dependentOn', '3': 3, '4': 1, '5': 9, '10': 'dependentOn'},
    const {'1': 'fields', '3': 4, '4': 3, '5': 11, '6': '.model.MetaField', '10': 'fields'},
    const {'1': 'relations', '3': 5, '4': 3, '5': 11, '6': '.model.MetaRelation', '10': 'relations'},
    const {'1': 'viewEntities', '3': 6, '4': 3, '5': 9, '10': 'viewEntities'},
    const {'1': 'pks', '3': 7, '4': 3, '5': 9, '10': 'pks'},
    const {'1': 'nopks', '3': 8, '4': 3, '5': 9, '10': 'nopks'},
    const {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'title', '3': 11, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'defaultResourceName', '3': 12, '4': 1, '5': 9, '10': 'defaultResourceName'},
  ],
};

const MetaMemberEntity$json = const {
  '1': 'MetaMemberEntity',
  '2': const [
    const {'1': 'entityAlias', '3': 1, '4': 1, '5': 9, '10': 'entityAlias'},
    const {'1': 'entityName', '3': 2, '4': 1, '5': 9, '10': 'entityName'},
  ],
};

const MetaAliasAll$json = const {
  '1': 'MetaAliasAll',
  '2': const [
    const {'1': 'entityAlias', '3': 1, '4': 1, '5': 9, '10': 'entityAlias'},
    const {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
    const {'1': 'fieldsToExclude', '3': 3, '4': 3, '5': 9, '10': 'fieldsToExclude'},
    const {'1': 'groupBy', '3': 4, '4': 1, '5': 8, '10': 'groupBy'},
    const {'1': 'function', '3': 5, '4': 1, '5': 9, '10': 'function'},
    const {'1': 'fieldSet', '3': 6, '4': 1, '5': 9, '10': 'fieldSet'},
  ],
};

const MetaAlias$json = const {
  '1': 'MetaAlias',
  '2': const [
    const {'1': 'entityAlias', '3': 1, '4': 1, '5': 9, '10': 'entityAlias'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'field', '3': 3, '4': 1, '5': 9, '10': 'field'},
    const {'1': 'colAlias', '3': 4, '4': 1, '5': 9, '10': 'colAlias'},
    const {'1': 'pk', '3': 5, '4': 1, '5': 8, '10': 'pk'},
    const {'1': 'groupBy', '3': 6, '4': 1, '5': 8, '10': 'groupBy'},
    const {'1': 'function', '3': 7, '4': 1, '5': 9, '10': 'function'},
    const {'1': 'fieldSet', '3': 8, '4': 1, '5': 9, '10': 'fieldSet'},
    const {'1': 'isFromAliasAll', '3': 9, '4': 1, '5': 8, '10': 'isFromAliasAll'},
    const {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
  ],
};

const MetaViewEntityCondition$json = const {
  '1': 'MetaViewEntityCondition',
  '2': const [
    const {'1': 'filterByDate', '3': 1, '4': 1, '5': 8, '10': 'filterByDate'},
    const {'1': 'distinct', '3': 2, '4': 1, '5': 8, '10': 'distinct'},
    const {'1': 'orderByList', '3': 3, '4': 3, '5': 9, '10': 'orderByList'},
  ],
};

const MetaViewLink$json = const {
  '1': 'MetaViewLink',
  '2': const [
    const {'1': 'entityAlias', '3': 1, '4': 1, '5': 9, '10': 'entityAlias'},
    const {'1': 'relEntityAlias', '3': 2, '4': 1, '5': 9, '10': 'relEntityAlias'},
    const {'1': 'relOptional', '3': 3, '4': 1, '5': 8, '10': 'relOptional'},
    const {'1': 'keyMaps', '3': 4, '4': 3, '5': 11, '6': '.model.MetaKeyMap', '10': 'keyMaps'},
    const {'1': 'viewEntityCondition', '3': 5, '4': 1, '5': 11, '6': '.model.MetaViewEntityCondition', '10': 'viewEntityCondition'},
  ],
};

const MetaViewEntity$json = const {
  '1': 'MetaViewEntity',
  '2': const [
    const {'1': 'entityName', '3': 1, '4': 1, '5': 9, '10': 'entityName'},
    const {'1': 'packageName', '3': 2, '4': 1, '5': 9, '10': 'packageName'},
    const {'1': 'memberModelEntities', '3': 3, '4': 3, '5': 11, '6': '.model.MetaViewEntity.MemberModelEntitiesEntry', '10': 'memberModelEntities'},
    const {'1': 'aliasAlls', '3': 4, '4': 3, '5': 11, '6': '.model.MetaAliasAll', '10': 'aliasAlls'},
    const {'1': 'aliases', '3': 5, '4': 3, '5': 11, '6': '.model.MetaAlias', '10': 'aliases'},
    const {'1': 'viewLinks', '3': 6, '4': 3, '5': 11, '6': '.model.MetaViewLink', '10': 'viewLinks'},
    const {'1': 'groupBys', '3': 7, '4': 3, '5': 11, '6': '.model.MetaField', '10': 'groupBys'},
  ],
  '3': const [MetaViewEntity_MemberModelEntitiesEntry$json],
};

const MetaViewEntity_MemberModelEntitiesEntry$json = const {
  '1': 'MemberModelEntitiesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.model.MetaMemberEntity', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MetaServiceIface$json = const {
  '1': 'MetaServiceIface',
  '2': const [
    const {'1': 'service', '3': 1, '4': 1, '5': 9, '10': 'service'},
    const {'1': 'optional', '3': 2, '4': 1, '5': 8, '10': 'optional'},
  ],
};

const MetaPermission$json = const {
  '1': 'MetaPermission',
  '2': const [
    const {'1': 'permissionType', '3': 1, '4': 1, '5': 5, '10': 'permissionType'},
    const {'1': 'serviceModel', '3': 2, '4': 1, '5': 9, '10': 'serviceModel'},
    const {'1': 'nameOrRole', '3': 3, '4': 1, '5': 9, '10': 'nameOrRole'},
    const {'1': 'action', '3': 4, '4': 1, '5': 9, '10': 'action'},
    const {'1': 'permissionServiceName', '3': 5, '4': 1, '5': 9, '10': 'permissionServiceName'},
    const {'1': 'permissionResourceDesc', '3': 6, '4': 1, '5': 9, '10': 'permissionResourceDesc'},
    const {'1': 'auth', '3': 7, '4': 1, '5': 8, '10': 'auth'},
    const {'1': 'clazz', '3': 8, '4': 1, '5': 9, '10': 'clazz'},
  ],
};

const MetaPermGroup$json = const {
  '1': 'MetaPermGroup',
  '2': const [
    const {'1': 'joinType', '3': 1, '4': 1, '5': 9, '10': 'joinType'},
    const {'1': 'permissions', '3': 2, '4': 3, '5': 11, '6': '.model.MetaPermission', '10': 'permissions'},
  ],
};

const MetaNotification$json = const {
  '1': 'MetaNotification',
  '2': const [
    const {'1': 'notificationGroupName', '3': 1, '4': 1, '5': 9, '10': 'notificationGroupName'},
    const {'1': 'notificationEvent', '3': 2, '4': 1, '5': 9, '10': 'notificationEvent'},
    const {'1': 'notificationMode', '3': 3, '4': 1, '5': 9, '10': 'notificationMode'},
  ],
};

const MetaParam$json = const {
  '1': 'MetaParam',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'mode', '3': 4, '4': 1, '5': 9, '10': 'mode'},
    const {'1': 'formLabel', '3': 5, '4': 1, '5': 9, '10': 'formLabel'},
    const {'1': 'entityName', '3': 6, '4': 1, '5': 9, '10': 'entityName'},
    const {'1': 'fieldName', '3': 7, '4': 1, '5': 9, '10': 'fieldName'},
    const {'1': 'defaultValue', '3': 9, '4': 1, '5': 9, '10': 'defaultValue'},
    const {'1': 'optional', '3': 10, '4': 1, '5': 8, '10': 'optional'},
    const {'1': 'overrideOptional', '3': 11, '4': 1, '5': 8, '10': 'overrideOptional'},
    const {'1': 'formDisplay', '3': 12, '4': 1, '5': 8, '10': 'formDisplay'},
    const {'1': 'overrideFormDisplay', '3': 13, '4': 1, '5': 8, '10': 'overrideFormDisplay'},
    const {'1': 'allowHtml', '3': 14, '4': 1, '5': 9, '10': 'allowHtml'},
    const {'1': 'internal', '3': 15, '4': 1, '5': 8, '10': 'internal'},
  ],
};

const MetaService$json = const {
  '1': 'MetaService',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'definitionLocation', '3': 2, '4': 1, '5': 9, '10': 'definitionLocation'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'engineName', '3': 4, '4': 1, '5': 9, '10': 'engineName'},
    const {'1': 'nameSpace', '3': 5, '4': 1, '5': 9, '10': 'nameSpace'},
    const {'1': 'location', '3': 6, '4': 1, '5': 9, '10': 'location'},
    const {'1': 'invoke', '3': 7, '4': 1, '5': 9, '10': 'invoke'},
    const {'1': 'defaultEntityName', '3': 8, '4': 1, '5': 9, '10': 'defaultEntityName'},
    const {'1': 'auth', '3': 9, '4': 1, '5': 8, '10': 'auth'},
    const {'1': 'export', '3': 10, '4': 1, '5': 8, '10': 'export'},
    const {'1': 'debug', '3': 11, '4': 1, '5': 8, '10': 'debug'},
    const {'1': 'validate', '3': 12, '4': 1, '5': 8, '10': 'validate'},
    const {'1': 'permissionServiceName', '3': 13, '4': 1, '5': 9, '10': 'permissionServiceName'},
    const {'1': 'permissionMainAction', '3': 14, '4': 1, '5': 9, '10': 'permissionMainAction'},
    const {'1': 'permissionResourceDesc', '3': 15, '4': 1, '5': 9, '10': 'permissionResourceDesc'},
    const {'1': 'implServices', '3': 16, '4': 3, '5': 11, '6': '.model.MetaServiceIface', '10': 'implServices'},
    const {'1': 'overrideParameters', '3': 17, '4': 3, '5': 9, '10': 'overrideParameters'},
    const {'1': 'permissionGroups', '3': 18, '4': 3, '5': 11, '6': '.model.MetaPermGroup', '10': 'permissionGroups'},
    const {'1': 'notifications', '3': 19, '4': 3, '5': 11, '6': '.model.MetaNotification', '10': 'notifications'},
    const {'1': 'parameters', '3': 20, '4': 3, '5': 11, '6': '.model.MetaParam', '10': 'parameters'},
  ],
};

const ServiceMetrics$json = const {
  '1': 'ServiceMetrics',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'serviceRate', '3': 2, '4': 1, '5': 1, '10': 'serviceRate'},
    const {'1': 'threshold', '3': 3, '4': 1, '5': 1, '10': 'threshold'},
    const {'1': 'totalEvents', '3': 4, '4': 1, '5': 3, '10': 'totalEvents'},
  ],
};

