// ignore_for_file: file_names

// abstract cant make objects
// when we use implements we make any class we took as abstract even if we didn't say that
// any function in abstract class, it could be empty(without body)
//and if we made it (the body), it's not realy important, it's just abstract(تجريبية) info

abstract class A{
  getUserName(int? a);
  employeeInfo();
  info();
  
}


class B{
  B({String? a});
  info2(){print("s.th else");}
}

 class D extends A{
  
  @override
  info() {
    print('Abstract');
    
  }
  
  @override
  employeeInfo() {
    // TODO: implement employeeInfo
    throw UnimplementedError();
  }
  
  @override
  getUserName(int? a) {
    // TODO: implement getUserName
    throw UnimplementedError();
  }

} 

class C implements A, B{

  @override
  info() {
      print("interface");
  }
  @override
  info2() {
      print("object2");
      
  }
  
  @override
  employeeInfo() {
    // TODO: implement employeeInfo
    throw UnimplementedError();
  }
  
  @override
  getUserName(int? a) {
    // TODO: implement getUserName
    throw UnimplementedError();
  }
  
  
  
  
  
}


void main(List<String> args) {



     var d = D();
    d.info(); 

    var c = C();
    c.info();
    c.info2();


    var b = B();
    b.info2();
   
}