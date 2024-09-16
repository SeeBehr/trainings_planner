import 'package:hive/hive.dart';

part 'model.g.dart';

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
    required this.inTraining,
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
  bool inTraining;
}
