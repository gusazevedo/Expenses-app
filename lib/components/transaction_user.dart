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
    Transaction(
        id: '099', title: 'A couple more', value: 100.20, date: DateTime.now()),
    Transaction(
        id: '099', title: 'Just last one', value: 100.20, date: DateTime.now())
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
        TransactionForm(submitTransaction: _addTransaction),
        TransactionsList(transactions: _transactions),
      ],
    );
  }
}
