void main(List<String> args) {
  // نفس الاوبجيكت في الذاكرة وفالاستخدام
  // لاحظ انك بتستدعيه مرتين وبيطبعه مرة واحدة

  var singleton1 = Singleton.getInstance;
  var singleton2 = Singleton.getInstance;
  print(identical(singleton1, singleton2));

  var getTest1 = SingleByGet.black;
  var getTest2 = SingleByGet.black;
  print(identical(getTest1, getTest2));

  var factoryTest1 = SingleByFactory();
  var factoryTest2 = SingleByFactory();
  print(identical(factoryTest1, factoryTest2));

  var staticTest1 = SinglebyStatic.instance;
  var staticTest2 = SinglebyStatic.instance;
  print(identical(staticTest1, staticTest2));


}


class Singleton {
  final List<int> _list= [1, 2, 3, 4, 5, 6];
  static final Singleton _instance = Singleton._anything();
  Singleton._anything(){_list.shuffle(); print(_list);}

  static Singleton get getInstance {
    return _instance;
  }
}

// نفس طريقة اول طريقة
class SingleByGet {
  final int red = 0;
  static final SingleByGet _instance = SingleByGet._();
  SingleByGet._();

  static SingleByGet get black {
    return _instance;
  }
}

class SingleByFactory {
  final int red = 0;

  static final SingleByFactory instance = SingleByFactory.black();
  factory SingleByFactory() {
    return instance;
  }

  SingleByFactory.black()   {
    print('Single By Factory');
  }
}

class SinglebyStatic {
  final int red;
  static final SinglebyStatic instance = SinglebyStatic.black();
  SinglebyStatic.black()
   : red = 0 // لازم كل حاجة فالكلاس تتعرف، لو ماتعرفتش قبل هنا يبقى نعرفها هنا
   { print('Single By Factory');}
  
}


