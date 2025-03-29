import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class TrainingView extends StatelessWidget {
  const TrainingView({required this.exercises, super.key});
  final List<HomeModelExercise> exercises;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              child: Text(
                'Training',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.onPrimary,
              height: 2,
            ),
            ReorderableListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                key: ValueKey(exercises[index].id),
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder.none,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                      ),
                      child: Row(
                        children: [
                          Text(
                            exercises[index]
                                    .training
                                    .duration
                                    .inMinutes
                                    .toString() +
                                ' min',
                          ),
                          const SizedBox(width: 12),
                          Text(
                            style: Theme.of(context).textTheme.labelLarge,
                            exercises[index].name,
                          ),
                        ],
                      ),
                      onPressed: () => context
                          .read<HomeController>()
                          .setActiveExercise(
                            collectionIndex:
                                exercises[index].training.collectionIndex,
                            groupIndex: exercises[index].training.groupIndex,
                            exerciseIndex:
                                exercises[index].training.exerciseIndex,
                          ),
                    ),
                  ),
                ],
              ),
              itemCount: exercises.length,
              onReorder: (prev, curr) {
                context.read<HomeController>().reorderExercises(prev, curr);
              },
            ),
            Text(
              '${exercises.fold(Duration.zero, (previousValue, element) => previousValue + element.training.duration).inMinutes} min',
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  Theme.of(context).colorScheme.secondary,
                ),
              ),
              onPressed: () => context.read<HomeController>().openPdfPreview(),
              child: const Text(
                style: TextStyle(color: Color.fromARGB(255, 40, 40, 139)),
                'Preview',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
