import 'Account.dart';
import 'Client.dart';

class SpecialAccount extends Account {
  double _taxes = 0.0;

  SpecialAccount(Client client, double amount) : super(client, amount);

  double get getTaxes {
    return _taxes;
  }

  set amount(taxes) {
    _taxes = taxes;
  }

  void applyCorrection() {
    amount = getAmount * (1 + _taxes);
  }
}
