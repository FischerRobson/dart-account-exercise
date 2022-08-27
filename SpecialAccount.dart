import 'Account.dart';

class SpecialAccount extends Account {
  Double _taxes;

  CommonAccount(Client client): super(client);

  Double get getTaxes{
    return _taxes;
  }

  set amount(taxes) {
    _taxes = taxes;
  }

  void applyCorrection() {
    _amount = _amount * (1 + _taxes);
  }


}