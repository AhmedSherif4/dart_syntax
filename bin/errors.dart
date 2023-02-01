import 'dart:io';

void main(List<String> args) {
  int x = 4;
  int a = 0;

  int result;

  // طريقة عشان اخلي الايرور بدل ما يبوظلي البروجيكت، اخليه يطبعلي ان فيه مشكلة
  try {
    result = x ~/ a;
  } on UnsupportedError catch (e) {
    // هنا بحدد نوع الايرور دا لو جه المفروض الكومبايلر يعمل اية
    print('you cant divide by zero!');
  } finally {
    print('reach to finally code');
  }



  try {
    if (x != 10) {
      throw FormatException();
    }
  } on FormatException catch (error) {
    print('FormatException');
  }



  String ticketNumber = "342531231234";
  try {
    if (ticketNumber[0] != '1') {
      throw CustomException();
    }
  } on CustomException catch (e) {
    print(e.errorString());
  } on StartWith1 catch (e) {
    print(e.erroMessage());
  }

}

class CustomException implements Exception {
  String errorString() => 'Error Custom Exception.';
}

class StartWith1 implements Exception {
  String erroMessage() => "The ticket number must start with 1.";
}
