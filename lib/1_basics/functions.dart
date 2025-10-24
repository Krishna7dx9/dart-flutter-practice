import 'package:flutter/cupertino.dart';

// Say Hello function
void sayHello() {
  debugPrint("Hello, world");
}

// Addition function
int add(int a, int b) {
  return a + b;
}

//=============================
// Positional Parameter Function Defining
//=============================

void positional(String name, int age) {
  debugPrint("Hello $name, you are $age years old");
}

//=============================
// Named Parameter Function Defining
//=============================

void named({required String name, required int age}) {
  debugPrint("Hello $name, You are $age Years old");
}

//=============================
// Default Parameter Function Defining
//=============================

void defaultParameter({String name = "Kris", int age = 19}) {
  debugPrint("The default name is $name, and default age is $age");
}

void main() {
  // Calling sayHello function
  sayHello();

  // Calling addition function
  int result = add(5, 3);
  debugPrint("Result: $result");

  //=============================
  // Positional Parameter Function Calling
  //=============================

  positional("Kris", 19);

  //=============================
  // Named Parameter Function Calling
  //=============================0

  named(name: "Kris", age: 19);

  //=============================
  // Default Parameter Function Calling
  //=============================

  defaultParameter(name: "Kris");
}
