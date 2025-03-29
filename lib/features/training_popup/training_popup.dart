import 'package:flutter/material.dart';

class TrainingPopup extends StatelessWidget {
  TrainingPopup({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Exercise duration',
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter duration',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final value = int.tryParse(controller.text);
                if (value != null) {
                  Navigator.of(context).pop(value);
                } else {
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
