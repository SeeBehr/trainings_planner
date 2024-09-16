import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trainings_planner/common/trainings_planner_error.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel.loading() = HomeModelLoading;
  factory HomeModel.data({
    required int activeCollection,
    required int activeGroup,
    required int activeExercise,
    required List<HomeModelCollection> collections,
  }) = HomeModelData;
  factory HomeModel.error({
    required TrainingsPlannerError error,
  }) = HomeModelError;
}

@freezed
class HomeModelCollection with _$HomeModelCollection {
  factory HomeModelCollection({
    required String id,
    required String name,
    required List<HomeModelGroup> groups,
  }) = _HomeModelCollection;
  factory HomeModelCollection.add() => HomeModelCollection(
        id: 'collection${DateTime.now().hashCode}',
        name: 'collection',
        groups: [],
      );
}

@freezed
class HomeModelGroup with _$HomeModelGroup {
  factory HomeModelGroup({
    required String id,
    required String name,
    required List<HomeModelExercise> exercises,
  }) = _HomeModelGroup;
  factory HomeModelGroup.add() => HomeModelGroup(
        id: 'group${DateTime.now().hashCode}',
        name: 'group',
        exercises: [],
      );
}

@freezed
class HomeModelExercise with _$HomeModelExercise {
  factory HomeModelExercise({
    required String id,
    required String name,
    required String? description,
    required List<String> material,
    required String? image,
    required int difficulty,
    required bool inTraining,
  }) = _HomeModelExercise;
  factory HomeModelExercise.add() => HomeModelExercise(
        id: 'exercise${DateTime.now().hashCode}',
        name: 'exercise',
        description: null,
        material: [],
        image: null,
        difficulty: 1,
        inTraining: false,
      );
}
