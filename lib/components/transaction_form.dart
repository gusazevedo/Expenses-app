import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) submitTransaction;

  TransactionForm({super.key, required this.submitTransaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        TextField(
          controller: titleController,
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: valueController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Valor'),
        ),
        ElevatedButton(
          child: Text('Salvar'),
          onPressed: () {
            submitTransaction(titleController.text,
                double.tryParse(valueController.text) ?? 0);
            print(titleController.text);
            print(valueController.text);
          },
        )
      ]),
    );
  }
}
