// ignore_for_file: file_names
void main(List<String> args) {
  // Recursion
  int x = (fun(7)); // 7+6+5+4+3+2+1+0 // الكود دا بيرجعها تاني للفانكشن بقيمة مختلفة
  print(x);
  multiTable(1, 1);
}

fun(n){
  if (n != 0) return n+(fun(n-1)); // بتخرج ك 7+(7-1), وفوق بيرجعها تاني بقيمة مختلفة
  else return 0;
}

multiTable(n, i){
  if (i>10) {
      n++;
      i=1;
  if(n>10){
    return;
  }
  }

  print("$n * $i = ${i * n}");
  multiTable(n, i+1);
}