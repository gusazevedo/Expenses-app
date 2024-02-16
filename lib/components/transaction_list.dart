import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return Card(
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    tr.title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    DateFormat('dd/MM/yyyy').format(tr.date),
                    style: const TextStyle(fontSize: 12),
                  )
                ]),
                Text('${tr.value} \$',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
