import 'package:flutter/cupertino.dart';

// Say Hello function
void sayHello() {
  debugPrint("Hello, world");
}

// Add function
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

//=============================
// Arrow Syntax Function Defining
//=============================

// sayHelo Function
void sayHelo() => debugPrint("This is also called fat arrow function");

// Adding Function
int addition(int a, int b) => a + b;

// Arrow function with void
void arrow(String name) => debugPrint("Hello, $name");

//=============================
// Higher Order Function Defining
//=============================

void callFunction(void Function() func) {
  func;
}

void main() {
  // Calling sayHello function
  sayHello();

  // Calling add function
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

  //=============================
  // Anonymous Function
  //=============================

  // Assigning anonymous function to a variable
  var anonymous = () {
    debugPrint("Hello from anonymous function");
  };

  // Calling that function
  anonymous();

  // Using Anonymous function directly to in forEach

  List<String> fruits = ["Mango", "Banana", "Apple"];
  for (var fruit in fruits) {
    debugPrint("Fruits:$fruit");
  }

  //=============================
  // Arrow Syntax Function Calling
  //=============================

  // sayHelo Calling
  sayHelo();

  // Addition Function Returning Calling
  int sum = addition(5, 3);
  debugPrint("Sum Using Arrow Function: $sum");

  // Arrow function with void calling
  arrow("Kris");

  //Arrow function as callback by forEach
  List<int> numbers = [1, 2, 3];
  numbers.forEach((n) => debugPrint("Numbers: $n"));

  //=============================
  // Higher Order Function Calling
  //=============================

  callFunction(sayHelo);
}
