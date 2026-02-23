import 'dart:io';

// Function to calculate square
int square(int n) {
  return n * n;
}

// Student class
class Student {
  String name;
  int marks;

  Student(this.name, this.marks);

  String toFile() => '$name,$marks';

  static Student fromFile(String data) {
    var parts = data.split(',');
    return Student(parts[0], int.parse(parts[1]));
  }
}

void main() {
  // 1 & 2: Take user input
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  // 3: If-else (adult check)
  if (age >= 18) {
    print("$name is an adult.");
  } else {
    print("$name is not an adult.");
  }

  // 4: Loop 1–10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 5: Function usage
  print("Square of 5: ${square(5)}");

  // 6: Student class object
  Student s = Student("Rahul", 85);

  // 7: Write & read from file
  File file = File("student.txt");
  file.writeAsStringSync(s.toFile());

  String data = file.readAsStringSync();
  Student readStudent = Student.fromFile(data);

  print("Student Name: ${readStudent.name}, Marks: ${readStudent.marks}");
}
