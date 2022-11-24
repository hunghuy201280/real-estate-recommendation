class AppConfigs {
  static const kServerUri = "http://localhost:8080/api";
  static const kConnectionTimeOut = 30000;
  static const kReceiveTimeOut = 30000;
  // static Future<void> initializeApp() async {
  //   //#region initialize AppPref
  //   final appPref = AppPref(
  //     config: ConfigsPref(
  //       box: Hive.box(HiveConfigs.kConfig),
  //     ),
  //     wallet: WalletPref(
  //       box: Hive.box(HiveConfigs.kWallet),
  //     ),
  //   );
  //   Get.put(appPref);
  //   //#endregion initialize AppPref
  //
  //   //#region init local repo,provider
  //   final localRepository = LocalRepository(appPref: appPref);
  //   Get.put(LocalProvider(repo: localRepository));
  //   //#endregion
  //
  //   //#region init remote repo,provider
  //   final remoteRepository = RemoteRepository();
  //   Get.put(RemoteProvider(repo: remoteRepository));
  //   //#endregion
  // }
}
