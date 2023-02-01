// ignore_for_file: file_names
import '8_Enum_Class.dart' as O; // lesson: import
void main(List<String> args) {
  var a = A<String, int>();
  a.x = "Ahmed";
  a.q = 2;
  print(a.x);
  print(a.q);
  a.genericTest(a.x, a.q);

  var b = A<int, bool>();
  b.x = 50;
  b.q = true;
  print("${b.x} and ${b.q}");

  O.x = 10;
  print("x = ${O.x}");
  var age = O.info2();
  age.age = 10;
  print(age.age);



}
class A<T, B >{
  late T x;
  late B q;
  genericTest(T a, B b){
    print("this $a and $b");
  }
  operator + (A a){}
}