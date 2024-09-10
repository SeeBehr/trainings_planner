import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class EditExerciseController extends Cubit<EditExerciseModel> {
  EditExerciseController({
    required String? id,
    required this.navigationService,
    required this.dataRepository,
  }) : super(EditExerciseModel.empty()) {
    if (id != null) unawaited(_fetchExercise(id: id));
  }

  final NavigationService navigationService;
  final DataRepository dataRepository;

  Future<void> _fetchExercise({required String id}) async => emit(
        EditExerciseModel(
          id: id,
          name: '',
          description: 'description',
          material: [],
          image: null,
          difficulty: 1,
          inTraining: false,
        ),
      );
  void setExercise({
    required String name,
    required String description,
    required List<String> material,
  }) =>
      emit(
        state.map(
          (exercise) => exercise.copyWith(
            name: name,
            description: description,
            material: material,
          ),
          empty: (_) => state,
        ),
      );

  void setDifficulty({required int difficulty}) => emit(
        state.map(
          (exercise) => exercise.copyWith(difficulty: difficulty),
          empty: (_) => state,
        ),
      );

  void setImage({required String? image}) => emit(
        state.map(
          (exercise) => exercise.copyWith(image: image),
          empty: (_) => state,
        ),
      );

  Future<void> goBack() async {
    await dataRepository.saveExercise(state);
    navigationService.goBack();
  }
}
