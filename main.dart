import 'Account.dart';
import 'Bank.dart';
import 'Client.dart';
import 'CommonAccount.dart';
import 'SpecialAccount.dart';

void main() {
  final Bank bank = new Bank();

  final Client clientMohamed = Client("Mohamed");
  final Client clientZylkson = Client("Zylkson");
  final Client clientLanderlhan = Client("Landerlhan");
  final Client clientJuca = Client("Juca");
  final Client clientMilindrao = Client("Milindrao");
  final Client clientJoselberto = Client("Joselberto");

  final SpecialAccount specialAccount1 = SpecialAccount(clientMohamed, 500.0);
  final SpecialAccount specialAccount2 = SpecialAccount(clientZylkson, 2500.0);
  final SpecialAccount specialAccount3 = SpecialAccount(clientLanderlhan, 20.0);

  final CommonAccount commonAccount1 = CommonAccount(clientJuca, 760.0);
  final CommonAccount commonAccount2 = CommonAccount(clientMilindrao, 5500.0);
  final CommonAccount commonAccount3 = CommonAccount(clientJoselberto, 600.0);

  bank.addAccount(specialAccount1);
  bank.addAccount(specialAccount2);
  bank.addAccount(specialAccount3);
  bank.addAccount(commonAccount1);
  bank.addAccount(commonAccount2);
  bank.addAccount(commonAccount3);

  bank.transfer(commonAccount1, commonAccount2, 2.0);
}
