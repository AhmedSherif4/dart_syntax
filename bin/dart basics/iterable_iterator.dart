void main(List<String> args) {
  Set<String> names = {'Ahmed', 'Sherif', 'Mo', 'Da'};
  List<String> namesList = ['Ahmed', 'Sherif', 'Mo', 'Da'];
  Iterator iter = names.iterator;
  Iterator iterList = names.iterator;

  while(iter.moveNext()){print(iter.current);}
  while(iterList.moveNext()){print(iterList.current);}

}