// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_House _$$_HouseFromJson(Map<String, dynamic> json) => _$_House(
      id: json['id'] as String? ?? "",
      itemId: json['itemId'] as String? ?? "",
      deposit: (json['deposit'] as num?)?.toDouble() ?? 0,
      monthlyRent: (json['monthlyRent'] as num?)?.toDouble() ?? 0,
      districtUuid: json['districtUuid'] as String? ?? "",
      roomQty: json['roomQty'] as int? ?? 0,
      unitArea: (json['unitArea'] as num?)?.toDouble() ?? 0,
      unitFloor: (json['unitFloor'] as num?)?.toDouble() ?? 0,
      hasElevator: json['hasElevator'] as bool? ?? false,
      buildingFloorCount: json['buildingFloorCount'] as int? ?? 0,
      hasStorageArea: json['hasStorageArea'] as bool? ?? false,
      propertyAge: json['propertyAge'] as int? ?? 0,
    );

Map<String, dynamic> _$$_HouseToJson(_$_House instance) => <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'deposit': instance.deposit,
      'monthlyRent': instance.monthlyRent,
      'districtUuid': instance.districtUuid,
      'roomQty': instance.roomQty,
      'unitArea': instance.unitArea,
      'unitFloor': instance.unitFloor,
      'hasElevator': instance.hasElevator,
      'buildingFloorCount': instance.buildingFloorCount,
      'hasStorageArea': instance.hasStorageArea,
      'propertyAge': instance.propertyAge,
    };
