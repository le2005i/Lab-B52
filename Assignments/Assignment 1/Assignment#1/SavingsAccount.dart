import 'Account.dart';
import 'AccountTransaction.dart';
import 'Taxable.dart';

class SavingsAccount extends Account implements Taxable{
  final double profitSharingRatio;
  late double investmentProfit;


  SavingsAccount(String accountNumber, double balance,AccountTransaction transactions ,this.profitSharingRatio,this.investmentProfit)
  :super( accountNumber,balance,transactions );


  double applyProfit(){
  
     return balance+=investmentProfit;
  }

  double calculateProfit(double totalProfit){
    return investmentProfit=totalProfit*profitSharingRatio;
  }
  
  @override
  void applyTax() {
    double netProfit;
    netProfit=investmentProfit-(investmentProfit*0.05);
    balance=netProfit;


  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString()+"ProfitSharingRatio: $profitSharingRatio InvestmentProfit: $investmentProfit";
  }


}

