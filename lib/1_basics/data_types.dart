import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

//enum Weather
enum Weather { rainy, cloudy, sunny }

//enum Colours
enum Colours { red, blue, purple }

void main() {
  //=============================
  // 1. Primitive / Single-value types
  //=============================

  //int - Integer Number
  int myAge = 20;
  debugPrint("My Age : $myAge");

  //double - Decimal numbers
  double height = 5.7;
  debugPrint("My Height: $height");

  //num parent type for int and double
  num score = 95;
  debugPrint("Score : $score");
  score = 45;
  debugPrint("Updated score : $score");

  //bool - true / false
  bool isBoy = true;
  debugPrint("Is this Lsan : $isBoy");

  //String - text
  String name = "Krish Sharma";
  debugPrint("My Name is : $name");

  //dynamic can hold any type
  dynamic value = 10;
  debugPrint(value);
  value = "10.3650";
  debugPrint(value);

  //Object - general type
  Object obj = 452;
  debugPrint("This is Object Value : $obj");
  obj = "Hey, I am string now from Object";
  debugPrint("Hey, th8is is the Updated Value of Object Now : $obj");

  // Null - Absence of value
  String? onion;
  debugPrint("The Value of this Onion String is : $onion");
  // and we can also assign the value now
  onion = "Hey I am the new value of Onion String";
  debugPrint(onion);

  //=============================
  // 2. Collections / Compound types
  //=============================

  //List - Ordered Collection, Allowing Duplicates
  List<String> fruits = ["Apple", "Banana", "Mango"];
  debugPrint("Fruits: $fruits");
  fruits.add("Orange");
  debugPrint("Updated Fruits : $fruits");

  //Set - Unordered Collection of unique Item
  Set<int> numbers = {1, 2, 3, 5};
  debugPrint(numbers.toString());
  numbers.add(4);
  debugPrint("Updated numbers : $numbers");

  //Map - Collection of "Key:Value" Pairs
  Map<String, dynamic> person = {
    "name": "Krish",
    "age": 23,
    "isStudent": false,
  };
  debugPrint("Person:$person");
  person["city"] = "Mathura";
  debugPrint("updated Person:$person");

  //=============================
  // 3. Special types
  //=============================

  //Symbol
  Symbol sym = #ThisIsASymbol;
  debugPrint("Symbol:$sym");

  //Runes - Unicode Characters
  Runes smile = Runes('\u{1F60A}');
  debugPrint("Smiley Emoji : $smile");
  debugPrint("Smiley : ${String.fromCharCode(smile as int)}");

  //enum Weather
  var todayWeather = Weather.cloudy;
  debugPrint(todayWeather.toString());

  //=============================
  //Dart Data Types Test
  //=============================

  var nameAge = "Krishna Sharma - 19";
  debugPrint(nameAge);

  final birthYear = 2005;
  const pai = 5.32;
  debugPrint(birthYear.toString());
  debugPrint(pai.toString());

  late String favouriteCity;
  favouriteCity = "Vrindavan";
  debugPrint("My favourite City is : $favouriteCity");

  dynamic variable = 52;
  variable = "hey, I am string now";
  variable = true;
  debugPrint(variable);

  Object testObj = "I am Your Test";
  testObj = 47;
  debugPrint(testObj.toString());

  List<String> myFavouriteFruits = ["Mango", "Banana", "Grapes"];
  debugPrint(myFavouriteFruits.toString());
  myFavouriteFruits.add("StrawBerry");
  debugPrint(myFavouriteFruits.toString());

  Set<String> myFavouritesColours = {"Red", "Blue", "Black"};
  debugPrint(myFavouritesColours.toString());
  myFavouritesColours.add("Blue");
  debugPrint(myFavouritesColours.toString());

  Map<String, dynamic> library = {"Roll no": 117, "Roll no of him": 63};
  debugPrint(library.toString());

  Runes heart = Runes('U+FE0F');
  debugPrint(heart.toString());

  Symbol flutter = #Flutter;
  debugPrint(flutter.toString());

  var myColour = Colours.blue;
  debugPrint(myColour.toString());

  String? boss;
  boss = "Me";
  debugPrint(boss);
}
