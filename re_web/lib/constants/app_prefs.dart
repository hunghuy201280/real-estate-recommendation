import 'package:re_web/models/prefs/configspref.dart';
import 'package:injectable/injectable.dart';

import '../models/prefs/walletpref.dart';

@singleton
class AppPref {
  final ConfigsPref config;
  final WalletPref wallet;

  const AppPref({
    required this.config,
    required this.wallet,
  });
}
