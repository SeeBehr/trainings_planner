import 'package:flutter/material.dart';

class TrainingPopup extends StatelessWidget {
  TrainingPopup({super.key});
  final TextEditingController durationController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

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
                  controller: durationController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'duration [min]',
                    labelStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                style: Theme.of(context).textTheme.headlineSmall,
                'Notes',
              ),
              SizedBox(
                width: 400,
                height: 100,
                child: TextField(
                  maxLines: null,
                  controller: notesController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
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
                  final value = int.tryParse(durationController.text) ?? 0;
                  final notes = notesController.text;
                  Navigator.of(context).pop((value, notes));
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
