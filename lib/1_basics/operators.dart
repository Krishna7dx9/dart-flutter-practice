import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //=============================
  // 1. Arithmetic Operators
  //=============================

  int a = 19;
  int b = 4;
  debugPrint("Addition: ${a + b}");
  debugPrint("Subtraction: ${a - b}");
  debugPrint("Multiplication: ${a * b}");
  debugPrint("Division: ${a / b}");
  debugPrint("Integer Division: ${a ~/ b}");
  debugPrint("Modulo: ${a % b}");
  a++; //Increment
  b--; //decrement
  debugPrint("Updated a : $a, Updated b : $b");

  //=============================
  // 2. Assignment Operators
  //=============================

  int c = 10;
  debugPrint("Original c : $c");
  c += 5;
  debugPrint("c+=5 : $c");
  c -= 3;
  debugPrint("c-=3: $c");
  c %= 7;
  debugPrint("c%=7: $c");
  c *= 63;
  debugPrint("c*=63: $c");
  c ~/= 4;
  debugPrint("c~/=4: $c");

  //=============================
  // 3. Relational Operators
  //=============================

  int x = 10;
  int y = 20;
  debugPrint("x==y : ${x == y}");
  debugPrint("x!=y : ${x != y}");
  debugPrint("x<y: ${x < y}");
  debugPrint("x>y: ${x > y}");
  debugPrint("x>=y:${x >= y}");
  debugPrint("x<=y:${x <= y}");

  //=============================
  // 4. Logical Operators
  //=============================

  bool isAdult = true;
  bool hasTicket = false;
  debugPrint("IS Adult and has Ticket : ${isAdult && hasTicket}");
  debugPrint("Is Adult or Has Ticket : ${isAdult | hasTicket}");
  debugPrint("Not Adult : ${!isAdult}");

  //=============================
  // 5. Bitwise Operators
  //=============================

  int m = 6; //0b110
  int n = 9; //0b011
  debugPrint("m & n: ${m & n}");
  debugPrint("m | n: ${m | n}");
  debugPrint("m ^ n: ${m ^ n}");
  debugPrint("~m: ${~m}");
  debugPrint("m>>1: ${m >> 1}");
  debugPrint("m<<1: ${m << 1}");

  //=============================
  // 6. Type-test Operators
  //=============================

  var value = 45;
  debugPrint("value is String? : ${value is String}");
  debugPrint("value is! bool? : ${value is! bool}");

  //=============================
  // 7. Null-aware Operators
  //=============================

  String? teacher;
  debugPrint(
    "teacher length? : $teacher",
  ); //Due to Some reason's the using null aware access in this code is causing error so avoided - $teacher?.length}
  teacher ??= "Krish"; // assign if null
  debugPrint("teacher after assign : $teacher");

  //=============================
  // 8. Null-coalescing Operator
  //=============================

  String? nickName;
  String displayName = nickName ?? "nick";
  debugPrint(displayName);

  int? nullableNumber;
  int result = (nullableNumber ?? 5) * 2 + a ~/ b;
  debugPrint("Combined Expression Result : $result");

  //=============================
  // Operators Test
  //=============================

  a = 12;
  b = 5;
  debugPrint("Addition: ${a + b}");
  debugPrint("Subtraction: ${a - b}");
  debugPrint("Multiplication: ${a * b}");
  debugPrint("Integer Division: ${a ~/ b}");
  debugPrint("Modulo: ${a % b}");
  a += 3;
  b *= 2;
  debugPrint("Updated a : $a");
  debugPrint("Updated b: $b");

  x = 8;
  y = 12;
  debugPrint("x is less than y  : x<y");
  debugPrint("x is not equal to y : x!=y");
  debugPrint("x is greater then or equal to 8: x>=8");

  bool isLoggedIn = true;
  bool hasPermission = false;
  debugPrint(
    "The user is logged in and has Permission: ${isLoggedIn && hasPermission} ",
  );
  debugPrint(
    "The user is logged in or has permission: ${isLoggedIn | hasPermission}",
  );
  debugPrint("Not Logged In : ${!isLoggedIn}");

  int p = 9;
  int q = 5;
  debugPrint("Let's Perform AND on Binary: ${p & q}");
  debugPrint("Let's Perform OR on Binary: ${p | q}");
  debugPrint("let's Perform XOR on Binary: ${p ^ q}");
  debugPrint("Let's Perform Not on Binary p: ~($p)");
  debugPrint("Let's Perform Not on Binary q: ~($q)");
  debugPrint("Let's Perform Left shift on p by 2 : ${p << 2}");
  debugPrint("Let's Perform Left shift on q by 1 : ${q >> 1}");

  dynamic night = 45;
  debugPrint("Checking is night int? : ${night is int}");
  debugPrint("Checking is night String? : ${night is !String}");

  String? name;
  debugPrint("Using null aware access: $name");
  //Due to Some reason's the using null aware access in this code is causing error so avoided - ${name?.length}
  debugPrint("Null Coalescing Operator: ${name ?? "Guest"}");

  int? score;
  debugPrint("If score is null assign 10 : ${score ??= 10}");
  debugPrint("Final result : $score*5+3~/2");
}
