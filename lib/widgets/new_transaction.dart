import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
    );
  }
}
