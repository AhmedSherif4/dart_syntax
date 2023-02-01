// ignore_for_file: file_names
import '1b_functions.dart';

void main(List<String> args) {
info();
}

info(){
  try {
    for (var i = 0; i <= 10; i++) {
      if (i == 5) {
        throw FormatException;
      }
  print("i = $i");
}
} catch (e) {
  print("Error");
}
}