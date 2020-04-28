import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

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
                addTransaction(
                    titleController.text, double.parse(amountController.text));
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
    );
  }
}
