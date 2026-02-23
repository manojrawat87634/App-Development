// Demonstrating Composition in Dart (HAS-A relationship)

// Engine class
class Engine {
  String type;

  Engine(this.type);

  void start() {
    print("Engine of type $type is starting");
  }
}

// Tire class
class Tire {
  int size;

  Tire(this.size);

  void rotate() {
    print("Tire of size $size is rotating");
  }
}

// Car class composed of Engine and Tire
class Car {
  String name;
  Engine engine; // HAS-A Engine
  Tire tire;     // HAS-A Tire

  Car(this.name, this.engine, this.tire);

  void startCar() {
    print("$name car is starting:");
    engine.start();  // delegate to Engine
    tire.rotate();   // delegate to Tire
  }
}

void main() {
  Engine engine = Engine("V8");
  Tire tire = Tire(18);

  Car car = Car("BMW", engine, tire);

  car.startCar();
}
