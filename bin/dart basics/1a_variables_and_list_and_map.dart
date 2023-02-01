// ignore_for_file: file_names



main(List<String> args) {
  //variables
  var x = 10;
  const a = 1.5;
  final b = "Amed";
  int d = 19;
  double e = 1.6;
  String f = "Ahmed";
  bool c = true;
  x = 14;
  print("x = ${x + 10}");
  var s = 19, k = false, p = "A7a";
  var q;
  var w = q;
  q = 10;
  //list
  var r = <int>[2, 3, 5];
  var t = <String>["Ahmed", "Sherif", "Mo"];
  var y = {t: r};
  // map
  var details = Map();
  details['Ahmed'] = "Good";
  details['Sherif'] = "Very";
  print(details);
  print(details.keys);
  print(details.values);
  var usrMap = {"a": "1", 'b': '2'};
  usrMap.forEach((k, v) => print('${k}: ${v}'));
  print(y);
}
