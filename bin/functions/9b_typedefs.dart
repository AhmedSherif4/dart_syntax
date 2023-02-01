// ignore_for_file: file_names

// مكان ما هانستخدمها مايقبلش فانكشن غير لما تكون تستقبل عنصرين انتجر
typedef operation = Function(int a,int b);
void main(List<String> args) {
  //calc(3, 2, info); هنا هايطلعلي ايرور عشان الاوبريشن انا حددته انه يبقى فيه قيمتين والانفو مافيهاش قيمتين
  calc(3, 2, add);
  calc(4, 5, sub);

  operation op;
  op=add;
  op(8, 2);
  op=sub;
  op(10, 6);
}


calc(x, y, operation s){
  s(x, y);
}


add(a,b){
  print("$a+$b=${a+b}");
}
sub(a,b){
  print("$a-$b=${a-b}");
}
mul(a,b){
  print("$a*$b=${a*b}");
}
div(a,b){
  print("$a/$b=${a/b}");
}