import 'dart:async';

void main(List<String> args) {
  print('Main Start');
  microTask1;
  microTask2;
  microTask3;
  event1;
  event2;
  event3;
  print('Main End');
}

var microTask1 = scheduleMicrotask(() => print('Micro Task 1'));
var microTask2 = scheduleMicrotask(() => print('Micro Task 2'));
var microTask3 = scheduleMicrotask(() => print('Micro Task 3'));
var event1 = Future(() => print('Event 1'));
var event2 = Future.delayed(Duration(seconds: 2), () => print('Event 2'));
var event3 = Timer(Duration(seconds: 4), () => print('Event 3'));
