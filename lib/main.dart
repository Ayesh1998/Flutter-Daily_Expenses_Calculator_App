import 'package:daily_expenses/models/transaction.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transaction-list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal[500],
        fontFamily: 'Quicksand',
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'Lemonada',
                  fontSize: 20,
                ),
              ),
        ),
      ),
      title: 'Dialy Expenses',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String inputTitle;

  String inputAmount;

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

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
        amount: amount,
        title: title,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  void _startAddNewTRansaction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builderContext) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Expenses'),
        centerTitle: true,
        // backgroundColor: Colors.teal[700],
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () => _startAddNewTRansaction(context))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          // backgroundColor: Colors.teal,
          // focusColor: Colors.teal[200],
          // hoverColor: Colors.teal[200],
          onPressed: () => _startAddNewTRansaction(context),
          child: Icon(Icons.add),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  // color: Colors.teal[300],
                  child: Text(
                    'Chart',
                    style: TextStyle(),
                  ),
                  elevation: 5,
                ),
              ),
              TransactionList(_transactions)
            ],
          ),
        ),
      ),
    );
  }
}
