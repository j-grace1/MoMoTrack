enum TransactionType {
  income,
  expense,
}

class Transaction {
  final String title;
  final String subtitle;
  final String? customCategory;
  final String time;
  final double amount;
  final String currencySymbol;
  final TransactionType type;
  final String messageBody;
  final String? transactionInitiatorName;
  final String? transactionInitiatorNumber;
  final String? transactionDate;
  final String? transactionReference;
  final String? transactionBenefactorName;
  final String? transactionBenefactorNumber;
  final double? discountAmt;
  final double? couponsAmt;
  final double? newBalance;
  final double? transactionFee;
  final double? loyaltyReward;
  final String? financialTransactionID;
  final String? externalTransactionID;

  Transaction({
    required this.title,
    required this.subtitle,
    this.customCategory,
    required this.time,
    required this.amount,
    required this.currencySymbol,
    required this.type,
    required this.messageBody,
    this.transactionInitiatorName,
    this.transactionInitiatorNumber,
    this.transactionDate,
    this.transactionReference,
    this.transactionBenefactorName,
    this.transactionBenefactorNumber,
    this.discountAmt,
    this.couponsAmt,
    this.newBalance,
    this.transactionFee,
    this.loyaltyReward,
    this.financialTransactionID,
    this.externalTransactionID,
  });

  bool get isExpense => type == TransactionType.expense;
}

List<Transaction> sampleTransactions = [
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: 'XAF ',
    type: TransactionType.income,
    messageBody:
        'You CYNTHIA LAURA DOUANLA TANDJONG (237674063317) have via agent: JULIANA NYUYBE SUNJOH (237671669450 -), withdrawn 500 XAF from your mobile money account: 54674553 at 2022-06-14 07:13:59 and you can now collect your money in cash. Your new balance: 10714 XAF. Fee paid: 50 XAF. Message from agent: -. Financial Transaction Id: 4211614310.',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  Transaction(
    title: 'Incoming Transfer',
    subtitle: 'Income',
    time: '10:30 AM',
    amount: 100.0,
    currencySymbol: '\$',
    type: TransactionType.income,
    messageBody: 'Sample incoming transfer message',
  ),
  Transaction(
    title: 'Outgoing Transfer',
    subtitle: 'Expense',
    time: '11:45 AM',
    amount: 50.0,
    currencySymbol: '\$',
    type: TransactionType.expense,
    messageBody: 'Sample outgoing transfer message',
  ),
  // Add more sample transactions here
];