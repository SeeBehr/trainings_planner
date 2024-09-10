import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({required this.exercise, super.key});
  final HomeModelExercise? exercise;
  @override
  Widget build(BuildContext context) => exercise == null
      ? const EmptyExerciseView()
      : ExerciseViewData(exercise: exercise!);
}

class EmptyExerciseView extends StatelessWidget {
  const EmptyExerciseView({super.key});
  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.symmetric(
            vertical: BorderSide(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 2,
            ),
          ),
        ),
        child: Center(
          child: Text(
            'no exercise selected',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      );
}

class ExerciseViewData extends StatelessWidget {
  const ExerciseViewData({required this.exercise, super.key});
  final HomeModelExercise exercise;
  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              exercise.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.onPrimary,
            height: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: <Widget>[
                  ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'difficulty',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(width: 8),
                          for (int i = 5; i > 0; i--)
                            Icon(
                              exercise.difficulty < i
                                  ? Icons.star_border
                                  : Icons.star,
                              color: Colors.yellowAccent,
                            ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Description',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.blue.shade300),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child:
                              Text(exercise.description ?? 'your description'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'material',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.blue.shade300),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child: exercise.material.isNotEmpty
                              ? Text('• ${exercise.material.join('\n• ')}')
                              : const Text('your material'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'sketch',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: exercise.image == null
                            ? const Icon(Icons.image)
                            : Image.file(File(exercise.image!), height: 200),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              left: 16,
                              right: 16,
                            ),
                            child: Text(
                              'edit',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          onPressed: () {
                            debugPrint('openExercise: ${exercise.id}');
                            context.read<HomeController>().openExercise();
                          },
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                              left: 16,
                              right: 16,
                            ),
                            child: Text(
                              'add',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
