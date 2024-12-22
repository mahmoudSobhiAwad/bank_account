import 'dart:io';

import 'package:bank_account/bank_account_model.dart';
import 'package:bank_account/deposit_case.dart';
import 'package:bank_account/withdraw_case.dart';

void differentOperations(BankAccount bankAccount) {
  int? selectedIndex;
  do {
    print(
      "Pick the operation you want to do:\n 1- Withdraw amount\n 2- Deposit amount\n 3- Display account info\n 4- Exit"
    );
    selectedIndex = int.tryParse(stdin.readLineSync() ?? "");

    if (selectedIndex == null || selectedIndex < 1 || selectedIndex > 4) {
      print("Invalid choice, please select a valid option.");
    } else {
      switch (selectedIndex) {
        case 1:
          withDrawCase(bankAccount);
          break;
        case 2:
          depositCase(bankAccount);
          break;
        case 3:
          bankAccount.displayAccountInfo();
          break;
        case 4:
          print("Exiting... Thank you for using Mahmoud's Bank!");
          break;
        default:
          print("Operation not supported.");
      }
    }
  } while (selectedIndex != 4);
}

