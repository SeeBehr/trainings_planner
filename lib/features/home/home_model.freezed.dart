// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)
        data,
    required TResult Function(TrainingsPlannerError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult? Function(TrainingsPlannerError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult Function(TrainingsPlannerError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelLoading value) loading,
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelLoading value)? loading,
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelLoading value)? loading,
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeModelLoadingImplCopyWith<$Res> {
  factory _$$HomeModelLoadingImplCopyWith(_$HomeModelLoadingImpl value,
          $Res Function(_$HomeModelLoadingImpl) then) =
      __$$HomeModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeModelLoadingImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelLoadingImpl>
    implements _$$HomeModelLoadingImplCopyWith<$Res> {
  __$$HomeModelLoadingImplCopyWithImpl(_$HomeModelLoadingImpl _value,
      $Res Function(_$HomeModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeModelLoadingImpl implements HomeModelLoading {
  _$HomeModelLoadingImpl();

  @override
  String toString() {
    return 'HomeModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)
        data,
    required TResult Function(TrainingsPlannerError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult? Function(TrainingsPlannerError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult Function(TrainingsPlannerError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelLoading value) loading,
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelLoading value)? loading,
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelLoading value)? loading,
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeModelLoading implements HomeModel {
  factory HomeModelLoading() = _$HomeModelLoadingImpl;
}

/// @nodoc
abstract class _$$HomeModelDataImplCopyWith<$Res> {
  factory _$$HomeModelDataImplCopyWith(
          _$HomeModelDataImpl value, $Res Function(_$HomeModelDataImpl) then) =
      __$$HomeModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int activeCollection,
      int activeExercise,
      List<HomeModelCollection> collections});
}

/// @nodoc
class __$$HomeModelDataImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelDataImpl>
    implements _$$HomeModelDataImplCopyWith<$Res> {
  __$$HomeModelDataImplCopyWithImpl(
      _$HomeModelDataImpl _value, $Res Function(_$HomeModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCollection = null,
    Object? activeExercise = null,
    Object? collections = null,
  }) {
    return _then(_$HomeModelDataImpl(
      activeCollection: null == activeCollection
          ? _value.activeCollection
          : activeCollection // ignore: cast_nullable_to_non_nullable
              as int,
      activeExercise: null == activeExercise
          ? _value.activeExercise
          : activeExercise // ignore: cast_nullable_to_non_nullable
              as int,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<HomeModelCollection>,
    ));
  }
}

/// @nodoc

class _$HomeModelDataImpl implements HomeModelData {
  _$HomeModelDataImpl(
      {required this.activeCollection,
      required this.activeExercise,
      required final List<HomeModelCollection> collections})
      : _collections = collections;

  @override
  final int activeCollection;
  @override
  final int activeExercise;
  final List<HomeModelCollection> _collections;
  @override
  List<HomeModelCollection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  String toString() {
    return 'HomeModel.data(activeCollection: $activeCollection, activeExercise: $activeExercise, collections: $collections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelDataImpl &&
            (identical(other.activeCollection, activeCollection) ||
                other.activeCollection == activeCollection) &&
            (identical(other.activeExercise, activeExercise) ||
                other.activeExercise == activeExercise) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCollection, activeExercise,
      const DeepCollectionEquality().hash(_collections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      __$$HomeModelDataImplCopyWithImpl<_$HomeModelDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)
        data,
    required TResult Function(TrainingsPlannerError error) error,
  }) {
    return data(activeCollection, activeExercise, collections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult? Function(TrainingsPlannerError error)? error,
  }) {
    return data?.call(activeCollection, activeExercise, collections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult Function(TrainingsPlannerError error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(activeCollection, activeExercise, collections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelLoading value) loading,
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelLoading value)? loading,
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelLoading value)? loading,
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeModelData implements HomeModel {
  factory HomeModelData(
          {required final int activeCollection,
          required final int activeExercise,
          required final List<HomeModelCollection> collections}) =
      _$HomeModelDataImpl;

  int get activeCollection;
  int get activeExercise;
  List<HomeModelCollection> get collections;
  @JsonKey(ignore: true)
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeModelErrorImplCopyWith<$Res> {
  factory _$$HomeModelErrorImplCopyWith(_$HomeModelErrorImpl value,
          $Res Function(_$HomeModelErrorImpl) then) =
      __$$HomeModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrainingsPlannerError error});
}

/// @nodoc
class __$$HomeModelErrorImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelErrorImpl>
    implements _$$HomeModelErrorImplCopyWith<$Res> {
  __$$HomeModelErrorImplCopyWithImpl(
      _$HomeModelErrorImpl _value, $Res Function(_$HomeModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeModelErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TrainingsPlannerError,
    ));
  }
}

/// @nodoc

class _$HomeModelErrorImpl implements HomeModelError {
  _$HomeModelErrorImpl({required this.error});

  @override
  final TrainingsPlannerError error;

  @override
  String toString() {
    return 'HomeModel.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelErrorImplCopyWith<_$HomeModelErrorImpl> get copyWith =>
      __$$HomeModelErrorImplCopyWithImpl<_$HomeModelErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)
        data,
    required TResult Function(TrainingsPlannerError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult? Function(TrainingsPlannerError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int activeCollection, int activeExercise,
            List<HomeModelCollection> collections)?
        data,
    TResult Function(TrainingsPlannerError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeModelLoading value) loading,
    required TResult Function(HomeModelData value) data,
    required TResult Function(HomeModelError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeModelLoading value)? loading,
    TResult? Function(HomeModelData value)? data,
    TResult? Function(HomeModelError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeModelLoading value)? loading,
    TResult Function(HomeModelData value)? data,
    TResult Function(HomeModelError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeModelError implements HomeModel {
  factory HomeModelError({required final TrainingsPlannerError error}) =
      _$HomeModelErrorImpl;

  TrainingsPlannerError get error;
  @JsonKey(ignore: true)
  _$$HomeModelErrorImplCopyWith<_$HomeModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelCollection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<HomeModelExercise> get exercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelCollectionCopyWith<HomeModelCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCollectionCopyWith<$Res> {
  factory $HomeModelCollectionCopyWith(
          HomeModelCollection value, $Res Function(HomeModelCollection) then) =
      _$HomeModelCollectionCopyWithImpl<$Res, HomeModelCollection>;
  @useResult
  $Res call({String id, String name, List<HomeModelExercise> exercises});
}

/// @nodoc
class _$HomeModelCollectionCopyWithImpl<$Res, $Val extends HomeModelCollection>
    implements $HomeModelCollectionCopyWith<$Res> {
  _$HomeModelCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<HomeModelExercise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelCollectionImplCopyWith<$Res>
    implements $HomeModelCollectionCopyWith<$Res> {
  factory _$$HomeModelCollectionImplCopyWith(_$HomeModelCollectionImpl value,
          $Res Function(_$HomeModelCollectionImpl) then) =
      __$$HomeModelCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<HomeModelExercise> exercises});
}

/// @nodoc
class __$$HomeModelCollectionImplCopyWithImpl<$Res>
    extends _$HomeModelCollectionCopyWithImpl<$Res, _$HomeModelCollectionImpl>
    implements _$$HomeModelCollectionImplCopyWith<$Res> {
  __$$HomeModelCollectionImplCopyWithImpl(_$HomeModelCollectionImpl _value,
      $Res Function(_$HomeModelCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
  }) {
    return _then(_$HomeModelCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<HomeModelExercise>,
    ));
  }
}

/// @nodoc

class _$HomeModelCollectionImpl implements _HomeModelCollection {
  _$HomeModelCollectionImpl(
      {required this.id,
      required this.name,
      required final List<HomeModelExercise> exercises})
      : _exercises = exercises;

  @override
  final String id;
  @override
  final String name;
  final List<HomeModelExercise> _exercises;
  @override
  List<HomeModelExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString() {
    return 'HomeModelCollection(id: $id, name: $name, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._exercises, _exercises));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelCollectionImplCopyWith<_$HomeModelCollectionImpl> get copyWith =>
      __$$HomeModelCollectionImplCopyWithImpl<_$HomeModelCollectionImpl>(
          this, _$identity);
}

abstract class _HomeModelCollection implements HomeModelCollection {
  factory _HomeModelCollection(
          {required final String id,
          required final String name,
          required final List<HomeModelExercise> exercises}) =
      _$HomeModelCollectionImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<HomeModelExercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelCollectionImplCopyWith<_$HomeModelCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelExercise {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String> get material => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  bool get inTraining => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelExerciseCopyWith<HomeModelExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelExerciseCopyWith<$Res> {
  factory $HomeModelExerciseCopyWith(
          HomeModelExercise value, $Res Function(HomeModelExercise) then) =
      _$HomeModelExerciseCopyWithImpl<$Res, HomeModelExercise>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<String> material,
      String? image,
      int difficulty,
      bool inTraining});
}

/// @nodoc
class _$HomeModelExerciseCopyWithImpl<$Res, $Val extends HomeModelExercise>
    implements $HomeModelExerciseCopyWith<$Res> {
  _$HomeModelExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? material = null,
    Object? image = freezed,
    Object? difficulty = null,
    Object? inTraining = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      material: null == material
          ? _value.material
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelExerciseImplCopyWith<$Res>
    implements $HomeModelExerciseCopyWith<$Res> {
  factory _$$HomeModelExerciseImplCopyWith(_$HomeModelExerciseImpl value,
          $Res Function(_$HomeModelExerciseImpl) then) =
      __$$HomeModelExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      List<String> material,
      String? image,
      int difficulty,
      bool inTraining});
}

/// @nodoc
class __$$HomeModelExerciseImplCopyWithImpl<$Res>
    extends _$HomeModelExerciseCopyWithImpl<$Res, _$HomeModelExerciseImpl>
    implements _$$HomeModelExerciseImplCopyWith<$Res> {
  __$$HomeModelExerciseImplCopyWithImpl(_$HomeModelExerciseImpl _value,
      $Res Function(_$HomeModelExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? material = null,
    Object? image = freezed,
    Object? difficulty = null,
    Object? inTraining = null,
  }) {
    return _then(_$HomeModelExerciseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$HomeModelExerciseImpl implements _HomeModelExercise {
  _$HomeModelExerciseImpl(
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
  final String? description;
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
    return 'HomeModelExercise(id: $id, name: $name, description: $description, material: $material, image: $image, difficulty: $difficulty, inTraining: $inTraining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelExerciseImpl &&
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
  _$$HomeModelExerciseImplCopyWith<_$HomeModelExerciseImpl> get copyWith =>
      __$$HomeModelExerciseImplCopyWithImpl<_$HomeModelExerciseImpl>(
          this, _$identity);
}

abstract class _HomeModelExercise implements HomeModelExercise {
  factory _HomeModelExercise(
      {required final String id,
      required final String name,
      required final String? description,
      required final List<String> material,
      required final String? image,
      required final int difficulty,
      required final bool inTraining}) = _$HomeModelExerciseImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<String> get material;
  @override
  String? get image;
  @override
  int get difficulty;
  @override
  bool get inTraining;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelExerciseImplCopyWith<_$HomeModelExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
