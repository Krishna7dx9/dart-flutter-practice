import 'package:flutter/material.dart';

void main() {
  //=============================
  // normal variable  (can change anytime)
  //=============================

  var name = "Krish";
  debugPrint("My Name = $name");
  var mySurname = "Sharma";
  debugPrint("My Surname=$mySurname");

  //=============================
  //final assigned Once, Cannot be changed after that, can be know at runtime
  //=============================

  final birthYear = 2005;
  debugPrint("My Birth Year = $birthYear");
  //birthYear = 2006;   Cannot be reassign
  final currentTime = DateTime.now();
  debugPrint("Current Time: $currentTime"); //can be know at runtime

  //=============================
  // const : Fixed at compile time, Known before running the app
  //=============================

  const gravity = 9.8;
  debugPrint("gravity : $gravity");
  // const value must be known at compile time

  //=============================
  //late: Initialize later, Not Immediately
  //=============================

  late String collage;
  collage = "Aditya Silver Oak";
  debugPrint("My Collage : $collage");

  //=============================
  //Test: Variables & Constants
  //=============================

  var city = "Mathura";
  debugPrint(city);
  city = "Agra";
  debugPrint(city);

  final deathYear = 2004;
  //deathYear = "2005";           // can only be set Once error
  debugPrint(deathYear.toString());

  const double pi = 3.14;
  // We can't assign it later in code because it is compile time constant
  debugPrint(pi.toString());

  late dynamic home;
  home = "Heaven Home";
  debugPrint(home);

  final now = DateTime.now();
  debugPrint(now.toString());
}
