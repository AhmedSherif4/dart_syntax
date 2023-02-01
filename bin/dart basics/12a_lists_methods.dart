// ignore_for_file: file_names

void main(List<String> args) {
/*   var list = [4, 5, 6, 7, 8, 9];
  print(list); // اطبع الليست كلها
  print(list[1]); // اطبع جزء معين من الليست
  print(list.first); // اطبع اول جزء من الليست
  print(list.last); // اطبع اخر جزء من الليست
  print(list.reversed); // اطبع الليست من الاخر للاول
  list[1] = 3; // بتغير قيمة جزء من الليست
  print(list[1]);
  list.add(19); // بتضيف جزء في الليست --بتحط القيمة بس--و
  print(list);
  list.addAll([3, 5, 6]); // بتضيف اكتر من جزء في الليست
  print(list);
  list.insert(0,
      4); // (index, element) اول حاجة دا الجزء، تاني حاجة القيمة، هنا بنحدد الجزء اللي هنحط فيه القيمة
  print(list);
  list.insertAll(0, [1, 2, 3]);
  print(list);
  list.removeLast(); // بتمسح اخر جزء
  print(list);
  list.removeAt(3); // بتمسح الجزء اللي تحدده
  print(list);
  list.remove(3); // بتمسح القيمة اللي انت بتحددها
  print(list);
  list.removeRange(0, 4); // بنمسح الاندكس الللي احنا محددينها من كام لكام
  print(list);
  list.replaceRange(
      0, 3, [1, 2, 3, 4]); // بنبدل القيم، من اندكس رقم كذا لرقم كذا
  print(list);
  // ...
  List list2 = [5, 7, 34, 6, 20];

  // first way to LIST with FOR LOOP
  for (var i = 0; i < list2.length; i++) {
    // ال آي هنا كأنها مولود وبسمّيه، هنا انا سميته 0
    //وقولتله زودلي آي لحد عدد الليست، والآي ++ دي يعني افضل زودهالي لحد مانا قولتلك
    // هنا الآي بتاخد الإندكس
    print("firstful ${list2[i]}");
  }
  print(list2);
// Sec way to LIST with FOR LOOP
  for (var i in list2) {
    print(i);
    print(list2.indexOf(i));
  } // هنا الآي بتاخد الإليمينت
  print(list2.indexOf(20));
   */

  List l = [1, 2, 3, 4, 5, 6];
  print(l.asMap());

  // فيها عنصر واحد ولا لا
  try {
    print(l.single);
  } catch (e) {
    print('not a single list');
  }

  print(l.every((element) => element > 4)); // wrong - false
  print(l.any((element) => element > 4)); // wrong - false

  final z = List.filled(
      5, 'a'); // اعمل ليست مكونة من 5 عناصر كلهم الحرف دا وقابلة للزيادة
  print(z);
  final a = List.castFrom(z); // تاخد العناصر من ليست تانية
  print(a);
  final b =
      List.empty(growable: true); // ليست فاضية وبتقوله ممكن تعدل عالليست عادي
  final c =
      List.generate(5, (index) => index = index + (index - 1), growable: true);
  print(c);
  final x = List.unmodifiable([1, 2, 3]); // غير قابلة للتعديل
  print(x);

  z.fillRange(1, 3,
      'a'); // إملى من كذا لكذا بالعناصر دي هايبدل العناصر بالقديم مش هايضيفها عالقديم
  print(z);

  final test = z.firstWhere((element) => element == 'c',
      orElse: (() => 'didnt find it'));
  print(test);
  List w = [1, 4, 5];
  // previousValue = w = [1,4,5]
  //element = 100
  final q =
      w.fold<int>(100, (previousValue, element) => element + previousValue);
  print(q);

  print(w.followedBy([6, 7, 8]));
  w.forEach((element) => print(element));
  print(w.getRange(0, 2));
  var products = [
    {"name": "Screwdriver", "price": 42.00},
    {"name": "Wingnut", "price": 0.50}
  ];
  List<double> values =
      products.map((product) => product['price'] as double).toList();
  print(values);
  var totalPrice = values.fold<double>(
      0.0,
      (previousValue, element) =>
          element + previousValue); // 42.5.w.map((e) => null)
  print(totalPrice);

  // بيمر بكل عنصر ويعمل بيه العملية اللي انت تقوله عليها
  print(w.reduce((value, element) => value + element));

  List h = [1, 2, 3, 4, 5, 6, 7];
  // بيشيل أي عنصر مايقدرش يحقق الشرط دا
  h.retainWhere((element) => element <= 3);
  print(h);
  print(h.whereType<int>());

  // Lists and Maps

  List<Map<String, List<Object>>> mapList = [
    {
      'name': ['index1', 'index2'],
      'price': [0, 1, 2, 3],
    },
    {
      'name': ['index3', 'index4'],
      'price': [4, 5, 6, 7],
    },
    {
      'name': ['index5', 'index6'],
      'price': [8, 9, 10, 11],
    }
  ];
  // خرجت الماب بعد كدا خرجت منها ليست بتاعت الاسامي بعد كدا فصفصت الليستات بتاعت الاسامي وطبعت كل واحدة لوحدها
/*   var index135 = mapList.map((e) => e['name']).toList();
  index135.forEach(
    (element) => element!.forEach((elementin) {
      print(elementin);
    }),
  );
  print(index135); */
  // خرجت الماب بعد كدا خرجت الارقام بعد كدا فصفصت الاسعار وجمعتهم مع بعض
/*   var priceAll = mapList
      .map(
        (e) => e['price'],
      )
      .toList();
  int total = 0;
  for (var element in priceAll) {
    for (var elements in element!) {
      total += (elements as int);
    }
  }
  print(total); */
  // خرجت الماب بعد كدا خرجت الاسامي وطبعت كل ليست لوحدها
  /* var allIndex = mapList
      .map((e) => e['name'])
      .forEach(((element) => print(element)));  */


  Map<String, List<Map<String, List<Object>>>> mapListaMap = {
    'first': [
      {
        'name': ['index1', 'index2'],
        'price': [0, 1, 2, 3],
      },
      {
        'name': ['index3', 'index4'],
        'price': [4, 5, 6, 7],
      },
      {
        //'name': ['index5', 'index6'],
        'price': [8, 9, 10, 11],
      }
    ]
  };
/*   // الماب اخدنا القيم اللي هي ليست بعد كدا اخدنا الماب بعد كدا اخدنا الاسامي على انها ليست ولكن هو بيسجل الباث دا كله من غير ما يفصفص
  var t = mapListaMap.values.map((e) => e.map((z) => z['name'])).toList();
  print(t);
  // علشان أفصفص بقى عملت ليست فاضية عشان هخزن فيها بعد ما أفصفص
  // ال تي عبارة عن 3 ليستات جوا بعض فبالتالي عملت 3 فور ايتش
  List k = List.empty(growable: true);
  t.forEach((element) {
    element.forEach((elementin) {
      print(elementin);
      elementin?.forEach((elementinn) {print(elementinn); k.add(elementinn);});
    });
  });
  print(k); */
}
