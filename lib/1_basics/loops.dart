import 'package:flutter/cupertino.dart';

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

  fruits.forEach((fruit) {
    debugPrint(fruit);
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

  for(int i = 1;  i <=20; i++){
    debugPrint("i : $i");
  }

  // Q2
  for(int i = 2 ; i<=50; i++){
    if(i%2==0){
      debugPrint("i:$i");
    }
  }

  //Q3
  for (int i=1;i<=10;i++){
    debugPrint("$i*7");
  }

  //Q4
  List<String> favourites = ["Mango","Banana","Papaya"];
  for(favourite in favourites) {
    debugPrint(favourite.uppercase());
  }

  //


}
