import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class HomeController extends Cubit<HomeModel> {
  HomeController() : super(HomeModel.loading()) {
    unawaited(_laodTraining());
  }

  Future<void> _laodTraining() =>
      Future.delayed(const Duration(seconds: 2), () {
        emit(
          HomeModel.data(
            activeCollection: -1,
            activeExercise: -1,
            collections: [
              HomeModelCollection(
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
          ),
        );
      });

  void setActiveExercise({
    required int collectionIndex,
    required int exerciseIndex,
  }) {
    state.maybeMap(
      data: (value) {
        emit(
          value.copyWith(
            activeCollection: collectionIndex,
            activeExercise: exerciseIndex,
          ),
        );
        debugPrint(
          'activeCollection: $collectionIndex, activeExercise: $exerciseIndex',
        );
      },
      orElse: () {},
    );
  }
}
