// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  var order1 = MakeRoundedPizza(wandEdafaatB: true);
  order1.makePizza();
  print('--------------');
  var order2 = MakeCirclePizza();
  order2.makePizza();
  
}

class MakePizzaAlgorithm{
  void _bakePizza(){
    print('baking pizza...');
  }

 void definePizzaShape(){}

  void _putAddons(){
    print('putting pizza addons...');
  }

  void _heatPizza(){
    print('heating pizza...');
  }

  void addEdafaat(){print('added Edafaat...');}

  bool wandEdafaat(){return true;}

  void makePizza(){
    _bakePizza();
    definePizzaShape();
    _putAddons();
    _heatPizza();
    if(wandEdafaat()){addEdafaat();}
  }
}

class MakeRoundedPizza extends MakePizzaAlgorithm {
  bool wandEdafaatB;
  MakeRoundedPizza({
    required this.wandEdafaatB,
  });

  @override
  bool wandEdafaat() {
    return wandEdafaatB;
  }

  @override
  void definePizzaShape() {
    print('making rounded pizza');
  }
}

class MakeCirclePizza extends MakePizzaAlgorithm{
  @override
  void definePizzaShape() {
    print('making Circle pizza');
  }
}