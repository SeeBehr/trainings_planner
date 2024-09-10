import 'dart:async';

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
              activeExercise: -1,
              collections: [
                HomeModelCollection(
                  id: DateTime.now().hashCode.toString(),
                  name: 'collection',
                  exercises: [
                    HomeModelExercise(
                      id: 'id',
                      name: 'exercise',
                      description: 'description',
                      material: [],
                      image: null,
                      difficulty: 1,
                      inTraining: false,
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
  Future<void> saveExercise(EditExerciseModel exercise) {
    return Future.delayed(const Duration(seconds: 2), () {
      print('Exercise saved');
      data = data?.maybeMap(
        data: (model) => model.copyWith(
          collections: model.collections.mapWithIndex((collection, index) {
            if (index == model.activeCollection) {
              return collection.copyWith(
                exercises: collection.exercises.mapWithIndex((exercise, index) {
                  if (index == model.activeExercise) {
                    return exercise.copyWith(
                      name: exercise.name,
                      description: exercise.description,
                      material: exercise.material,
                      image: exercise.image,
                      difficulty: exercise.difficulty,
                      inTraining: exercise.inTraining,
                    );
                  } else {
                    return exercise;
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
    });
  }
}
