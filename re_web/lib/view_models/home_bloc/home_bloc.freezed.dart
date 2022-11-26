// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeInitialized initialized() {
    return const HomeInitialized();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomeInitializedCopyWith<$Res> {
  factory $HomeInitializedCopyWith(
          HomeInitialized value, $Res Function(HomeInitialized) then) =
      _$HomeInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeInitializedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeInitializedCopyWith<$Res> {
  _$HomeInitializedCopyWithImpl(
      HomeInitialized _value, $Res Function(HomeInitialized) _then)
      : super(_value, (v) => _then(v as HomeInitialized));

  @override
  HomeInitialized get _value => super._value as HomeInitialized;
}

/// @nodoc

class _$HomeInitialized implements HomeInitialized {
  const _$HomeInitialized();

  @override
  String toString() {
    return 'HomeEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeInitialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class HomeInitialized implements HomeEvent {
  const factory HomeInitialized() = _$HomeInitialized;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      {List<House> recommendedHouses = const [],
      List<House> topHouses = const [],
      StateStatus status = const Idle()}) {
    return _HomeState(
      recommendedHouses: recommendedHouses,
      topHouses: topHouses,
      status: status,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  List<House> get recommendedHouses => throw _privateConstructorUsedError;
  List<House> get topHouses => throw _privateConstructorUsedError;
  StateStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {List<House> recommendedHouses,
      List<House> topHouses,
      StateStatus status});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? recommendedHouses = freezed,
    Object? topHouses = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      recommendedHouses: recommendedHouses == freezed
          ? _value.recommendedHouses
          : recommendedHouses // ignore: cast_nullable_to_non_nullable
              as List<House>,
      topHouses: topHouses == freezed
          ? _value.topHouses
          : topHouses // ignore: cast_nullable_to_non_nullable
              as List<House>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<House> recommendedHouses,
      List<House> topHouses,
      StateStatus status});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? recommendedHouses = freezed,
    Object? topHouses = freezed,
    Object? status = freezed,
  }) {
    return _then(_HomeState(
      recommendedHouses: recommendedHouses == freezed
          ? _value.recommendedHouses
          : recommendedHouses // ignore: cast_nullable_to_non_nullable
              as List<House>,
      topHouses: topHouses == freezed
          ? _value.topHouses
          : topHouses // ignore: cast_nullable_to_non_nullable
              as List<House>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.recommendedHouses = const [],
      this.topHouses = const [],
      this.status = const Idle()});

  @JsonKey()
  @override
  final List<House> recommendedHouses;
  @JsonKey()
  @override
  final List<House> topHouses;
  @JsonKey()
  @override
  final StateStatus status;

  @override
  String toString() {
    return 'HomeState(recommendedHouses: $recommendedHouses, topHouses: $topHouses, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.recommendedHouses, recommendedHouses) &&
            const DeepCollectionEquality().equals(other.topHouses, topHouses) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recommendedHouses),
      const DeepCollectionEquality().hash(topHouses),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {List<House> recommendedHouses,
      List<House> topHouses,
      StateStatus status}) = _$_HomeState;

  @override
  List<House> get recommendedHouses;
  @override
  List<House> get topHouses;
  @override
  StateStatus get status;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
