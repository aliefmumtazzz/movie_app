// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_popular_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviePopularState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieModel> data) success,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> data)? success,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePopularInitialState value) initial,
    required TResult Function(MoviePopularLoadingState value) loading,
    required TResult Function(MoviePopularSuccessState value) success,
    required TResult Function(MoviePopularErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePopularInitialState value)? initial,
    TResult? Function(MoviePopularLoadingState value)? loading,
    TResult? Function(MoviePopularSuccessState value)? success,
    TResult? Function(MoviePopularErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePopularInitialState value)? initial,
    TResult Function(MoviePopularLoadingState value)? loading,
    TResult Function(MoviePopularSuccessState value)? success,
    TResult Function(MoviePopularErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviePopularStateCopyWith<$Res> {
  factory $MoviePopularStateCopyWith(
          MoviePopularState value, $Res Function(MoviePopularState) then) =
      _$MoviePopularStateCopyWithImpl<$Res, MoviePopularState>;
}

/// @nodoc
class _$MoviePopularStateCopyWithImpl<$Res, $Val extends MoviePopularState>
    implements $MoviePopularStateCopyWith<$Res> {
  _$MoviePopularStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoviePopularInitialStateImplCopyWith<$Res> {
  factory _$$MoviePopularInitialStateImplCopyWith(
          _$MoviePopularInitialStateImpl value,
          $Res Function(_$MoviePopularInitialStateImpl) then) =
      __$$MoviePopularInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviePopularInitialStateImplCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res,
        _$MoviePopularInitialStateImpl>
    implements _$$MoviePopularInitialStateImplCopyWith<$Res> {
  __$$MoviePopularInitialStateImplCopyWithImpl(
      _$MoviePopularInitialStateImpl _value,
      $Res Function(_$MoviePopularInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviePopularInitialStateImpl implements MoviePopularInitialState {
  const _$MoviePopularInitialStateImpl();

  @override
  String toString() {
    return 'MoviePopularState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePopularInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieModel> data) success,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePopularInitialState value) initial,
    required TResult Function(MoviePopularLoadingState value) loading,
    required TResult Function(MoviePopularSuccessState value) success,
    required TResult Function(MoviePopularErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePopularInitialState value)? initial,
    TResult? Function(MoviePopularLoadingState value)? loading,
    TResult? Function(MoviePopularSuccessState value)? success,
    TResult? Function(MoviePopularErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePopularInitialState value)? initial,
    TResult Function(MoviePopularLoadingState value)? loading,
    TResult Function(MoviePopularSuccessState value)? success,
    TResult Function(MoviePopularErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MoviePopularInitialState implements MoviePopularState {
  const factory MoviePopularInitialState() = _$MoviePopularInitialStateImpl;
}

/// @nodoc
abstract class _$$MoviePopularLoadingStateImplCopyWith<$Res> {
  factory _$$MoviePopularLoadingStateImplCopyWith(
          _$MoviePopularLoadingStateImpl value,
          $Res Function(_$MoviePopularLoadingStateImpl) then) =
      __$$MoviePopularLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviePopularLoadingStateImplCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res,
        _$MoviePopularLoadingStateImpl>
    implements _$$MoviePopularLoadingStateImplCopyWith<$Res> {
  __$$MoviePopularLoadingStateImplCopyWithImpl(
      _$MoviePopularLoadingStateImpl _value,
      $Res Function(_$MoviePopularLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviePopularLoadingStateImpl implements MoviePopularLoadingState {
  const _$MoviePopularLoadingStateImpl();

  @override
  String toString() {
    return 'MoviePopularState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePopularLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieModel> data) success,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> data)? success,
    TResult Function(Exception error)? error,
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
    required TResult Function(MoviePopularInitialState value) initial,
    required TResult Function(MoviePopularLoadingState value) loading,
    required TResult Function(MoviePopularSuccessState value) success,
    required TResult Function(MoviePopularErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePopularInitialState value)? initial,
    TResult? Function(MoviePopularLoadingState value)? loading,
    TResult? Function(MoviePopularSuccessState value)? success,
    TResult? Function(MoviePopularErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePopularInitialState value)? initial,
    TResult Function(MoviePopularLoadingState value)? loading,
    TResult Function(MoviePopularSuccessState value)? success,
    TResult Function(MoviePopularErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviePopularLoadingState implements MoviePopularState {
  const factory MoviePopularLoadingState() = _$MoviePopularLoadingStateImpl;
}

/// @nodoc
abstract class _$$MoviePopularSuccessStateImplCopyWith<$Res> {
  factory _$$MoviePopularSuccessStateImplCopyWith(
          _$MoviePopularSuccessStateImpl value,
          $Res Function(_$MoviePopularSuccessStateImpl) then) =
      __$$MoviePopularSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieModel> data});
}

/// @nodoc
class __$$MoviePopularSuccessStateImplCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res,
        _$MoviePopularSuccessStateImpl>
    implements _$$MoviePopularSuccessStateImplCopyWith<$Res> {
  __$$MoviePopularSuccessStateImplCopyWithImpl(
      _$MoviePopularSuccessStateImpl _value,
      $Res Function(_$MoviePopularSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MoviePopularSuccessStateImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _$MoviePopularSuccessStateImpl implements MoviePopularSuccessState {
  const _$MoviePopularSuccessStateImpl(final List<MovieModel> data)
      : _data = data;

  final List<MovieModel> _data;
  @override
  List<MovieModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MoviePopularState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePopularSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePopularSuccessStateImplCopyWith<_$MoviePopularSuccessStateImpl>
      get copyWith => __$$MoviePopularSuccessStateImplCopyWithImpl<
          _$MoviePopularSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieModel> data) success,
    required TResult Function(Exception error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviePopularInitialState value) initial,
    required TResult Function(MoviePopularLoadingState value) loading,
    required TResult Function(MoviePopularSuccessState value) success,
    required TResult Function(MoviePopularErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePopularInitialState value)? initial,
    TResult? Function(MoviePopularLoadingState value)? loading,
    TResult? Function(MoviePopularSuccessState value)? success,
    TResult? Function(MoviePopularErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePopularInitialState value)? initial,
    TResult Function(MoviePopularLoadingState value)? loading,
    TResult Function(MoviePopularSuccessState value)? success,
    TResult Function(MoviePopularErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MoviePopularSuccessState implements MoviePopularState {
  const factory MoviePopularSuccessState(final List<MovieModel> data) =
      _$MoviePopularSuccessStateImpl;

  List<MovieModel> get data;
  @JsonKey(ignore: true)
  _$$MoviePopularSuccessStateImplCopyWith<_$MoviePopularSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviePopularErrorStateImplCopyWith<$Res> {
  factory _$$MoviePopularErrorStateImplCopyWith(
          _$MoviePopularErrorStateImpl value,
          $Res Function(_$MoviePopularErrorStateImpl) then) =
      __$$MoviePopularErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$MoviePopularErrorStateImplCopyWithImpl<$Res>
    extends _$MoviePopularStateCopyWithImpl<$Res, _$MoviePopularErrorStateImpl>
    implements _$$MoviePopularErrorStateImplCopyWith<$Res> {
  __$$MoviePopularErrorStateImplCopyWithImpl(
      _$MoviePopularErrorStateImpl _value,
      $Res Function(_$MoviePopularErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MoviePopularErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$MoviePopularErrorStateImpl implements MoviePopularErrorState {
  const _$MoviePopularErrorStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'MoviePopularState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviePopularErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviePopularErrorStateImplCopyWith<_$MoviePopularErrorStateImpl>
      get copyWith => __$$MoviePopularErrorStateImplCopyWithImpl<
          _$MoviePopularErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MovieModel> data) success,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MovieModel> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MovieModel> data)? success,
    TResult Function(Exception error)? error,
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
    required TResult Function(MoviePopularInitialState value) initial,
    required TResult Function(MoviePopularLoadingState value) loading,
    required TResult Function(MoviePopularSuccessState value) success,
    required TResult Function(MoviePopularErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviePopularInitialState value)? initial,
    TResult? Function(MoviePopularLoadingState value)? loading,
    TResult? Function(MoviePopularSuccessState value)? success,
    TResult? Function(MoviePopularErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviePopularInitialState value)? initial,
    TResult Function(MoviePopularLoadingState value)? loading,
    TResult Function(MoviePopularSuccessState value)? success,
    TResult Function(MoviePopularErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MoviePopularErrorState implements MoviePopularState {
  const factory MoviePopularErrorState(final Exception error) =
      _$MoviePopularErrorStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$MoviePopularErrorStateImplCopyWith<_$MoviePopularErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
