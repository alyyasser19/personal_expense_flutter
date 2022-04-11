import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {

Function addTransaction;
AddTransaction(this.addTransaction, {Key? key}) : super(key: key);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
 late String _titleController;
 late String _amountController;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            onChanged: (String value) {
              _titleController = value;
            },
          ),
              TextField(
            decoration: const InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              _amountController = value;
            },
          ),
              TextButton(
            child: const Text('Add Transaction'),
            onPressed:
              ()=>widget.addTransaction(_titleController, double.parse(_amountController))
            ,
          )
        ],
      ),
      );
  }
}
