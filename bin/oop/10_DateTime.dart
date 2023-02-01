// ignore_for_file: file_names
void main(List<String> args) {
  print(DateTime.now());
  print(DateTime.now().weekday); // monday is 1, sunday is 7
  print(DateTime.now().add(Duration(days: 30))); // بعد 30يوم
  print(DateTime.now().subtract(Duration(days: 30))); // قبل 30يوم
  print(DateTime.utc(2019, 10, 12, 20)); // التوقيت العالمي وليس المحلي
  print(DateTime.utc(2010, DateTime.november));
  print(DateTime.tryParse("2010-07-20 20:00:00"));
  print(DateTime.thursday);
  print(DateTime.now().add(Duration(days: 30)).isAfter(DateTime.now()));
  print(DateTime.now().add(Duration(days: 30)).isBefore(DateTime.now()));
  print(
      DateTime.now().add(Duration(days: 30)).difference(DateTime.now()).inDays);
  print(DateTime.monthsPerYear);
  print(DateTime.daysPerWeek);
  print(DateTime.february);
  print(DateTime.sunday);
  
}
