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
mixin _$HomeModelIndex {
  int get collection => throw _privateConstructorUsedError;
  int get group => throw _privateConstructorUsedError;
  int get exercise => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelIndexCopyWith<HomeModelIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelIndexCopyWith<$Res> {
  factory $HomeModelIndexCopyWith(
          HomeModelIndex value, $Res Function(HomeModelIndex) then) =
      _$HomeModelIndexCopyWithImpl<$Res, HomeModelIndex>;
  @useResult
  $Res call({int collection, int group, int exercise});
}

/// @nodoc
class _$HomeModelIndexCopyWithImpl<$Res, $Val extends HomeModelIndex>
    implements $HomeModelIndexCopyWith<$Res> {
  _$HomeModelIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? group = null,
    Object? exercise = null,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeModelIndexImplCopyWith<$Res>
    implements $HomeModelIndexCopyWith<$Res> {
  factory _$$HomeModelIndexImplCopyWith(_$HomeModelIndexImpl value,
          $Res Function(_$HomeModelIndexImpl) then) =
      __$$HomeModelIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int collection, int group, int exercise});
}

/// @nodoc
class __$$HomeModelIndexImplCopyWithImpl<$Res>
    extends _$HomeModelIndexCopyWithImpl<$Res, _$HomeModelIndexImpl>
    implements _$$HomeModelIndexImplCopyWith<$Res> {
  __$$HomeModelIndexImplCopyWithImpl(
      _$HomeModelIndexImpl _value, $Res Function(_$HomeModelIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? group = null,
    Object? exercise = null,
  }) {
    return _then(_$HomeModelIndexImpl(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as int,
      exercise: null == exercise
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeModelIndexImpl implements _HomeModelIndex {
  _$HomeModelIndexImpl(
      {required this.collection, required this.group, required this.exercise});

  @override
  final int collection;
  @override
  final int group;
  @override
  final int exercise;

  @override
  String toString() {
    return 'HomeModelIndex(collection: $collection, group: $group, exercise: $exercise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelIndexImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collection, group, exercise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelIndexImplCopyWith<_$HomeModelIndexImpl> get copyWith =>
      __$$HomeModelIndexImplCopyWithImpl<_$HomeModelIndexImpl>(
          this, _$identity);
}

abstract class _HomeModelIndex implements HomeModelIndex {
  factory _HomeModelIndex(
      {required final int collection,
      required final int group,
      required final int exercise}) = _$HomeModelIndexImpl;

  @override
  int get collection;
  @override
  int get group;
  @override
  int get exercise;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelIndexImplCopyWith<_$HomeModelIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            HomeModelIndex activeIndex,
            HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections,
            int trainingLength)
        data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult Function(String error)? error,
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
    required TResult Function(
            HomeModelIndex activeIndex,
            HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections,
            int trainingLength)
        data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult Function(String error)? error,
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
      {HomeModelIndex activeIndex,
      HomeModelIndex displayedIndex,
      List<HomeModelCollection> collections,
      int trainingLength});

  $HomeModelIndexCopyWith<$Res> get activeIndex;
  $HomeModelIndexCopyWith<$Res> get displayedIndex;
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
    Object? activeIndex = null,
    Object? displayedIndex = null,
    Object? collections = null,
    Object? trainingLength = null,
  }) {
    return _then(_$HomeModelDataImpl(
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as HomeModelIndex,
      displayedIndex: null == displayedIndex
          ? _value.displayedIndex
          : displayedIndex // ignore: cast_nullable_to_non_nullable
              as HomeModelIndex,
      collections: null == collections
          ? _value._collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<HomeModelCollection>,
      trainingLength: null == trainingLength
          ? _value.trainingLength
          : trainingLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelIndexCopyWith<$Res> get activeIndex {
    return $HomeModelIndexCopyWith<$Res>(_value.activeIndex, (value) {
      return _then(_value.copyWith(activeIndex: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelIndexCopyWith<$Res> get displayedIndex {
    return $HomeModelIndexCopyWith<$Res>(_value.displayedIndex, (value) {
      return _then(_value.copyWith(displayedIndex: value));
    });
  }
}

/// @nodoc

class _$HomeModelDataImpl implements HomeModelData {
  _$HomeModelDataImpl(
      {required this.activeIndex,
      required this.displayedIndex,
      required final List<HomeModelCollection> collections,
      required this.trainingLength})
      : _collections = collections;

  @override
  final HomeModelIndex activeIndex;
  @override
  final HomeModelIndex displayedIndex;
  final List<HomeModelCollection> _collections;
  @override
  List<HomeModelCollection> get collections {
    if (_collections is EqualUnmodifiableListView) return _collections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collections);
  }

  @override
  final int trainingLength;

  @override
  String toString() {
    return 'HomeModel.data(activeIndex: $activeIndex, displayedIndex: $displayedIndex, collections: $collections, trainingLength: $trainingLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelDataImpl &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex) &&
            (identical(other.displayedIndex, displayedIndex) ||
                other.displayedIndex == displayedIndex) &&
            const DeepCollectionEquality()
                .equals(other._collections, _collections) &&
            (identical(other.trainingLength, trainingLength) ||
                other.trainingLength == trainingLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeIndex, displayedIndex,
      const DeepCollectionEquality().hash(_collections), trainingLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelDataImplCopyWith<_$HomeModelDataImpl> get copyWith =>
      __$$HomeModelDataImplCopyWithImpl<_$HomeModelDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            HomeModelIndex activeIndex,
            HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections,
            int trainingLength)
        data,
    required TResult Function(String error) error,
  }) {
    return data(activeIndex, displayedIndex, collections, trainingLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult? Function(String error)? error,
  }) {
    return data?.call(activeIndex, displayedIndex, collections, trainingLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(activeIndex, displayedIndex, collections, trainingLength);
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
      {required final HomeModelIndex activeIndex,
      required final HomeModelIndex displayedIndex,
      required final List<HomeModelCollection> collections,
      required final int trainingLength}) = _$HomeModelDataImpl;

  HomeModelIndex get activeIndex;
  HomeModelIndex get displayedIndex;
  List<HomeModelCollection> get collections;
  int get trainingLength;
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
  $Res call({String error});
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
              as String,
    ));
  }
}

/// @nodoc

class _$HomeModelErrorImpl implements HomeModelError {
  _$HomeModelErrorImpl({required this.error});

  @override
  final String error;

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
    required TResult Function(
            HomeModelIndex activeIndex,
            HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections,
            int trainingLength)
        data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeModelIndex activeIndex, HomeModelIndex displayedIndex,
            List<HomeModelCollection> collections, int trainingLength)?
        data,
    TResult Function(String error)? error,
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
  factory HomeModelError({required final String error}) = _$HomeModelErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$HomeModelErrorImplCopyWith<_$HomeModelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelCollection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<HomeModelGroup> get groups => throw _privateConstructorUsedError;

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
  $Res call({String id, String name, List<HomeModelGroup> groups});
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
    Object? groups = null,
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
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<HomeModelGroup>,
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
  $Res call({String id, String name, List<HomeModelGroup> groups});
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
    Object? groups = null,
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
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<HomeModelGroup>,
    ));
  }
}

/// @nodoc

class _$HomeModelCollectionImpl implements _HomeModelCollection {
  _$HomeModelCollectionImpl(
      {required this.id,
      required this.name,
      required final List<HomeModelGroup> groups})
      : _groups = groups;

  @override
  final String id;
  @override
  final String name;
  final List<HomeModelGroup> _groups;
  @override
  List<HomeModelGroup> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'HomeModelCollection(id: $id, name: $name, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_groups));

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
      required final List<HomeModelGroup> groups}) = _$HomeModelCollectionImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<HomeModelGroup> get groups;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelCollectionImplCopyWith<_$HomeModelCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeModelGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<HomeModelExercise> get exercises => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelGroupCopyWith<HomeModelGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelGroupCopyWith<$Res> {
  factory $HomeModelGroupCopyWith(
          HomeModelGroup value, $Res Function(HomeModelGroup) then) =
      _$HomeModelGroupCopyWithImpl<$Res, HomeModelGroup>;
  @useResult
  $Res call({String id, String name, List<HomeModelExercise> exercises});
}

/// @nodoc
class _$HomeModelGroupCopyWithImpl<$Res, $Val extends HomeModelGroup>
    implements $HomeModelGroupCopyWith<$Res> {
  _$HomeModelGroupCopyWithImpl(this._value, this._then);

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
abstract class _$$HomeModelGroupImplCopyWith<$Res>
    implements $HomeModelGroupCopyWith<$Res> {
  factory _$$HomeModelGroupImplCopyWith(_$HomeModelGroupImpl value,
          $Res Function(_$HomeModelGroupImpl) then) =
      __$$HomeModelGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<HomeModelExercise> exercises});
}

/// @nodoc
class __$$HomeModelGroupImplCopyWithImpl<$Res>
    extends _$HomeModelGroupCopyWithImpl<$Res, _$HomeModelGroupImpl>
    implements _$$HomeModelGroupImplCopyWith<$Res> {
  __$$HomeModelGroupImplCopyWithImpl(
      _$HomeModelGroupImpl _value, $Res Function(_$HomeModelGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? exercises = null,
  }) {
    return _then(_$HomeModelGroupImpl(
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

class _$HomeModelGroupImpl implements _HomeModelGroup {
  _$HomeModelGroupImpl(
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
    return 'HomeModelGroup(id: $id, name: $name, exercises: $exercises)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelGroupImpl &&
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
  _$$HomeModelGroupImplCopyWith<_$HomeModelGroupImpl> get copyWith =>
      __$$HomeModelGroupImplCopyWithImpl<_$HomeModelGroupImpl>(
          this, _$identity);
}

abstract class _HomeModelGroup implements HomeModelGroup {
  factory _HomeModelGroup(
      {required final String id,
      required final String name,
      required final List<HomeModelExercise> exercises}) = _$HomeModelGroupImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<HomeModelExercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelGroupImplCopyWith<_$HomeModelGroupImpl> get copyWith =>
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
  Training get training => throw _privateConstructorUsedError;

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
      Training training});
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
    Object? training = null,
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
      training: null == training
          ? _value.training
          : training // ignore: cast_nullable_to_non_nullable
              as Training,
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
      Training training});
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
    Object? training = null,
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
      training: null == training
          ? _value.training
          : training // ignore: cast_nullable_to_non_nullable
              as Training,
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
      this.training = const Training.none()})
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
  @JsonKey()
  final Training training;

  @override
  String toString() {
    return 'HomeModelExercise(id: $id, name: $name, description: $description, material: $material, image: $image, difficulty: $difficulty, training: $training)';
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
            (identical(other.training, training) ||
                other.training == training));
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
      training);

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
      final Training training}) = _$HomeModelExerciseImpl;

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
  Training get training;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelExerciseImplCopyWith<_$HomeModelExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
