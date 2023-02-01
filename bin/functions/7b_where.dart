// ignore_for_file: file_names

void main(List<String> args) {
  var x = [1, 3, 2.5, 4, 6];
  print(x); 

  x.retainWhere((element) => element % 2 == 0); 
  // طلعلي اللي يحقق الشرط دا وخليه هو الإكس نفسها
  print(x);



try {
   x.singleWhere((element) => element % 2 == 0);
  // عشان الكود دا ممكن يعمل إرور، لأنه معناه فين الرقم الوحيد اللي بيحقق الشرط دا
  // فلو فيه اكتر من رقم هايعمل ايرور
} catch (_) {
  print("error");
}


  x.removeWhere((element) => element % 2 == 0);
  // امسحلي اللي يحقق الشرط دا وخليه هو الإكس نفسها
  print(x);




x.addAll([1, 5, 4, 6, 15, 7.5, 8, 9, 10, 11, 12, 13]);

  var a1 = x.where((element) => element % 2 == 0);
  // فين الإليمنتس اللي تحقق الشرط دا، بس من غير ما يلعب في الإكس نفسها على عكس الكود اللي فوق
  var a2 = x.firstWhere((element) => element % 2 == 0, orElse: ()=>0); // اور إلس يعني لو مالقتش اطبع دا
  // طلعلي أول إلمنتس تحقق الشرط دا
  var a3 = x.lastWhere((element) => element % 2 == 0, orElse: () =>0); // اور إلس يعني لو مالقتش اطبع دا
  // طلعلي اخر إلمنتس تحقق الشرط دا
  var a4 = x.indexWhere((element) => element % 2 == 0, 4); // الاربعة اللي فالاخر بنقوله عد من أول الإندكس الرابع
  // طلعلي الإندكس اللي يحقق الشرط دا
  var a5 = x.lastIndexWhere((element) => element % 2 == 0);
  // طلعلي اخر إندكس اللي يحقق الشرط دا
  var a6 = x.whereType<double>();
  // طلعلي الإلمنتس اللي من النوع دا
     //a1.forEach((element) {print(element); });
     // اطبعلي كل الإلمنتس متفصصة
   print(a1);
   print(a2);
   print(a3);
   print(a4);
   print(a5);
   print(a6);

 
  
}
