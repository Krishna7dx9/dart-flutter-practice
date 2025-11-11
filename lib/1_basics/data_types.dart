import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

//enum Weather
enum Weather { rainy, cloudy, sunny }

//enum Colours
enum Colours { red, blue, purple }

int i = 0;
int sum = 0;

sumOfList(List<int> numbers1) {
  if (i == numbers1.length) {
    debugPrint("The Sum is : $sum");
    return sum;
  } else if (i < numbers1.length) {
    sum = sum + numbers1[i];
    debugPrint("Index : $i, Value : ${numbers1[i]}");
    i++;

    return sumOfList(numbers1);
  }
}

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
  const pi = 5.32;
  debugPrint(birthYear.toString());
  debugPrint(pi.toString());

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

  //=============================
  // Array / List
  //=============================

  // Declaring a List
  List<int> number = [9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  // Accessing elements
  debugPrint("Index 0 : Number : ${number[0]}");

  // Traversal
  for (int i = 0; i < number.length; i++) {
    debugPrint("Index $i : Number : ${number[i]}");
  }

  // Adding Elements
  number.add(1000);
  // debugPrint(number);

  // numbers.insert(0, 9);
  debugPrint("$number");

  // Removing elements
  numbers.remove(9);
  debugPrint("$number");
  number.remove(9);
  debugPrint("$number");

  number.removeAt(5);
  debugPrint("$number");

  // Other useful methods
  debugPrint("$numbers.length");
  debugPrint("$numbers.contains(5)");
  // numbers.sort();
  debugPrint("$numbers");
  // numbers.reversed;
  debugPrint("$numbers");

  // Test 1 : Write a Dart program to find the sum of all elements in a list.

  /* Problem Solving : Think,Write,Code,Review

  input : [2,4,6,8]
  output : 20

  I will Iterate over all elements by their index which will be a variable i using for loop

  */

  List<int> numbers1 = [1, 2, 3, 4, 5];

  int sum = 0;

  for (int i = 0; i < numbers1.length; i++) {
    debugPrint("Index $i : Number : ${numbers1[i]}");
    sum = sum + numbers1[i];
  }
  debugPrint("Sum : $sum");

  /* Problem Solving : Think,Write,Code,Review

  We can Solve this problem using recursion.The base case occurs when we've reached
  the end of the list - at that point, we stop and return 0.
  In the recursive step we take the first element and add it to the sum of other
  elements, which is obtained by calling the same function on the smaller portion
  of the list. This way, the problem reduces in each call until it hits the base
  case.

  Base Case : end of list
  recursive case : sum + numbers1[i]
  */

  // List + Solving by recursion
  // Recursive Function calling
  sumOfList(numbers1);

  // Test 2 : Find and print the maximum element from a given list.

  // Test 2 : Find and print the maximum element from a given list.

  /*  Problem Solving : Think, Write, Code, Review

  Main Logic : To Find the Maximum Element

  Input : List = [2,1,3,2,5,8]
  Output : 8

  Iterate throught a list (or recurse)
  Kepp track of largest seen so far
  compare each element against it
  return or print it at the end

  */

  List<int> numbers2 = [2,6,5,8];

// if(numbers2.isEmpty){
//   return;
// }
// else{
//   int largest = numbers2[0];

//   for(int i = 1; i < numbers2.length; i++){
//     if(numbers2[i] > largest){
//       largest = numbers2[i];
//   }
// }
// print(largest);
// }

/* Solving this by recursive approch

Base case 1 : if List Empty Return null
Base case 2 : if only 1 element then largest is this
Recursive case : recusively looks for largest element from the list and print the largest

Tracing Recursive calls

maxOfList([5,8,2,6])
compares 5 and maxOfList([8,2,6])

maxOfList([8,2,6])
compares 8 and maxOfList([2,6])

maxOfList([2,6])
compares 2 and maxOfList([6])
return 6

Unwinding Recursion calls

maxOfList([6])    this is base case
returns 6

maxOfList([2,6])
compares 2 with the returned result from the previous which was 6
In this comparison 6 is larger
return 6

maxOfList([8,2,6])
compares 8 with previous result which was 6
In this comparison 8 is larger
return 8

maxOfList([5,8,2,6])
compares 5 with previous result which was 8
In this comparison 8 is larger
return 8


*/

  int? maxOfList (List<int> numbers2){
    if(numbers2.isEmpty) return null;
    if(numbers2.length==1) return numbers2[0];

    int first = numbers2[0];
    int? maxRest = maxOfList(numbers2.sublist(1));
    return (maxRest != null && maxRest > first) ? maxRest : first;
  }

  print(maxOfList(numbers2));
  maxOfList(numbers2);



  // Set

  Set<String> myFavouritesColours = {"Red", "Blue", "Black"};
  debugPrint(myFavouritesColours.toString());
  myFavouritesColours.add("Blue");
  debugPrint(myFavouritesColours.toString());

  // Map

  Map<String, dynamic> library = {"Roll no": 117, "Roll no of him": 63};
  debugPrint(library.toString());

  // Runes

  Runes heart = Runes('U+FE0F');
  debugPrint(heart.toString());

  // Symbol

  Symbol flutter = #Flutter;
  debugPrint(flutter.toString());

  var myColour = Colours.blue;
  debugPrint(myColour.toString());

  String? boss;
  boss = "Me";
  debugPrint(boss);
}
