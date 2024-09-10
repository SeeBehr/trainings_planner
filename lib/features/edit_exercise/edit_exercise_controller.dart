import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class EditExerciseController extends Cubit<EditExerciseModel> {
  EditExerciseController({
    required this.navigationService,
    required this.dataRepository,
  }) : super(EditExerciseModel.loading()) {
    unawaited(_fetchExercise());
  }

  final NavigationService navigationService;
  final DataRepository dataRepository;

  Future<void> _fetchExercise() async =>
      dataRepository.loadExercise().then(emit);

  void setExercise({
    required String name,
    required String? description,
    required List<String> material,
    required int difficulty,
    required String? image,
  }) {
    emit(
      state.maybeMap(
        data: (exercise) => exercise.copyWith(
          name: name,
          description: description,
          material: material,
          difficulty: difficulty,
          image: image,
        ),
        orElse: () => state,
      ),
    );
    unawaited(dataRepository.saveExercise(state));
  }

  Future<void> goBack() async {
    await dataRepository.saveExercise(state);
    navigationService.goBack();
  }
}
