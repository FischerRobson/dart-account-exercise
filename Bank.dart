import 'Account.dart';

class Bank {
  List<Account> _accounts = [];

  List<Account> get getAccounts {
    return _accounts;
  }

  void addAccount(Account account) {
    _accounts.add(account);
  }

  void transfer(Account origin, Account destiny, double value) {
    if (value > origin.getAmount) {
      return print("Saldo insuficiente");
    }

    print("Transferencia no valor de: $value");
    origin.amount = origin.getAmount - value;
    destiny.amount = destiny.getAmount + value;
    print("Saldo da origem/${origin.getClient.getName}: ${origin.getAmount}");
    print(
        "Saldo do destinatario/${destiny.getClient.getName}: ${destiny.getAmount}");
  }
}
