import 'dart:async';

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
            collections: [
              HomeModelCollection(
                name: 'name',
                exercises: [
                  HomeModelExercise(
                    id: 'id',
                    name: 'name',
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
}
