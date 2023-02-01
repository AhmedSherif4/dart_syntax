// ignore_for_file: file_names

void main(List<String> args) {
  var x = {9: 'a', 10: 'b', 11: 'c' };
  print(x[9]);
  print(x.keys);
  print(x.values);
  print(x.entries);
  x.addAll({12: 'd', 13: 'e' });
  print(x);
  print(x.containsKey('a'));
  print(x.containsValue('a'));
  x.remove(9);
  print(x);
  x.forEach((key, value) {
    print('key is $key, value is $value');
   });
   x.forEach((key, value) => print('key is $key, value is $value')); // the same code with last one
   x.clear(); print(x);


  var details = Map();
  details['Ahmed'] = "Good";
  details['Sherif'] = "Very";
  print(details);
  print(details.keys);
  print(details.values);
}