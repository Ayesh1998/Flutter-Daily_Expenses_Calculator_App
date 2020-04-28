import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTransaction;
  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  submitHandler() {
    final titleEntered = titleController.text;
    final amountEntered = double.parse(amountController.text);

    if (titleEntered.isEmpty || amountEntered <= 0) {
      return;
    }
    widget.addTransaction(
      titleEntered,
      amountEntered,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              onSubmitted: (_) => submitHandler(),
            ),
            TextField(
              // onChanged: (value) {
              //   inputAmount = value;
              // },
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitHandler(),
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            FlatButton(
              onPressed: submitHandler,
              color: Colors.teal,
              child: Text(
                'Add Expense',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
