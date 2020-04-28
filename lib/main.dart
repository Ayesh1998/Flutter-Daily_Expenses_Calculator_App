import 'package:daily_expenses/models/transaction.dart';
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

  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
            Card(
              elevation: 4,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      // onChanged: (value) {
                      //   inputTitle = value;
                      // },
                      controller: titleController,
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      // onChanged: (value) {
                      //   inputAmount = value;
                      // },
                      controller: amountController,
                      decoration: InputDecoration(labelText: 'Amount'),
                    ),
                    FlatButton(
                      onPressed: () {
                        print(amountController.text);
                        print(titleController.text);
                      },
                      color: Colors.teal,
                      child: Text(
                        'Add Expense',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            TransactionList()
          ],
        ),
      ),
    );
  }
}
