// ignore_for_file: file_names

class Shape {
  double getArea() {
    return 0;
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle({required this.width, required this.height});

  @override
  double getArea() {
    return (width * height);
  }
}

class Square extends Shape {
  final double side;

  Square({required this.side});

  @override
  double getArea() {
    return (side * side);
  }
}

class Calculate {
  double getArea(Shape shape) {
    return shape.getArea();
  }
}

void main(List<String> args) {
  Shape rectangle = Rectangle(height: 10, width: 10);
  Shape square = Square(side: 10);

  print('rectangle.getArea() = ${rectangle.getArea()}');
  print('square.getArea() = ${square.getArea()}');

  print("another way ---------");
//another way
  List<Shape> data = [Rectangle(height: 10, width: 10), Square(side: 10)];
  print(data[0].getArea());
  print(data[1].getArea());
  print("another way ---------");

  for (var value in data) {
    print(value.getArea());
  }
  print("another way ---------");

  for (var i = 0; i < data.length; i++) {
    print(data[i].getArea());
  }
  print("another way ---------");

//another way
  Calculate calculateGetArea = Calculate();
  print(calculateGetArea.getArea(rectangle));
  print(calculateGetArea.getArea(square));
}
