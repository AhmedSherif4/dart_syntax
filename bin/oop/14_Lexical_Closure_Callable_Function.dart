// ignore_for_file: file_names, unused_local_variable, prefer_function_declarations_over_variables, duplicate_ignore
// ignore: prefer_function_declarations_over_variables
void main(List<String> args) {
  // الفكرة هنا ان الدرس بيقولك ان ممكن يكون فيه اتنين فانكشنز جوا بعض
  // وكمان كلاس جواه فانكشن وتعامله نفس المعاملة
  Function test = () {
    String message = "message";
    Function inside = (String msg) {
      String message = msg;
      print(message);
    };
    return inside;
  };
  
  Function f = test();
  f("Ahmed");


  var t = Test2();
  t.message("Ahmed", 5);
}

class Test2{
  message(String a, int b){
    print("object");
    print("String is $a int is $b");
  }
}
