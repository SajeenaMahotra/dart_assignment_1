import 'dart:io';

abstract class BankAccount {
  String _accountnumber;
  String _accountholdername;
  double _balance;

   BankAccount(this._accountnumber, this._accountholdername, this._balance);
    
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