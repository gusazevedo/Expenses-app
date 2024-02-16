import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  TransactionForm({super.key});

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
          decoration: const InputDecoration(labelText: 'Valor'),
        ),
        ElevatedButton(
          child: Text('Salvar'),
          onPressed: () {
            print(titleController.text);
            print(valueController.text);
          },
        )
      ]),
    );
  }
}
