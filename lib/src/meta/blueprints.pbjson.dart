///
//  Generated code. Do not modify.
//  source: blueprints.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const BlueOffer$json = const {
  '1': 'BlueOffer',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    const {'1': 'offer', '3': 2, '4': 1, '5': 3, '10': 'offer'},
  ],
};

const BlueMessage$json = const {
  '1': 'BlueMessage',
  '2': const [
    const {'1': 'actorPath', '3': 1, '4': 1, '5': 9, '10': 'actorPath'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

const BotMessage$json = const {
  '1': 'BotMessage',
  '2': const [
    const {'1': 'sender', '3': 1, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'attachments', '3': 3, '4': 3, '5': 9, '10': 'attachments'},
    const {'1': 'slots', '3': 4, '4': 1, '5': 11, '6': '.model.TaStringEntries', '10': 'slots'},
  ],
};

const BotRecipient$json = const {
  '1': 'BotRecipient',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

const BotResponse$json = const {
  '1': 'BotResponse',
  '2': const [
    const {'1': 'recipients', '3': 1, '4': 3, '5': 11, '6': '.model.BotRecipient', '10': 'recipients'},
  ],
};

const BotSetSlot$json = const {
  '1': 'BotSetSlot',
  '2': const [
    const {'1': 'event', '3': 1, '4': 1, '5': 9, '10': 'event'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

const BotAck$json = const {
  '1': 'BotAck',
  '2': const [
    const {'1': 'errorCode', '3': 1, '4': 1, '5': 5, '10': 'errorCode'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const PingRequest$json = const {
  '1': 'PingRequest',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

const PingResponse$json = const {
  '1': 'PingResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
  ],
};

const BlueInteract$json = const {
  '1': 'BlueInteract',
  '2': const [
    const {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

