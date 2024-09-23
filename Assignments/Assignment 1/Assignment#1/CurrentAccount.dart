import 'Account.dart';
import 'AccountTransaction.dart';

class CuurentAccount extends Account {
  late double overdraftLimit;
  late double overdraftFee;
  late bool overdraftProtection;


  CuurentAccount(String accountNumber, double balance,AccountTransaction transactions ,this.overdraftFee,this.overdraftLimit ,this.overdraftProtection) : 
  super(accountNumber,balance,transactions);
  


  double withdarw(double amount){
    double withdarwBalance=0.0;

    if (balance<amount){
      print("can't withdraw, because you balance is less than the amount that you want to withdraw.");

      return withdarwBalance;}
      else{
       withdarwBalance=balance-amount;
      balance=withdarwBalance;
      return balance;}
      }


      @override
  String toString() {
    // TODO: implement toString
    return super.toString()+"OverdraftLimit:$overdraftLimit  OverdraftFee:$overdraftFee OverdraftProtecting:$overdraftProtection";
  }
  }


