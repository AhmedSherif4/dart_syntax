// ignore_for_file: file_names

main(List<String> args) {
  /* for (var i = 0; i <= 10; i++) {
    if (i == 7) {
      break;
    }
    print(i);
  } */
  Ahmed: // it's lable, usint with break or continue
  for (var a = 1; a <= 10; a++) {
    Mo:
    for (var c = 1; c <= 10; c++) {
      // احنا كدا في اللوب الداخلي:
      //if(c==3) {continue Ahmed;}
      // لما توصل ل3 في السي، وقف السي وكمل احمد اللي هو الخارجي اللي هو اية
    // if (c==3) {break;}
      // بيشيل ما بعد الضرب في 3 في كل جدول الارقام
      //if (a==3) {continue Mo;}
      // لما توصل في الإية عند 3 وقف إية وكمل سي - يعني يشيل جدول 3 بس-ز 
      //if (a==3) {break;}
      // يشيل جدول ضرب 3
      //if(c==3){continue Mo;}
     // بيوقف الضرب في 3 في كل الجداول
      print("$a * $c = ${a * c}");
       //if (c==4) {break Ahmed;}// لما توصل لاربعة في اللي جوا اللي هي اية، اقف اللي برا اللي هي سي
      //if(a==4) {break Ahmed;}// لما توصل لأربعة في اللي برا، اقفل اللي برا
      //(هو طابع اول عملية في اربعة، لو مش عايزينها بنطلع الكود قبل البرينت)
    }
    //if (a==3) {break;} بيطبع لحد جدول ضرب 3 ويقف مايطبعش اللي بعده
  }
}