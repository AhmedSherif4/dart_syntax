// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Magro7a b1 = Magro7a(uniqueName: 'b1');
  b1.perform();
  // M.gotShot;

  Magro7a b2 = Magro7a(uniqueName: 'b2');
  b2.perform();
  b2.gotShot();

  Duck l2 = Le3ba(uniqueName: 'L2');
  l2.perform();
}

abstract class Duck {
  late int id;
  late String name;
  late FlyBehavior flyBehavior;
  final String uniqueName;

  Duck({required this.uniqueName}) {
    id = counter++;
    name = 'Duck#$id';
    flyBehavior = FlyWithWring();
  }

  static int counter = 0;

  String swim() => 'I am swimming!';

  String display();

  void perform() {
    print(id);
    print('My unique Name is $uniqueName');
    print('Hi, My NameId $name');
    print(swim());
    print(display());
    print(flyBehavior.fly);
  }
}

class Magro7a extends Duck {
  Magro7a({required String uniqueName}) : super(uniqueName: uniqueName);

  @override
  String display() => 'I am magro7a';

  @override
  FlyBehavior get flyBehavior => FlyWithWring();

  void gotShot() {
    flyBehavior = NoFly();
    print('The duck has been shot! now.. \n ${flyBehavior.fly}');
  }
}

class Le3ba extends Duck {
  Le3ba({required String uniqueName}) : super(uniqueName: uniqueName);

  @override
  String display() => 'I am Le3ba';

  @override
  FlyBehavior get flyBehavior => NoFly();
}

class FlyBehavior {
  late String fly;
}

class FlyWithWring implements FlyBehavior {
  @override
  String fly = 'I am flying with wings';
}

class NoFly implements FlyBehavior {
  @override
  String fly = 'I cant flying';
}
