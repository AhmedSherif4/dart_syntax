// ignore_for_file: file_names


mixin A{
 
  info(){
    print("Ahhhh"); 
  }
}
class B{
    info2(){
      print("object");
    }
}
abstract class C{
    info3(){
      print("object2");
    }
}
class D extends C with B, A{
  @override
  info() {
    print("HHHH");
  }
  @override
  info2() {
    print("GGGGG");
  }
  @override
  info3() {
    print("AAAAAAAAAAA");
  }
}

void main(List<String> args) {

  var d = D();
  d.info();
  d.info2();
  d.info3();

}