# Mahmoud's Bank - Dart Application

## OutPut 
![output](https://github.com/user-attachments/assets/eae29375-e227-4edf-ba52-5651c2c92080)

## Overview
Mahmoud's Bank is a simple command-line banking application built using Dart. The application allows users to perform basic banking operations such as verifying account IDs, withdrawing money, depositing funds, and displaying account information.

The program supports error handling, input validation, and a maximum number of login attempts to enhance the security and user experience.

### How it works:
#### Step 1: Account Verification:

The program will enforce you to enter your account ID.
You have 5 attempts to enter a valid account ID (we verfiy from local data in bank_users_data file). If unsuccessful, the program will exit.

#### Step 2: Select Operations:
using DO-While loop the operation will repeat unitll user close the app , the availale process are :
1: Withdraw money from the account.
2: Deposit money into the account.
3: View account details (account ID and current balance).
4: Exit the application.
###### Deposit:
validate if the amount is positive numerical.

###### Withdrawal:
validate if the input amount is positive numerical then validate if it's equal or less than the balance
then if okay, we make subtraction process with the new balance.
if not -> message is apper to him to know the error , by using do while he can reenter the correct amount.

###### Display Account Info:
 The program displays your account ID and current balance.
