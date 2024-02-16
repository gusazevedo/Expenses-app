import 'package:flutter/material.dart';
import 'package:projects/components/transaction_form.dart';
import 'package:projects/components/transaction_list.dart';
import 'package:projects/models/transaction.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Expenses App'),
          elevation: 2,
          backgroundColor: Colors.lightGreen[300]),
      body: AppBody(),
    );
  }
}

class AppBody extends StatelessWidget {
  final _transactions = [
    Transaction(id: '123', title: 'Shoes', value: 249.89, date: DateTime.now()),
    Transaction(
        id: '321', title: 'Power Bill', value: 499.89, date: DateTime.now()),
    Transaction(
        id: '456', title: 'Water Bill', value: 199.20, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(transactions: _transactions),
        TransactionForm()
      ],
    );
  }
}
