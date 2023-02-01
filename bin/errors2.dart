import 'dart:io';

void reThrow(x,y){
  try {
    print(x~/y);
  } catch (e) {
    print('error in function: $e');
    rethrow;
  }
}


void main(List<String> args) {
  try {
      reThrow(10, 0);

  } catch (e, s) {
    print('error in main: $e \n $s');
  }



  int x = 4;
  int a = 0;

  try {
    MyException.testNumber(a);
    int divide = x~/a;
    print(divide);
  } on MyException catch (e) {
    print(e.message);
  }
}

class MyException implements Exception {
  String message = 'Cant divide by zero';

  static void testNumber(int number) {
    if (number == 0) {
      throw MyException();
    }
  }
}
