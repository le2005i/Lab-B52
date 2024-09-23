import 'AccountTransaction.dart';

class  Account {
  late String accountNumber='';
  late double balance=0.0;
  late  List<AccountTransaction> transactions=[];

  Account(this.accountNumber, this.balance,AccountTransaction transaction);



  double deposit(double amount){
    if (amount<=0)
      return 0;
    else
      print("deposit went correct");
        double newBalance=amount+balance;
        balance=newBalance;
        return newBalance;

  }

  double withdraw(double amount){
    double withdrawbalance=amount-balance;
    if(amount<balance)
        print("can't withdraw because your current balance is$balance");

    else
      print("withdraw went correct and your current balance after withdarw is $withdrawbalance");
      balance=withdrawbalance;
      return withdrawbalance;
  }

  @override
  String toString() {

    return "accountNumber:$accountNumber Balance:$balance AccountTransaction:$transactions";
  }

}
