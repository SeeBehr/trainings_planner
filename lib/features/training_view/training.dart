import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/training_popup/training_popup.dart';

class TrainingView extends StatefulWidget {
  const TrainingView({super.key});

  @override
  State<TrainingView> createState() => _TrainingViewState();
}

class _TrainingViewState extends State<TrainingView> {
  Offset anchorPoint = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeModel>(
      builder: (context, state) {
        return state.map(
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error) => Center(
            child: Text(error.toString()),
          ),
          data: (data) {
            final exercises = data.collections
                .expand((collection) => collection.groups)
                .expand((group) => group.exercises)
                .filter((exercise) => exercise.training.index != -1)
                .sortWith((exercise) => exercise.training.index, Order.orderInt)
                .toList();
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
                    const Divider(height: 2),
                    ReorderableListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Row(
                        key: ValueKey(exercises[index].id),
                        children: [
                          Expanded(
                            child: MouseRegion(
                              onHover: (event) =>
                                  setState(() => anchorPoint = event.position),
                              child: GestureDetector(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: LinearBorder.none,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '${exercises[index].training.duration.inMinutes} min',
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                        exercises[index].name,
                                      ),
                                    ],
                                  ),
                                  onPressed: () => context
                                      .read<HomeController>()
                                      .setActiveExercise(
                                        collectionIndex: exercises[index]
                                            .training
                                            .collectionIndex,
                                        groupIndex: exercises[index]
                                            .training
                                            .groupIndex,
                                        exerciseIndex: exercises[index]
                                            .training
                                            .exerciseIndex,
                                      ),
                                ),
                                onSecondaryTap: () => showMenu(
                                  context: context,
                                  position: RelativeRect.fromLTRB(
                                    anchorPoint.dx,
                                    anchorPoint.dy,
                                    anchorPoint.dx,
                                    anchorPoint.dy,
                                  ),
                                  items: [
                                    PopupMenuItem<TextButton>(
                                      child: TextButton(
                                        onPressed: () => unawaited(
                                          showCupertinoModalPopup<int>(
                                            context: context,
                                            builder: (builder) {
                                              return TrainingPopup();
                                            },
                                          ).then(
                                            (duration) => duration != null
                                                ? context
                                                    .read<HomeController>()
                                                    .changeDuration(
                                                      exercises[index].id,
                                                      Duration(
                                                        minutes: duration,
                                                      ),
                                                    )
                                                : null,
                                          ),
                                        ),
                                        child: const Text('change duration'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      itemCount: exercises.length,
                      onReorder: (prev, curr) {
                        context
                            .read<HomeController>()
                            .reorderExercises(prev, curr);
                      },
                    ),
                    if (exercises.isNotEmpty)
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
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () =>
                          context.read<HomeController>().openPdfPreview(),
                      child: const Text(
                        style:
                            TextStyle(color: Color.fromARGB(255, 40, 40, 139)),
                        'Preview',
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
