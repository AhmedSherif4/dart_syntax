void main(List<String> args) {
  var x = [4, 5, 6, 7];
  x.forEach((i)=> print(i));

  
  a1();
  print(a2());
  a3(3, 2);
  print(a4(3, 2));
}
// دول متغير قيمته فانكشن على شكل لامبدا، ودا شكل مختصر للفانكشن 
//وكمان بنستخدمه فالفورإيتش زي اللي فوق
var a1 = ()=> print(3 + 2); 
var a2 = ()=> 3+2;
var a3 = (x, y)=> print(x + y);
var a4 = (x, y)=> x+y;
