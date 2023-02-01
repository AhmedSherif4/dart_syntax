// ignore_for_file: file_names
import 'dart:async';

void main(List<String> args) {
    final f1 = Future(info); // الانفو دي الفانكشن اللي بنقوله ينفذ اللي فيها في المستقبل
// بيأخر العملية
    print("another using -----------");
    final f2 = Future(info2);
    f2
    .then((value) => print("value is $value")) // الفانكشن (خاصة اللي بعد السهم بنقوله اللي هايعمله بالظبط)
    .catchError((error)=> print("error = $error")); // لو هايبقى فيه ايرور وعايز مايوقفش البرنامج بسبب الايرور

    print("another using -----------");
    final f3 = Future.delayed(Duration(seconds: 3), () => print("object")); // لو عايز تأخر التنفيذ
    final f4 = Future.value(5).then((value) => print(value)); // لو انت متأكد من القيمة


    print(1);
}

info(){
  print(2);
}

info2(){
  return double.parse("1f");
}