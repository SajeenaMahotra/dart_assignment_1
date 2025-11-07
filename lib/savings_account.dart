import 'bank_account.dart';
import 'interest_bearing.dart';

class SavingsAccount extends BankAccount implements InterestBearing {
  static const double minBalance = 500;
  static const int withdrawalLimit = 3;
  int _withdrawalsThisMonth = 0;

  SavingsAccount(super.accountNumber, super.holderName, super.balance);

  @override
  double deposit(double amount) {
    balance += amount;
    print('\$${amount} deposited.');
    return balance;
  }

  @override
  double withdraw(double amount) {
    if (_withdrawalsThisMonth >= withdrawalLimit) {
      print('Withdrawal limit reached for this month!');
      return balance;
    }
    if (balance - amount < minBalance) {
      print('Cannot withdraw. Minimum balance \$${minBalance} required.');
      return balance;
    }
    balance -= amount;
    _withdrawalsThisMonth++;
    print('\$${amount} withdrawn.');
    return balance;
  }

  @override
  double calculateInterest() {
    return balance * 0.02; // 2% interest
  }
}
