
import 'login.dart';
import 'voucher.dart';

void main() {
  print('Accounting app by sahir CLI-Demo');

  // for login form
  bool islogin = login1();

  // If login is successful, redirect to welcome screen
  if (islogin) {
    welcome();
  }

  print('\nApp is closed');
}
