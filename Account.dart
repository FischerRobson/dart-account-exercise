import 'Client.dart';

abstract class Account {
  Client _client;
  double _amount = 0.0;

  Account(this._client, this._amount);

  Client get getClient {
    return _client;
  }

  set client(client) {
    _client = client;
  }

  double get getAmount {
    return _amount;
  }

  set amount(amount) {
    _amount = amount;
  }

  String toString() {
    return "Cliente: $_client.getName, saldo: $_amount";
  }
}
