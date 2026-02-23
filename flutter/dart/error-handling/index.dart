void main() {
  try {
    // Code that might throw an exception
    // int result = 10 ~/ 0; // Division by zero
  } catch (e) {
    // Handle the exception
    print('Caught an exception: $e');
  } finally {
    // Always executed
    print('This is the finally block');
  }
}
