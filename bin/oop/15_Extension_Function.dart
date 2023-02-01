// ignore_for_file: file_names
void main(List<String> args) {
// الإكستنشن دا بيخليك تدخل فانكشن جوا سترينج مثلا، انتيجر، كدا
// عشان تستخدمه انت بطريقتك انت
// بتستعين باسم الإكستنشن اللي انت عملته دا للملفات التانية لو فيه ملفات كتير وعايز تستعين بحاجة معينة وكدا

  print(NumberParsing("2").parseInt() + 5);
  print(int.parse("5") + 5);
  String? nullOne;
  print(nullOne.orEmpty());
}

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

// useful one:
extension StringNull on String? {
  String orEmpty() => this == null ? 'no value' : this!;
}
