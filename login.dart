import 'dart:io';

bool login1() {

  String unam0 = "sahir";
  String ppwd0 = "aliali";

  print("=== Login System ===");

  stdout.write("Enter username: ");
  String? unam = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? ppwd = stdin.readLineSync();

  if (unam == unam0 && ppwd == ppwd0) {
    print("aap ka pwd durust ha ... khush amdeed $unam");
      return true;
  } else {
    print("aap ka pwd galat ha ");
      return false;
  }
}

