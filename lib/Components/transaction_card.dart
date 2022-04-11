import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Helpers/Transaction.dart';


class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  final Function deleteTx;
  final Function editTx;

  const TransactionCard({required this.transaction, required this.deleteTx, required this.editTx, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(transaction.amount.toString()+ " EGP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
              margin: EdgeInsets.only(right: 10),
            ),
            Column(
              children: <Widget>[
                Text(transaction.title, style: Theme.of(context).textTheme.headline6),
                Text(DateFormat().format(transaction.date), style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
