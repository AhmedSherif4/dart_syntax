// ignore_for_file: file_names

void main(List<String> args) {
  fun1();
  print(fun2());
  fun3(3, 2);
  print(fun4(3, 2));
  // lambda expression
  lam1();
  print(lam2());
  lam3(3, 2);
  print(lam4(3, 2));
  // beginnin of optional functions
  info("Ahmed");
  info2(firstName: 'Ahmed', lastName: "Ahmed", age: 20);
}

fun1(){
  print(3 + 2);
}
lam1()=>  print(3 + 2);

int fun2(){ // int هنا يعني بحدد نوع الفانكشن الحاجات اللي جواها تبقى اية
  return 3 + 2; // return يعني لما الفانكشن دي تستدعى.. إديها القيم دي
}
lam2()=> 3 + 2;

void fun3(x, y){ // void عكس return لما الفانكشن تستدعى.. ماتديهاش قيم -هو اصلا مافيش قيم معانا-ز
  print(x + y);
}
lam3(x, y)=> print(x + y);

fun4(int x, int y){
  return x + y;
}
lam4(int x, int y)=> x + y;

// optional default functions
// [] oprional function, ياتستخدمها يامتستخدمهاش
// {} , بتستدعيها باسمها مخصوص
info (String firstName, [lastName]){
  print("firstName is $firstName");
  print("lastName is $lastName");
}
info2 ({String firstName= "put your name",  lastName = "put your las name",  age,  phone}){
// لما بتحدد نوع البراميتر يبقى لازم تحطله قيمة فالفاكشن نفسها كديفولد
// لكن لما مابتحددش نوع البيراميتر، بيبقى عادي تحط قيمة هنا او لما تستدعيه فالماين تحطله القيمة
  print("first name is $firstName");
  print("last name is $lastName");
  print("age is $age");
  print("phone is $phone");

}