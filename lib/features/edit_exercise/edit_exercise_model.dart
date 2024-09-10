import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_exercise_model.freezed.dart';

@freezed
class EditExerciseModel with _$EditExerciseModel {
  factory EditExerciseModel.data({
    required String id,
    required String name,
    required String? description,
    required List<String> material,
    required String? image,
    required int difficulty,
    required bool inTraining,
  }) = _EditExerciseModelData;
  factory EditExerciseModel.loading() = _EditExerciseModelLoading;
  factory EditExerciseModel.empty() = _EditExerciseModelEmpty;
}
