class AppConfigs {
  static const kServerUri = "http://localhost:3000";
  static const tempImage =
      "https://gamelandvn.com/mobile/wp-content/uploads/2021/05/noelle-social.jpg";
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
