import 'package:daily_expenses/models/transaction.dart';
import 'package:flutter/material.dart';

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
  final List<Transaction> transactions = [
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Expenses'),
        centerTitle: true,
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Column(
                children: transactions.map((transaction) {
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
                            transaction.date.toString(),
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
            }).toList()),
          ],
        ),
      ),
    );
  }
}
