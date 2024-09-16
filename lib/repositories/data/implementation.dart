import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';

class DataRepositoryImplementation extends DataRepository {
  HomeModel? data;
  @override
  Stream<HomeModel?> get dataStream => _stream.stream;
  final StreamController<HomeModel?> _stream = StreamController<HomeModel?>();
  @override
  Future<HomeModel> loadData() => Future.delayed(
        const Duration(seconds: 2),
        () {
          if (data == null) {
            return data = HomeModel.data(
              activeCollection: -1,
              activeGroup: -1,
              activeExercise: -1,
              collections: [
                HomeModelCollection(
                  id: 'collection${DateTime.now().hashCode}',
                  name: 'collection',
                  groups: [
                    HomeModelGroup(
                      id: 'group${DateTime.now().hashCode}',
                      name: 'group',
                      exercises: [
                        HomeModelExercise(
                          id: 'exercise${DateTime.now().hashCode}',
                          name: 'exercise',
                          description: null,
                          material: [],
                          image: null,
                          difficulty: 1,
                          inTraining: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          } else {
            return data!;
          }
        },
      );

  @override
  Future<void> saveExercise(EditExerciseModel newExercise) {
    return Future.delayed(const Duration(seconds: 2), () {
      debugPrint('Exercise saved');
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
  }
}
