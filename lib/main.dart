import 'package:flutter/material.dart';
import 'package:personal_expense/Components/add_transaction.dart';
import 'package:personal_expense/Components/transaction_list.dart';

import './Helpers/Transaction.dart';

void main()  {

  runApp(
       MaterialApp(
        home: Home(),
        title: "Expense Tracker",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
      )
  );  // MaterialApp
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  late List<Transaction> _transactionsList=[];


  void _addTransaction(String title, double amount) {
    setState(() {
      (_transactionsList).add(Transaction(DateTime.now().toString(),title, amount, DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      body:SizedBox(
        child: Column(
        children:  <Widget>[
          TransactionList( transactions: _transactionsList,addTransaction:_addTransaction),
        ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
        width: double.infinity,
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=>AddTransaction(_addTransaction));
      },
    ),
    );  // Scaffold
  }
}
