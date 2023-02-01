// ignore_for_file: file_names

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> args)  {

  /* var data = await fetchAlbum();
  for (var i = 0; i < 50; i++) {
    print(data[i]["name"]);
    print(data[i]["email"]);
    print(data[i]["id"]);
    print("--------------");
  } */

  getData();

}

Future<dynamic> fetchAlbum() async {
  final uri =
      'https://jsonplaceholder.typicode.com/comments'; // بنستعين بلينك معين من النت
  final res =
      await http.get(Uri.parse(uri)); // بنقوله السترينج دا وحوله إلى يو ار اي
  if (res.statusCode == 200) {
    // يعني لو الكود مظبوط، الكود تمام، لو 400 يعني لو الكود مش تمام
    // res.body; // لو سبناها كدا اللي جاي هايكون سترينج، فمش هعرف أتحكم فيه، فهحوله إلى ماب بالكود اللي جاي
    var obj = convert.json.decode(res
        .body); // ديكود دا يعني حول اللي في البادي بتاعت اللينك (اللي هو ريس) إلى ماب
    
    return obj; // بعد كل الهري دا، رجعلي الاوبج (اللي هو في اللينك على هيئة الماب زي ما قولناله)
  } else {
    throw Exception(
        "Error!"); // في حالة وجود إرور ماتفضحنيش وقولي إنه في إيرور من غير ما توقف البرنامج
  }
}

Future<http.Response>? getData(){

  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/comments');

  http.get(uri).then(( data) {
   var body = convert.json.decode(data.body)[1]['name'];
    print(body);
  });



}