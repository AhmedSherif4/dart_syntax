// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Expression {
 late Number number;
  void interpret(int value);
}

class Add implements Expression {
  @override
  Number number;
  Add({
    required this.number,
  });
  @override
  void interpret(int value) {
    print("Adding $value...");
    number.value = number.value + value;
  }
}

class Subtract implements Expression {
  @override
  Number number;
  Subtract({
    required this.number,
  });
  
  @override
  void interpret(int value) {
    print("Subtracting $value...");
    number.value -= value;
  }
}

class Number {
  int value;
  Number({
    required this.value,
  }){print("Starting with $value...");
    value = value;}
  
}

void main() {
  var number = Number(value: 0);
  var adder = Add(number: number);
  var subtracter = Subtract(number: number);

  adder.interpret(100);
  subtracter.interpret(60);
  adder.interpret(2);

  assert(number.value == 42);
  print("And the result is ${number.value}!");
}