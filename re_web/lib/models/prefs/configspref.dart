import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:re_web/constants/hive_configs.dart';

@singleton
class ConfigsPref {
  const ConfigsPref({
    @Named(HiveConfigs.kConfig) required this.box,
  });

  final Box box;
  static const kFirstRunKey = "firstRun";
  static const kUserIdKey = "user_id";

  bool get firstRun => box.get(kFirstRunKey, defaultValue: true);
  Future<void> setFirstRun(bool value) => box.put(kFirstRunKey, value);

  String? get userId => box.get(kUserIdKey);
  Future<void> setUserId(String? value) => box.put(kUserIdKey, value);
}
