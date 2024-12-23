import 'package:bank_account/bank_account_model.dart';
import 'package:bank_account/check_account_id.dart';
import 'package:bank_account/methods_to_do.dart';

void main(List<String> arguments) {
 
   BankAccount? bankAccount = checkAccountId();
   if (bankAccount != null) {
     differentOperations(bankAccount);
   } else {
     print(
         "Exit , you have exceed the max number of tries , try after 5 min ...");
   }
}

