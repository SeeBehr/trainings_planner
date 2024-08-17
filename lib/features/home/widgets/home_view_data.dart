import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/home/widgets/collection_view.dart';
import 'package:trainings_planner/features/home/widgets/exercise_view.dart';
import 'package:trainings_planner/features/home/widgets/training_view.dart';

class HomeViewData extends StatelessWidget {
  const HomeViewData({required this.collections, super.key});

  final HomeModelData collections;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CollectionView(
            collections: collections.collections,
            setActiveCollection: ({
              required int collectionIndex,
              required int exerciseIndex,
            }) =>
                context.read<HomeController>().setActiveExercise(
                      collectionIndex: collectionIndex,
                      exerciseIndex: exerciseIndex,
                    ),
          ),
        ),
        Expanded(
          flex: 4,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              border: Border.symmetric(vertical: BorderSide()),
            ),
            child: (collections.activeCollection != -1 &&
                    collections.activeExercise != -1)
                ? ExerciseView(
                    exercise: collections
                        .collections[collections.activeCollection]
                        .exercises[collections.activeExercise],
                  )
                : const ExerciseView(exercise: null),
          ),
        ),
        Expanded(
          child: TrainingView(
            exercises: collections.collections
                .expand((collection) => collection.exercises)
                .filter((exercise) => exercise.inTraining)
                .toList(),
          ),
        ),
      ],
    );
  }
}
