// ignore_for_file: file_names
void main(List<String> args) async{
  //Future
 /*  final f3 = Future.delayed(Duration(seconds: 3), (){});
  f3.then((value) => print("value is")) 
    .catchError((error)=> print("error = $error"));  */
    
// another way to make Future by normal codes. (by async /await)
  try {
    final f1 = await Future.delayed(Duration(seconds: 3), () => 2); // كأنه كلاس عادي وبتستخدمه
    print(f1);
  } catch (e) {
    print("error = $e");
  }


  //Stream
  final s1 = Stream.periodic(Duration(seconds: 2), (a) => a *2); 
/*   final sub = s1.listen((_) {_;}); // ال _ معناها فكك وخد الكود اللي انا هديهولك بعدين
  sub.onData((data) {
    data>10? sub.cancel() : print(data); // لو الداتا اكبر من ال10 كنسل، لو مش اقل اطبع الداتا
   }); */


// another way to make Stream by normal codes. (by async /await)
   await for (var value in s1) {
      if (value > 10) break;
      print(value);
   }
   print("Done!");
   

}