import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel.loading() = HomeModelLoading;
  factory HomeModel.data({
    required int activeCollection,
    required int activeGroup,
    required int activeExercise,
    required List<HomeModelCollection> collections,
    required int trainingLength,
  }) = HomeModelData;
  factory HomeModel.error({
    required String error,
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

class Training {
  const Training(
    this.index,
    this.collectionIndex,
    this.groupIndex,
    this.exerciseIndex,
    this.duration,
  );
  const Training.none()
      : index = -1,
        collectionIndex = -1,
        groupIndex = -1,
        exerciseIndex = -1,
        duration = Duration.zero;
  final int index;
  final int collectionIndex;
  final int groupIndex;
  final int exerciseIndex;
  final Duration duration;

  Training copyWith({
    int? index,
    int? collectionIndex,
    int? groupIndex,
    int? exerciseIndex,
    Duration? duration,
  }) =>
      Training(
        index ?? this.index,
        collectionIndex ?? this.collectionIndex,
        groupIndex ?? this.groupIndex,
        exerciseIndex ?? this.exerciseIndex,
        duration ?? this.duration,
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
    @Default(Training.none()) Training training,
  }) = _HomeModelExercise;
  factory HomeModelExercise.add() => HomeModelExercise(
        id: 'exercise${DateTime.now().hashCode}',
        name: 'exercise',
        description: null,
        material: [],
        image: null,
        difficulty: 1,
      );
}
