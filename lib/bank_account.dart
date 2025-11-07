import 'dart:io';

abstract class BankAccount {
  String _accountnumber;
  String _accountholdername;
  double _balance;

  BankAccount({
    required String accountNumber,
    required String accountHolderName,
    required double balance, required String holderName,
  })  : _accountnumber = accountNumber,
        _accountholdername = accountHolderName,
        _balance = balance;

  String get accountNumber => _accountnumber;
  String get accountHolderName => _accountholdername;
  double get balance => _balance;

  // Setters
  set accountHolderName(String name) {
    _accountholdername = name;
  }

  set balance(double amount) {
    _balance = amount;
  }

  // Abstract methods (return new balance)
  double deposit(double amount);
  double withdraw(double amount);

  void displayAccountInfo(){
    print('Account Number: $_accountnumber');
    print('Account Holder: $_accountholdername');
    print('Balance: \$$_balance');
  }

}