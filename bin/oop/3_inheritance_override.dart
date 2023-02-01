// ignore_for_file: file_names

// inheritance (الوراثة) (بناخد خصائص لكلاس من كلاس مختلف من غير مانحتاج نعيد الخصائص)
class A{ // indirect super class
  var age;
  
  a(ult){
    age = 9;
    print("object $age");
    print("object $ult");
  }
}


class B extends A{ // direct super class
  var age2;
  b(){
    this.age2 = 20; // دا الفرق بين الاتنين، زيس بتاخد من جوا الكلاس
    super.age = 10; // سوبر بتاخد من كلاس السوبر (برا الكلاس)
    super.a(25); // بنستخدم فانكشن (او اي حاجة بقى) من جوا السوبر كلاس بالإستدعاء
    print("object2");
  }
}


class C extends B  {} // sub class

void main(List<String> args) {
  var c = C();
  c.a(90);
  c.b();

  

  var d = D();
  d.d();
  var w = W();
  w.d();
}

// override (بتستخدم نفس الفانكشن في كلاسين)
class D{
  d(){
    print("object3");
  }
  int? x;
}
class W extends D{ 
  
  
  @override
  d(){
    print("object4");
    super.x;
  }
}