// ignore_for_file: file_names

main(List<String> args) {
//first way
  var x = 1;
  while (x <= 10) {
    print("4* $x = ${x * 4}");
    x++;
  }
//sec way

  var c = 1;
  do {
    // الفرق بين الطريقة الاولى والتانية انه في الدو بيطبع الاول بعد كدا يشوف وايل ولو متحققة بيرجع تاني للكود
    // انما الطريقة الاولى بيشوف وايل الاول، لو متحققة بيبدأ في الكود بعد كدا يطبع
    print("5* $c = ${c * 5}");
    c++;
  } while (c <= 10);

//3ed way
// جنب فور، اول جزء: تعريف التعداد، تاني جزء: الشرط، تالت جزء: الشيء اللي عايزخ يعمله لو اتحقق الشرط
  for (var h = 1; h <= 10; h++) {
    print("6 * $h = ${6 * h}");
  }

// 4th way
var o = [3, 5.2, true, "Hello"];
for (var a in o){
  print(a);
}
/* بتساوي دي 
  for (int i = 0; i < o.length; i++){
  var a = o[i];
  print(a);
} */
}
