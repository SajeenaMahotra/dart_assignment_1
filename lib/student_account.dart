import 'package:assignment_1/bank_account.dart';

class StudentAccount extends BankAccount{

static const double maxBalance= 5000;

StudentAccount(super._accountnumber, super._accountholdername, super._balance);

  @override
  double deposit(double amount) {
    if(balance+amount > maxBalance){
      print("Cannot deposit.Maximun balance exceeeded.");
      return balance;
    }
    balance += amount;
    print("\$${amount} deposited.");
    return balance;

  }

  @override
  double withdraw(double amount) {
    if (balance - amount < 0){
      print("Insufficient funds.");
      return balance;
    }
    balance -= amount;
    print('\$${amount} withdrawn.');
    return balance;
  }

}