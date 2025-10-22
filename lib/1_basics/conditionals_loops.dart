import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //=============================
  // Simple if
  //=============================

  int age = 18;
  if (age >= 18) {
    debugPrint("You are adult.");
  }

  //=============================
  // if - else
  //=============================

  int marks = 45;
  if (marks >= 50) {
    debugPrint("You Passed");
  } else {
    debugPrint("You Failed");
  }

  //=============================
  // if-else if-else ladder
  //=============================

  int score = 75;
  if (score >= 90) {
    debugPrint("Excellent");
  } else if (score >= 70) {
    debugPrint("Good");
  } else if (score >= 50) {
    debugPrint("Average");
  } else {
    debugPrint("Poor");
  }

  //=============================
  // Nested-if
  //=============================

  int x = 15;
  int y = 10;
  if (x > 10) {
    if (y < 15) {
      debugPrint("x is Greater than 10 and y is less than 15");
    }
  }

  //=============================
  // switch-case
  //=============================

  String day = "Friday";
  switch (day) {
    case "Monday":
      debugPrint("Start of the Week");
      break;
    case "Wednesday":
      debugPrint("Midweek day");
      break;
    case "Friday":
      debugPrint("Almost Weekend");
      break;
    case "Sunday":
      debugPrint("Rest day");
      break;
    default:
      debugPrint("Regular Day");
  }

  //=============================
  //Ternary/ Conditional Operator
  //=============================

  int temp = 35;
  String weather = temp > 30 ? "Hot" : "Pleasant";
  debugPrint(weather);

  //=============================
  //Complex Combined Condition
  //=============================

  bool isLoggedIn = true;
  bool hasPermission = false;
  if (isLoggedIn && hasPermission) {
    debugPrint("Access granted to premium content");
  } else if (isLoggedIn && !hasPermission) {
    debugPrint("Access granted to free content Only");
  } else {
    debugPrint("Please login to access content");
  }

  //=============================
  //Conditionals Test
  //=============================

  //Q1 Solution

  int a = 25;
  if (a > 0) {
    debugPrint("a is Positive");
  } else if (a < 0) {
    debugPrint("a is Negative");
  } else {
    debugPrint("a is 0");
  }

  // Q2 Solution

  score = 45;
  if (score >= 35) {
    debugPrint("Pass");
  }

  //Q3 Solution

  int number = 6;
  if (number % 2 == 0) {
    debugPrint("Even Number");
  } else {
    debugPrint("Odd Number");
  }

  //Q4 Solution

  double purchaseAmount = 3000;
  double finalBill;

  if (purchaseAmount > 5000) {
    finalBill = purchaseAmount * 0.80;
  } else if (purchaseAmount < 2000) {
    finalBill = purchaseAmount;
  } else {
    finalBill = purchaseAmount * 0.90;
  }
  debugPrint("Final Bill : $finalBill");

  //Q5

  age = 19;
  bool hasGraduated = true;
  if (age >= 18) {
    if (hasGraduated == true) {
      debugPrint("Eligible");
    } else {
      debugPrint("Not Eligible");
    }
  }
  if (age < 18) {
    debugPrint("Not Eligible (Age<18) ");
  }

  //Q6
  int input = 5;
  switch (input) {
    case (1):
      debugPrint("Monday");
      break;
    case (2):
      debugPrint("Tuesday");
      break;
    case (3):
      debugPrint("Wednesday");
      break;
    case (4):
      debugPrint("Thursday");
      break;
    case (5):
      debugPrint("Friday");
      break;
    case (6):
      debugPrint("Saturday");
      break;
    case (7):
      debugPrint("Sunday");
      break;
    default:
      debugPrint("Enter Correct Input from 1-7");
      break;
  }

  //Q7
  a = 4;
  String result = a % 2 == 0 ? "Even" : "Odd";
  debugPrint(result);

  //Q8
  //Leap Year Divisible by 4 and not divisible by 100 unlesss it is divisible by 400
  int year = 2024;
  if (year % 400 == 0) {
    debugPrint("$year is Leap Year");
  } else if (year % 100 == 0) {
    debugPrint("$year is not leap year");
  } else if (year % 4 == 0) {
    debugPrint("$year is Leap Year");
  } else {
    debugPrint("$year is not leap year");
  }

  //Q9
  String ch = "A";
  if (ch == "a" ||
      ch == "e" ||
      ch == "i" ||
      ch == "o" ||
      ch == "u" ||
      ch == "A" ||
      ch == "E" ||
      ch == "I" ||
      ch == "O" ||
      ch == "U") {
    debugPrint("$ch is Vowel");
  } else {
    debugPrint("$ch is not Vowel");
  }

  //Q10
  String username = "admin";
  String password = "1234";
  if (username == "admin" && password == "1234") {
    debugPrint("Login Successful");
  } else {
    debugPrint("Invalid Credentials");
  }
}
