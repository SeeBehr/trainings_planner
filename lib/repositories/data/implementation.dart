import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/persistence/hive.dart';
import 'package:trainings_planner/services/persistence/interface.dart';

class DataRepositoryImplementation extends DataRepository {
  PersistenceService persistenceService = HivePersistenceService();
  HomeModel? data;
  @override
  Stream<HomeModel?> get dataStream => _stream.stream;
  final StreamController<HomeModel?> _stream = StreamController<HomeModel?>();
  @override
  Future<HomeModel> loadData() => persistenceService.loadData().then((value) {
        data = HomeModel.data(
          activeCollection: -1,
          activeGroup: -1,
          activeExercise: -1,
          collections: value,
          trainingLength: 0,
        );
        _stream.add(data);
        return data!;
      });

  @override
  Future<void> saveData() async {
    debugPrint('Saving data: $data');
    if (data != null) {
      await data!.map(
        loading: (_) {},
        data: (data) => persistenceService.saveData(data.collections),
        error: (_) {},
      );
    }
  }

  @override
  void saveExercise(EditExerciseModel newExercise) {
    debugPrint('Exercise saved: $newExercise');
    data = newExercise.mapOrNull(
      data: (edited) => data?.maybeMap(
        data: (model) => model.copyWith(
          collections: model.collections.mapWithIndex((collection, index) {
            if (index == model.activeCollection) {
              return collection.copyWith(
                groups: collection.groups.mapWithIndex((group, index) {
                  if (index == model.activeGroup) {
                    return group.copyWith(
                      exercises:
                          group.exercises.mapWithIndex((exercise, index) {
                        if (index == model.activeExercise) {
                          return exercise.copyWith(
                            name: edited.name,
                            description: edited.description,
                            material: edited.material,
                            image: edited.image,
                            difficulty: edited.difficulty,
                            training: edited.training,
                          );
                        } else {
                          return exercise;
                        }
                      }).toList(),
                    );
                  } else {
                    return group;
                  }
                }).toList(),
              );
            } else {
              return collection;
            }
          }).toList(),
        ),
        orElse: () => null,
      ),
    );

    _stream.add(data);
  }

  @override
  void setActiveExercise({
    required int collectionIndex,
    required int groupIndex,
    required int exerciseIndex,
  }) {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        activeCollection: collectionIndex,
        activeGroup: groupIndex,
        activeExercise: exerciseIndex,
      ),
      orElse: () => null,
    );
    _stream.add(data);
  }

  @override
  EditExerciseModel loadExercise() {
    if (data == null) {
      return EditExerciseModel.empty();
    }
    return data!.maybeMap(
      data: (model) => _mapToEditExerciseModel(
        model.collections[model.activeCollection].groups[model.activeGroup]
            .exercises[model.activeExercise],
      ),
      orElse: EditExerciseModel.empty,
    );
  }

  EditExerciseModel _mapToEditExerciseModel(HomeModelExercise exercise) {
    return EditExerciseModel.data(
      id: exercise.id,
      name: exercise.name,
      description: exercise.description,
      material: exercise.material,
      image: exercise.image,
      difficulty: exercise.difficulty,
      training: exercise.training,
    );
  }

  @override
  void addExercise() {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex((collection, index) {
          if (index == model.activeCollection) {
            return collection.copyWith(
              groups: collection.groups.mapWithIndex((group, index) {
                if (index == model.activeGroup) {
                  return group.copyWith(
                    exercises: group.exercises
                        .append(HomeModelExercise.add())
                        .toList(),
                  );
                } else {
                  return group;
                }
              }).toList(),
            );
          } else {
            return collection;
          }
        }).toList(),
        activeExercise: model.collections[model.activeCollection]
            .groups[model.activeGroup].exercises.length,
      ),
      orElse: () => null,
    );
    _stream.add(data);
  }

  @override
  void addGroup() {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex((collection, index) {
          if (index == model.activeCollection) {
            return collection.copyWith(
              groups: model.collections[model.activeCollection].groups
                  .append(HomeModelGroup.add())
                  .toList(),
            );
          } else {
            return collection;
          }
        }).toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void addCollection() {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections:
            model.collections.append(HomeModelCollection.add()).toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void renameCollection(int index, String value) {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections:
            model.collections.mapWithIndex((collection, collectionIndex) {
          if (collectionIndex == index) {
            return collection.copyWith(name: value);
          } else {
            return collection;
          }
        }).toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void renameGroup(int collectionIndex, int groupIndex, String value) {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex((collection, index) {
          if (index == collectionIndex) {
            return collection.copyWith(
              groups: collection.groups.mapWithIndex((group, index) {
                if (index == groupIndex) {
                  return group.copyWith(name: value);
                } else {
                  return group;
                }
              }).toList(),
            );
          } else {
            return collection;
          }
        }).toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void deleteCollection(int collectionIndex) {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections
            .where(
              (collection) =>
                  collectionIndex != model.collections.indexOf(collection),
            )
            .toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void deleteGroup(int collectionIndex, int groupIndex) {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex((collection, index) {
          if (index == collectionIndex) {
            return collection.copyWith(
              groups: collection.groups
                  .where(
                    (group) => groupIndex != collection.groups.indexOf(group),
                  )
                  .toList(),
            );
          } else {
            return collection;
          }
        }).toList(),
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void addToTraining() {
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex(
          (collection, collectionIndex) {
            if (collectionIndex != model.activeCollection) {
              return collection;
            }
            return collection.copyWith(
              groups: collection.groups.mapWithIndex(
                (group, groupIndex) {
                  if (groupIndex != model.activeGroup) {
                    return group;
                  }
                  return group.copyWith(
                    exercises: group.exercises.mapWithIndex(
                      (exercise, exerciseIndex) {
                        if (exerciseIndex != model.activeExercise) {
                          return exercise;
                        }
                        debugPrint('Add ${exercise.name} to training '
                            'at ${model.trainingLength}');
                        return exercise.copyWith(
                          training: Training(
                            model.trainingLength,
                            collectionIndex,
                            groupIndex,
                            exerciseIndex,
                          ),
                        );
                      },
                    ).toList(),
                  );
                },
              ).toList(),
            );
          },
        ).toList(),
        trainingLength: model.trainingLength + 1,
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }

  @override
  void reorderExercises(int prev, int curr) {
    debugPrint('reorderExercises DataRepository start');
    debugPrint('prev: $prev, curr: $curr');

    data = data?.maybeMap(
      data: (data) => data.copyWith(
        collections: data.collections
            .map(
              (collection) => collection.copyWith(
                groups: collection.groups
                    .map(
                      (group) => group.copyWith(
                        exercises: group.exercises.map(
                          (exercise) {
                            debugPrint(
                              '${exercise.name}, '
                              'index: ${exercise.training.index}',
                            );
                            if (prev <= curr) {
                              int current = curr - 1;
                              if (exercise.training.index == prev) {
                                debugPrint(
                                  'Moving ${exercise.name} from $prev to $current',
                                );
                                return exercise.copyWith(
                                  training: exercise.training.copyWith(
                                    index: current,
                                  ),
                                );
                              } else if (exercise.training.index > prev &&
                                  exercise.training.index <= current) {
                                debugPrint(
                                  'Shifting ${exercise.name} from '
                                  '${exercise.training.index} to '
                                  '${exercise.training.index - 1}',
                                );
                                return exercise.copyWith(
                                  training: exercise.training.copyWith(
                                    index: exercise.training.index - 1,
                                  ),
                                );
                              } else {
                                return exercise;
                              }
                            } else {
                              if (exercise.training.index == prev) {
                                debugPrint(
                                  'Moving ${exercise.name} from $prev to $curr',
                                );
                                return exercise.copyWith(
                                  training: exercise.training.copyWith(
                                    index: curr,
                                  ),
                                );
                              } else if (exercise.training.index < prev &&
                                  exercise.training.index >= curr) {
                                debugPrint(
                                  'Shifting ${exercise.name} from '
                                  '${exercise.training.index} to '
                                  '${exercise.training.index + 1}',
                                );
                                return exercise.copyWith(
                                  training: exercise.training.copyWith(
                                    index: exercise.training.index + 1,
                                  ),
                                );
                              } else {
                                return exercise;
                              }
                            }
                          },
                        ).toList(),
                      ),
                    )
                    .toList(),
              ),
            )
            .toList(),
      ),
      orElse: () => data,
    );

    debugPrint('reorderExercises DataRepository end');
    _stream.add(data);
  }

  @override
  void deleteExercise() {
    var exerciseLen = 0;
    data = data?.maybeMap(
      data: (model) => model.copyWith(
        collections: model.collections.mapWithIndex((collection, index) {
          if (index == model.activeCollection) {
            return collection.copyWith(
              groups: collection.groups.mapWithIndex((group, index) {
                if (index == model.activeGroup) {
                  exerciseLen = group.exercises.length;
                  return group.copyWith(
                    exercises: group.exercises
                        .where(
                          (exercise) =>
                              model.activeExercise !=
                              group.exercises.indexOf(exercise),
                        )
                        .toList(),
                  );
                } else {
                  return group;
                }
              }).toList(),
            );
          } else {
            return collection;
          }
        }).toList(),
        activeExercise: (model.activeExercise == exerciseLen - 1)
            ? model.activeExercise - 1
            : model.activeExercise,
      ),
      orElse: () => data,
    );
    _stream.add(data);
  }
}
