import 'package:assignment_1/bank_account.dart';

class Bank {
  List<BankAccount>_accounts = [];

  void addAccount(BankAccount account){
    _accounts.add(account);
    print('Account ${account.accountNumber} added for ${account.accountHolderName}.');
  }

  // Find account by account number
  BankAccount? findAccount(String accountNumber){
    for (var acc in _accounts){
      if(acc.accountNumber == accountNumber)
      return acc;
    }
    print('Account $accountNumber not found.');
    return null;
  }

  //Transfer money between accounts
  void transfer (String fromAccountNumber, String toAccountNumber, double amount){
    var fromAcc = findAccount(fromAccountNumber);
    var toAcc = findAccount(toAccountNumber);

    if (fromAcc == null || toAcc == null){
      print('Transfer failed. One of the accounts not found. ');
      return;
    }

    double oldBalance = fromAcc.balance;
    fromAcc.withdraw(amount);

    // If withdraw was successful
    if (fromAcc.balance != oldBalance) {
      toAcc.deposit(amount);
      print('\$${amount} transferred from ${fromAcc.accountNumber} to ${toAcc.accountNumber}.');
    } else {
      print('Transfer failed due to insufficient funds or account rules.');
    }
  }

   // Generate report of all accounts
  void generateReport() {
    print('--- Bank Accounts Report ---');
    for (var acc in _accounts) {
      acc.displayAccountInfo();
      print('---------------------------');
    }
  }
}