import 'dart:core';
import 'Account.dart';

class Customer {
  final String name;
  final int age;
  late List<Account> accounts =[] ;

 Customer(this.name,this.age);

  void addAccount(Account account){
    accounts.add(account);
  }



  double getTotalBalance(){
       double total=0.0;
      for(var account in accounts ){
        total+=account.balance;
      }
      return total;
  }
  
  String getDetails() {
    String customerInfo="Name:$name Age:$age Account:$accounts";
    return customerInfo;
  }

}