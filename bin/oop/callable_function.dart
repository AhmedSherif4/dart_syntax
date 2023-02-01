void main(List<String> args) {
  SayHello hello = SayHello();
  // اما بيتم استدعائها بيتم من خلال
  // اسم الاوبجيكت
  // عمل أقواس ندخل للبراميتر قيمة من خلالها
  hello('Ahmed');
  // same code
  hello.call('Mo');

  // check condition just while debugging
  int h = 3;
  assert(h==5);
  print(h);
  
}

class SayHello{
 // لازم الفانكشن يبقى اسمها call

  call(String name){
    print('$name, hi!');
  }
}