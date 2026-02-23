class BankAccount {
  String _accountHolder; // private
  double _balance;       // private

  BankAccount(this._accountHolder, this._balance);

  // Getter
  double get balance => _balance;

  // Setter
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    }
  }

  void display() {
    print("Account: $_accountHolder, Balance: $_balance");
  }
}

void main() {
  BankAccount acc = BankAccount("Manoj", 5000);
  acc.balance = 7000; // valid
  acc.display();
}
