// ignore_for_file: file_names
void main(List<String> args) {

  var c1 = MyClass();
  c1.getFunction; // .getFunction means print(اللي فالكلاس تحت);

  var c2 = MyClass(20)
  ..getFunction;

  var c3 = MyClass();
  c3=c2.add(c2);
  c3.getFunction;

  // c4 is the another way to c3
  var c4 = MyClass();
  c4 = c2 + c2;
  c4.getFunction;

}

class MyClass{
  int num;
  MyClass([this.num = 0]);

  get getFunction{
    print("num = $num");
  }

   add(MyClass a2){ // c2 = a2 بس انا غيرت عشان افرق مابين  استخدامات كل حاجة 
   // اللي جوا الكلاس بيتسمى غير اللي فالماين او الاستدعاء عامة
    var a3 = MyClass(this.num + a2.num); // this num دي بتاعت الاوبجيكت اللي هايناديلها (c1)
    return a3;
  }

  // other way (operator way)
  MyClass operator + (MyClass a2){
    var a3 = MyClass(this.num + a2.num); // this num دي بتاعت الاوبجيكت اللي هايناديلها (c1)
    return a3;
  } 

}