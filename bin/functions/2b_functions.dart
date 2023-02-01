// ignore_for_file: file_names
void main(List<String> args) {
  var a = [7, "d", 1.5, true];
  var b = [5, 9, "ah"];
  fun1(a); 
  fun2(a);
  fun2(b); 
}
fun1(List list){
  for (var i = 0; i < list.length ; i++) {
    print("value is ${list[i]}");
  }
}
fun2(List list){
  for (var value in list) {
    print("value is $value");
  }
}
