import 'package:daily_expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'Empty Transactions',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: '',
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView(
              children: transactions.map((transaction) {
              return Card(
                elevation: 6,
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            '\$${transaction.amount.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transaction.title,
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat('yyyy-MM-dd').format(transaction.date),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 29,
                          ),
                          onPressed: () => deleteTransaction(transaction.id))
                    ],
                  ),
                ),
              );
            }).toList()),
    );
  }
}
