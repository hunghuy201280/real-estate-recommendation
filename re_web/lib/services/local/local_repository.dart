import 'package:re_web/configs/app_config.dart';
import 'package:re_web/constants/app_prefs.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocalRepository {
  static const baseUrl = AppConfigs.kServerUri;

  const LocalRepository({
    required AppPref appPref,
  }) : _appPref = appPref;

  final AppPref _appPref;

  bool isFirstRunApp() {
    final config = _appPref.config;
    return config.firstRun;
  }

  Future<void> saveStateFirstRunApp({required bool isFirstRun}) async {
    final config = _appPref.config;
    await config.setFirstRun(isFirstRun);
  }

  String getMnemonicPhrase() {
    final wallet = _appPref.wallet;
    return wallet.mnemonicPhrase;
  }

  Future<void> saveMnemonicPhrase({required String mnemonicPhrase}) async {
    final wallet = _appPref.wallet;
    await wallet.setMnemonicPhrase(mnemonicPhrase);
  }

  List<String> getWalletsImported() {
    final wallet = _appPref.wallet;
    return wallet.walletsImported;
  }

  Future<void> deletePrivateKey({required String privateKey}) async {
    final wallet = _appPref.wallet;
    final walletsImported = wallet.walletsImported;
    walletsImported.remove(privateKey);
    await wallet.setWalletsImported([...walletsImported]);
  }

  Future<void> savePrivateKey({required String privateKey}) async {
    final wallet = _appPref.wallet;
    final walletsImported = wallet.walletsImported;
    walletsImported.add(privateKey);
    await wallet.setWalletsImported([...walletsImported]);
  }

  Future<void> deleteAllPrivateKey() async {
    final wallet = _appPref.wallet;
    await wallet.setWalletsImported([]);
  }

  String getWalletSeleted() {
    final wallet = _appPref.wallet;
    return wallet.walletSelected;
  }

  Future<void> saveWalletSelected({required String walletSelected}) async {
    final wallet = _appPref.wallet;
    await wallet.setWalletSelected(walletSelected);
  }

  bool getStateLogInWithBiometrics() {
    final wallet = _appPref.wallet;
    return wallet.isLoginWithBiometrics;
  }

  Future<void> saveStateLogInWithBiometrics(
      {required bool isBiometrics}) async {
    final wallet = _appPref.wallet;
    await wallet.setIsLoginWithBiometrics(isBiometrics);
  }

  String getPasscode() {
    final wallet = _appPref.wallet;
    return wallet.passCode;
  }

  Future<void> savePasscode({required String passCode}) async {
    final wallet = _appPref.wallet;
    await wallet.setPasscode(passCode);
  }
}
