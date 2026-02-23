// Demonstrating Interfaces in Dart using 'implements'

// Interface 1
class Drivable {
  void drive(); // method to implement
}

// Interface 2
class Maintainable {
  void service(); // method to implement
}

// Class implementing multiple interfaces
class Car implements Drivable, Maintainable {
  String name;

  Car(this.name);

  @override
  void drive() {
    print("$name car is driving");
  }

  @override
  void service() {
    print("$name car is being serviced");
  }
}

// Another class implementing Drivable only
class Bike implements Drivable {
  String name;

  Bike(this.name);

  @override
  void drive() {
    print("$name bike is driving");
  }
}

void main() {
  // Car object implements both interfaces
  Car c1 = Car("BMW");
  c1.drive();   // from Drivable
  c1.service(); // from Maintainable

  // Bike object implements one interface
  Bike b1 = Bike("Pulsar");
  b1.drive();
}
