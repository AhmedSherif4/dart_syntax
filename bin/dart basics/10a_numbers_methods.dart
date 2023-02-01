// ignore_for_file: file_names

main(List<String> args) {
  var x = 5;
  print(x.isOdd); // هل عدد فردي
  print(x.isEven); // هل عدد زوجي
  x.modInverse; // المعكوس الضربي
  print(x.toStringAsFixed(2));
  print(x.isFinite); // هل عدد محدود
  print(x.isInfinite); // هل عدد لا نهائي
  print(x.isNaN); // هل شيء غير رقم
  print(x.isNegative); // هل عدد سلبي
  print(x.abs()); // القيمة المطلقة اللي هي فالرياضيات كدا |رقم ايا كان سالب او موجب| بيطلع موجب
  var c = 2.3;
  print(c.round()); // اقرب رقم صحيح عامة
  print(c.floor()); // اقل رقم صحيح
  print(c.truncate()); // اقرب رقم صحيح للصفر
  print(c.ceil()); // اقرب رقم صحيح مش للصفر
  print(c.remainder(x)); // باقي قسمة الرقمين


}