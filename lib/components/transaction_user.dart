import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:projects/components/transaction_form.dart';
import 'package:projects/components/transaction_list.dart';
import 'package:projects/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(id: '123', title: 'Shoes', value: 249.89, date: DateTime.now()),
    Transaction(
        id: '321', title: 'Power Bill', value: 499.89, date: DateTime.now()),
    Transaction(
        id: '456', title: 'Water Bill', value: 199.20, date: DateTime.now())
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(transactions: _transactions),
        TransactionForm(submitTransaction: _addTransaction),
      ],
    );
  }
}
