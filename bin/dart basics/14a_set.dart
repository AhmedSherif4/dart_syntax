// ignore_for_file: file_names

void main(List<String> args) {
  // set is a special case in List where all the inputs are unique
  Set x = {4, 5, 6, 7, 8, 9};
  print(x);
  print(x.toList());
  x.add(10);
  print(x);
  x.addAll({1, 2});
  print(x);
  print(x.length);
  print(x.elementAt(1));
  print(x.contains(6));
  x.remove(6);
  print(x);
  print(x.contains(6));
  print(x.containsAll({4, 1}));
  x.clear(); print(x);
  x.addAll({1, 2, 3, 4, 5});

  x.forEach((i) => print(i)); // the same with the code with last one
  // لو معايا مجموعتين
  var h = {1, 2, 3};
  var g = {2, 3, 4};
  print(h.intersection(g)); // اية الحاجة المشتركة بين المجموعتين
  print(h.union(g)); // اية العناصر كلها اللي هنا وهناك
  print(h.difference(g));
  print(g.difference(h));
  print(h.lookup(10)); // return the element or null
  print(h.contains(10)); // return true or false
}