import 'package:daily_expenses/models/transaction.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transaction-list.dart';
import 'package:flutter/material.dart';

class UserTrnasactions extends StatefulWidget {
  UserTrnasactions({Key key}) : super(key: key);

  @override
  _UserTrnasactionsState createState() => _UserTrnasactionsState();
}

class _UserTrnasactionsState extends State<UserTrnasactions> {
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
      children: <Widget>[
        NewTransaction(),
        TransactionList(_transactions),
      ],
    );
  }
}
