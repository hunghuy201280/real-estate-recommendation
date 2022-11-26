import 'package:freezed_annotation/freezed_annotation.dart';

part 'house.freezed.dart';
part 'house.g.dart';

@freezed
class House with _$House {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory House({
    @Default("") String id,
    @Default("") String itemId,
    @Default(0) double deposit,
    @Default(0) double monthlyRent,
    @Default("") String districtUuid,
    @Default(0) int roomQty,
    @Default(0) double unitArea,
    @Default(0) double unitFloor,
    @Default(false) bool hasElevator,
    @Default(0) int buildingFloorCount,
    @Default(false) bool hasStorageArea,
    @Default(0) int propertyAge,
  }) = _House;

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);
}
