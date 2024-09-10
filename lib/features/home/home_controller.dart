import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class HomeController extends Cubit<HomeModel> {
  HomeController({
    required this.dataRepository,
    required this.navigationService,
  }) : super(HomeModel.loading()) {
    unawaited(_loadData());
  }
  final DataRepository dataRepository;
  final NavigationService navigationService;
  late StreamSubscription<HomeModel?> _dataSubscription;

  Future<void> _loadData() async {
    emit(await dataRepository.loadData());
    _dataSubscription = dataRepository.dataStream.listen((event) {
      if (event != null) emit(event);
    });
  }

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

  void openExercise({required String id}) {
    navigationService.openExercise(id: id);
  }

  @override
  Future<void> close() {
    _dataSubscription.cancel();
    return super.close();
  }
}
