void main(List<String> args) async {
  Stream<int> stream = customStream(3);

  /* stream.listen((event) {
    print(event);
  });
  print('Done!'); */

  await for (int element in stream) {
    print(element);
  }
  print('Done!');
}

// with * is generator
// async: gives you Future
// async*: gives you Stream
Stream<int> customStream(int to) async* {
  for (var i = 0; i <= to; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
