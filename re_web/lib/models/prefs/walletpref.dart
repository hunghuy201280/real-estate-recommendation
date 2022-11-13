import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../constants/hive_configs.dart';

@singleton
class WalletPref {
  const WalletPref({
    @Named(HiveConfigs.kWallet) required this.box,
  });
  final Box box;

  static const kMnemonicPhraseKey = "mnemonicPhrase";
  static const kWalletSelectedKey = "walletSelected";
  static const kWalletsImportedKey = "walletsImported";
  static const kPasscodeKey = "passCode";
  static const kIsLoginWithBiometrics = "isLoginWithBiometrics";

  String get mnemonicPhrase => box.get(kMnemonicPhraseKey, defaultValue: "");
  Future<void> setMnemonicPhrase(String value) =>
      box.put(kMnemonicPhraseKey, value);

  String get walletSelected => box.get(kWalletSelectedKey, defaultValue: "");
  Future<void> setWalletSelected(String value) =>
      box.put(kWalletSelectedKey, value);

  List<String> get walletsImported =>
      box.get(kWalletsImportedKey, defaultValue: []) as List<String>;
  Future<void> setWalletsImported(List<String> value) =>
      box.put(kWalletsImportedKey, value);

  String get passCode => box.get(kPasscodeKey, defaultValue: "");
  Future<void> setPasscode(String value) => box.put(kPasscodeKey, value);

  bool get isLoginWithBiometrics =>
      box.get(kIsLoginWithBiometrics, defaultValue: false);
  Future<void> setIsLoginWithBiometrics(bool value) =>
      box.put(kIsLoginWithBiometrics, value);
}
