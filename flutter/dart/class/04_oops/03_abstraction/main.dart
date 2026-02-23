// Demonstrating Abstract Classes in Dart

// Abstract class (cannot create object directly)
abstract class Vehicle {
  String brand;

  Vehicle(this.brand);

  // Abstract method - no body
  void start();

  // Regular method with implementation
  void info() {
    print("Vehicle brand: $brand");
  }
}

// Child class 1: Car
class Car extends Vehicle {
  Car(String brand) : super(brand);

  @override
  void start() {
    print("$brand car is starting with key ignition");
  }
}

// Child class 2: ElectricCar
class ElectricCar extends Vehicle {
  ElectricCar(String brand) : super(brand);

  @override
  void start() {
    print("$brand electric car is starting silently");
  }
}

void main() {
  // Vehicle v = Vehicle(); // ❌ Cannot instantiate abstract class

  // Using child objects
  Vehicle c1 = Car("BMW");
  Vehicle c2 = ElectricCar("Tesla");

  c1.info();
  c1.start(); // Car's implementation

  print("---");

  c2.info();
  c2.start(); // ElectricCar's implementation
}
