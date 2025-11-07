import 'package:assignment_1/bank.dart';
import 'package:assignment_1/checking_account.dart';
import 'package:assignment_1/premium_account.dart';
import 'package:assignment_1/savings_account.dart';

void main(){
  Bank myBank = Bank();

  var savings = SavingsAccount('S001', 'Alice', 1000);
  var checking = CheckingAccount('C001', 'Bob', 200);
  var premium = PremiumAccount('P001', 'Charlie', 20000);

  myBank.addAccount(savings);
  myBank.addAccount(checking);
  myBank.addAccount(premium);

  print('\n--- Initial Report ---');
  myBank.generateReport();

  print('\n--- Performing Transactions ---');
  savings.withdraw(300);
  checking.withdraw(250); // triggers overdraft
  premium.deposit(5000);

  print('\n--- Transfer Example ---');
  myBank.transfer('P001', 'S001', 1000);

  print('\n--- Final Report ---');
  myBank.generateReport();
}