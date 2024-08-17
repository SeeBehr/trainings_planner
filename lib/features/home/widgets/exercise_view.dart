import 'package:flutter/material.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class ExerciseView extends StatefulWidget {
  const ExerciseView({required this.exercise, super.key});
  final HomeModelExercise exercise;
  @override
  State<ExerciseView> createState() => _ExerciseViewState();
}

class _ExerciseViewState extends State<ExerciseView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
