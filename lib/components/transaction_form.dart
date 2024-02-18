import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) submitTransaction;

  TransactionForm({super.key, required this.submitTransaction});

  _addTransaction() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    submitTransaction(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        TextField(
          controller: titleController,
          onSubmitted: (_) => _addTransaction(),
          decoration: const InputDecoration(labelText: 'Title'),
        ),
        TextField(
          controller: valueController,
          onSubmitted: (_) => _addTransaction(),
          decoration: const InputDecoration(labelText: 'Valor'),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
        ),
        ElevatedButton(
          onPressed: _addTransaction,
          child: const Text('Salvar'),
        )
      ]),
    );
  }
}
