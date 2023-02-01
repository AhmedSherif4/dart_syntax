// ignore_for_file: file_names

class Car{
  late  double priceInEuro;
  set price(double priceInDollar){
    priceInEuro = priceInDollar * 0.84;
  }
  double get price {
    return priceInEuro;
  } 
}

void main(List<String> args) {
  Car h1 =  Car();
  h1.price = 1000;
  print(h1.price);

}