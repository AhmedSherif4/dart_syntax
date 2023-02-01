// ignore_for_file: file_names
void main(List<String> args) {
var a = (x, y)=> print("sum = ${x + y}");


hof(3, 2, a);
hof(4, 3, (x, y)=> print("sum = ${x + y}"));  
}

hof(int x, int y, Function z) => z(x, y); 