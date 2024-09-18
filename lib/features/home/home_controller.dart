import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
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
        if (value.activeCollection == -1 || value.activeGroup == -1) {
          return false;
        }
        emit(
          value.copyWith(
            collections:
                value.collections.mapWithIndex((collection, collectionIndex) {
              if (collectionIndex == value.activeCollection) {
                return collection.copyWith(
                  groups: value.collections[value.activeCollection].groups
                      .mapWithIndex((group, groupIndex) {
                    if (groupIndex == value.activeGroup) {
                      return group.copyWith(
                        exercises: [
                          ...group.exercises,
                          HomeModelExercise.add(),
                        ],
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
            activeExercise: value.collections[value.activeCollection]
                    .groups[value.activeGroup].exercises.length -
                1,
          ),
        );
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
        if (value.activeCollection == -1) return false;
        emit(
          value.copyWith(
            collections:
                value.collections.mapWithIndex((collection, collectionIndex) {
              if (collectionIndex == value.activeCollection) {
                return collection.copyWith(
                  groups: value.collections[value.activeCollection].groups
                      .append(HomeModelGroup.add())
                      .toList(),
                );
              } else {
                return collection;
              }
            }).toList(),
            activeGroup:
                value.collections[value.activeCollection].groups.length - 1,
          ),
        );
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
        emit(
          value.copyWith(
            collections:
                value.collections.append(HomeModelCollection.add()).toList(),
            activeCollection: value.collections.length - 1,
          ),
        );
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
        emit(
          data.copyWith(
            collections: data.collections.mapWithIndex((collection, i) {
              if (i == index) {
                return collection.copyWith(name: value);
              } else {
                return collection;
              }
            }).toList(),
          ),
        );
        dataRepository.renameCollection(index, value);
      },
      orElse: () {},
    );
  }

  void renameGroup(int collectionIndex, int groupIndex, String value) {
    state.maybeMap(
      data: (data) {
        emit(
          data.copyWith(
            collections: data.collections.mapWithIndex((collection, i) {
              if (i == collectionIndex) {
                return collection.copyWith(
                  groups: collection.groups.mapWithIndex((group, j) {
                    if (j == groupIndex) {
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
        );
        dataRepository.renameGroup(collectionIndex, groupIndex, value);
      },
      orElse: () {},
    );
  }
}
