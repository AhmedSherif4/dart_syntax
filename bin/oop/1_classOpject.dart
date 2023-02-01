// ignore_for_file: file_names
/*
  Object Oriented Programming (OOP)
  Object: Human being
  Attributes = varibles: String haircolor = "Black";
  Actions = functions: thinking (){}
  */
class Human {
  // constructor الفرق بينه وبين الفانكشن العادي انه بيتنفذ بمجرد مالكلاس يستدعى
  // constructor عامل بالظبط زي القوسين اللي بيكونوا جنب اسم الفانكشن، اللي هم لازم يتنفذوا
  // يعني هو المفروض يكون بالشكل دا class human (دا بقى المفروض ان هو الكونستراكتور){}
  // Constructor دا إنك تخلي الفانكشن واخدة نفس اسم الكلاس
  Human({a, b, c, d}) {
    // parametars
    print("the a is ${a}");
    print("the b is ${b}");
    print("the c is ${c}");
    print("the d is ${d}");
  }
  Human.a({int? a}) {
    this.firstName = a;
    print(a);
  } // تقدر تعمل اكتر من كونستراكتور لنفس الكلاس

  int? firstName;

  static // بيخلي الفانكشن او الفاريبل تابع للكلاس
      // static outta method
      info1([e, f, j, k]) {
    // parametars
    print("the e is ${e}");
    print("the f is ${f}");
    print("the j is ${j}");
    print("the k is ${k}");
  }

  var s;
  //this in method
  info2({s, w, y, z}) {
    // parametars
    //this.s = s;
    // بيخلي الشيء دا تابع للاوبجيكت اللي بنستدعيه
    // بديل لكود this اللي تحت ,
    print("the s is ${this.s}");
    print("the w is ${w}");
    print("the y is ${y}");
    print("the z is ${z}");
  }
}

void main(List<String> args) {
  // دول object بنحط فيها الداتا بتاعتنا اللي عايزنها فالكلاس اللي فوق

  Human h1 = Human(a: "a", b: "b"); // طريقة اوبجيكت الكونستراكتور

  h1.firstName = 20;
  Human.info1(4, 5.2, 5, 10); // طريقة اوبجيكت الستاتيك

  Human.a(a: 1);

  Human.info1();

  Human h2 = Human();
  h2.s = "sssssssss"; // دا بديل لكود الthis اللي فوق
  h2.info2(w: "ww");

  //cascode notation 
  // اختصار للكود
  Human h3 = Human()
    ..firstName = 1
    ..s = ''
    ..info2();
}
