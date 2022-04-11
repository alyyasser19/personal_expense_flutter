import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class Transaction{
  String id;
  String title;
  double amount;
  DateTime date;

  Transaction(this.id, this.title, this.amount, this.date);

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'title': title,
      'amount': amount,
      'date': date.toIso8601String()
    };
  }

  static Transaction fromMap(Map<String, dynamic> map){
    return Transaction(map['id'], map['title'], double.parse(map['amount']),DateTime.parse(map['date']));
  }

  static Transaction parseJson(transaction){
    return Transaction.fromMap(transaction);
  }


  @override
  String toString() {
    return 'Transaction{id: $id, title: $title, amount: $amount, date: $date}';
  }

}