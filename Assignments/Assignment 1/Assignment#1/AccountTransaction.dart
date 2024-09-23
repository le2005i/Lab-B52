class AccountTransaction{
  String transactionType;
  final double amount;

 AccountTransaction( this.transactionType, this.amount);


 @override
  String toString() {
    // TODO: implement toString
    return "TransactionType:$transactionType  Amount:$amount";
  }
}


mixin TransactionLogger{
  void logTransaction(String description){
      print("You logged new transaction with this description $description ");
  }
  
  void printTransactionLog();
}
