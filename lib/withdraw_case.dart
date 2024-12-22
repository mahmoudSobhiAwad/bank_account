import 'dart:io';

import 'package:bank_account/bank_account_model.dart';

void withDrawCase(BankAccount bankAccount) {
   print("please Enter the amount");
  double? enteredAmount = double.tryParse(stdin.readLineSync() ?? "");
  if (enteredAmount != null) {
    bankAccount.withdraw(enteredAmount);
  } else {
    print("invalid input !!");
  }
}
