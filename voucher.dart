import 'dart:io';
import 'entryclass.dart';


void welcome() {
  print('Accounting app by Sahir');
  print('***!!!------!!!***');

  stdout.write('Enter entry Narration: ');
  String description = stdin.readLineSync() ?? '';
String type1="0";


  List<EntryLine> lines = [];
  
  bool adddNeww = true;

  while (adddNeww) {
    stdout.write('Enter Account Name: ');
    String account = stdin.readLineSync() ?? '';

    stdout.write('Enter Amount type * d * or * c * i.e(Debit or Credit)');
    String typeInput = stdin.readLineSync()!.toLowerCase();
   


   if (typeInput == 'd') {

 type1="debit";

   } 


   if (typeInput == 'c') {

 type1="credit";

   } 



    stdout.write('Enter amount in PKR: ');
    double amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

    lines.add(EntryLine(account: account, type: type1, amount: amount));

    stdout.write('do u really want to add new entry? (y/n): ');
    String more = stdin.readLineSync()!.toLowerCase();
    adddNeww = more == 'y';
  }

  var entry = AccountingEntry(
    date: DateTime.now(),
    description: description,
    lines: lines,
  );

  print('\nEntry Summary:');
  entry.printEntry();
}


