import 'package:flutter/cupertino.dart';
import 'dart:core';

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
  func();
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

// Task 1 : Write a recursive function count down(int n) that prints numbers from n to 1, then prints "Done!".
void countdown(int n) {
  if (n == 0) {
    debugPrint("Done!");
    return;
  }
  debugPrint("$n");
  countdown(n - 1);
}

// Task 2 : Write a recursive function to calculate sum of first n numbers.
int sumOfNumbers(int n) {
  if (n == 0) return 0;
  return n + sumOfNumbers(n - 1);
}

// Task 3 Write a recursive function fibonacci(n) that returns the nth Fibonacci number.
int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

// Test 1 : Write a recursive function reverseString(String str) that returns the reversed string.
String reverseString(String str) {
  if (str.isEmpty || str.length == 1) return str;
  return reverseString(str.substring(1)) + str[0];
}

// Test 2 : Write a recursive function gcd(int a, int b) that returns the greatest common divisor of two numbers.
int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

// Test 3: Write a recursive function power(int base, int exponent) that returns base raised to the power of exponent.
int power(int base, int exponent) {
  if (exponent == 0) return 1;
  return base * power(base, exponent - 1);
}

// Test 4: Write a recursive function isPalindrome(String str) that checks if the given string is a palindrome (same forwards and backwards).
bool isPalindrome(String str) {
  if (str.length <= 1) return true;

  if (str[0] != str[str.length - 1]) return false;

  return isPalindrome(str.substring(1, str.length - 1));
}

// Test 5 : Write a recursive function that counts how many digits are in a number.

/*   Problem Solving : Think,Write,Code,Review

type : Int
Input : 12345
Output: 5

Base Case (When to Stop) : If num.length == 1 , return 1
Non-Base Case (Recursion: Returning same function and also calculating how many digits in a Number :
return numOfDigits(num)
*/

/*  Result :

Input : 2543
Expected : Same as Output
Output : 2543
254
25
2

Input : 0
Expected : Same as Output
Output :0

Input : 9
Expected : Same as Output
Output : 9

Input : 123
Expected : Same as Output
Output : 123
12
1

*/

Object numberOfDigits(String num) {
  // Base Case
  if (num.length == 1 || num == "") {
    return num;
  }
  // Non-Base Case
  else {
    debugPrint(num);
    return numberOfDigits(num.substring(0, num.length - 1));
  }
}

/*
Test 6 : Write a recursive function that returns a new list containing only the
even numbers from the given list and also return the count (length) of even numbers.
*/

/*  Problem Solving : Think,Write,Code Review

Input : [2,5,6,9,12,3]
Output : Even Numbers List from Input : [2,6,12]
         Length : 3
Type : Int
Declare : Input, number, ListOfEvenNumbers, Function checkEvenNumber, n

Without Recursion Solution : for each number in input, if number % 2 == 0,
(first create List) add number to listOfEvenNumbers, then print lisOfEvenNumbers.length

With Recursion Solution:

Base Case (When to Stop) : if (input[n] % 2 != 0) print listOfEvenNumbers, print length
Non-Base Case (Calling a function to make recursion of adding the number to listOfEvenNumbers if {for number in Input % 2 ==0} and increment n

 */

int n = 0;

List<int> listOfEvenNumbers = [];

dynamic checkEvenNumber(List<int> input) {
  if (n >= input.length) {
    debugPrint("Index : $n");
    debugPrint("Length: ${listOfEvenNumbers.length}");
    return listOfEvenNumbers;
  } else if (input[n] % 2 == 0) {
    listOfEvenNumbers.add(input[n]);

    n++;
    return checkEvenNumber(input);
  } else if (input[n] % 2 != 0) {
    n++;
    return checkEvenNumber(input);
  }
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
  n = 3;
  debugPrint("The sum of $n Numbers is : ${sumOfNumbers(n)}");

  // Task 3
  debugPrint("Fibonacci of $n is : $fibonacci(n)");

  // Test 1
  String str = "Kris Sharma";
  debugPrint("The reverse of $str is : $reverseString(str)");

  // Test 2
  int a = 4;
  int b = 4;
  debugPrint("The Greatest Common Divisor of $a and $b is : ${gcd(a, b)}");

  // Test 3
  int base = 4;
  int exponent = 3;
  debugPrint("Now Let's use our power function ${power(base, exponent)}");

  // Test 4
  debugPrint("$str is : ${isPalindrome(str)}");

  // Test 5
  String num = "254";
  debugPrint("${numberOfDigits(num)}");

  // Test 6

  List<int> input = [2, 5, 6, 9, 3, 46, 2, 6, 4, 9, 8];
  debugPrint("List of Even Numbers : ${checkEvenNumber(input)}");
}