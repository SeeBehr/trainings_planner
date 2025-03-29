import 'package:flutter/material.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class TrainingPopup extends StatelessWidget {
  TrainingPopup({required this.navigationService, super.key});
  final NavigationService navigationService;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Center(
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
                navigationService.goBack(value: controller.text);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
