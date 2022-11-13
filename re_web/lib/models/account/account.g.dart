// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      index: json['index'] as int,
      balance: (json['balance'] as num).toDouble(),
      isImported: json['is_imported'] as bool,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'index': instance.index,
      'balance': instance.balance,
      'is_imported': instance.isImported,
    };
