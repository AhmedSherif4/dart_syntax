// ignore_for_file: file_names
import 'dart:io';

void main(List<String> args) async {
  final file = File("data.txt");

  file.exists();

  if (file.existsSync()) {

    print("File Exists!");

    print(file.readAsStringSync());

    file.writeAsStringSync("SUPER", mode: FileMode.append); 

    await file.copy("data2.txt").then((_) => print("File Copied"));

    file.deleteSync();

    print("File Deleted!");
    
  } else {

    file.createSync();

    print("File Created!");
    
    file.writeAsStringSync("Welcome babe..");

  }
}
