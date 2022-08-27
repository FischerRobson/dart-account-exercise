abstract class Account {
  Client _client;
  Double _amount = 0.0;

  Account(this._client);

  Client get getClient{
    return _client;
  }

  set client(client) {
    _client = client;
  }

  Double get getAmount{
    return _amount;
  }

  set amount(amount) {
    _amount = amount;
  }

  String toString() {
    return "Cliente: $_client.getName, saldo: $_amount"
  }
}