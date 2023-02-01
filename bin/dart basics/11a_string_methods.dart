// ignore_for_file: file_names

main(List<String> args) {
  var name = "namea";

  print(name.isEmpty); // هل فاضي؟
  print(name.isNotEmpty); // هل مش فاضي؟
  print(name.toLowerCase()); // خليه كله سمول
  print(name.toUpperCase()); // خليه كله كابيتال
  print(name.contains("na")); // هل الجزء دا موجود فيه؟
  print(name.replaceRange(0, 2,
      'ahmed')); // من كذا -رقم الحرف- لكذا -رقم الحرف- بدله وحط كذا-سترينج-ب
  print(name.replaceFirst(
      "na", "Ahmed")); // مكان اول كذا -سترينج- حد كذا -سترينج-ا
  print(name.replaceAll("a", "Ahmed")); // مكان كل كذا -سترينج- حط كذا -سترينج-ا
  var name2 = "             n#a#m#e";
  var v1 = name2.split("#");
  print(v1); // هنفصل حروف السترينج دي نخليها عناصر ليست بناءا على وجود كذا
  var v2 = v1.join("lol");
  print(v2);
  v2 = v2.replaceAll("lol", " ");
  print(v2);
  print(v2.trim());
  print(identical(
      1, '1')); // بتقارن مابين العنصرين دول اذا كانوا زي بعض في كل حاجة ولا لا
  String x = 'nama';
  print(x.replaceFirst('a', 'n'));
  print(x.padRight(6, 'A')); // لو هي أقل من ال6 فزودها بكذا لحد ما تبقى 6 ماليمين
}
