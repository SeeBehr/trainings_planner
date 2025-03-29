import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrainingPopup extends StatelessWidget {
  TrainingPopup({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                style: Theme.of(context).textTheme.headlineSmall,
                'Exercise duration',
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'duration [min]',
                    labelStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  final value = int.tryParse(controller.text) ?? 0;
                  Navigator.of(context).pop(value);
                },
                child: const Text(
                  style: TextStyle(color: Color.fromARGB(255, 40, 40, 139)),
                  'Save',
                ),
              ),
            ],
          ),
        ),
      );
}
