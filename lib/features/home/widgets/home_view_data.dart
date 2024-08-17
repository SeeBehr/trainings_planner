import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/home/widgets/collection_view.dart';
import 'package:trainings_planner/features/home/widgets/exercise_view.dart';
import 'package:trainings_planner/features/home/widgets/training_view.dart';

class HomeViewData extends StatefulWidget {
  const HomeViewData({required this.collections, super.key});

  final List<HomeModelCollection> collections;

  @override
  State<HomeViewData> createState() => _HomeViewDataState();
}

class _HomeViewDataState extends State<HomeViewData> {
  int activeCollection = 0;
  int activeExercise = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CollectionView(collections: widget.collections)),
        Expanded(
          child: ExerciseView(
            exercise:
                widget.collections[activeCollection].exercises[activeExercise],
          ),
        ),
        Expanded(
          child: TrainingView(
            exercises: widget.collections
                .expand((collection) => collection.exercises)
                .filter((exercise) => exercise.inTraining)
                .toList(),
          ),
        ),
      ],
    );
  }
}
