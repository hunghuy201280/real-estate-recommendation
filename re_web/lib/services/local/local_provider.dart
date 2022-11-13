import 'package:injectable/injectable.dart';

import 'local_repository.dart';

@singleton
class LocalProvider {
  const LocalProvider({
    required LocalRepository repo,
  }) : _repo = repo;
  final LocalRepository _repo;

  bool isFirstRunApp() {
    return _repo.isFirstRunApp();
  }

  Future<void> saveStateFirstRunApp({required bool isFirstRun}) async {
    return _repo.saveStateFirstRunApp(isFirstRun: isFirstRun);
  }

  String getMnemonicPhrase() {
    return _repo.getMnemonicPhrase();
  }

  Future<void> saveMnemonicPhrase({required String mnemonicPhrase}) async {
    await _repo.saveMnemonicPhrase(mnemonicPhrase: mnemonicPhrase);
  }

  List<String> getWalletsImported() {
    return _repo.getWalletsImported();
  }

  Future<void> deletePrivateKey({required String privateKey}) async {
    await _repo.deletePrivateKey(privateKey: privateKey);
  }

  Future<void> savePrivateKey({required String privateKey}) async {
    await _repo.savePrivateKey(privateKey: privateKey);
  }

  Future<void> deleteAllPrivateKey() async {
    await _repo.deleteAllPrivateKey();
  }

  String getWalletSelected() {
    return _repo.getWalletSeleted();
  }

  Future<void> saveWalletSelected({required String walletSelected}) async {
    await _repo.saveWalletSelected(walletSelected: walletSelected);
  }

  bool getStateLogInWithBiometrics() {
    return _repo.getStateLogInWithBiometrics();
  }

  Future<void> saveStateLogInWithBiometrics(
      {required bool isBiometrics}) async {
    await _repo.saveStateLogInWithBiometrics(isBiometrics: isBiometrics);
  }

  String getPasscode() {
    return _repo.getPasscode();
  }

  Future<void> savePasscode({required String passCode}) async {
    await _repo.savePasscode(passCode: passCode);
  }
}
