import 'package:flutter/material.dart';
import 'package:trainings_planner/features/collection_view/collection_view.dart';
import 'package:trainings_planner/features/home/widgets/exercise_view.dart';
import 'package:trainings_planner/features/training_view/training.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            child: CollectionView(),
          ),
          Expanded(
            flex: 4,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.symmetric(vertical: BorderSide()),
              ),
              child: ExerciseView(),
            ),
          ),
          Expanded(
            child: TrainingView(),
          ),
        ],
      ),
    );
  }
}
