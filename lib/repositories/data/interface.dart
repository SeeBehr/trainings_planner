import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/features/home/home_model.dart';

abstract class DataRepository {
  Stream<HomeModel?> get dataStream;
  Future<HomeModel> loadData();
  Future<void> saveData();
  Future<void> saveExercise(EditExerciseModel newExercise);

  void setActiveExercise({
    required int collectionIndex,
    required int groupIndex,
    required int exerciseIndex,
  });

  EditExerciseModel loadExercise();

  void addExercise();

  void addGroup();

  void addCollection();

  void renameCollection(int index, String value);

  void renameGroup(int collectionIndex, int groupIndex, String value);
}
