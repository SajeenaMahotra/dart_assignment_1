import 'package:assignment_1/bank_account.dart';

class CheckingAccount extends BankAccount{
  static const double overdraftFee = 35;

  CheckingAccount(super.accountNumber, super.holderName, super.balance);

  @override
  double deposit(double amount) {
    balance += amount; // Use setter
    print('\$${amount} deposited.');
    return balance;
  }

  @override
  double withdraw(double amount) {
    balance -= amount; // Use setter
    if (balance < 0) {
      balance -= overdraftFee;
      print(
          'Balance below zero! \$${overdraftFee} overdraft fee applied.');
    } else {
      print('\$${amount} withdrawn.');
    }
    return balance; // Use getter
  }
} 

