import 'package:flutter/material.dart';
import 'package:personal_expense/Components/add_transaction.dart';
import 'package:personal_expense/Components/transaction_card.dart';

import '../Helpers/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function addTransaction;

  const TransactionList(
      {required this.transactions, required this.addTransaction, Key?key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .orientation == Orientation.portrait ? MediaQuery
          .of(context)
          .size
          .height * 0.73 : MediaQuery
          .of(context)
          .size
          .height * 0.53,
      child: ListView(
          children:
          [ ...
          transactions.map((t) =>
              TransactionCard(
                  transaction: t,
                  deleteTx: () {
                    print("Delete");
                  },
                  editTx: () {
                    print("Edit");
                  }),).toList()
          ]
      ),
    );
  }
}