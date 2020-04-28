import 'package:daily_expenses/models/transaction.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialy Expenses',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  String inputTitle;
  String inputAmount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Expenses'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.teal[300],
                child: Text(
                  'Chart',
                  style: TextStyle(),
                ),
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
