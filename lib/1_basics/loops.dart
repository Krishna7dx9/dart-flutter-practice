import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
  //=============================
  // for loops
  //=============================

  for (int i = 0; i <= 10; i++) {
    debugPrint("$i");
  }

  //=============================
  // for-in loops
  //=============================

  List<String> fruits = ["Mango", "Banana", "Apple"];

  for (String fruit in fruits) {
    debugPrint(fruit);
  }

  Set<String> vegetables = {"Lady Finger", "Tomato"};

  for (String vegetable in vegetables) {
    debugPrint(vegetable);
  }

  //=============================
  // for-each loops
  //=============================

  Map<String, int> studentAges = {"Aman": 12, "kris": 421, "Riya": 19};

  studentAges.forEach((name, age) {
    debugPrint("$name : $age");
  });

  //=============================
  // while loop
  //=============================

  int i = 10;
  while (i > 0) {
    debugPrint("$i is the updated value");
    i -= 1;
  }

  //=============================
  // do-while loop
  //=============================
  var o = 12;
  do {
    debugPrint("o is : $o");
    o++;
  } while (o <= 5);

  //=============================
  // break statement
  //=============================

  for (int i = 0; i <= 10; i++) {
    debugPrint("i = $i");
    if (i == 5) {
      break;
    }
  }

  //=============================
  // continue statement
  //=============================

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
  }

  //=============================
  // Test loops
  //=============================

  // Q1

  for (int i = 1; i <= 20; i++) {
    debugPrint("i : $i");
  }

  // Q2
  for (int i = 2; i <= 50; i++) {
    if (i % 2 == 0) {
      debugPrint("i:$i");
    }
  }

  //Q3
  for (int i = 1; i <= 10; i++) {
    debugPrint("$i*7");
  }

  //Q4
  List<String> favourites = ["Mango", "Banana", "Papaya"];
  for (String favourite in favourites) {
    debugPrint(favourite.toUpperCase());
  }

  //Q5
  Map<String, int> studentsMarks = {"Aman": 40, "Kris": 100, "Prince": 98};

  studentsMarks.forEach((name, marks) {
    if (marks > 50) {
      debugPrint("$name : $marks");
    }
  });

  // Q6
  int a = 10;
  while (a > 0) {
    debugPrint("$a");
    a--;
  }

  //Q7
  int r = 50;
  while (r > 0) {
    debugPrint("$r");
    r -= 3;
  }

  //Q8
  int e = 1;
  do {
    debugPrint("$e");
    e *= 2;
  } while (e <= 100);

  //Q9
  int num;
  do {
    stdout.write("Enter a number: ");
    num = int.parse(stdin.readLineSync()!);
  } while (num % 2 != 0);
  debugPrint("You Entered an even number : $num");

  //Q10
  for (int i = 1; i <= 10; i++) {
    debugPrint("i:$i");
    if (i == 5) {
      continue;
    }
  }

  //Q11
  for (int i = 1; i <= 10; i++) {
    if (i == 7) {
      break;
    } else {
      debugPrint("i:$i");
    }
  }

  //Q12
  List<int> data = [2, 5, 8, 1, 9, 3];
  for (int number in data) {
    if (number > 4) {
      debugPrint("Number is Greater than 4: $number");
    }
  }

  //Q13
  int sum = 0;
  for (int i = 1; i <= 50; i++) {
    sum += i;
    debugPrint("The Sum of numbers from 1 to 50 is: $sum");
  }

  //Q14
  for (int i = 1; i <= 5; i++) {
    debugPrint("*" * i);
  }
}
