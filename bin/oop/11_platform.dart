// ignore_for_file: file_names
import 'dart:io';
void main(List<String> args) {
  print(Platform.executable);
  print(Platform.numberOfProcessors); // Alt + Shift
  print(Platform.operatingSystem);
  print(Platform.operatingSystemVersion);
  print(Platform.script);
  print(Platform.version);
  print("-------------");
  print(Platform.isAndroid);
  print(Platform.isFuchsia);
  print(Platform.isIOS);
  Platform.isIOS ? print("IOS"): print("Not IOS"); // أهم كود
  print(Platform.isLinux);
  print(Platform.isMacOS);
  print(Platform.isWindows);
  print("-------------");
  Platform.environment.forEach((key, _) {
    print("$key: ${Platform.environment[key]}");
  });


}