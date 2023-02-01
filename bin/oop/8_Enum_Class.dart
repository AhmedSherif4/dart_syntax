// ignore_for_file: file_names
void main(List<String> args) {

    print(Color.blue);
    info(Color.red);
    print('----------');
    print(Color.values[0]);
    var list = Color.values;
    print(list);
    print(list.length);
}

enum Color{
    red, blue, white
}

info(Color c){
    switch(c){
        
      case Color.red:
        print("red");
        break;
      case Color.blue:
        print("blue");
        break;
      case Color.white:
        print("white");
        break;
    }
}

class info2{ // معمولها امبورت في الملف اللي بعده
  var age;
}
var x;