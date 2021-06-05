library micro_mobile;

class Store {
  final _events = <String, List<Function>>{};

  void registerEvent(String name) {
    if (!_events.containsKey(name)) {
      _events[name] = <Function>[];
    }
  }

  void addEventListener(String name, Function callback) {
    if (_events.containsKey(name)) {
      _events[name]?.add(callback);
    } else {
      throw new Exception("NoSuchEventException");
    }
  }

  void emit(String name, [Object? payload]) {
    var listeners = _events[name];
    listeners?.forEach((listener) {
      if (payload == null) {
        listener();
      } else {
        listener(payload);
      }
    });
  }
}
