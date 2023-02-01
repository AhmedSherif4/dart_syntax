// ignore_for_file: file_names
void main(List<String> args) {
  
  final s1 = Stream.periodic(Duration(seconds: 2), (a) => a *2); 
  // كل فترة من الزمن يعمل اكشن معين
  // كل 2ث رجعلي القيمة دي(اللي هي انتيجر)
  final sub = s1.listen((_) {_;}); // ال _ معناها فكك وخد الكود اللي انا هديهولك بعدين
  sub.onData((data) {
    data>10? sub.cancel() : print(data); // لو الداتا اكبر من ال10 كنسل، لو مش اقل اطبع الداتا
   });
   sub.onDone(() {print("Done!");}); // لما تخلص قول ضن

 // الكود دا بطريقة مختلفة عشان تستخدم وير
/*    final s2 = s1.where((event) => event % 2 == 0); 
   s2.listen((event) {print(event);}); */
}