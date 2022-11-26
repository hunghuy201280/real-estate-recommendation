// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

House _$HouseFromJson(Map<String, dynamic> json) {
  return _House.fromJson(json);
}

/// @nodoc
class _$HouseTearOff {
  const _$HouseTearOff();

  _House call(
      {String id = "",
      String itemId = "",
      double deposit = 0,
      double monthlyRent = 0,
      String districtUuid = "",
      int roomQty = 0,
      double unitArea = 0,
      double unitFloor = 0,
      bool hasElevator = false,
      int buildingFloorCount = 0,
      bool hasStorageArea = false,
      int propertyAge = 0}) {
    return _House(
      id: id,
      itemId: itemId,
      deposit: deposit,
      monthlyRent: monthlyRent,
      districtUuid: districtUuid,
      roomQty: roomQty,
      unitArea: unitArea,
      unitFloor: unitFloor,
      hasElevator: hasElevator,
      buildingFloorCount: buildingFloorCount,
      hasStorageArea: hasStorageArea,
      propertyAge: propertyAge,
    );
  }

  House fromJson(Map<String, Object?> json) {
    return House.fromJson(json);
  }
}

/// @nodoc
const $House = _$HouseTearOff();

/// @nodoc
mixin _$House {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  double get deposit => throw _privateConstructorUsedError;
  double get monthlyRent => throw _privateConstructorUsedError;
  String get districtUuid => throw _privateConstructorUsedError;
  int get roomQty => throw _privateConstructorUsedError;
  double get unitArea => throw _privateConstructorUsedError;
  double get unitFloor => throw _privateConstructorUsedError;
  bool get hasElevator => throw _privateConstructorUsedError;
  int get buildingFloorCount => throw _privateConstructorUsedError;
  bool get hasStorageArea => throw _privateConstructorUsedError;
  int get propertyAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseCopyWith<House> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseCopyWith<$Res> {
  factory $HouseCopyWith(House value, $Res Function(House) then) =
      _$HouseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String itemId,
      double deposit,
      double monthlyRent,
      String districtUuid,
      int roomQty,
      double unitArea,
      double unitFloor,
      bool hasElevator,
      int buildingFloorCount,
      bool hasStorageArea,
      int propertyAge});
}

/// @nodoc
class _$HouseCopyWithImpl<$Res> implements $HouseCopyWith<$Res> {
  _$HouseCopyWithImpl(this._value, this._then);

  final House _value;
  // ignore: unused_field
  final $Res Function(House) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? deposit = freezed,
    Object? monthlyRent = freezed,
    Object? districtUuid = freezed,
    Object? roomQty = freezed,
    Object? unitArea = freezed,
    Object? unitFloor = freezed,
    Object? hasElevator = freezed,
    Object? buildingFloorCount = freezed,
    Object? hasStorageArea = freezed,
    Object? propertyAge = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: deposit == freezed
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRent: monthlyRent == freezed
          ? _value.monthlyRent
          : monthlyRent // ignore: cast_nullable_to_non_nullable
              as double,
      districtUuid: districtUuid == freezed
          ? _value.districtUuid
          : districtUuid // ignore: cast_nullable_to_non_nullable
              as String,
      roomQty: roomQty == freezed
          ? _value.roomQty
          : roomQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitArea: unitArea == freezed
          ? _value.unitArea
          : unitArea // ignore: cast_nullable_to_non_nullable
              as double,
      unitFloor: unitFloor == freezed
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as double,
      hasElevator: hasElevator == freezed
          ? _value.hasElevator
          : hasElevator // ignore: cast_nullable_to_non_nullable
              as bool,
      buildingFloorCount: buildingFloorCount == freezed
          ? _value.buildingFloorCount
          : buildingFloorCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasStorageArea: hasStorageArea == freezed
          ? _value.hasStorageArea
          : hasStorageArea // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyAge: propertyAge == freezed
          ? _value.propertyAge
          : propertyAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HouseCopyWith<$Res> implements $HouseCopyWith<$Res> {
  factory _$HouseCopyWith(_House value, $Res Function(_House) then) =
      __$HouseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String itemId,
      double deposit,
      double monthlyRent,
      String districtUuid,
      int roomQty,
      double unitArea,
      double unitFloor,
      bool hasElevator,
      int buildingFloorCount,
      bool hasStorageArea,
      int propertyAge});
}

/// @nodoc
class __$HouseCopyWithImpl<$Res> extends _$HouseCopyWithImpl<$Res>
    implements _$HouseCopyWith<$Res> {
  __$HouseCopyWithImpl(_House _value, $Res Function(_House) _then)
      : super(_value, (v) => _then(v as _House));

  @override
  _House get _value => super._value as _House;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? deposit = freezed,
    Object? monthlyRent = freezed,
    Object? districtUuid = freezed,
    Object? roomQty = freezed,
    Object? unitArea = freezed,
    Object? unitFloor = freezed,
    Object? hasElevator = freezed,
    Object? buildingFloorCount = freezed,
    Object? hasStorageArea = freezed,
    Object? propertyAge = freezed,
  }) {
    return _then(_House(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      deposit: deposit == freezed
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRent: monthlyRent == freezed
          ? _value.monthlyRent
          : monthlyRent // ignore: cast_nullable_to_non_nullable
              as double,
      districtUuid: districtUuid == freezed
          ? _value.districtUuid
          : districtUuid // ignore: cast_nullable_to_non_nullable
              as String,
      roomQty: roomQty == freezed
          ? _value.roomQty
          : roomQty // ignore: cast_nullable_to_non_nullable
              as int,
      unitArea: unitArea == freezed
          ? _value.unitArea
          : unitArea // ignore: cast_nullable_to_non_nullable
              as double,
      unitFloor: unitFloor == freezed
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as double,
      hasElevator: hasElevator == freezed
          ? _value.hasElevator
          : hasElevator // ignore: cast_nullable_to_non_nullable
              as bool,
      buildingFloorCount: buildingFloorCount == freezed
          ? _value.buildingFloorCount
          : buildingFloorCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasStorageArea: hasStorageArea == freezed
          ? _value.hasStorageArea
          : hasStorageArea // ignore: cast_nullable_to_non_nullable
              as bool,
      propertyAge: propertyAge == freezed
          ? _value.propertyAge
          : propertyAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_House implements _House {
  const _$_House(
      {this.id = "",
      this.itemId = "",
      this.deposit = 0,
      this.monthlyRent = 0,
      this.districtUuid = "",
      this.roomQty = 0,
      this.unitArea = 0,
      this.unitFloor = 0,
      this.hasElevator = false,
      this.buildingFloorCount = 0,
      this.hasStorageArea = false,
      this.propertyAge = 0});

  factory _$_House.fromJson(Map<String, dynamic> json) =>
      _$$_HouseFromJson(json);

  @JsonKey()
  @override
  final String id;
  @JsonKey()
  @override
  final String itemId;
  @JsonKey()
  @override
  final double deposit;
  @JsonKey()
  @override
  final double monthlyRent;
  @JsonKey()
  @override
  final String districtUuid;
  @JsonKey()
  @override
  final int roomQty;
  @JsonKey()
  @override
  final double unitArea;
  @JsonKey()
  @override
  final double unitFloor;
  @JsonKey()
  @override
  final bool hasElevator;
  @JsonKey()
  @override
  final int buildingFloorCount;
  @JsonKey()
  @override
  final bool hasStorageArea;
  @JsonKey()
  @override
  final int propertyAge;

  @override
  String toString() {
    return 'House(id: $id, itemId: $itemId, deposit: $deposit, monthlyRent: $monthlyRent, districtUuid: $districtUuid, roomQty: $roomQty, unitArea: $unitArea, unitFloor: $unitFloor, hasElevator: $hasElevator, buildingFloorCount: $buildingFloorCount, hasStorageArea: $hasStorageArea, propertyAge: $propertyAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _House &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.deposit, deposit) &&
            const DeepCollectionEquality()
                .equals(other.monthlyRent, monthlyRent) &&
            const DeepCollectionEquality()
                .equals(other.districtUuid, districtUuid) &&
            const DeepCollectionEquality().equals(other.roomQty, roomQty) &&
            const DeepCollectionEquality().equals(other.unitArea, unitArea) &&
            const DeepCollectionEquality().equals(other.unitFloor, unitFloor) &&
            const DeepCollectionEquality()
                .equals(other.hasElevator, hasElevator) &&
            const DeepCollectionEquality()
                .equals(other.buildingFloorCount, buildingFloorCount) &&
            const DeepCollectionEquality()
                .equals(other.hasStorageArea, hasStorageArea) &&
            const DeepCollectionEquality()
                .equals(other.propertyAge, propertyAge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(deposit),
      const DeepCollectionEquality().hash(monthlyRent),
      const DeepCollectionEquality().hash(districtUuid),
      const DeepCollectionEquality().hash(roomQty),
      const DeepCollectionEquality().hash(unitArea),
      const DeepCollectionEquality().hash(unitFloor),
      const DeepCollectionEquality().hash(hasElevator),
      const DeepCollectionEquality().hash(buildingFloorCount),
      const DeepCollectionEquality().hash(hasStorageArea),
      const DeepCollectionEquality().hash(propertyAge));

  @JsonKey(ignore: true)
  @override
  _$HouseCopyWith<_House> get copyWith =>
      __$HouseCopyWithImpl<_House>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HouseToJson(this);
  }
}

abstract class _House implements House {
  const factory _House(
      {String id,
      String itemId,
      double deposit,
      double monthlyRent,
      String districtUuid,
      int roomQty,
      double unitArea,
      double unitFloor,
      bool hasElevator,
      int buildingFloorCount,
      bool hasStorageArea,
      int propertyAge}) = _$_House;

  factory _House.fromJson(Map<String, dynamic> json) = _$_House.fromJson;

  @override
  String get id;
  @override
  String get itemId;
  @override
  double get deposit;
  @override
  double get monthlyRent;
  @override
  String get districtUuid;
  @override
  int get roomQty;
  @override
  double get unitArea;
  @override
  double get unitFloor;
  @override
  bool get hasElevator;
  @override
  int get buildingFloorCount;
  @override
  bool get hasStorageArea;
  @override
  int get propertyAge;
  @override
  @JsonKey(ignore: true)
  _$HouseCopyWith<_House> get copyWith => throw _privateConstructorUsedError;
}
