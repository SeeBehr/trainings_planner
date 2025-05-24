// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveHomeModelAdapter extends TypeAdapter<HiveHomeModel> {
  @override
  final int typeId = 0;

  @override
  HiveHomeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveHomeModel(
      collections: (fields[0] as List).cast<HiveCollectionModel>(),
      trainingLength: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveHomeModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.collections)
      ..writeByte(1)
      ..write(obj.trainingLength);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveHomeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveCollectionModelAdapter extends TypeAdapter<HiveCollectionModel> {
  @override
  final int typeId = 1;

  @override
  HiveCollectionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCollectionModel(
      id: fields[0] as String,
      name: fields[1] as String,
      groups: (fields[2] as List).cast<HiveGroupModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveCollectionModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.groups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveCollectionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveGroupModelAdapter extends TypeAdapter<HiveGroupModel> {
  @override
  final int typeId = 2;

  @override
  HiveGroupModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveGroupModel(
      id: fields[0] as String,
      name: fields[1] as String,
      exercises: (fields[2] as List).cast<HiveExerciseModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveGroupModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.exercises);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveGroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveExerciseModelAdapter extends TypeAdapter<HiveExerciseModel> {
  @override
  final int typeId = 3;

  @override
  HiveExerciseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveExerciseModel(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String?,
      material: (fields[3] as List).cast<String>(),
      image: fields[4] as String?,
      difficulty: fields[5] as int,
      training: fields[6] as HiveTrainingModel,
    );
  }

  @override
  void write(BinaryWriter writer, HiveExerciseModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.material)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.difficulty)
      ..writeByte(6)
      ..write(obj.training);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveExerciseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveTrainingModelAdapter extends TypeAdapter<HiveTrainingModel> {
  @override
  final int typeId = 4;

  @override
  HiveTrainingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveTrainingModel(
      index: fields[0] as int,
      collectionIndex: fields[1] as int,
      groupIndex: fields[2] as int,
      exerciseIndex: fields[3] as int,
      duration: fields[4] as int,
      notes: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveTrainingModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.collectionIndex)
      ..writeByte(2)
      ..write(obj.groupIndex)
      ..writeByte(3)
      ..write(obj.exerciseIndex)
      ..writeByte(4)
      ..write(obj.duration)
      ..writeByte(5)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveTrainingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
