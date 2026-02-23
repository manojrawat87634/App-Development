class Vehicle {
  void start() {
    print("Vehicle is starting");
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car is starting with key ignition");
  }
}

class ElectricCar extends Vehicle {
  @override
  void start() {
    print("Electric car is starting silently");
  }
}

void main() {
  Vehicle v1 = Car();          // Vehicle reference, Car object
  Vehicle v2 = ElectricCar();  // Vehicle reference, ElectricCar object

  v1.start();  // Output: Car is starting with key ignition
  v2.start();  // Output: Electric car is starting silently
}
