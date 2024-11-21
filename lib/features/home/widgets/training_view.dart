import 'package:flutter/material.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class TrainingView extends StatelessWidget {
  const TrainingView({required this.exercises, super.key});
  final List<HomeModelExercise> exercises;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          itemBuilder: (context, index) => ListTile(
            key: ValueKey(exercises[index].id),
            title: Text(exercises[index].name),
          ),
          itemCount: exercises.length,
          onReorder: (prev, curr) {},
        ),
      ],
    );
  }
}
