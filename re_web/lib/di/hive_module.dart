import 'package:re_web/constants/hive_configs.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HiveModule {
  @Named(HiveConfigs.kConfig)
  Box getConfigPrefBox() => Hive.box(HiveConfigs.kConfig);

  @Named(HiveConfigs.kWallet)
  Box getWalletPrefBox() => Hive.box(HiveConfigs.kWallet);
}
