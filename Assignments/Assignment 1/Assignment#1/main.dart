import 'Account.dart';
import 'AccountTransaction.dart';
import 'Customer.dart';

void main() {
  AccountTransaction accountTransaction1=new AccountTransaction("withdraw",2000.0);
  Account account1=new Account("123", 100, accountTransaction1) ;
  

  AccountTransaction accountTransaction2=new AccountTransaction("deposit",200.0);
  Account account2=new Account("124", 400, accountTransaction2) ;



  AccountTransaction accountTransaction3=new AccountTransaction("withdraw",500.0);
  Account account3=new Account("125", 300, accountTransaction3) ;


  
  // List<Account> a1=[];
  // a1.add(account1);
  // a1.add(account2);
  // a1.add(account3);

  Customer c1=new Customer("lolo", 50);
c1.addAccount(account3);
c1.addAccount(account2);
c1.addAccount(account1);

  print(c1);


//   account1.withdraw(2000.0);
//   account1.deposit(100);
//   account1.balance;
//   print(account1.accountNumber);
// 

}