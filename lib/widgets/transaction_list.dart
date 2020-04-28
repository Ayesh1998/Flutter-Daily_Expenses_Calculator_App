import 'package:daily_expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  TransactionList({Key key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _transactions = [
    Transaction(
      amount: 200.00,
      date: DateTime.now(),
      id: 't1',
      title: 'Buy a car',
    ),
    Transaction(
      amount: 100.00,
      date: DateTime.now(),
      id: 't2',
      title: 'Buy a laptop',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: _transactions.map((transaction) {
      return Card(
        color: Colors.teal[500],
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
                  margin: EdgeInsets.fromLTRB(3, 7, 3, 7),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text(
                    '\$${transaction.amount}',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
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
            ],
          ),
        ),
      );
    }).toList());
  }
}
