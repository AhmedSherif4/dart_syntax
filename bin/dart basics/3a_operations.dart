// ignore_for_file: file_names

main(List<String> args) {
  var e = 4;
  var a = 10;
  var q = (a + e) / a;
  var o = a + e / 10;
  print(q);
  print(o);
  /*
  الأسبقية في العمليات الرياضية
  %
  /
  *
  +
  -
   */
  a = 10;
  a *= a; // a = a * a;
  o--; // o = o - 1
  q = q + o;
  print(q);
 var m= q.toInt();
  var w = <int> [a, m];
  print(w);
  /*
  var w = a.toString();
  var t = q.toString();
  print(w + " and " + t);*/
  print(a != q);
  print(a == q);
  print(a is! String);
  print(a < 1 && q > 4);
  print(a < 1 || q > 4);
  //prefix and postfix
  var j = 1;
  //البرنت الاول هو طبع القيمة الاول بعد كدا زودها 1
  print(j++);
  // البرنت التاني اخد الزيادة بتاعت البرنت الاول، والزيادة بتاعت البرنت التاني اتعملت قبل ما يطبع
  // فبال1 اللي فوق وال1 اللي تحت الناتج3
  print(++j);
}
