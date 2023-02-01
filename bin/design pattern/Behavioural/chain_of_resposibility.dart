void main(List<String> args) {
  Director ahmed = Director(); // احمد هو الدايريكتور وهكذا
  VP mo = VP();
  CEO hamed = CEO();

  ahmed.setSuccessor(mo); // احمد اللي فوقيه مو
  mo.setSuccessor(hamed); // مو اللي فوقيه حامد

  Request request = Request(RequestType.purchase, 2000);
  ahmed.handleRequest(request);
}

// كل شخص بيهندل الريكويست
abstract class Handler {
  // الشخص نفسه هايكون دا نوعه
  Handler? successor;

  // تمرير الريكوست في حالة عدم الموافقة
  void setSuccessor(Handler successor) {
    this.successor = successor;
  }

  // هندلة الريكويست نفسه
  void handleRequest(Request request) {}
}

enum RequestType { conference, purchase } // نوع الريكويست

class Request {
  // هياخد نوع وهياخد التكلفة
  final RequestType requestType;
  final double amount;

  Request(this.requestType, this.amount);
}

class Director extends Handler {
  // الشخص دا هايهندل المشكلة عن طريق الفانكشن دي

  @override
  void handleRequest(Request request) {
    // لو نوعه كذا اطبع كذا
    // لو لا، ابعت للي بعدي
    if (request.requestType == RequestType.conference) {
      print('Director can approve conferences');
    } else {
      successor?.handleRequest(request);
           // لما استعنت بفانكشن سيت سيكسيسور، انت كدا حددت مين الشخص اللي هايتعمله هاند ريكويست بعد اللي في الكلاس دا
    }
  }
}

class VP extends Handler {
  @override
  void handleRequest(Request request) {
    if (request.requestType == RequestType.purchase) {
      if (request.amount < 1500) {
        print('VP can approve budget < 1500');
      } else {
        successor?.handleRequest(request);
      }
    }
  }
}

class CEO extends Handler {
  @override
  void handleRequest(Request request) {
    print('CEO can approve anything');
  }
}
