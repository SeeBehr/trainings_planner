import 'package:flutter/material.dart';
import 'package:trainings_planner/features/collection_view/collection_view.dart';
import 'package:trainings_planner/features/home/widgets/exercise_view.dart';
import 'package:trainings_planner/features/training_view/training.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Theme.of(context).colorScheme.onSurface,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 16,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: const CollectionView(),
            ),
          ),
          const Expanded(
            flex: 4,
            child: ExerciseView(),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Theme.of(context).colorScheme.onSurface,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 16,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: const TrainingView(),
            ),
          ),
        ],
      ),
    );
  }
}
