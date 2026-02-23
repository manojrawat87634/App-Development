class Car {
  String name;
  String version;

  // Default constructor
  Car() {
    name = "Unknown";
    version = "0.0";
  }

  // Parameterized constructor
  Car.parameterized(this.name, this.version);

  // Named constructor
  Car.namedCar(String name) {
    this.name = name;
    this.version = "1.0";
  }
}

void main() {
  Car c1 = Car();
  Car c2 = Car.parameterized("BMW", "1.2");
  Car c3 = Car.namedCar("Audi");
  
  print("${c1.name}, ${c1.version}");
  print("${c2.name}, ${c2.version}");
  print("${c3.name}, ${c3.version}");
}
