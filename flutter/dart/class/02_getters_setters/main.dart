class BankAccount {
  // Private attributes
  String _accountHolder;
  double _balance;

  // Constructor
  BankAccount(this._accountHolder, this._balance);

  // Getter for account holder name
  String get accountHolder => _accountHolder;

  // Getter for balance
  double get balance => _balance;

  // Setter for account holder name
  set accountHolder(String name) {
    if (name.isNotEmpty) {
      _accountHolder = name;
    }
  }

  // Setter for balance (e.g., deposit money)
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Invalid balance amount!");
    }
  }

  // Method to display account details
  void displayAccount() {
    print("Account Holder: $_accountHolder, Balance: $_balance");
  }
}

void main() {
  // Create a new bank account
  BankAccount acc = BankAccount("Manoj", 5000);

  // Using getters
  print("Account Holder: ${acc.accountHolder}");
  print("Balance: ${acc.balance}");

  // Using setters
  acc.accountHolder = "Ravi";
  acc.balance = 7000;

  print("After updates:");
  acc.displayAccount();
      // Attempt invalid update
  acc.balance = -100; // Should print error
}
