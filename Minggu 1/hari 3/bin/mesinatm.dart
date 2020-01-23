import 'dart:io';
import 'dart:math';
import 'package:intl/intl.dart';

main() {
  frontMenu();
}

frontMenu(){
  print('===========================================');
  print('=  Welcome to Simple ATM Bank             =');
  print('===========================================');
  print('\n\n Please select ATM Transactions');
  print('Press [1] Deposit');
  print('Press [2] Withdraw');
  print('Press [3] Balance Inquiry');
  print('Press [4] Exit');
  print('\n\n What would you like to do?');
  var a = new atm();
  var pilihan = stdin.readLineSync();
    switch (pilihan){
    case '1':
      a.deposit();
      break;
    case '2':
      a.withdraw();
      break;
    case '3':
      a.checkBalance();
      break;
    case '4':
      a.atmExit();
      break;
  }
}

closing(){

  print('\n Do you want to continue? [Y] | [N]');
  var act = stdin.readLineSync();
  switch (act.toUpperCase()){
    case 'Y' :
      frontMenu();
      break;
    case 'N' :
      print('Thank You');
      break;
  }
}

class atm{

  deposit(){
  print('How much do you want to deposit?');
  var depo1 = stdin.readLineSync();
  var depo = NumberFormat.simpleCurrency(locale: 'IDR').format(int.parse(depo1));
  print('${depo} have been saved to your account');
  closing();
  }

  withdraw(){
    print('How much do you want to withdraw?');
    var wd1 = stdin.readLineSync();
    var wd = NumberFormat.simpleCurrency(locale: 'IDR').format(int.parse(wd1));
    print('${wd} have been withdrawed from your account');
    closing();
  }

  checkBalance(){
    var num= new Random();
    var rand = num.nextInt(10000000);
    var saldo = NumberFormat.simpleCurrency(locale: 'IDR').format(rand);
    print('Your balance is ${saldo}');
    print('\n Do you want to withdraw? [Y] | [N]');
    var wd = stdin.readLineSync();

    switch (wd.toUpperCase()){
      case 'Y' :
        withdraw();
        break;
      case 'N' :
        atmExit();
        break;
    }
    closing();
  }

  atmExit(){
    print('Thank You!');
  }

}
