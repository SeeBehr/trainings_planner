// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_viewer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PdfViewerModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(pw.Document pdf) data,
    required TResult Function() loading,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(pw.Document pdf)? data,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(pw.Document pdf)? data,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PdfViewerModelData value) data,
    required TResult Function(_PdfViewerModelLoading value) loading,
    required TResult Function(_PdfViewerModelEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PdfViewerModelData value)? data,
    TResult? Function(_PdfViewerModelLoading value)? loading,
    TResult? Function(_PdfViewerModelEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PdfViewerModelData value)? data,
    TResult Function(_PdfViewerModelLoading value)? loading,
    TResult Function(_PdfViewerModelEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfViewerModelCopyWith<$Res> {
  factory $PdfViewerModelCopyWith(
          PdfViewerModel value, $Res Function(PdfViewerModel) then) =
      _$PdfViewerModelCopyWithImpl<$Res, PdfViewerModel>;
}

/// @nodoc
class _$PdfViewerModelCopyWithImpl<$Res, $Val extends PdfViewerModel>
    implements $PdfViewerModelCopyWith<$Res> {
  _$PdfViewerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PdfViewerModelDataImplCopyWith<$Res> {
  factory _$$PdfViewerModelDataImplCopyWith(_$PdfViewerModelDataImpl value,
          $Res Function(_$PdfViewerModelDataImpl) then) =
      __$$PdfViewerModelDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({pw.Document pdf});
}

/// @nodoc
class __$$PdfViewerModelDataImplCopyWithImpl<$Res>
    extends _$PdfViewerModelCopyWithImpl<$Res, _$PdfViewerModelDataImpl>
    implements _$$PdfViewerModelDataImplCopyWith<$Res> {
  __$$PdfViewerModelDataImplCopyWithImpl(_$PdfViewerModelDataImpl _value,
      $Res Function(_$PdfViewerModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdf = null,
  }) {
    return _then(_$PdfViewerModelDataImpl(
      pdf: null == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as pw.Document,
    ));
  }
}

/// @nodoc

class _$PdfViewerModelDataImpl implements _PdfViewerModelData {
  _$PdfViewerModelDataImpl({required this.pdf});

  @override
  final pw.Document pdf;

  @override
  String toString() {
    return 'PdfViewerModel.data(pdf: $pdf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfViewerModelDataImpl &&
            (identical(other.pdf, pdf) || other.pdf == pdf));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pdf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfViewerModelDataImplCopyWith<_$PdfViewerModelDataImpl> get copyWith =>
      __$$PdfViewerModelDataImplCopyWithImpl<_$PdfViewerModelDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(pw.Document pdf) data,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return data(pdf);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(pw.Document pdf)? data,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return data?.call(pdf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(pw.Document pdf)? data,
    TResult Function()? loading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(pdf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PdfViewerModelData value) data,
    required TResult Function(_PdfViewerModelLoading value) loading,
    required TResult Function(_PdfViewerModelEmpty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PdfViewerModelData value)? data,
    TResult? Function(_PdfViewerModelLoading value)? loading,
    TResult? Function(_PdfViewerModelEmpty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PdfViewerModelData value)? data,
    TResult Function(_PdfViewerModelLoading value)? loading,
    TResult Function(_PdfViewerModelEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _PdfViewerModelData implements PdfViewerModel {
  factory _PdfViewerModelData({required final pw.Document pdf}) =
      _$PdfViewerModelDataImpl;

  pw.Document get pdf;
  @JsonKey(ignore: true)
  _$$PdfViewerModelDataImplCopyWith<_$PdfViewerModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PdfViewerModelLoadingImplCopyWith<$Res> {
  factory _$$PdfViewerModelLoadingImplCopyWith(
          _$PdfViewerModelLoadingImpl value,
          $Res Function(_$PdfViewerModelLoadingImpl) then) =
      __$$PdfViewerModelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PdfViewerModelLoadingImplCopyWithImpl<$Res>
    extends _$PdfViewerModelCopyWithImpl<$Res, _$PdfViewerModelLoadingImpl>
    implements _$$PdfViewerModelLoadingImplCopyWith<$Res> {
  __$$PdfViewerModelLoadingImplCopyWithImpl(_$PdfViewerModelLoadingImpl _value,
      $Res Function(_$PdfViewerModelLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PdfViewerModelLoadingImpl implements _PdfViewerModelLoading {
  _$PdfViewerModelLoadingImpl();

  @override
  String toString() {
    return 'PdfViewerModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfViewerModelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(pw.Document pdf) data,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(pw.Document pdf)? data,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(pw.Document pdf)? data,
    TResult Function()? loading,
    TResult Function()? empty,
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
    required TResult Function(_PdfViewerModelData value) data,
    required TResult Function(_PdfViewerModelLoading value) loading,
    required TResult Function(_PdfViewerModelEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PdfViewerModelData value)? data,
    TResult? Function(_PdfViewerModelLoading value)? loading,
    TResult? Function(_PdfViewerModelEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PdfViewerModelData value)? data,
    TResult Function(_PdfViewerModelLoading value)? loading,
    TResult Function(_PdfViewerModelEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PdfViewerModelLoading implements PdfViewerModel {
  factory _PdfViewerModelLoading() = _$PdfViewerModelLoadingImpl;
}

/// @nodoc
abstract class _$$PdfViewerModelEmptyImplCopyWith<$Res> {
  factory _$$PdfViewerModelEmptyImplCopyWith(_$PdfViewerModelEmptyImpl value,
          $Res Function(_$PdfViewerModelEmptyImpl) then) =
      __$$PdfViewerModelEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PdfViewerModelEmptyImplCopyWithImpl<$Res>
    extends _$PdfViewerModelCopyWithImpl<$Res, _$PdfViewerModelEmptyImpl>
    implements _$$PdfViewerModelEmptyImplCopyWith<$Res> {
  __$$PdfViewerModelEmptyImplCopyWithImpl(_$PdfViewerModelEmptyImpl _value,
      $Res Function(_$PdfViewerModelEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PdfViewerModelEmptyImpl implements _PdfViewerModelEmpty {
  _$PdfViewerModelEmptyImpl();

  @override
  String toString() {
    return 'PdfViewerModel.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfViewerModelEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(pw.Document pdf) data,
    required TResult Function() loading,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(pw.Document pdf)? data,
    TResult? Function()? loading,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(pw.Document pdf)? data,
    TResult Function()? loading,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_PdfViewerModelData value) data,
    required TResult Function(_PdfViewerModelLoading value) loading,
    required TResult Function(_PdfViewerModelEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PdfViewerModelData value)? data,
    TResult? Function(_PdfViewerModelLoading value)? loading,
    TResult? Function(_PdfViewerModelEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PdfViewerModelData value)? data,
    TResult Function(_PdfViewerModelLoading value)? loading,
    TResult Function(_PdfViewerModelEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _PdfViewerModelEmpty implements PdfViewerModel {
  factory _PdfViewerModelEmpty() = _$PdfViewerModelEmptyImpl;
}
