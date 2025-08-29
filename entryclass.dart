

class AccountingEntry {
   DateTime date;
   String description;
   List<EntryLine> lines;

// making parameter mandatory

  AccountingEntry({required this.date,required this.description,required this.lines,});


// double entry balancing function with multi line

  bool isBalanced() {



    double totalDebits = lines.where((line) => line.type == "debit").fold(0.0, (sum, line) => sum + line.amount);

    double totalCredits = lines.where((line) => line.type == "credit").fold(0.0, (sum, line) => sum + line.amount);

 return totalDebits == totalCredits;
  }

// entry printing after completion of operation wheter corrent or not ---output
  void printEntry() {
    print('Date: $date');
    print('Description: $description');
    for (var line in lines) {
      print('${line.account} - ${line.type} - \R\s${line.amount}');
    }
    print('Balanced: ${isBalanced() ? "Yes" : "No"}');
  }
}


class EntryLine {
   String account;
   String type;
   double amount;

  EntryLine({required this.account,required this.type,required this.amount,});
}

