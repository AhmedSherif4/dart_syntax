import 'dart:collection';

class Stack<T> {
  final _stack = Queue<T>();

  int get length => _stack.length;

  bool canPop() => _stack.isNotEmpty;
  
  void clearStack(){ // بيحذف كل العناصر
    while(_stack.isNotEmpty){
      _stack.removeLast();
    }
  }

  void push(T element) { // بيضيف عنصر 
    _stack.addLast(element);
  }

  T pop() { // اخر عنصر وبيمسحه
    T lastElement = _stack.last; // بيخزن اخر عنصر
    _stack.removeLast(); // بيمسح اخر عنصر
    return lastElement; // بيريتيرن اخر عنصر
  }

  T peak() => _stack.last; // اخر عنصر اتضاف

}