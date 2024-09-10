// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditExerciseModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditExerciseModel value) $default, {
    required TResult Function(_EditExerciseModelEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditExerciseModel value)? $default, {
    TResult? Function(_EditExerciseModelEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditExerciseModel value)? $default, {
    TResult Function(_EditExerciseModelEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditExerciseModelCopyWith<$Res> {
  factory $EditExerciseModelCopyWith(
          EditExerciseModel value, $Res Function(EditExerciseModel) then) =
      _$EditExerciseModelCopyWithImpl<$Res, EditExerciseModel>;
}

/// @nodoc
class _$EditExerciseModelCopyWithImpl<$Res, $Val extends EditExerciseModel>
    implements $EditExerciseModelCopyWith<$Res> {
  _$EditExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditExerciseModelImplCopyWith<$Res> {
  factory _$$EditExerciseModelImplCopyWith(_$EditExerciseModelImpl value,
          $Res Function(_$EditExerciseModelImpl) then) =
      __$$EditExerciseModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<String> material,
      String? image,
      int difficulty,
      bool inTraining});
}

/// @nodoc
class __$$EditExerciseModelImplCopyWithImpl<$Res>
    extends _$EditExerciseModelCopyWithImpl<$Res, _$EditExerciseModelImpl>
    implements _$$EditExerciseModelImplCopyWith<$Res> {
  __$$EditExerciseModelImplCopyWithImpl(_$EditExerciseModelImpl _value,
      $Res Function(_$EditExerciseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? material = null,
    Object? image = freezed,
    Object? difficulty = null,
    Object? inTraining = null,
  }) {
    return _then(_$EditExerciseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      material: null == material
          ? _value._material
          : material // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      inTraining: null == inTraining
          ? _value.inTraining
          : inTraining // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditExerciseModelImpl implements _EditExerciseModel {
  _$EditExerciseModelImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<String> material,
      required this.image,
      required this.difficulty,
      required this.inTraining})
      : _material = material;

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<String> _material;
  @override
  List<String> get material {
    if (_material is EqualUnmodifiableListView) return _material;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_material);
  }

  @override
  final String? image;
  @override
  final int difficulty;
  @override
  final bool inTraining;

  @override
  String toString() {
    return 'EditExerciseModel(id: $id, name: $name, description: $description, material: $material, image: $image, difficulty: $difficulty, inTraining: $inTraining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditExerciseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._material, _material) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.inTraining, inTraining) ||
                other.inTraining == inTraining));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_material),
      image,
      difficulty,
      inTraining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditExerciseModelImplCopyWith<_$EditExerciseModelImpl> get copyWith =>
      __$$EditExerciseModelImplCopyWithImpl<_$EditExerciseModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(
        id, name, description, material, image, difficulty, inTraining);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(
        id, name, description, material, image, difficulty, inTraining);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, name, description, material, image, difficulty, inTraining);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditExerciseModel value) $default, {
    required TResult Function(_EditExerciseModelEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditExerciseModel value)? $default, {
    TResult? Function(_EditExerciseModelEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditExerciseModel value)? $default, {
    TResult Function(_EditExerciseModelEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _EditExerciseModel implements EditExerciseModel {
  factory _EditExerciseModel(
      {required final String id,
      required final String name,
      required final String description,
      required final List<String> material,
      required final String? image,
      required final int difficulty,
      required final bool inTraining}) = _$EditExerciseModelImpl;

  String get id;
  String get name;
  String get description;
  List<String> get material;
  String? get image;
  int get difficulty;
  bool get inTraining;
  @JsonKey(ignore: true)
  _$$EditExerciseModelImplCopyWith<_$EditExerciseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditExerciseModelEmptyImplCopyWith<$Res> {
  factory _$$EditExerciseModelEmptyImplCopyWith(
          _$EditExerciseModelEmptyImpl value,
          $Res Function(_$EditExerciseModelEmptyImpl) then) =
      __$$EditExerciseModelEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditExerciseModelEmptyImplCopyWithImpl<$Res>
    extends _$EditExerciseModelCopyWithImpl<$Res, _$EditExerciseModelEmptyImpl>
    implements _$$EditExerciseModelEmptyImplCopyWith<$Res> {
  __$$EditExerciseModelEmptyImplCopyWithImpl(
      _$EditExerciseModelEmptyImpl _value,
      $Res Function(_$EditExerciseModelEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditExerciseModelEmptyImpl implements _EditExerciseModelEmpty {
  _$EditExerciseModelEmptyImpl();

  @override
  String toString() {
    return 'EditExerciseModel.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditExerciseModelEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String name,
            String description,
            List<String> material,
            String? image,
            int difficulty,
            bool inTraining)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EditExerciseModel value) $default, {
    required TResult Function(_EditExerciseModelEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EditExerciseModel value)? $default, {
    TResult? Function(_EditExerciseModelEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EditExerciseModel value)? $default, {
    TResult Function(_EditExerciseModelEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EditExerciseModelEmpty implements EditExerciseModel {
  factory _EditExerciseModelEmpty() = _$EditExerciseModelEmptyImpl;
}
