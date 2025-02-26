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
    required int groupIndex,
    required int exerciseIndex,
  }) {
    state.maybeMap(
      data: (value) {
        emit(
          value.copyWith(
            activeCollection: collectionIndex,
            activeGroup: groupIndex,
            activeExercise: exerciseIndex,
          ),
        );
        dataRepository.setActiveExercise(
          collectionIndex: collectionIndex,
          groupIndex: groupIndex,
          exerciseIndex: exerciseIndex,
        );
        debugPrint(
          'activeCollection: $collectionIndex, '
          'activeGroup: $groupIndex, '
          'activeExercise: $exerciseIndex',
        );
      },
      orElse: () {},
    );
  }

  void openExercise() {
    navigationService.openExercise();
  }

  @override
  Future<void> close() {
    _dataSubscription.cancel();
    return super.close();
  }

  bool addExercise() {
    debugPrint('addExercise');
    return state.maybeMap(
      data: (value) {
        if (value.activeCollection == -1) {
          dataRepository.addCollection();
        }
        if (value.activeGroup == -1) {
          dataRepository.addGroup();
        }
        dataRepository.addExercise();
        return true;
      },
      orElse: () => false,
    );
  }

  bool addGroup() {
    debugPrint('addExercise');
    return state.maybeMap(
      data: (value) {
        if (value.activeCollection == -1) dataRepository.addCollection();
        dataRepository.addGroup();
        return true;
      },
      orElse: () => false,
    );
  }

  bool addCollection() {
    debugPrint('addExercise');
    return state.maybeMap(
      data: (value) {
        dataRepository.addCollection();
        return true;
      },
      orElse: () => false,
    );
  }

  Future<void> saveAll() => dataRepository.saveData();

  void renameCollection(int index, String value) {
    state.maybeMap(
      data: (data) {
        dataRepository.renameCollection(index, value);
      },
      orElse: () {},
    );
  }

  void renameGroup(int collectionIndex, int groupIndex, String value) {
    state.maybeMap(
      data: (data) {
        dataRepository.renameGroup(collectionIndex, groupIndex, value);
      },
      orElse: () {},
    );
  }

  void renameExercise(
      int collectionIndex, int groupIndex, int exerciseIndex, String value) {
    state.maybeMap(
      data: (data) {
        dataRepository.renameExercise(
            collectionIndex, groupIndex, exerciseIndex, value);
      },
      orElse: () {},
    );
  }

  void deleteCollection(int collectionIndex) {
    state.maybeMap(
      data: (data) {
        dataRepository.deleteCollection(collectionIndex);
      },
      orElse: () {},
    );
  }

  void deleteGroup(int collectionIndex, int groupIndex) {
    state.maybeMap(
      data: (data) {
        dataRepository.deleteGroup(collectionIndex, groupIndex);
      },
      orElse: () {},
    );
  }

  void addToTraining() {
    state.maybeMap(
      data: (data) {
        dataRepository.addToTraining();
      },
      orElse: () {},
    );
  }

  void removeFromTraining() {
    state.maybeMap(
      data: (data) {
        dataRepository.removeFromTraining();
      },
      orElse: () {},
    );
  }

  void reorderExercises(int prev, int curr) {
    debugPrint('reorderExercises HomeController');
    state.maybeMap(
      data: (data) {
        dataRepository.reorderExercises(prev, curr);
      },
      orElse: () {},
    );
  }

  void deleteExercise() {
    state.maybeMap(
      data: (data) {
        dataRepository.deleteExercise();
      },
      orElse: () {},
    );
  }
}
