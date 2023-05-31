import 'package:flutter/material.dart';
import 'package:vizier/data/models/transaction/MyOwnTransactionData/transactionData.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard({
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ExpansionTile(
        leading: Icon(
          transaction.type == TransactionType.income
              ? Icons.arrow_downward
              : Icons.arrow_upward,
          color: transaction.type == TransactionType.income
              ? Colors.green
              : Colors.red,
        ),
        title: Text(transaction.title),
        subtitle: Text(transaction.subtitle),
        trailing: Text(
          '${transaction.currencySymbol}${transaction.amount.toStringAsFixed(2)}',
          style: TextStyle(
            color: transaction.type == TransactionType.income
                ? Colors.green
                : Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Show transaction message in modal popup
                  },
                  child: Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(width: 5),
                      Text('Message'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to categorize page
                  },
                  child: Row(
                    children: [
                      Icon(Icons.category),
                      SizedBox(width: 5),
                      Text('Categorize'),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to create asset form
                  },
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text('Add Asset'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
