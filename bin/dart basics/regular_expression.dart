void main(List<String> args) {
  String emails = 'ahmedmesho853@gmail.com \n' 'ahmed@yahoo.com';

  RegExp emailCheck = RegularExpression.regExp(
      RegularExpression.patternsRegularExpressions['Email']!,
      multiLine: false);

  // بيشوف إذا كان فيه فالسترينج دا ايميل ولا لا
  bool hasEmail = emailCheck.hasMatch(emails);

  List listOfEmails = emailCheck
      .allMatches(emails) // طلعلي كل الايميلات اللي فالسترينج
      .toList()
      .map((element) => element.input.toString())
      .toList();
}

class RegularExpression {
  // inistance
  // الأداة اللي بشوف من خلالها اذا كان دا ايميل ولا موبايل ولا اية بالظبط
  static RegExp regExp(String pattern,
      {bool multiLine = false,
      bool caseSensitive = true,
      bool dotAll = false,
      bool unicode = false}) {
    RegExp regEx = RegExp(
      pattern,
      multiLine: multiLine,
      caseSensitive: caseSensitive,
      dotAll: dotAll,
      unicode: unicode,
    );
    return regEx;
  }
  // pattern
  static Map<String, String> patternsRegularExpressions = {
    // لو عوزت باترن زي دي اعمل سيرش عليها
    'Email': r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$',
    'Phone': r'/^01[0125][0-9]{8}$/gm',
  };
}
