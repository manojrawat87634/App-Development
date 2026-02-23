// Demonstrating Static Members in Dart

class Car {
  String name;
  String version;

  // Static field - shared by all objects of the class
  static int totalCars = 0;

  // Constructor
  Car(this.name, this.version) {
    totalCars++;  // increment totalCars whenever a new Car object is created
  }

  // Instance method
  void display() {
    print("Car: $name, Version: $version");
  }

  // Static method - can access static fields only
  static void showTotalCars() {
    print("Total cars created: $totalCars");
  }
}

void main() {
  // Creating car objects
  Car c1 = Car("BMW", "1.2");
  Car c2 = Car("Audi", "2.0");
  Car c3 = Car("Toyota", "1.0");

  // Access instance methods
  c1.display();
  c2.display();

  // Access static field and method
  print("Access static field directly: ${Car.totalCars}");
  Car.showTotalCars();
}
