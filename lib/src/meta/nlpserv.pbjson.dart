///
//  Generated code. Do not modify.
//  source: nlpserv.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const NlCabochaToken$json = const {
  '1': 'NlCabochaToken',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'additional_info', '3': 2, '4': 1, '5': 9, '10': 'additionalInfo'},
    const {'1': 'feature_list', '3': 3, '4': 3, '5': 9, '10': 'featureList'},
    const {'1': 'ne', '3': 4, '4': 1, '5': 9, '10': 'ne'},
    const {'1': 'normalized_surface', '3': 5, '4': 1, '5': 9, '10': 'normalizedSurface'},
    const {'1': 'surface', '3': 6, '4': 1, '5': 9, '10': 'surface'},
    const {'1': 'pos', '3': 7, '4': 1, '5': 9, '10': 'pos'},
    const {'1': 'pos1', '3': 8, '4': 1, '5': 9, '10': 'pos1'},
    const {'1': 'pos2', '3': 9, '4': 1, '5': 9, '10': 'pos2'},
    const {'1': 'pos3', '3': 10, '4': 1, '5': 9, '10': 'pos3'},
    const {'1': 'ctype', '3': 11, '4': 1, '5': 9, '10': 'ctype'},
    const {'1': 'cform', '3': 12, '4': 1, '5': 9, '10': 'cform'},
    const {'1': 'genkei', '3': 13, '4': 1, '5': 9, '10': 'genkei'},
    const {'1': 'yomi', '3': 14, '4': 1, '5': 9, '10': 'yomi'},
  ],
};

const NlCabochaChunk$json = const {
  '1': 'NlCabochaChunk',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'additional_info', '3': 2, '4': 1, '5': 9, '10': 'additionalInfo'},
    const {'1': 'feature_list', '3': 3, '4': 3, '5': 9, '10': 'featureList'},
    const {'1': 'func_pos', '3': 4, '4': 1, '5': 5, '10': 'funcPos'},
    const {'1': 'head_pos', '3': 5, '4': 1, '5': 5, '10': 'headPos'},
    const {'1': 'link', '3': 6, '4': 1, '5': 5, '10': 'link'},
    const {'1': 'score', '3': 7, '4': 1, '5': 2, '10': 'score'},
    const {'1': 'token_pos', '3': 8, '4': 1, '5': 5, '10': 'tokenPos'},
    const {'1': 'next_link_id', '3': 9, '4': 1, '5': 5, '10': 'nextLinkId'},
    const {'1': 'prev_link_ids', '3': 10, '4': 3, '5': 5, '10': 'prevLinkIds'},
    const {'1': 'tokens', '3': 11, '4': 3, '5': 11, '6': '.nlpserv.NlCabochaToken', '10': 'tokens'},
  ],
};

const NlCabochaChunks$json = const {
  '1': 'NlCabochaChunks',
  '2': const [
    const {'1': 'chunks', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlCabochaChunk', '10': 'chunks'},
  ],
};

const NlEntity$json = const {
  '1': 'NlEntity',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 9, '10': 'entity'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'start', '3': 3, '4': 1, '5': 5, '10': 'start'},
    const {'1': 'confidence', '3': 4, '4': 1, '5': 2, '10': 'confidence'},
    const {'1': 'end', '3': 5, '4': 1, '5': 5, '10': 'end'},
  ],
};

const NlEntities$json = const {
  '1': 'NlEntities',
  '2': const [
    const {'1': 'entities', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlEntity', '10': 'entities'},
  ],
};

const NlAmount$json = const {
  '1': 'NlAmount',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 11, '6': '.nlpserv.NlEntity', '10': 'entity'},
    const {'1': 'numericVal', '3': 2, '4': 1, '5': 9, '10': 'numericVal'},
  ],
};

const NlAmountList$json = const {
  '1': 'NlAmountList',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlAmount', '10': 'amount'},
  ],
};

const NlTokenizerRequest$json = const {
  '1': 'NlTokenizerRequest',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 11, '6': '.nlpserv.NlText', '10': 'text'},
    const {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.nlpserv.NlTokenizerOptions', '10': 'options'},
  ],
};

const NlToken$json = const {
  '1': 'NlToken',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'length', '3': 2, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
  ],
};

const NlTokens$json = const {
  '1': 'NlTokens',
  '2': const [
    const {'1': 'tokens', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlToken', '10': 'tokens'},
  ],
};

const NlTokenizerOptions$json = const {
  '1': 'NlTokenizerOptions',
  '2': const [
    const {'1': 'japaneseNameRecognize', '3': 1, '4': 1, '5': 8, '10': 'japaneseNameRecognize'},
    const {'1': 'placeRecognize', '3': 2, '4': 1, '5': 8, '10': 'placeRecognize'},
    const {'1': 'organizationRecognize', '3': 3, '4': 1, '5': 8, '10': 'organizationRecognize'},
    const {'1': 'nameRecognize', '3': 4, '4': 1, '5': 8, '10': 'nameRecognize'},
    const {'1': 'translatedNameRecognize', '3': 5, '4': 1, '5': 8, '10': 'translatedNameRecognize'},
    const {'1': 'numberQuantifierRecognize', '3': 6, '4': 1, '5': 8, '10': 'numberQuantifierRecognize'},
    const {'1': 'allNamedEntityRecognize', '3': 7, '4': 1, '5': 8, '10': 'allNamedEntityRecognize'},
  ],
};

const NlResult$json = const {
  '1': 'NlResult',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
  ],
};

const NlText$json = const {
  '1': 'NlText',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'lang', '3': 2, '4': 1, '5': 9, '10': 'lang'},
  ],
};

const NlTexts$json = const {
  '1': 'NlTexts',
  '2': const [
    const {'1': 'texts', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlText', '10': 'texts'},
  ],
};

const NlWord$json = const {
  '1': 'NlWord',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'lemma', '3': 2, '4': 1, '5': 9, '10': 'lemma'},
    const {'1': 'postag1', '3': 3, '4': 1, '5': 9, '10': 'postag1'},
    const {'1': 'postag2', '3': 4, '4': 1, '5': 9, '10': 'postag2'},
    const {'1': 'head_id', '3': 5, '4': 1, '5': 5, '10': 'headId'},
    const {'1': 'deprel', '3': 6, '4': 1, '5': 9, '10': 'deprel'},
    const {'1': 'name', '3': 7, '4': 1, '5': 9, '10': 'name'},
  ],
};

const NlDepWord$json = const {
  '1': 'NlDepWord',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'lemma', '3': 2, '4': 1, '5': 9, '10': 'lemma'},
    const {'1': 'head', '3': 3, '4': 1, '5': 9, '10': 'head'},
    const {'1': 'deprel', '3': 4, '4': 1, '5': 9, '10': 'deprel'},
  ],
};

const NlDepWords$json = const {
  '1': 'NlDepWords',
  '2': const [
    const {'1': 'words', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlDepWord', '10': 'words'},
    const {'1': 'coreGraph', '3': 2, '4': 3, '5': 11, '6': '.nlpserv.NlDepWords.CoreGraphEntry', '10': 'coreGraph'},
    const {'1': 'summary', '3': 3, '4': 1, '5': 9, '10': 'summary'},
  ],
  '3': const [NlDepWords_CoreGraphEntry$json],
};

const NlDepWords_CoreGraphEntry$json = const {
  '1': 'CoreGraphEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const NlParseRequest$json = const {
  '1': 'NlParseRequest',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

const NlPinyinRequest$json = const {
  '1': 'NlPinyinRequest',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'presentation', '3': 2, '4': 1, '5': 14, '6': '.nlpserv.NlPinyinRequest.PinyinPresentation', '10': 'presentation'},
  ],
  '4': const [NlPinyinRequest_PinyinPresentation$json],
};

const NlPinyinRequest_PinyinPresentation$json = const {
  '1': 'PinyinPresentation',
  '2': const [
    const {'1': 'NUMBER', '2': 0},
    const {'1': 'WITH_TONE_MARK', '2': 1},
    const {'1': 'WITHOUT_TONE', '2': 2},
  ],
};

const NlSentence$json = const {
  '1': 'NlSentence',
  '2': const [
    const {'1': 'words', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlWord', '10': 'words'},
  ],
};

const NlSentences$json = const {
  '1': 'NlSentences',
  '2': const [
    const {'1': 'sentences', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlSentence', '10': 'sentences'},
  ],
};

const NlDocumentSimilarity$json = const {
  '1': 'NlDocumentSimilarity',
  '2': const [
    const {'1': 'documentId', '3': 1, '4': 1, '5': 5, '10': 'documentId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'similarity', '3': 3, '4': 1, '5': 2, '10': 'similarity'},
  ],
};

const NlDocumentSimilaritySet$json = const {
  '1': 'NlDocumentSimilaritySet',
  '2': const [
    const {'1': 'docs', '3': 1, '4': 3, '5': 11, '6': '.nlpserv.NlDocumentSimilarity', '10': 'docs'},
  ],
};

const NlDocumentSet$json = const {
  '1': 'NlDocumentSet',
  '2': const [
    const {'1': 'textList', '3': 1, '4': 3, '5': 9, '10': 'textList'},
  ],
};

