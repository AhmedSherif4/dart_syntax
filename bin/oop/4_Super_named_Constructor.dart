// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

// ممكن يكون الستاتمينت نفس الاسم في كله عادي، وممكن نغيره،
// وممكن مع كل مرة نغير القيمة بتاعت الستاتمنت نفسها
// زي ما عملنا في المثال اللي تحت خالص
class A {
  A({String? w});
}

class B extends A {
  B({String? z}) : super() {
    print("message is $z");
  }
}

class C extends B {
  String? s;

  C({this.s, String? p}) : super(z: p) {
    print("message is $s");
  }
}

void main(List<String> args) {
  var a = A(w: 'value of w from objet');
  print('----------');
  var b = B(z: 'Vlaue of z from object');
  print('----------');
  var c = C(s: 'Vlaue of s from object', p: 'Vlaue of p from object');
  print('----------');
  var d = D(w: 'value for w from superClass');
  print('----------');
  var q = Q("z");
  print('----------');

  var namedConstr = NamedConstr(red: 5, green: 6);
  var namedConstr2 = NamedConstr.black();
}

class D {
  D({String? w}) {
    print("the qoute is $w");
  }
}

class Q extends D {
  Q(String z) : super(w: 'value for w') {
    print("message is $z");
  }
}

// new lesson: named constructor
class NamedConstr {
  int red;
  int green;
  NamedConstr({
    required this.red,
    required this.green,
  }) {
    print('Normal Construct body');
  }
  NamedConstr.black()
  // القيم دي لا يمكن تغييرها
      : red = 3,
        green = 5 {
    print('Named construct');
  }
}

