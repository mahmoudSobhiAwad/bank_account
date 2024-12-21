import 'dart:io';

import 'package:bank_account/bank_account.dart';
import 'package:bank_account/bank_users_data.dart';

BankAccount? checkAccountId() {
  int triesNum = 0;
  String? accountId;
  do {
    print("Please Enter your Account ID !");
    accountId = stdin.readLineSync();
    if (accountId != null && accountId.trim().isNotEmpty) {
      int index = bankUsers.indexWhere(
        (item) => item.accountId == accountId,
      );
      if (index != -1) {
        return bankUsers[index];
      }
      else{
        print("incorrect account ID, try again");
      }
    } else {
      print("Please Enter Valid Input");
    }
    triesNum++;
  } while (triesNum < 5);
  return null;
}
