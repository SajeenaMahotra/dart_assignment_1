import 'package:assignment_1/bank_account.dart';
import 'package:assignment_1/interest_bearing.dart';

class PremiumAccount extends BankAccount implements InterestBearing{
  static const double minBalance = 10000;

  PremiumAccount(super.accountNumber, super.holderName, super.balance);

  @override
  double deposit(double amount) {
    balance += amount; // Use setter
    print('\$${amount} deposited.');
    return balance; // Use getter
  }

  @override
  double withdraw(double amount) {
    if (balance - amount < minBalance) {
      print('Cannot withdraw. Minimum balance \$${minBalance} required.');
      return balance;
    }
    balance -= amount; // Use setter
    print('\$${amount} withdrawn.');
    return balance; // Use getter
  }
  
  @override
  double calculateInterest() {
    return balance * 0.05; // 5% interest
  }
}