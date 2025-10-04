import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/training_popup/training_popup.dart';

class ExerciseView extends StatelessWidget {
  const ExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeModel>(
      builder: (context, state) => state.map(
        loading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        data: (data) {
          try {
            final exercise = data
                .collections[data.displayedIndex.collection]
                .groups[data.displayedIndex.group]
                .exercises[data.displayedIndex.exercise];
            return ExerciseViewData(exercise: exercise);
          } catch (e) {
            debugPrint('Error in ExerciseView: $e');
            return const EmptyExerciseView();
          }
        },
        error: (error) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}

class EmptyExerciseView extends StatelessWidget {
  const EmptyExerciseView({super.key});
  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          'no exercise selected',
          style: Theme.of(context).textTheme.bodyLarge,
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
                          for (int i = 1; i <= exercise.difficulty; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Description',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            exercise.description ?? 'your description',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'material',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      const SizedBox(height: 8),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          child: exercise.material.isNotEmpty
                              ? Text('• ${exercise.material.join('\n• ')}')
                              : Text(
                                  exercise.material.isEmpty
                                      ? 'your material'
                                      : '*  ${exercise.material.join('\n*  ')}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'sketch',
                          style: Theme.of(context).textTheme.bodyLarge,
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
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 16,
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onSurface,
                            ),
                            onPressed: () {
                              debugPrint('openExercise: ${exercise.id}');
                              context.read<HomeController>().openExercise();
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                left: 16,
                                right: 16,
                              ),
                              child: Text(
                                'edit',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 16,
                                blurStyle: BlurStyle.outer,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.onSurface,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                left: 16,
                                right: 16,
                              ),
                              child: Text(
                                exercise.training == const Training.none()
                                    ? 'add'
                                    : 'remove',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                            onPressed: () {
                              if (exercise.training == const Training.none()) {
                                unawaited(
                                  showCupertinoModalPopup<(int, String)>(
                                    context: context,
                                    builder: (builder) {
                                      return TrainingPopup();
                                    },
                                  ).then(
                                    (ret) => ret != null
                                        ? context
                                            .read<HomeController>()
                                            .addToTraining(
                                              Duration(minutes: ret.$1),
                                              ret.$2,
                                            )
                                        : null,
                                  ),
                                );
                              } else {
                                context
                                    .read<HomeController>()
                                    .removeFromTraining();
                              }
                            },
                          ),
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
