///
//  Generated code. Do not modify.
//  source: values.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const JsonDataType$json = const {
  '1': 'JsonDataType',
  '2': const [
    const {'1': 'MAP', '2': 0},
    const {'1': 'LIST', '2': 1},
    const {'1': 'SCALAR', '2': 2},
  ],
};

const TaFieldValue$json = const {
  '1': 'TaFieldValue',
  '2': const [
    const {'1': 'stringVal', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'stringVal'},
    const {'1': 'doubleVal', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'doubleVal'},
    const {'1': 'intVal', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'intVal'},
    const {'1': 'blob', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'blob'},
    const {'1': 'blobType', '3': 5, '4': 1, '5': 9, '10': 'blobType'},
  ],
  '8': const [
    const {'1': 'valueOf'},
  ],
};

const TaEntityValue$json = const {
  '1': 'TaEntityValue',
  '2': const [
    const {'1': 'entityName', '3': 1, '4': 1, '5': 9, '10': 'entityName'},
    const {'1': 'mutable', '3': 2, '4': 1, '5': 8, '10': 'mutable'},
    const {'1': 'fields', '3': 3, '4': 3, '5': 11, '6': '.model.TaEntityValue.FieldsEntry', '10': 'fields'},
  ],
  '3': const [TaEntityValue_FieldsEntry$json],
};

const TaEntityValue_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.model.TaFieldValue', '10': 'value'},
  ],
  '7': const {'7': true},
};

const TaEntityValues$json = const {
  '1': 'TaEntityValues',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.model.TaEntityValue', '10': 'values'},
  ],
};

const TaStringEntries$json = const {
  '1': 'TaStringEntries',
  '2': const [
    const {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.model.TaStringEntries.ValuesEntry', '10': 'values'},
    const {'1': 'entityName', '3': 2, '4': 1, '5': 9, '10': 'entityName'},
  ],
  '3': const [TaStringEntries_ValuesEntry$json],
};

const TaStringEntries_ValuesEntry$json = const {
  '1': 'ValuesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TaStringEntriesBatch$json = const {
  '1': 'TaStringEntriesBatch',
  '2': const [
    const {'1': 'records', '3': 1, '4': 3, '5': 11, '6': '.model.TaStringEntries', '10': 'records'},
  ],
};

const TaStringEntriesMap$json = const {
  '1': 'TaStringEntriesMap',
  '2': const [
    const {'1': 'entries', '3': 1, '4': 3, '5': 11, '6': '.model.TaStringEntriesMap.EntriesEntry', '10': 'entries'},
  ],
  '3': const [TaStringEntriesMap_EntriesEntry$json],
};

const TaStringEntriesMap_EntriesEntry$json = const {
  '1': 'EntriesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.model.TaStringEntries', '10': 'value'},
  ],
  '7': const {'7': true},
};

const TaIdBag$json = const {
  '1': 'TaIdBag',
  '2': const [
    const {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
  ],
};

const TaRecordset$json = const {
  '1': 'TaRecordset',
  '2': const [
    const {'1': 'recordGroups', '3': 1, '4': 3, '5': 11, '6': '.model.TaRecordset.RecordGroupsEntry', '10': 'recordGroups'},
  ],
  '3': const [TaRecordset_RecordGroupsEntry$json],
};

const TaRecordset_RecordGroupsEntry$json = const {
  '1': 'RecordGroupsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.model.TaIdBag', '10': 'value'},
  ],
  '7': const {'7': true},
};

const TaJson$json = const {
  '1': 'TaJson',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'dataType', '3': 2, '4': 1, '5': 14, '6': '.model.JsonDataType', '10': 'dataType'},
  ],
};

const TaJsonEntity$json = const {
  '1': 'TaJsonEntity',
  '2': const [
    const {'1': 'entityName', '3': 1, '4': 1, '5': 9, '10': 'entityName'},
    const {'1': 'json', '3': 2, '4': 1, '5': 9, '10': 'json'},
  ],
};

const TaJsonEntities$json = const {
  '1': 'TaJsonEntities',
  '2': const [
    const {'1': 'entities', '3': 1, '4': 3, '5': 11, '6': '.model.TaJsonEntity', '10': 'entities'},
  ],
};

const ExternalLink$json = const {
  '1': 'ExternalLink',
  '2': const [
    const {'1': 'gid', '3': 1, '4': 1, '5': 9, '10': 'gid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

const ExternalLinks$json = const {
  '1': 'ExternalLinks',
  '2': const [
    const {'1': 'links', '3': 1, '4': 3, '5': 11, '6': '.model.ExternalLink', '10': 'links'},
  ],
};

