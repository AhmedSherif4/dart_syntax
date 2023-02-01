// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

void main(List<String> args) {
  PizzaStore store = NYPizzaStore();
  Pizza? pizza = store.orderPizza('cheese');
  print(pizza);
}

class Pizza {
  String name = '';
  String dough = '';
  String sauce = '';
  List<String> topping = [];

  String getName() {
    return name;
  }

  void prepare() {
    print('preparing $name');
  }

  void bake() {
    print('bakeing $name');
  }

  void cut() {
    print('cutting $name');
  }

  void box() {
    print('boxing $name');
  }

  // عشان اما اقول اطبعلي الكلاس يطبعلي اللي جوا هنا
  @override
  String toString() {
    String result = '-----$name-----\n'
        '$dough \n'
        '$sauce \n';
    for (var element in topping) {
      result = result + '$element \n';
    }
    return result;
  }
}

class PepperoniPizza extends Pizza {
  PepperoniPizza() {
    name = 'Pepperoni';
    dough = 'Curst';
    sauce = 'Marinara sauce';
    topping = [
      'Sliced pepperoni',
      'Sliced onion',
    ];
  }
}

class VeggiePizza extends Pizza {
  VeggiePizza() {
    name = 'Veggie';
    dough = 'Curst';
    sauce = 'Marinara sauce';
    topping = [
      'Sliced Veggie',
      'Sliced onion',
    ];
  }
}

class StyleNYCheesePizza extends Pizza {
  StyleNYCheesePizza() {
    name = 'NY style sauce and cheese pizza';
    dough = 'dough NY';
    sauce = 'sauce NY';
  }
}

class StyleChicagoCheesePizza extends Pizza {
  StyleChicagoCheesePizza() {
    name = 'Chicago style sauce and cheese pizza';
    dough = 'dough Chicago';
    sauce = 'sauce Chicago';
    topping = [
      'Sliced Chicago',
      'Sliced onion',
    ];
  }
}

// Factory Method
class PizzaStore {
  Pizza? orderPizza(String type) {
    Pizza? pizza = createPizza(type);
    pizza?.prepare();
    pizza?.bake();
    pizza?.cut();
    pizza?.cut();
    return pizza;
  }

  Pizza? createPizza(String type) {
    return null;
  }
}

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    if (type == 'Pepperoni') {
      pizza = PepperoniPizza();
    } else if (type == 'Veggie') {
      pizza = VeggiePizza();
    } else if (type == 'cheese') {
      pizza = StyleChicagoCheesePizza();
    }
    pizza?.prepare();
    pizza?.bake();
    pizza?.cut();
    pizza?.cut();
    return pizza;
  }
}

class NYPizzaStore extends PizzaStore {
  @override
  Pizza? createPizza(String type) {
    Pizza? pizza;
    if (type == 'Pepperoni') {
      pizza = PepperoniPizza();
    } else if (type == 'Veggie') {
      pizza = VeggiePizza();
    } else if (type == 'cheese') {
      pizza = StyleNYCheesePizza();
    }

    return pizza;
  }
}

// Simple Factory
abstract class PizzaFactory {
  Pizza? createPizza(String type);
}

class RandomPizzaFactory implements PizzaFactory {
  @override
  Pizza? createPizza(String type) {
    Random random = Random();
    int r = random.nextInt(2);
    print(r);
    Pizza? pizza;
    if (r == 0) {
      pizza = PepperoniPizza();
    } else if (r == 1) {
      pizza = VeggiePizza();
    }
    pizza?.prepare();
    pizza?.bake();
    pizza?.cut();
    pizza?.cut();
    return pizza;
  }
}
