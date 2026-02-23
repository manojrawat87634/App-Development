// Demonstrating Inheritance in Dart

// Base class (Parent)
class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void displayInfo() {
    print("Vehicle Brand: $brand, Speed: $speed km/h");
  }
}

// Derived class (Child)
class Car extends Vehicle {
  String version;

  // Constructor in child class using 'super' to call parent constructor
  Car(String brand, int speed, this.version) : super(brand, speed);

  // Method overriding
  @override
  void displayInfo() {
    // Call parent method if needed
    super.displayInfo(); 
    print("Car Version: $version");
  }

  // Additional method in child
  void honk() {
    print("$brand car is honking! Beep Beep!");
  }
}

void main() {
  // Create Vehicle object
  Vehicle v1 = Vehicle("Generic Vehicle", 80);
  v1.displayInfo();

  print("\n--- Car Object ---");
  
  // Create Car object
  Car c1 = Car("BMW", 180, "1.2");
  c1.displayInfo();   // Overridden method
  c1.honk();          // Child-specific method
}
