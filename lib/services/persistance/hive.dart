import 'package:hive/hive.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/services/persistance/interface.dart';
import 'package:trainings_planner/services/persistance/model.dart';

class HivePersistanceService implements PersistenceService {
  final String _boxName = 'trainings_planner';
  Future<Box<HiveCollectionModel>> get _box async =>
      Hive.openBox<HiveCollectionModel>(_boxName);

  @override
  Future<void> saveData(List<HomeModelCollection> data) async {
    await (await _box).clear();
    await (await _box).addAll(data.map(_toHiveModelCollection));
  }

  @override
  Future<List<HomeModelCollection>> loadData() async {
    return (await _box).values.map(_toHomeModelCollection).toList();
  }

  HiveCollectionModel _toHiveModelCollection(HomeModelCollection data) {
    return HiveCollectionModel(
      id: data.id,
      name: data.name,
      groups: data.groups.map(_toHiveModelGroup).toList(),
    );
  }

  HiveGroupModel _toHiveModelGroup(HomeModelGroup data) {
    return HiveGroupModel(
      id: data.id,
      name: data.name,
      exercises: data.exercises.map(_toHiveModelExercise).toList(),
    );
  }

  HiveExerciseModel _toHiveModelExercise(HomeModelExercise data) {
    return HiveExerciseModel(
      id: data.id,
      name: data.name,
      description: data.description,
      material: data.material,
      image: data.image,
      difficulty: data.difficulty,
      inTraining: data.inTraining,
    );
  }

  HomeModelCollection _toHomeModelCollection(HiveCollectionModel data) {
    return HomeModelCollection(
      id: data.id,
      name: data.name,
      groups: data.groups.map(_toHomeModelGroup).toList(),
    );
  }

  HomeModelGroup _toHomeModelGroup(HiveGroupModel data) {
    return HomeModelGroup(
      id: data.id,
      name: data.name,
      exercises: data.exercises.map(_toHomeModelExercise).toList(),
    );
  }

  HomeModelExercise _toHomeModelExercise(HiveExerciseModel data) {
    return HomeModelExercise(
      id: data.id,
      name: data.name,
      description: data.description,
      material: data.material,
      image: data.image,
      difficulty: data.difficulty,
      inTraining: data.inTraining,
    );
  }
}
