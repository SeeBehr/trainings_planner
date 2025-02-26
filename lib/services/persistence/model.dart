import 'package:hive/hive.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class HiveHomeModel extends HiveObject {
  HiveHomeModel({
    required this.collections,
    required this.trainingLength,
  });

  @HiveField(0)
  List<HiveCollectionModel> collections;
  @HiveField(1)
  int trainingLength;
}

@HiveType(typeId: 1)
class HiveCollectionModel extends HiveObject {
  HiveCollectionModel({
    required this.id,
    required this.name,
    required this.groups,
  });
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  List<HiveGroupModel> groups;
}

@HiveType(typeId: 2)
class HiveGroupModel extends HiveObject {
  HiveGroupModel({
    required this.id,
    required this.name,
    required this.exercises,
  });

  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  List<HiveExerciseModel> exercises;
}

@HiveType(typeId: 3)
class HiveExerciseModel extends HiveObject {
  HiveExerciseModel({
    required this.id,
    required this.name,
    required this.description,
    required this.material,
    required this.image,
    required this.difficulty,
    required this.training,
  });

  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? description;
  @HiveField(3)
  List<String> material;
  @HiveField(4)
  String? image;
  @HiveField(5)
  int difficulty;
  @HiveField(6)
  HiveTrainingModel training;
}

@HiveType(typeId: 4)
class HiveTrainingModel extends HiveObject {
  HiveTrainingModel({
    required this.index,
    required this.collectionIndex,
    required this.groupIndex,
    required this.exerciseIndex,
  });

  @HiveField(0)
  int index;
  @HiveField(1)
  int collectionIndex;
  @HiveField(2)
  int groupIndex;
  @HiveField(3)
  int exerciseIndex;
}
