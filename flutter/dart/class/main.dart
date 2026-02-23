// Example demonstrating Class Declaration and Object Instantiation

// 1️⃣ Class Declaration
// A class is a blueprint that defines the structure of an object
class Car {
  // currently empty
}

void main() {
  // 2️⃣ Object Instantiation
  // Creating an object from the Car class (blueprint)

  Car c1 = Car();        // without 'new' keyword
  Car c2 = new Car();    // with 'new' keyword (optional in Dart)

  print(c1);
  print(c2);
}
