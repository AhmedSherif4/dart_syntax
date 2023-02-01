// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Manga manga = Manga(price: 20);
  Car car = Car(price: 20000);

  Visitor v1 = Mabe3at();
  Visitor v2 = Gamarek();
  print('------------manga------------');
  print('price before any tax; ${manga.getPrice()}');
  v1.visitManga(manga);
  print('price after mabe3at tax; ${manga.getPrice()}');
  v2.visitManga(manga);
  print('price after gamarek tax; ${manga.getPrice()}');
  print('------------Car------------');
  print('price before any tax; ${car.getPrice()}');
  v1.visitCar(car);
  print('price after mabe3at tax; ${car.getPrice()}');
  v2.visitCar(car);
  print('price after gamarek tax; ${car.getPrice()}');
}

class Manga implements Visitable{
  double price;
  Manga({
    required this.price,
  });

  void setPrice(double priceF) {
    price = priceF;
  }

  double getPrice() {
    return price;
  }
  
  @override
  void accept(Visitor visitor) {
    visitor.visitManga(this);
  }
}

class Car implements Visitable{
  double price;
  Car({
    required this.price,
  });

  void setPrice(double priceF) {
    price = priceF;
  }

  double getPrice() {
    return price;
  }
  
  @override
  void accept(Visitor visitor) {
    visitor.visitCar(this);
  }
}

abstract class Visitable {
  void accept(Visitor visitor);
}

abstract class Visitor {
  void visitManga(Manga o);
  void visitCar(Car o) ;
}

class Mabe3at implements Visitor{
  @override
  void visitCar(Car o) {
    o.setPrice(o.getPrice() * 1.2);
  }

  @override
  void visitManga(Manga o) {
    o.setPrice(o.getPrice() * 1.3);
  }
}

class Gamarek implements Visitor{
  @override
  void visitCar(Car o) {
    o.setPrice(o.getPrice() * 1.5);
  }

  @override
  void visitManga(Manga o) {
    o.setPrice(o.getPrice() * 1.6);
  }
}