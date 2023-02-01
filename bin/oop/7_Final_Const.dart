// ignore_for_file: file_names
void main(List<String> args) {
  final int x = DateTime.now().year; // بيتنفذ بعد الران
  const int c = 2019; // مابينفذش بعد الران، قبله بس


  final List q = [1, 2, 3, 4];
  const List w = [8, 8, 9, 4];
  q.add([4]); // الفاينل ممكن نضيف قيمة بعد مانخلص، الكونست لأ
  //w.add(9); // هنا هيسبب ايرور


  var f = Final(5);
  
  print(f.num1);
}
class Final{
  final int num1;
  static const int num3 = 1; // لازم ستاتيك معاه، واللي عملناه مع الفاينل مانقدرش نعمله مع الكونست
  Final(this.num1);
}