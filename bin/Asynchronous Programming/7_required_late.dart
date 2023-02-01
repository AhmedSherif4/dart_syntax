// ignore_for_file: file_names


void main(List<String> args) {
  var Ahmed = Person(age: 21); // دا اوبجيكت عملته من كلاس بيرسون واستدعيت اللي عايزه
  print(Ahmed.age);
  print(Ahmed.favColor);

  Ahmed.favColor = "Red"; // هنا سميت الفاليابل عشان لازم اسميه، البراميتر مابيقبلش نول
  setBackgroundColor2(Ahmed.favColor!); // حطيت هنا ! عشان أقوله أنا متأكد إن فيه قيمة هتتطبع

}


class Person{
  
  late int age; // ليت يعني بقوله هيتحطلها قيمة بعد كدا وعلى ضمنتي
  
  String? favColor; // ممكن يبقى سترينج وممكن يبقى نول

  Person({required this.age}){ // ريكوايرد يعني فيما بعد هايبقى فيه قيمة ومش هاتكون نول ماتخفش
    age = 22;
  }

}

setBackgroundColor2(String color){
    
    print("The color is $color");

}