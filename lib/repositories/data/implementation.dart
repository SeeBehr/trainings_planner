import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/persistance/hive.dart';
import 'package:trainings_planner/services/persistance/interface.dart';

class DataRepositoryImplementation extends DataRepository {
  PersistenceService persistenceService = HivePersistanceService();
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
  Future<void> saveExercise(EditExerciseModel newExercise) {
    return Future.delayed(const Duration(seconds: 2), () {
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
                              inTraining: edited.inTraining,
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
    });
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
      inTraining: exercise.inTraining,
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
  }
}
