# procs-sagas-meta.md
## start
```sh
## receive entity events
$ dart example/messages/receive_entity_events.dart
```

## 2019.3.24
■ blackboard-bloc及message-bus的基本实现, 以及重连测试(更新订阅主题), 退出登录和重新登录测试:
    + sagas_meta/example/messages/procs_message_bus.dart
    + sagas/hybrid/sender.py
        $ python sagas/hybrid/sender.py user.system.hi xxx
    + sagas_meta/lib/src/message_bus.dart
    + sagas_meta/lib/src/event_bus.dart

    + sagas_meta/example/messages/procs_blackboard.dart
    + sagas_meta/lib/src/blackboard

    