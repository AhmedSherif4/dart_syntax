// ignore_for_file: file_names

import 'dart:io';
main(List<String> args) {
  loop:
  for (var i = 0; i < 10; i--) {
      try {
     print("Enter your birth date");
  var birthDate = stdin.readLineSync();
  var age = DateTime.now().year - int.parse(birthDate!);
    if (int.parse(birthDate) < 1) {
    print("the birth year is wrong");
  } else {  print("your age is $age years old");
    break loop;}
  } on FormatException {
    print("wrong value");
  }
  }

  print("done");
 
}