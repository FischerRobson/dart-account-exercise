class Client {
  String _name;

  Client(name) {
    _name = name;
  }

  String get getName {
    return _name;
  }

  set name(name) {
    _name = name;
  }
}