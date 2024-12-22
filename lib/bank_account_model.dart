class BankAccount {
  final String _accountId;
  double _balanceAmount = 0;
  BankAccount(this._accountId);
  BankAccount.withInitalizing(this._accountId, this._balanceAmount);
  // Getter and Setter for balanceAmount.
  double get balanceAmount => _balanceAmount;
  String get accountId => _accountId;

  set balance(double amount) {
    if (amount >= 0) {
      _balanceAmount = amount;
    } else {
      print(" Balance Amount cannot be negative ! ");
    }
  }

  // Method for withdrawal
  void withdraw(double enteredAmount) {
    if (enteredAmount <= 0) {
      print("Withdrawal amount must be positive !");
    } else if (enteredAmount > _balanceAmount) {
      print("Insufficient balance for withdrawal !");
    } else {
      _balanceAmount -= enteredAmount;
      print(
          "Withdrew done by: ->\$$enteredAmount. New balance: -> \$$_balanceAmount");
    }
  }

  // Method for deposit
  void deposit(double enteredAmount) {
    if (enteredAmount > 0) {
      _balanceAmount += enteredAmount;
      print("Deposited into by:-> \$$enteredAmount. New balance: -> \$$_balanceAmount");
    } else {
      print("Invalid deposit amount!");
    }
  }

  // Method to display account information
  void displayAccountInfo() {
    print("Account ID: $_accountId\nCurrent Balance: \$$_balanceAmount");
  }
}
