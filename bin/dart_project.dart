import 'package:dart_project/dart_project.dart' as dart_project;


void main(List<String> arguments) {
  //دا درس الفاربلز 1 و2
  print('Hello world: ${dart_project.calculate()}!');
List list = [160, 3, 1719, 19, 11, 13, -21];
  print(integer(list));
  
  
  
  /* selectionSort(a);
  print(a); */
}

int integer(List list){
  
  for (var i = 0; i < list.length; i++) {
   if (list.any((element) => list[i].isEven)) {
     return list[i];
   } 
  }
  return -1;
}