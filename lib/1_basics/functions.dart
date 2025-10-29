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

//=============================
// CallBack Function Calling
//=============================

void processTask(String taskName, void Function() callback) {
  debugPrint("Task Started: $taskName");
  callback();
  debugPrint("Task Completed: $taskName");
}

// Practice Homework
void doHomework(void Function() callMe) {
  debugPrint("HomeWork Started......");
  callMe();
}

void homeworkDone() {
  debugPrint("Homework Done");
}

// Practice Program that Simulates Downloading a file.
void startDownload(void Function() func) {
  debugPrint("Download Started....");
  func();
}

void downloadCompleted() {
  debugPrint("Download Completed");
}

//=============================
// Recursive Function Defining
//=============================

// Example 1 - Find factorial of a number n
int factorial(int n) {
  if (n == 0) return 1;
  return n * factorial(n - 1);
}

// Task 1 : Write a recursive function countdown(int n) that prints numbers from n to 1, then prints "Done!".
void countdown(int n) {
  if (n == 0){
    debugPrint("Done!");
    return ;
  }
  debugPrint("$n");
  countdown(n-1);
}

// Task 2 : Write a recursive function to calculate sum of first n numbers.


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
  void Function() anonymous = () {
    debugPrint("Hello from anonymous function");
  };

  // Calling that function
  anonymous();

  // Using Anonymous function directly to in for-each

  List<String> fruits = ["Mango", "Banana", "Apple"];
  fruits.forEach((fruit) {
    debugPrint("Fruits:$fruit");
  });

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

  //=============================
  // CallBack Order Function Defining
  //=============================

  void afterTask() {
    debugPrint("Task Completed");
  }

  // Passing the callback function
  processTask("Download", afterTask);

  //Practice callback
  doHomework(homeworkDone);

  doHomework(() {
    debugPrint("Home Work Done Via Anonymous Callback");
  });

  // Practice Program that Simulates Downloading a file.
  startDownload(downloadCompleted);

  //=============================
  // Recursive Function Calling
  //=============================

  // Example 1
  int n = 5;
  debugPrint("The Factorial of $n : ${factorial(5)}");

  // Task 1
  n = 3;
  debugPrint("Countdown:");
  countdown(3);

  // Task 2

}
