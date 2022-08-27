import 'Client.dart';
import 'CommonAccount.dart';
import 'SpecialAccount.dart';

class Bank {

  Client clientMohamed = new Client("Mohamed");
  Client clientZylkson = new Client("Zylkson");
  Client clientLanderlhan = new Client("Landerlhan");
  Client clientJuca = new Client("Juca");
  Client clientMilindrao = new Client("Milindrao");
  Client clientJoselberto = new Client("Joselberto");

  SpecialAccount specialAccount1 = new SpecialAccount(clientMohamed);
  SpecialAccount specialAccount2 = new SpecialAccount(clientZylkson);
  SpecialAccount specialAccount3 = new SpecialAccount(clientLanderlhan);

  CommonAccount commonAccount1 = new SpecialAccount(clientJuca);
  CommonAccount commonAccount2 = new SpecialAccount(clientMilindrao);
  CommonAccount commonAccount3 = new SpecialAccount(clientJoselberto);

  void transfer(Account origin, Account destiny, Double value) {
    if(value > origin.getAmount) {
      print("Saldo insuficiente");
    }

    origin.amount(origin.getAmount - value);
    destiny.amount(destiny.getAmount + value);
  }
}